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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "03/23/2026 00:23:02"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maxv_top IS
    PORT (
	Clk_Gen_i : IN std_logic;
	Clk_Main_i : IN std_logic;
	Con_25p_io : BUFFER std_logic_vector(25 DOWNTO 1);
	Con_80p_io : BUFFER std_logic_vector(79 DOWNTO 2);
	Mezzanine_io : BUFFER std_logic_vector(20 DOWNTO 5);
	Encoder_A_i : IN std_logic;
	Encoder_B_i : IN std_logic;
	nButton_i : IN std_logic_vector(8 DOWNTO 1);
	nReset_i : IN std_logic;
	Switch_i : IN std_logic_vector(7 DOWNTO 0);
	nLed_o : BUFFER std_logic_vector(7 DOWNTO 0);
	Led_RGB_o : BUFFER std_logic_vector(2 DOWNTO 0);
	nSeven_Seg_o : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END maxv_top;

-- Design Ports Information


ARCHITECTURE structure OF maxv_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_Gen_i : std_logic;
SIGNAL ww_Clk_Main_i : std_logic;
SIGNAL ww_Con_25p_io : std_logic_vector(25 DOWNTO 1);
SIGNAL ww_Con_80p_io : std_logic_vector(79 DOWNTO 2);
SIGNAL ww_Mezzanine_io : std_logic_vector(20 DOWNTO 5);
SIGNAL ww_Encoder_A_i : std_logic;
SIGNAL ww_Encoder_B_i : std_logic;
SIGNAL ww_nButton_i : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_nReset_i : std_logic;
SIGNAL ww_Switch_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLed_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_RGB_o : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nSeven_Seg_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|add_inst|add3|Add0~40\ : std_logic;
SIGNAL \Con_80p_io[41]~41\ : std_logic;
SIGNAL \Con_80p_io[42]~42\ : std_logic;
SIGNAL \Con_80p_io[43]~43\ : std_logic;
SIGNAL \Con_80p_io[44]~44\ : std_logic;
SIGNAL \Con_80p_io[45]~45\ : std_logic;
SIGNAL \Con_80p_io[46]~46\ : std_logic;
SIGNAL \Con_80p_io[47]~47\ : std_logic;
SIGNAL \Con_80p_io[48]~0\ : std_logic;
SIGNAL \Con_80p_io[57]~56\ : std_logic;
SIGNAL \Con_80p_io[58]~57\ : std_logic;
SIGNAL \Con_80p_io[59]~58\ : std_logic;
SIGNAL \Con_80p_io[60]~59\ : std_logic;
SIGNAL \Con_80p_io[61]~60\ : std_logic;
SIGNAL \Con_80p_io[62]~61\ : std_logic;
SIGNAL \Con_80p_io[63]~62\ : std_logic;
SIGNAL \Con_80p_io[64]~1\ : std_logic;
SIGNAL \U1|Mux4~4_combout\ : std_logic;
SIGNAL \U1|Mux4~5_combout\ : std_logic;
SIGNAL \U1|Mux5~1_combout\ : std_logic;
SIGNAL \U1|Mux5~0_combout\ : std_logic;
SIGNAL \U1|Mux1~4_combout\ : std_logic;
SIGNAL \U1|Mux5~2_combout\ : std_logic;
SIGNAL \U1|Mux6~4_combout\ : std_logic;
SIGNAL \U1|Mux6~5_combout\ : std_logic;
SIGNAL \U1|Mux7~1_combout\ : std_logic;
SIGNAL \U1|Mux7~0_combout\ : std_logic;
SIGNAL \U1|Mux7~2_combout\ : std_logic;
SIGNAL \U1|cin_s~0_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~42_cout0\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~42COUT1_46\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~2\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~2COUT1_47\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~7\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~7COUT1_48\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~12\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~12COUT1_49\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~17\ : std_logic;
SIGNAL \U1|Mux1~5_combout\ : std_logic;
SIGNAL \U1|Mux1~6_combout\ : std_logic;
SIGNAL \U1|Mux2~4_combout\ : std_logic;
SIGNAL \U1|Mux2~5_combout\ : std_logic;
SIGNAL \U1|Mux3~4_combout\ : std_logic;
SIGNAL \U1|Mux3~5_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~22\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~22COUT1_50\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~27\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~27COUT1_51\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~37\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~37COUT1_52\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~30_combout\ : std_logic;
SIGNAL \U1|x2_1bit_s~0_combout\ : std_logic;
SIGNAL \U1|Mux0~4_combout\ : std_logic;
SIGNAL \U1|Mux0~5_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~35_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~25_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~10_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~15_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~20_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~5_combout\ : std_logic;
SIGNAL \U1|add_inst|add3|Add0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|add_inst|add1|Add1~0_combout\ : std_logic;
SIGNAL \U1|add_inst|ovr_o~combout\ : std_logic;
SIGNAL \Clk_Main_i~combout\ : std_logic;
SIGNAL \nReset_i~combout\ : std_logic;
SIGNAL \Cpt_s[1]~37\ : std_logic;
SIGNAL \Cpt_s[1]~37COUT1_40\ : std_logic;
SIGNAL \Cpt_s[2]~35\ : std_logic;
SIGNAL \Cpt_s[2]~35COUT1_41\ : std_logic;
SIGNAL \Cpt_s[3]~33\ : std_logic;
SIGNAL \Cpt_s[3]~33COUT1_42\ : std_logic;
SIGNAL \Cpt_s[4]~31\ : std_logic;
SIGNAL \Cpt_s[5]~29\ : std_logic;
SIGNAL \Cpt_s[5]~29COUT1_43\ : std_logic;
SIGNAL \Cpt_s[6]~27\ : std_logic;
SIGNAL \Cpt_s[6]~27COUT1_44\ : std_logic;
SIGNAL \Cpt_s[7]~25\ : std_logic;
SIGNAL \Cpt_s[7]~25COUT1_45\ : std_logic;
SIGNAL \Cpt_s[8]~23\ : std_logic;
SIGNAL \Cpt_s[8]~23COUT1_46\ : std_logic;
SIGNAL \Cpt_s[9]~21\ : std_logic;
SIGNAL \Cpt_s[10]~19\ : std_logic;
SIGNAL \Cpt_s[10]~19COUT1_47\ : std_logic;
SIGNAL \Cpt_s[11]~17\ : std_logic;
SIGNAL \Cpt_s[11]~17COUT1_48\ : std_logic;
SIGNAL \Cpt_s[12]~15\ : std_logic;
SIGNAL \Cpt_s[12]~15COUT1_49\ : std_logic;
SIGNAL \Cpt_s[13]~13\ : std_logic;
SIGNAL \Cpt_s[13]~13COUT1_50\ : std_logic;
SIGNAL \Cpt_s[14]~11\ : std_logic;
SIGNAL \Cpt_s[15]~9\ : std_logic;
SIGNAL \Cpt_s[15]~9COUT1_51\ : std_logic;
SIGNAL \Cpt_s[16]~7\ : std_logic;
SIGNAL \Cpt_s[16]~7COUT1_52\ : std_logic;
SIGNAL \Cpt_s[17]~5\ : std_logic;
SIGNAL \Cpt_s[17]~5COUT1_53\ : std_logic;
SIGNAL \Cpt_s[18]~3\ : std_logic;
SIGNAL \Cpt_s[18]~3COUT1_54\ : std_logic;
SIGNAL Cpt_s : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|val1_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|result_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Switch_i~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_nReset_i~combout\ : std_logic;
SIGNAL ALT_INV_Cpt_s : std_logic_vector(19 DOWNTO 19);
SIGNAL \U1|add_inst|ALT_INV_ovr_o~combout\ : std_logic;
SIGNAL \U1|add_inst|add1|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_Clk_Gen_i <= Clk_Gen_i;
ww_Clk_Main_i <= Clk_Main_i;
Con_25p_io <= ww_Con_25p_io;
Con_80p_io <= ww_Con_80p_io;
Mezzanine_io <= ww_Mezzanine_io;
ww_Encoder_A_i <= Encoder_A_i;
ww_Encoder_B_i <= Encoder_B_i;
ww_nButton_i <= nButton_i;
ww_nReset_i <= nReset_i;
ww_Switch_i <= Switch_i;
nLed_o <= ww_nLed_o;
Led_RGB_o <= ww_Led_RGB_o;
nSeven_Seg_o <= ww_nSeven_Seg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nReset_i~combout\ <= NOT \nReset_i~combout\;
ALT_INV_Cpt_s(19) <= NOT Cpt_s(19);
\U1|add_inst|ALT_INV_ovr_o~combout\ <= NOT \U1|add_inst|ovr_o~combout\;
\U1|add_inst|add1|ALT_INV_Add1~0_combout\ <= NOT \U1|add_inst|add1|Add1~0_combout\;
\U1|ALT_INV_Equal0~2_combout\ <= NOT \U1|Equal0~2_combout\;

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(41),
	combout => \Con_80p_io[41]~41\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(42),
	combout => \Con_80p_io[42]~42\);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(43),
	combout => \Con_80p_io[43]~43\);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(44),
	combout => \Con_80p_io[44]~44\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(45),
	combout => \Con_80p_io[45]~45\);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(46),
	combout => \Con_80p_io[46]~46\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(47),
	combout => \Con_80p_io[47]~47\);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(48),
	combout => \Con_80p_io[48]~0\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(57),
	combout => \Con_80p_io[57]~56\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(58),
	combout => \Con_80p_io[58]~57\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(59),
	combout => \Con_80p_io[59]~58\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(60),
	combout => \Con_80p_io[60]~59\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(61),
	combout => \Con_80p_io[61]~60\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(62),
	combout => \Con_80p_io[62]~61\);

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(63),
	combout => \Con_80p_io[63]~62\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(64),
	combout => \Con_80p_io[64]~1\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(0),
	combout => \Switch_i~combout\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(1),
	combout => \Switch_i~combout\(1));

-- Location: LC_X8_Y7_N2
\U1|val1_s[3]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(3) = (\Con_80p_io[44]~44\ & ((\Switch_i~combout\(0)) # ((!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[44]~44\,
	datab => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(3));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(2),
	combout => \Switch_i~combout\(2));

-- Location: LC_X8_Y7_N1
\U1|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux4~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((!\Con_80p_io[60]~59\))) # (!\Switch_i~combout\(1) & (\Con_80p_io[44]~44\)))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (\Con_80p_io[44]~44\)) # (!\Switch_i~combout\(1) 
-- & ((\Con_80p_io[60]~59\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2be8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[44]~44\,
	datab => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[60]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux4~4_combout\);

-- Location: LC_X8_Y7_N8
\U1|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux4~5_combout\ = (\Switch_i~combout\(2) & ((\Con_80p_io[60]~59\ & (\Switch_i~combout\(1))) # (!\Con_80p_io[60]~59\ & ((\U1|Mux4~4_combout\) # (!\Switch_i~combout\(1)))))) # (!\Switch_i~combout\(2) & (\U1|Mux4~4_combout\ & ((\Con_80p_io[60]~59\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e782",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(2),
	datab => \Con_80p_io[60]~59\,
	datac => \Switch_i~combout\(1),
	datad => \U1|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux4~5_combout\);

-- Location: LC_X4_Y6_N4
\U1|val1_s[2]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(2) = (\Con_80p_io[43]~43\ & ((\Switch_i~combout\(0)) # ((!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Con_80p_io[43]~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(2));

-- Location: LC_X4_Y6_N8
\U1|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \U1|Mux5~1_combout\ = ((\Switch_i~combout\(1) & (\Switch_i~combout\(2) $ (!\Con_80p_io[59]~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[59]~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux5~1_combout\);

-- Location: LC_X4_Y6_N7
\U1|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \U1|Mux5~0_combout\ = (\Switch_i~combout\(2) $ (((!\Switch_i~combout\(1) & \Con_80p_io[59]~58\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[59]~58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux5~0_combout\);

-- Location: LC_X4_Y6_N1
\U1|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux1~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(2)) # ((\Switch_i~combout\(1))))) # (!\Switch_i~combout\(0) & (((!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "adad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux1~4_combout\);

-- Location: LC_X4_Y6_N3
\U1|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \U1|Mux5~2_combout\ = (\U1|Mux5~1_combout\ & (\U1|Mux5~0_combout\)) # (!\U1|Mux5~1_combout\ & ((\U1|Mux1~4_combout\ & (\U1|Mux5~0_combout\)) # (!\U1|Mux1~4_combout\ & ((\Con_80p_io[43]~43\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux5~1_combout\,
	datab => \U1|Mux5~0_combout\,
	datac => \Con_80p_io[43]~43\,
	datad => \U1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux5~2_combout\);

-- Location: LC_X6_Y7_N1
\U1|val1_s[1]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(1) = ((\Con_80p_io[42]~42\ & ((\Switch_i~combout\(0)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(1),
	datac => \Con_80p_io[42]~42\,
	datad => \Switch_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(1));

-- Location: LC_X6_Y7_N2
\U1|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux6~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((!\Con_80p_io[58]~57\))) # (!\Switch_i~combout\(1) & (\Con_80p_io[42]~42\)))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (\Con_80p_io[42]~42\)) # (!\Switch_i~combout\(1) 
-- & ((\Con_80p_io[58]~57\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2eb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[42]~42\,
	datab => \Switch_i~combout\(0),
	datac => \Con_80p_io[58]~57\,
	datad => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux6~4_combout\);

-- Location: LC_X6_Y7_N7
\U1|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux6~5_combout\ = (\Switch_i~combout\(2) & ((\Switch_i~combout\(1) & ((\Con_80p_io[58]~57\) # (\U1|Mux6~4_combout\))) # (!\Switch_i~combout\(1) & (!\Con_80p_io[58]~57\)))) # (!\Switch_i~combout\(2) & (\U1|Mux6~4_combout\ & ((\Con_80p_io[58]~57\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "db82",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(2),
	datab => \Switch_i~combout\(1),
	datac => \Con_80p_io[58]~57\,
	datad => \U1|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux6~5_combout\);

-- Location: LC_X4_Y6_N5
\U1|val1_s[0]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(0) = ((\Con_80p_io[41]~41\ & ((\Switch_i~combout\(0)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[41]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(0));

-- Location: LC_X4_Y6_N9
\U1|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \U1|Mux7~1_combout\ = ((\Switch_i~combout\(1) & (\Switch_i~combout\(2) $ (!\Con_80p_io[57]~56\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[57]~56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux7~1_combout\);

-- Location: LC_X4_Y6_N0
\U1|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \U1|Mux7~0_combout\ = (\Con_80p_io[57]~56\ $ (((\Switch_i~combout\(2) & !\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[57]~56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux7~0_combout\);

-- Location: LC_X4_Y6_N2
\U1|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \U1|Mux7~2_combout\ = (\U1|Mux7~1_combout\ & ((\U1|Mux7~0_combout\ $ (\U1|Mux1~4_combout\)))) # (!\U1|Mux7~1_combout\ & ((\U1|Mux1~4_combout\ & ((\U1|Mux7~0_combout\))) # (!\U1|Mux1~4_combout\ & (\Con_80p_io[41]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[41]~41\,
	datab => \U1|Mux7~1_combout\,
	datac => \U1|Mux7~0_combout\,
	datad => \U1|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux7~2_combout\);

-- Location: LC_X4_Y6_N6
\U1|cin_s~0\ : maxv_lcell
-- Equation(s):
-- \U1|cin_s~0_combout\ = \Switch_i~combout\(0) $ ((((\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|cin_s~0_combout\);

-- Location: LC_X7_Y6_N0
\U1|add_inst|add3|Add0~42\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~42_cout0\ = CARRY((!\U1|cin_s~0_combout\ & (\Switch_i~combout\(2))))
-- \U1|add_inst|add3|Add0~42COUT1_46\ = CARRY((!\U1|cin_s~0_combout\ & (\Switch_i~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cin_s~0_combout\,
	datab => \Switch_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~40\,
	cout0 => \U1|add_inst|add3|Add0~42_cout0\,
	cout1 => \U1|add_inst|add3|Add0~42COUT1_46\);

-- Location: LC_X7_Y6_N1
\U1|add_inst|add3|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~0_combout\ = \U1|val1_s\(0) $ (\U1|Mux7~2_combout\ $ ((\U1|add_inst|add3|Add0~42_cout0\)))
-- \U1|add_inst|add3|Add0~2\ = CARRY((\U1|val1_s\(0) & (!\U1|Mux7~2_combout\ & !\U1|add_inst|add3|Add0~42_cout0\)) # (!\U1|val1_s\(0) & ((!\U1|add_inst|add3|Add0~42_cout0\) # (!\U1|Mux7~2_combout\))))
-- \U1|add_inst|add3|Add0~2COUT1_47\ = CARRY((\U1|val1_s\(0) & (!\U1|Mux7~2_combout\ & !\U1|add_inst|add3|Add0~42COUT1_46\)) # (!\U1|val1_s\(0) & ((!\U1|add_inst|add3|Add0~42COUT1_46\) # (!\U1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(0),
	datab => \U1|Mux7~2_combout\,
	cin0 => \U1|add_inst|add3|Add0~42_cout0\,
	cin1 => \U1|add_inst|add3|Add0~42COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~0_combout\,
	cout0 => \U1|add_inst|add3|Add0~2\,
	cout1 => \U1|add_inst|add3|Add0~2COUT1_47\);

-- Location: LC_X7_Y6_N2
\U1|add_inst|add3|Add0~5\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~5_combout\ = \U1|val1_s\(1) $ (\U1|Mux6~5_combout\ $ ((!\U1|add_inst|add3|Add0~2\)))
-- \U1|add_inst|add3|Add0~7\ = CARRY((\U1|val1_s\(1) & ((\U1|Mux6~5_combout\) # (!\U1|add_inst|add3|Add0~2\))) # (!\U1|val1_s\(1) & (\U1|Mux6~5_combout\ & !\U1|add_inst|add3|Add0~2\)))
-- \U1|add_inst|add3|Add0~7COUT1_48\ = CARRY((\U1|val1_s\(1) & ((\U1|Mux6~5_combout\) # (!\U1|add_inst|add3|Add0~2COUT1_47\))) # (!\U1|val1_s\(1) & (\U1|Mux6~5_combout\ & !\U1|add_inst|add3|Add0~2COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(1),
	datab => \U1|Mux6~5_combout\,
	cin0 => \U1|add_inst|add3|Add0~2\,
	cin1 => \U1|add_inst|add3|Add0~2COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~5_combout\,
	cout0 => \U1|add_inst|add3|Add0~7\,
	cout1 => \U1|add_inst|add3|Add0~7COUT1_48\);

-- Location: LC_X7_Y6_N3
\U1|add_inst|add3|Add0~10\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~10_combout\ = \U1|val1_s\(2) $ (\U1|Mux5~2_combout\ $ ((\U1|add_inst|add3|Add0~7\)))
-- \U1|add_inst|add3|Add0~12\ = CARRY((\U1|val1_s\(2) & (!\U1|Mux5~2_combout\ & !\U1|add_inst|add3|Add0~7\)) # (!\U1|val1_s\(2) & ((!\U1|add_inst|add3|Add0~7\) # (!\U1|Mux5~2_combout\))))
-- \U1|add_inst|add3|Add0~12COUT1_49\ = CARRY((\U1|val1_s\(2) & (!\U1|Mux5~2_combout\ & !\U1|add_inst|add3|Add0~7COUT1_48\)) # (!\U1|val1_s\(2) & ((!\U1|add_inst|add3|Add0~7COUT1_48\) # (!\U1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(2),
	datab => \U1|Mux5~2_combout\,
	cin0 => \U1|add_inst|add3|Add0~7\,
	cin1 => \U1|add_inst|add3|Add0~7COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~10_combout\,
	cout0 => \U1|add_inst|add3|Add0~12\,
	cout1 => \U1|add_inst|add3|Add0~12COUT1_49\);

-- Location: LC_X7_Y6_N4
\U1|add_inst|add3|Add0~15\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~15_combout\ = \U1|val1_s\(3) $ (\U1|Mux4~5_combout\ $ ((!\U1|add_inst|add3|Add0~12\)))
-- \U1|add_inst|add3|Add0~17\ = CARRY((\U1|val1_s\(3) & ((\U1|Mux4~5_combout\) # (!\U1|add_inst|add3|Add0~12COUT1_49\))) # (!\U1|val1_s\(3) & (\U1|Mux4~5_combout\ & !\U1|add_inst|add3|Add0~12COUT1_49\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(3),
	datab => \U1|Mux4~5_combout\,
	cin0 => \U1|add_inst|add3|Add0~12\,
	cin1 => \U1|add_inst|add3|Add0~12COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~15_combout\,
	cout => \U1|add_inst|add3|Add0~17\);

-- Location: LC_X8_Y7_N9
\U1|Mux1~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux1~5_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (!\Con_80p_io[63]~62\)) # (!\Switch_i~combout\(1) & ((\Con_80p_io[47]~47\))))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((\Con_80p_io[47]~47\))) # 
-- (!\Switch_i~combout\(1) & (\Con_80p_io[63]~62\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e42",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[63]~62\,
	datab => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[47]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux1~5_combout\);

-- Location: LC_X8_Y7_N7
\U1|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \U1|Mux1~6_combout\ = (\Switch_i~combout\(2) & ((\Con_80p_io[63]~62\ & (\Switch_i~combout\(1))) # (!\Con_80p_io[63]~62\ & ((\U1|Mux1~5_combout\) # (!\Switch_i~combout\(1)))))) # (!\Switch_i~combout\(2) & (\U1|Mux1~5_combout\ & ((\Con_80p_io[63]~62\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e784",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[63]~62\,
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \U1|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux1~6_combout\);

-- Location: LC_X8_Y7_N0
\U1|val1_s[6]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(6) = ((\Con_80p_io[47]~47\ & ((\Switch_i~combout\(0)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[47]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(6));

-- Location: LC_X6_Y7_N0
\U1|val1_s[5]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(5) = (\Con_80p_io[46]~46\ & (((\Switch_i~combout\(0))) # (!\Switch_i~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[46]~46\,
	datab => \Switch_i~combout\(1),
	datad => \Switch_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(5));

-- Location: LC_X8_Y7_N4
\U1|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux2~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((!\Con_80p_io[62]~61\))) # (!\Switch_i~combout\(1) & (\Con_80p_io[46]~46\)))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (\Con_80p_io[46]~46\)) # (!\Switch_i~combout\(1) 
-- & ((\Con_80p_io[62]~61\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2eb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[46]~46\,
	datab => \Switch_i~combout\(0),
	datac => \Con_80p_io[62]~61\,
	datad => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux2~4_combout\);

-- Location: LC_X8_Y7_N5
\U1|Mux2~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux2~5_combout\ = (\Switch_i~combout\(2) & ((\Con_80p_io[62]~61\ & (\Switch_i~combout\(1))) # (!\Con_80p_io[62]~61\ & ((\U1|Mux2~4_combout\) # (!\Switch_i~combout\(1)))))) # (!\Switch_i~combout\(2) & (\U1|Mux2~4_combout\ & ((\Con_80p_io[62]~61\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e784",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[62]~61\,
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \U1|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux2~5_combout\);

-- Location: LC_X7_Y7_N3
\U1|val1_s[4]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(4) = ((\Con_80p_io[45]~45\ & ((\Switch_i~combout\(0)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(0),
	datac => \Switch_i~combout\(1),
	datad => \Con_80p_io[45]~45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(4));

-- Location: LC_X8_Y7_N3
\U1|Mux3~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux3~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((!\Con_80p_io[61]~60\))) # (!\Switch_i~combout\(1) & (\Con_80p_io[45]~45\)))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (\Con_80p_io[45]~45\)) # (!\Switch_i~combout\(1) 
-- & ((\Con_80p_io[61]~60\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2eb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[45]~45\,
	datab => \Switch_i~combout\(0),
	datac => \Con_80p_io[61]~60\,
	datad => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux3~4_combout\);

-- Location: LC_X8_Y7_N6
\U1|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux3~5_combout\ = (\Switch_i~combout\(2) & ((\Con_80p_io[61]~60\ & (\Switch_i~combout\(1))) # (!\Con_80p_io[61]~60\ & ((\U1|Mux3~4_combout\) # (!\Switch_i~combout\(1)))))) # (!\Switch_i~combout\(2) & (\U1|Mux3~4_combout\ & ((\Con_80p_io[61]~60\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e784",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[61]~60\,
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \U1|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux3~5_combout\);

-- Location: LC_X7_Y6_N5
\U1|add_inst|add3|Add0~20\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~20_combout\ = \U1|val1_s\(4) $ (\U1|Mux3~5_combout\ $ ((\U1|add_inst|add3|Add0~17\)))
-- \U1|add_inst|add3|Add0~22\ = CARRY((\U1|val1_s\(4) & (!\U1|Mux3~5_combout\ & !\U1|add_inst|add3|Add0~17\)) # (!\U1|val1_s\(4) & ((!\U1|add_inst|add3|Add0~17\) # (!\U1|Mux3~5_combout\))))
-- \U1|add_inst|add3|Add0~22COUT1_50\ = CARRY((\U1|val1_s\(4) & (!\U1|Mux3~5_combout\ & !\U1|add_inst|add3|Add0~17\)) # (!\U1|val1_s\(4) & ((!\U1|add_inst|add3|Add0~17\) # (!\U1|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(4),
	datab => \U1|Mux3~5_combout\,
	cin => \U1|add_inst|add3|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~20_combout\,
	cout0 => \U1|add_inst|add3|Add0~22\,
	cout1 => \U1|add_inst|add3|Add0~22COUT1_50\);

-- Location: LC_X7_Y6_N6
\U1|add_inst|add3|Add0~25\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~25_combout\ = \U1|val1_s\(5) $ (\U1|Mux2~5_combout\ $ ((!(!\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~22\) # (\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~22COUT1_50\))))
-- \U1|add_inst|add3|Add0~27\ = CARRY((\U1|val1_s\(5) & ((\U1|Mux2~5_combout\) # (!\U1|add_inst|add3|Add0~22\))) # (!\U1|val1_s\(5) & (\U1|Mux2~5_combout\ & !\U1|add_inst|add3|Add0~22\)))
-- \U1|add_inst|add3|Add0~27COUT1_51\ = CARRY((\U1|val1_s\(5) & ((\U1|Mux2~5_combout\) # (!\U1|add_inst|add3|Add0~22COUT1_50\))) # (!\U1|val1_s\(5) & (\U1|Mux2~5_combout\ & !\U1|add_inst|add3|Add0~22COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|val1_s\(5),
	datab => \U1|Mux2~5_combout\,
	cin => \U1|add_inst|add3|Add0~17\,
	cin0 => \U1|add_inst|add3|Add0~22\,
	cin1 => \U1|add_inst|add3|Add0~22COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~25_combout\,
	cout0 => \U1|add_inst|add3|Add0~27\,
	cout1 => \U1|add_inst|add3|Add0~27COUT1_51\);

-- Location: LC_X7_Y6_N7
\U1|add_inst|add3|Add0~35\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~35_combout\ = \U1|Mux1~6_combout\ $ (\U1|val1_s\(6) $ (((!\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~27\) # (\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~27COUT1_51\))))
-- \U1|add_inst|add3|Add0~37\ = CARRY((\U1|Mux1~6_combout\ & (!\U1|val1_s\(6) & !\U1|add_inst|add3|Add0~27\)) # (!\U1|Mux1~6_combout\ & ((!\U1|add_inst|add3|Add0~27\) # (!\U1|val1_s\(6)))))
-- \U1|add_inst|add3|Add0~37COUT1_52\ = CARRY((\U1|Mux1~6_combout\ & (!\U1|val1_s\(6) & !\U1|add_inst|add3|Add0~27COUT1_51\)) # (!\U1|Mux1~6_combout\ & ((!\U1|add_inst|add3|Add0~27COUT1_51\) # (!\U1|val1_s\(6)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~6_combout\,
	datab => \U1|val1_s\(6),
	cin => \U1|add_inst|add3|Add0~17\,
	cin0 => \U1|add_inst|add3|Add0~27\,
	cin1 => \U1|add_inst|add3|Add0~27COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~35_combout\,
	cout0 => \U1|add_inst|add3|Add0~37\,
	cout1 => \U1|add_inst|add3|Add0~37COUT1_52\);

-- Location: LC_X7_Y6_N8
\U1|add_inst|add3|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add3|Add0~30_combout\ = (((!(!\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~37\) # (\U1|add_inst|add3|Add0~17\ & \U1|add_inst|add3|Add0~37COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \U1|add_inst|add3|Add0~17\,
	cin0 => \U1|add_inst|add3|Add0~37\,
	cin1 => \U1|add_inst|add3|Add0~37COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add3|Add0~30_combout\);

-- Location: LC_X6_Y5_N2
\U1|x2_1bit_s~0\ : maxv_lcell
-- Equation(s):
-- \U1|x2_1bit_s~0_combout\ = ((\Switch_i~combout\(2) & (!\Switch_i~combout\(1) & \Switch_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(2),
	datac => \Switch_i~combout\(1),
	datad => \Switch_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|x2_1bit_s~0_combout\);

-- Location: LC_X6_Y7_N6
\U1|val1_s[7]\ : maxv_lcell
-- Equation(s):
-- \U1|val1_s\(7) = ((\Con_80p_io[48]~0\ & ((\Switch_i~combout\(0)) # (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Switch_i~combout\(1),
	datac => \Con_80p_io[48]~0\,
	datad => \Switch_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|val1_s\(7));

-- Location: LC_X6_Y7_N8
\U1|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \U1|Mux0~4_combout\ = (\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & (!\Con_80p_io[64]~1\)) # (!\Switch_i~combout\(1) & ((\Con_80p_io[48]~0\))))) # (!\Switch_i~combout\(0) & ((\Switch_i~combout\(1) & ((\Con_80p_io[48]~0\))) # (!\Switch_i~combout\(1) & 
-- (\Con_80p_io[64]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "74e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[64]~1\,
	datab => \Switch_i~combout\(0),
	datac => \Con_80p_io[48]~0\,
	datad => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux0~4_combout\);

-- Location: LC_X6_Y7_N9
\U1|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \U1|Mux0~5_combout\ = (\Switch_i~combout\(2) & ((\Con_80p_io[64]~1\ & (\Switch_i~combout\(1))) # (!\Con_80p_io[64]~1\ & ((\U1|Mux0~4_combout\) # (!\Switch_i~combout\(1)))))) # (!\Switch_i~combout\(2) & (\U1|Mux0~4_combout\ & ((\Con_80p_io[64]~1\) # 
-- (!\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "db90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[64]~1\,
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Mux0~5_combout\);

-- Location: LC_X6_Y7_N5
\U1|result_o[7]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(7) = \U1|add_inst|add3|Add0~30_combout\ $ (\U1|x2_1bit_s~0_combout\ $ (\U1|val1_s\(7) $ (\U1|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|add_inst|add3|Add0~30_combout\,
	datab => \U1|x2_1bit_s~0_combout\,
	datac => \U1|val1_s\(7),
	datad => \U1|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(7));

-- Location: LC_X7_Y5_N9
\U1|result_o[6]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(6) = \U1|add_inst|add3|Add0~35_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(6));

-- Location: LC_X7_Y5_N8
\U1|result_o[5]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(5) = \U1|add_inst|add3|Add0~25_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(5));

-- Location: LC_X7_Y5_N0
\U1|result_o[2]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(2) = \U1|add_inst|add3|Add0~10_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(2));

-- Location: LC_X7_Y5_N5
\U1|result_o[3]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(3) = \U1|add_inst|add3|Add0~15_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(3));

-- Location: LC_X7_Y5_N3
\U1|result_o[4]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(4) = \U1|add_inst|add3|Add0~20_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(4));

-- Location: LC_X7_Y5_N7
\U1|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|result_o\(5) & (!\U1|result_o\(2) & (!\U1|result_o\(3) & !\U1|result_o\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|result_o\(5),
	datab => \U1|result_o\(2),
	datac => \U1|result_o\(3),
	datad => \U1|result_o\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal0~1_combout\);

-- Location: LC_X7_Y5_N1
\U1|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|Equal0~0_combout\ = ((\U1|x2_1bit_s~0_combout\ & (\U1|add_inst|add3|Add0~5_combout\ & \U1|add_inst|add3|Add0~0_combout\)) # (!\U1|x2_1bit_s~0_combout\ & (!\U1|add_inst|add3|Add0~5_combout\ & !\U1|add_inst|add3|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|x2_1bit_s~0_combout\,
	datac => \U1|add_inst|add3|Add0~5_combout\,
	datad => \U1|add_inst|add3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal0~0_combout\);

-- Location: LC_X7_Y5_N4
\U1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|result_o\(7) & (!\U1|result_o\(6) & (\U1|Equal0~1_combout\ & \U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|result_o\(7),
	datab => \U1|result_o\(6),
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Equal0~2_combout\);

-- Location: LC_X6_Y7_N3
\U1|add_inst|add1|Add1~0\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|add1|Add1~0_combout\ = (\U1|add_inst|add3|Add0~30_combout\ & (((\U1|val1_s\(7)) # (\U1|Mux0~5_combout\)))) # (!\U1|add_inst|add3|Add0~30_combout\ & (((\U1|val1_s\(7) & \U1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|add_inst|add3|Add0~30_combout\,
	datac => \U1|val1_s\(7),
	datad => \U1|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|add1|Add1~0_combout\);

-- Location: LC_X6_Y7_N4
\U1|add_inst|ovr_o\ : maxv_lcell
-- Equation(s):
-- \U1|add_inst|ovr_o~combout\ = ((\U1|Mux0~5_combout\ & (\U1|val1_s\(7) & !\U1|add_inst|add3|Add0~30_combout\)) # (!\U1|Mux0~5_combout\ & (!\U1|val1_s\(7) & \U1|add_inst|add3|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux0~5_combout\,
	datac => \U1|val1_s\(7),
	datad => \U1|add_inst|add3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|add_inst|ovr_o~combout\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Main_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Main_i,
	combout => \Clk_Main_i~combout\);

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nReset_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nReset_i,
	combout => \nReset_i~combout\);

-- Location: LC_X1_Y4_N0
\Cpt_s[0]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(0) = DFFEAS((((!Cpt_s(0)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => Cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(0));

-- Location: LC_X1_Y4_N1
\Cpt_s[1]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(1) = DFFEAS(Cpt_s(1) $ ((Cpt_s(0))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[1]~37\ = CARRY((Cpt_s(1) & (Cpt_s(0))))
-- \Cpt_s[1]~37COUT1_40\ = CARRY((Cpt_s(1) & (Cpt_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(1),
	datab => Cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(1),
	cout0 => \Cpt_s[1]~37\,
	cout1 => \Cpt_s[1]~37COUT1_40\);

-- Location: LC_X1_Y4_N2
\Cpt_s[2]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(2) = DFFEAS((Cpt_s(2) $ ((\Cpt_s[1]~37\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[2]~35\ = CARRY(((!\Cpt_s[1]~37\) # (!Cpt_s(2))))
-- \Cpt_s[2]~35COUT1_41\ = CARRY(((!\Cpt_s[1]~37COUT1_40\) # (!Cpt_s(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(2),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[1]~37\,
	cin1 => \Cpt_s[1]~37COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(2),
	cout0 => \Cpt_s[2]~35\,
	cout1 => \Cpt_s[2]~35COUT1_41\);

-- Location: LC_X1_Y4_N3
\Cpt_s[3]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(3) = DFFEAS(Cpt_s(3) $ ((((!\Cpt_s[2]~35\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[3]~33\ = CARRY((Cpt_s(3) & ((!\Cpt_s[2]~35\))))
-- \Cpt_s[3]~33COUT1_42\ = CARRY((Cpt_s(3) & ((!\Cpt_s[2]~35COUT1_41\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(3),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[2]~35\,
	cin1 => \Cpt_s[2]~35COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(3),
	cout0 => \Cpt_s[3]~33\,
	cout1 => \Cpt_s[3]~33COUT1_42\);

-- Location: LC_X1_Y4_N4
\Cpt_s[4]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(4) = DFFEAS(Cpt_s(4) $ ((((\Cpt_s[3]~33\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[4]~31\ = CARRY(((!\Cpt_s[3]~33COUT1_42\)) # (!Cpt_s(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(4),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[3]~33\,
	cin1 => \Cpt_s[3]~33COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(4),
	cout => \Cpt_s[4]~31\);

-- Location: LC_X1_Y4_N5
\Cpt_s[5]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(5) = DFFEAS(Cpt_s(5) $ ((((!\Cpt_s[4]~31\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[5]~29\ = CARRY((Cpt_s(5) & ((!\Cpt_s[4]~31\))))
-- \Cpt_s[5]~29COUT1_43\ = CARRY((Cpt_s(5) & ((!\Cpt_s[4]~31\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(5),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(5),
	cout0 => \Cpt_s[5]~29\,
	cout1 => \Cpt_s[5]~29COUT1_43\);

-- Location: LC_X1_Y4_N6
\Cpt_s[6]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(6) = DFFEAS(Cpt_s(6) $ (((((!\Cpt_s[4]~31\ & \Cpt_s[5]~29\) # (\Cpt_s[4]~31\ & \Cpt_s[5]~29COUT1_43\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[6]~27\ = CARRY(((!\Cpt_s[5]~29\)) # (!Cpt_s(6)))
-- \Cpt_s[6]~27COUT1_44\ = CARRY(((!\Cpt_s[5]~29COUT1_43\)) # (!Cpt_s(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(6),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[5]~29\,
	cin1 => \Cpt_s[5]~29COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(6),
	cout0 => \Cpt_s[6]~27\,
	cout1 => \Cpt_s[6]~27COUT1_44\);

-- Location: LC_X1_Y4_N7
\Cpt_s[7]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(7) = DFFEAS((Cpt_s(7) $ ((!(!\Cpt_s[4]~31\ & \Cpt_s[6]~27\) # (\Cpt_s[4]~31\ & \Cpt_s[6]~27COUT1_44\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[7]~25\ = CARRY(((Cpt_s(7) & !\Cpt_s[6]~27\)))
-- \Cpt_s[7]~25COUT1_45\ = CARRY(((Cpt_s(7) & !\Cpt_s[6]~27COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(7),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[6]~27\,
	cin1 => \Cpt_s[6]~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(7),
	cout0 => \Cpt_s[7]~25\,
	cout1 => \Cpt_s[7]~25COUT1_45\);

-- Location: LC_X1_Y4_N8
\Cpt_s[8]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(8) = DFFEAS(Cpt_s(8) $ (((((!\Cpt_s[4]~31\ & \Cpt_s[7]~25\) # (\Cpt_s[4]~31\ & \Cpt_s[7]~25COUT1_45\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[8]~23\ = CARRY(((!\Cpt_s[7]~25\)) # (!Cpt_s(8)))
-- \Cpt_s[8]~23COUT1_46\ = CARRY(((!\Cpt_s[7]~25COUT1_45\)) # (!Cpt_s(8)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(8),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[7]~25\,
	cin1 => \Cpt_s[7]~25COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(8),
	cout0 => \Cpt_s[8]~23\,
	cout1 => \Cpt_s[8]~23COUT1_46\);

-- Location: LC_X1_Y4_N9
\Cpt_s[9]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(9) = DFFEAS((Cpt_s(9) $ ((!(!\Cpt_s[4]~31\ & \Cpt_s[8]~23\) # (\Cpt_s[4]~31\ & \Cpt_s[8]~23COUT1_46\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[9]~21\ = CARRY(((Cpt_s(9) & !\Cpt_s[8]~23COUT1_46\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(9),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[8]~23\,
	cin1 => \Cpt_s[8]~23COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(9),
	cout => \Cpt_s[9]~21\);

-- Location: LC_X2_Y4_N0
\Cpt_s[10]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(10) = DFFEAS((Cpt_s(10) $ ((\Cpt_s[9]~21\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[10]~19\ = CARRY(((!\Cpt_s[9]~21\) # (!Cpt_s(10))))
-- \Cpt_s[10]~19COUT1_47\ = CARRY(((!\Cpt_s[9]~21\) # (!Cpt_s(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(10),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(10),
	cout0 => \Cpt_s[10]~19\,
	cout1 => \Cpt_s[10]~19COUT1_47\);

-- Location: LC_X2_Y4_N1
\Cpt_s[11]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(11) = DFFEAS((Cpt_s(11) $ ((!(!\Cpt_s[9]~21\ & \Cpt_s[10]~19\) # (\Cpt_s[9]~21\ & \Cpt_s[10]~19COUT1_47\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[11]~17\ = CARRY(((Cpt_s(11) & !\Cpt_s[10]~19\)))
-- \Cpt_s[11]~17COUT1_48\ = CARRY(((Cpt_s(11) & !\Cpt_s[10]~19COUT1_47\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(11),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[10]~19\,
	cin1 => \Cpt_s[10]~19COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(11),
	cout0 => \Cpt_s[11]~17\,
	cout1 => \Cpt_s[11]~17COUT1_48\);

-- Location: LC_X2_Y4_N2
\Cpt_s[12]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(12) = DFFEAS((Cpt_s(12) $ (((!\Cpt_s[9]~21\ & \Cpt_s[11]~17\) # (\Cpt_s[9]~21\ & \Cpt_s[11]~17COUT1_48\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[12]~15\ = CARRY(((!\Cpt_s[11]~17\) # (!Cpt_s(12))))
-- \Cpt_s[12]~15COUT1_49\ = CARRY(((!\Cpt_s[11]~17COUT1_48\) # (!Cpt_s(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(12),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[11]~17\,
	cin1 => \Cpt_s[11]~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(12),
	cout0 => \Cpt_s[12]~15\,
	cout1 => \Cpt_s[12]~15COUT1_49\);

-- Location: LC_X2_Y4_N3
\Cpt_s[13]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(13) = DFFEAS(Cpt_s(13) $ ((((!(!\Cpt_s[9]~21\ & \Cpt_s[12]~15\) # (\Cpt_s[9]~21\ & \Cpt_s[12]~15COUT1_49\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[13]~13\ = CARRY((Cpt_s(13) & ((!\Cpt_s[12]~15\))))
-- \Cpt_s[13]~13COUT1_50\ = CARRY((Cpt_s(13) & ((!\Cpt_s[12]~15COUT1_49\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(13),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[12]~15\,
	cin1 => \Cpt_s[12]~15COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(13),
	cout0 => \Cpt_s[13]~13\,
	cout1 => \Cpt_s[13]~13COUT1_50\);

-- Location: LC_X2_Y4_N4
\Cpt_s[14]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(14) = DFFEAS(Cpt_s(14) $ (((((!\Cpt_s[9]~21\ & \Cpt_s[13]~13\) # (\Cpt_s[9]~21\ & \Cpt_s[13]~13COUT1_50\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[14]~11\ = CARRY(((!\Cpt_s[13]~13COUT1_50\)) # (!Cpt_s(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(14),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[13]~13\,
	cin1 => \Cpt_s[13]~13COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(14),
	cout => \Cpt_s[14]~11\);

-- Location: LC_X2_Y4_N5
\Cpt_s[15]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(15) = DFFEAS(Cpt_s(15) $ ((((!\Cpt_s[14]~11\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[15]~9\ = CARRY((Cpt_s(15) & ((!\Cpt_s[14]~11\))))
-- \Cpt_s[15]~9COUT1_51\ = CARRY((Cpt_s(15) & ((!\Cpt_s[14]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(15),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(15),
	cout0 => \Cpt_s[15]~9\,
	cout1 => \Cpt_s[15]~9COUT1_51\);

-- Location: LC_X2_Y4_N6
\Cpt_s[16]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(16) = DFFEAS(Cpt_s(16) $ (((((!\Cpt_s[14]~11\ & \Cpt_s[15]~9\) # (\Cpt_s[14]~11\ & \Cpt_s[15]~9COUT1_51\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[16]~7\ = CARRY(((!\Cpt_s[15]~9\)) # (!Cpt_s(16)))
-- \Cpt_s[16]~7COUT1_52\ = CARRY(((!\Cpt_s[15]~9COUT1_51\)) # (!Cpt_s(16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(16),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[15]~9\,
	cin1 => \Cpt_s[15]~9COUT1_51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(16),
	cout0 => \Cpt_s[16]~7\,
	cout1 => \Cpt_s[16]~7COUT1_52\);

-- Location: LC_X2_Y4_N7
\Cpt_s[17]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(17) = DFFEAS((Cpt_s(17) $ ((!(!\Cpt_s[14]~11\ & \Cpt_s[16]~7\) # (\Cpt_s[14]~11\ & \Cpt_s[16]~7COUT1_52\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[17]~5\ = CARRY(((Cpt_s(17) & !\Cpt_s[16]~7\)))
-- \Cpt_s[17]~5COUT1_53\ = CARRY(((Cpt_s(17) & !\Cpt_s[16]~7COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(17),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[16]~7\,
	cin1 => \Cpt_s[16]~7COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(17),
	cout0 => \Cpt_s[17]~5\,
	cout1 => \Cpt_s[17]~5COUT1_53\);

-- Location: LC_X2_Y4_N8
\Cpt_s[18]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(18) = DFFEAS(Cpt_s(18) $ (((((!\Cpt_s[14]~11\ & \Cpt_s[17]~5\) # (\Cpt_s[14]~11\ & \Cpt_s[17]~5COUT1_53\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[18]~3\ = CARRY(((!\Cpt_s[17]~5\)) # (!Cpt_s(18)))
-- \Cpt_s[18]~3COUT1_54\ = CARRY(((!\Cpt_s[17]~5COUT1_53\)) # (!Cpt_s(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(18),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[17]~5\,
	cin1 => \Cpt_s[17]~5COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(18),
	cout0 => \Cpt_s[18]~3\,
	cout1 => \Cpt_s[18]~3COUT1_54\);

-- Location: LC_X2_Y4_N9
\Cpt_s[19]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(19) = DFFEAS((((!\Cpt_s[14]~11\ & \Cpt_s[18]~3\) # (\Cpt_s[14]~11\ & \Cpt_s[18]~3COUT1_54\) $ (!Cpt_s(19)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => Cpt_s(19),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[18]~3\,
	cin1 => \Cpt_s[18]~3COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(19));

-- Location: LC_X7_Y5_N6
\U1|result_o[0]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(0) = \U1|add_inst|add3|Add0~0_combout\ $ (((\Switch_i~combout\(0) & (!\Switch_i~combout\(1) & \Switch_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(1),
	datac => \Switch_i~combout\(2),
	datad => \U1|add_inst|add3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(0));

-- Location: LC_X7_Y5_N2
\U1|result_o[1]\ : maxv_lcell
-- Equation(s):
-- \U1|result_o\(1) = \U1|add_inst|add3|Add0~5_combout\ $ (((\Switch_i~combout\(0) & (\Switch_i~combout\(2) & !\Switch_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f078",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Switch_i~combout\(0),
	datab => \Switch_i~combout\(2),
	datac => \U1|add_inst|add3|Add0~5_combout\,
	datad => \Switch_i~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|result_o\(1));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Gen_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Gen_i);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_A_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_A_i);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_B_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_B_i);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(1));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(4));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(5));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(8));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(4));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(6));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(7));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|ALT_INV_Equal0~2_combout\,
	oe => VCC,
	padio => ww_nLed_o(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|add_inst|add1|ALT_INV_Add1~0_combout\,
	oe => VCC,
	padio => ww_nLed_o(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|add_inst|ALT_INV_ovr_o~combout\,
	oe => VCC,
	padio => ww_nLed_o(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(7));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(4));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Cpt_s(19),
	oe => VCC,
	padio => ww_nSeven_Seg_o(7));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(2));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(7));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(8));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(9));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(10));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(11));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(12));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(13));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(14));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(15));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(16));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(17));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(18));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(21));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(22));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(23));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_25p_io(25));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(5));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(7));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(8));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(9));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(14));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(15));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(16));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(17));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(18));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(19));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Mezzanine_io(20));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|Equal0~2_combout\,
	oe => VCC,
	padio => ww_Con_80p_io(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|add_inst|add1|Add1~0_combout\,
	oe => VCC,
	padio => ww_Con_80p_io(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|add_inst|ovr_o~combout\,
	oe => VCC,
	padio => ww_Con_80p_io(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(0),
	oe => VCC,
	padio => ww_Con_80p_io(9));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(1),
	oe => VCC,
	padio => ww_Con_80p_io(10));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(2),
	oe => VCC,
	padio => ww_Con_80p_io(11));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(3),
	oe => VCC,
	padio => ww_Con_80p_io(12));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(4),
	oe => VCC,
	padio => ww_Con_80p_io(13));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(5),
	oe => VCC,
	padio => ww_Con_80p_io(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(6),
	oe => VCC,
	padio => ww_Con_80p_io(15));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|result_o\(7),
	oe => VCC,
	padio => ww_Con_80p_io(16));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(17));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(18));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(19));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(20));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(22));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(23));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(24));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(25));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(26));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(28));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(30));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(31));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(32));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(33));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(34));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(35));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(36));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(37));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(38));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(39));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Con_80p_io(40));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(49));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(50));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(51));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(52));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(53));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(54));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(55));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(56));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[65]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(65));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[66]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(66));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[67]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(67));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[68]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(68));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[69]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(69));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[70]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(70));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[71]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(71));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[72]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(72));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[73]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(73));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[74]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(74));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[75]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(75));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[76]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(76));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[77]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(77));

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[78]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(78));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[79]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_Con_80p_io(79));
END structure;


