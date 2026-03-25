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

-- DATE "03/25/2026 09:24:45"

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

ENTITY 	alu_nbits_top IS
    PORT (
	opcode_i : IN std_logic_vector(2 DOWNTO 0);
	na_i : IN std_logic_vector(3 DOWNTO 0);
	nb_i : IN std_logic_vector(3 DOWNTO 0);
	result_o : OUT std_logic_vector(3 DOWNTO 0);
	z_o : OUT std_logic;
	dep_nsgn_o : OUT std_logic;
	dep_sgn_o : OUT std_logic
	);
END alu_nbits_top;

-- Design Ports Information


ARCHITECTURE structure OF alu_nbits_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode_i : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_na_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_nb_i : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result_o : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_z_o : std_logic;
SIGNAL ww_dep_nsgn_o : std_logic;
SIGNAL ww_dep_sgn_o : std_logic;
SIGNAL \add_inst|add3|Add0~20\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \cin_s~0_combout\ : std_logic;
SIGNAL \add_inst|add3|Add0~22_cout0\ : std_logic;
SIGNAL \add_inst|add3|Add0~22COUT1_26\ : std_logic;
SIGNAL \add_inst|add3|Add0~0_combout\ : std_logic;
SIGNAL \result_s~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \add_inst|add3|Add0~2\ : std_logic;
SIGNAL \add_inst|add3|Add0~2COUT1_27\ : std_logic;
SIGNAL \add_inst|add3|Add0~5_combout\ : std_logic;
SIGNAL \result_s~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \add_inst|add3|Add0~7\ : std_logic;
SIGNAL \add_inst|add3|Add0~7COUT1_28\ : std_logic;
SIGNAL \add_inst|add3|Add0~10_combout\ : std_logic;
SIGNAL \result_s~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \add_inst|add3|Add0~12\ : std_logic;
SIGNAL \add_inst|add3|Add0~12COUT1_29\ : std_logic;
SIGNAL \add_inst|add3|Add0~15_combout\ : std_logic;
SIGNAL \op0_and_not_op1_and_op2_s~0_combout\ : std_logic;
SIGNAL \result_s~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \dep_nsgn_o~0_combout\ : std_logic;
SIGNAL \dep_nsgn_o~1_combout\ : std_logic;
SIGNAL \add_inst|ovr_o~combout\ : std_logic;
SIGNAL \nb_i~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL val1_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \na_i~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \opcode_i~combout\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_opcode_i <= opcode_i;
ww_na_i <= na_i;
ww_nb_i <= nb_i;
result_o <= ww_result_o;
z_o <= ww_z_o;
dep_nsgn_o <= ww_dep_nsgn_o;
dep_sgn_o <= ww_dep_sgn_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode_i(1),
	combout => \opcode_i~combout\(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode_i(0),
	combout => \opcode_i~combout\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\na_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_na_i(0),
	combout => \na_i~combout\(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nb_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nb_i(0),
	combout => \nb_i~combout\(0));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode_i(2),
	combout => \opcode_i~combout\(2));

-- Location: LC_X11_Y5_N4
\Mux3~3\ : maxv_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (\opcode_i~combout\(2) & ((\opcode_i~combout\(1) & ((!\opcode_i~combout\(0)))) # (!\opcode_i~combout\(1) & (!\nb_i~combout\(0))))) # (!\opcode_i~combout\(2) & (((\nb_i~combout\(0)) # (\opcode_i~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1bfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \nb_i~combout\(0),
	datac => \opcode_i~combout\(0),
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X11_Y5_N9
\Mux3~2\ : maxv_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & ((!\opcode_i~combout\(2)))) # (!\opcode_i~combout\(0) & (\nb_i~combout\(0) & \opcode_i~combout\(2))))) # (!\opcode_i~combout\(1) & ((\nb_i~combout\(0) & (!\opcode_i~combout\(0) & 
-- !\opcode_i~combout\(2))) # (!\nb_i~combout\(0) & ((\opcode_i~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "19a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \nb_i~combout\(0),
	datac => \opcode_i~combout\(0),
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X11_Y5_N5
\Mux3~4\ : maxv_lcell
-- Equation(s):
-- \Mux3~4_combout\ = ((\na_i~combout\(0) & (\Mux3~3_combout\)) # (!\na_i~combout\(0) & ((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \na_i~combout\(0),
	datac => \Mux3~3_combout\,
	datad => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X11_Y5_N2
\val1_s[0]\ : maxv_lcell
-- Equation(s):
-- val1_s(0) = ((\na_i~combout\(0) & ((\opcode_i~combout\(0)) # (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \na_i~combout\(0),
	datac => \opcode_i~combout\(1),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => val1_s(0));

-- Location: LC_X11_Y5_N6
\cin_s~0\ : maxv_lcell
-- Equation(s):
-- \cin_s~0_combout\ = ((\opcode_i~combout\(1) $ (\opcode_i~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \opcode_i~combout\(1),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cin_s~0_combout\);

-- Location: LC_X11_Y3_N5
\add_inst|add3|Add0~22\ : maxv_lcell
-- Equation(s):
-- \add_inst|add3|Add0~22_cout0\ = CARRY((!\cin_s~0_combout\ & (\opcode_i~combout\(2))))
-- \add_inst|add3|Add0~22COUT1_26\ = CARRY((!\cin_s~0_combout\ & (\opcode_i~combout\(2))))

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
	dataa => \cin_s~0_combout\,
	datab => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|add3|Add0~20\,
	cout0 => \add_inst|add3|Add0~22_cout0\,
	cout1 => \add_inst|add3|Add0~22COUT1_26\);

-- Location: LC_X11_Y3_N6
\add_inst|add3|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_inst|add3|Add0~0_combout\ = \Mux3~4_combout\ $ (val1_s(0) $ ((\add_inst|add3|Add0~22_cout0\)))
-- \add_inst|add3|Add0~2\ = CARRY((\Mux3~4_combout\ & (!val1_s(0) & !\add_inst|add3|Add0~22_cout0\)) # (!\Mux3~4_combout\ & ((!\add_inst|add3|Add0~22_cout0\) # (!val1_s(0)))))
-- \add_inst|add3|Add0~2COUT1_27\ = CARRY((\Mux3~4_combout\ & (!val1_s(0) & !\add_inst|add3|Add0~22COUT1_26\)) # (!\Mux3~4_combout\ & ((!\add_inst|add3|Add0~22COUT1_26\) # (!val1_s(0)))))

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
	dataa => \Mux3~4_combout\,
	datab => val1_s(0),
	cin0 => \add_inst|add3|Add0~22_cout0\,
	cin1 => \add_inst|add3|Add0~22COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|add3|Add0~0_combout\,
	cout0 => \add_inst|add3|Add0~2\,
	cout1 => \add_inst|add3|Add0~2COUT1_27\);

-- Location: LC_X11_Y3_N1
\result_s~0\ : maxv_lcell
-- Equation(s):
-- \result_s~0_combout\ = \add_inst|add3|Add0~0_combout\ $ (((!\opcode_i~combout\(1) & (\opcode_i~combout\(0) & \opcode_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(0),
	datac => \add_inst|add3|Add0~0_combout\,
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_s~0_combout\);

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\na_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_na_i(1),
	combout => \na_i~combout\(1));

-- Location: LC_X11_Y3_N4
\val1_s[1]\ : maxv_lcell
-- Equation(s):
-- val1_s(1) = ((\na_i~combout\(1) & ((\opcode_i~combout\(0)) # (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datac => \na_i~combout\(1),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => val1_s(1));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nb_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nb_i(1),
	combout => \nb_i~combout\(1));

-- Location: LC_X11_Y3_N2
\Mux2~4\ : maxv_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & (!\nb_i~combout\(1))) # (!\opcode_i~combout\(0) & ((\na_i~combout\(1)))))) # (!\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & ((\na_i~combout\(1)))) # (!\opcode_i~combout\(0) & 
-- (\nb_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \nb_i~combout\(1),
	datac => \na_i~combout\(1),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X11_Y3_N0
\Mux2~5\ : maxv_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\opcode_i~combout\(2) & ((\opcode_i~combout\(1) & ((\nb_i~combout\(1)) # (\Mux2~4_combout\))) # (!\opcode_i~combout\(1) & (!\nb_i~combout\(1))))) # (!\opcode_i~combout\(2) & (\Mux2~4_combout\ & ((\nb_i~combout\(1)) # 
-- (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(2),
	datac => \nb_i~combout\(1),
	datad => \Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: LC_X11_Y3_N7
\add_inst|add3|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_inst|add3|Add0~5_combout\ = val1_s(1) $ (\Mux2~5_combout\ $ ((!\add_inst|add3|Add0~2\)))
-- \add_inst|add3|Add0~7\ = CARRY((val1_s(1) & ((\Mux2~5_combout\) # (!\add_inst|add3|Add0~2\))) # (!val1_s(1) & (\Mux2~5_combout\ & !\add_inst|add3|Add0~2\)))
-- \add_inst|add3|Add0~7COUT1_28\ = CARRY((val1_s(1) & ((\Mux2~5_combout\) # (!\add_inst|add3|Add0~2COUT1_27\))) # (!val1_s(1) & (\Mux2~5_combout\ & !\add_inst|add3|Add0~2COUT1_27\)))

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
	dataa => val1_s(1),
	datab => \Mux2~5_combout\,
	cin0 => \add_inst|add3|Add0~2\,
	cin1 => \add_inst|add3|Add0~2COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|add3|Add0~5_combout\,
	cout0 => \add_inst|add3|Add0~7\,
	cout1 => \add_inst|add3|Add0~7COUT1_28\);

-- Location: LC_X11_Y3_N3
\result_s~1\ : maxv_lcell
-- Equation(s):
-- \result_s~1_combout\ = \add_inst|add3|Add0~5_combout\ $ (((!\opcode_i~combout\(1) & (\opcode_i~combout\(0) & \opcode_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(0),
	datac => \add_inst|add3|Add0~5_combout\,
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_s~1_combout\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\na_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_na_i(2),
	combout => \na_i~combout\(2));

-- Location: LC_X11_Y5_N3
\val1_s[2]\ : maxv_lcell
-- Equation(s):
-- val1_s(2) = ((\na_i~combout\(2) & ((\opcode_i~combout\(0)) # (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datac => \na_i~combout\(2),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => val1_s(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nb_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nb_i(2),
	combout => \nb_i~combout\(2));

-- Location: LC_X11_Y5_N7
\Mux1~4\ : maxv_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & (!\nb_i~combout\(2))) # (!\opcode_i~combout\(0) & ((\na_i~combout\(2)))))) # (!\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & ((\na_i~combout\(2)))) # (!\opcode_i~combout\(0) & 
-- (\nb_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \nb_i~combout\(2),
	datac => \na_i~combout\(2),
	datad => \opcode_i~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X11_Y5_N8
\Mux1~5\ : maxv_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (\opcode_i~combout\(2) & ((\opcode_i~combout\(1) & ((\nb_i~combout\(2)) # (\Mux1~4_combout\))) # (!\opcode_i~combout\(1) & (!\nb_i~combout\(2))))) # (!\opcode_i~combout\(2) & (\Mux1~4_combout\ & ((\nb_i~combout\(2)) # 
-- (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \nb_i~combout\(2),
	datac => \Mux1~4_combout\,
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X11_Y3_N8
\add_inst|add3|Add0~10\ : maxv_lcell
-- Equation(s):
-- \add_inst|add3|Add0~10_combout\ = val1_s(2) $ (\Mux1~5_combout\ $ ((\add_inst|add3|Add0~7\)))
-- \add_inst|add3|Add0~12\ = CARRY((val1_s(2) & (!\Mux1~5_combout\ & !\add_inst|add3|Add0~7\)) # (!val1_s(2) & ((!\add_inst|add3|Add0~7\) # (!\Mux1~5_combout\))))
-- \add_inst|add3|Add0~12COUT1_29\ = CARRY((val1_s(2) & (!\Mux1~5_combout\ & !\add_inst|add3|Add0~7COUT1_28\)) # (!val1_s(2) & ((!\add_inst|add3|Add0~7COUT1_28\) # (!\Mux1~5_combout\))))

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
	dataa => val1_s(2),
	datab => \Mux1~5_combout\,
	cin0 => \add_inst|add3|Add0~7\,
	cin1 => \add_inst|add3|Add0~7COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|add3|Add0~10_combout\,
	cout0 => \add_inst|add3|Add0~12\,
	cout1 => \add_inst|add3|Add0~12COUT1_29\);

-- Location: LC_X12_Y7_N4
\result_s~2\ : maxv_lcell
-- Equation(s):
-- \result_s~2_combout\ = \add_inst|add3|Add0~10_combout\ $ (((!\opcode_i~combout\(1) & (\opcode_i~combout\(0) & \opcode_i~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(0),
	datac => \add_inst|add3|Add0~10_combout\,
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_s~2_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nb_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nb_i(3),
	combout => \nb_i~combout\(3));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\na_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_na_i(3),
	combout => \na_i~combout\(3));

-- Location: LC_X12_Y7_N2
\Mux0~4\ : maxv_lcell
-- Equation(s):
-- \Mux0~4_combout\ = (\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & (!\nb_i~combout\(3))) # (!\opcode_i~combout\(0) & ((\na_i~combout\(3)))))) # (!\opcode_i~combout\(1) & ((\opcode_i~combout\(0) & ((\na_i~combout\(3)))) # (!\opcode_i~combout\(0) & 
-- (\nb_i~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(0),
	datac => \nb_i~combout\(3),
	datad => \na_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~4_combout\);

-- Location: LC_X12_Y7_N6
\Mux0~5\ : maxv_lcell
-- Equation(s):
-- \Mux0~5_combout\ = (\opcode_i~combout\(2) & ((\opcode_i~combout\(1) & ((\nb_i~combout\(3)) # (\Mux0~4_combout\))) # (!\opcode_i~combout\(1) & (!\nb_i~combout\(3))))) # (!\opcode_i~combout\(2) & (\Mux0~4_combout\ & ((\nb_i~combout\(3)) # 
-- (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd84",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode_i~combout\(1),
	datab => \opcode_i~combout\(2),
	datac => \nb_i~combout\(3),
	datad => \Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~5_combout\);

-- Location: LC_X11_Y3_N9
\add_inst|add3|Add0~15\ : maxv_lcell
-- Equation(s):
-- \add_inst|add3|Add0~15_combout\ = (((!\add_inst|add3|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \add_inst|add3|Add0~12\,
	cin1 => \add_inst|add3|Add0~12COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|add3|Add0~15_combout\);

-- Location: LC_X12_Y7_N5
\op0_and_not_op1_and_op2_s~0\ : maxv_lcell
-- Equation(s):
-- \op0_and_not_op1_and_op2_s~0_combout\ = ((\opcode_i~combout\(0) & (!\opcode_i~combout\(1) & \opcode_i~combout\(2))))

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
	datab => \opcode_i~combout\(0),
	datac => \opcode_i~combout\(1),
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \op0_and_not_op1_and_op2_s~0_combout\);

-- Location: LC_X12_Y7_N3
\val1_s[3]\ : maxv_lcell
-- Equation(s):
-- val1_s(3) = ((\na_i~combout\(3) & ((\opcode_i~combout\(0)) # (!\opcode_i~combout\(1)))))

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
	datab => \opcode_i~combout\(0),
	datac => \opcode_i~combout\(1),
	datad => \na_i~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => val1_s(3));

-- Location: LC_X12_Y7_N0
\result_s~3\ : maxv_lcell
-- Equation(s):
-- \result_s~3_combout\ = \Mux0~5_combout\ $ (\add_inst|add3|Add0~15_combout\ $ (\op0_and_not_op1_and_op2_s~0_combout\ $ (val1_s(3))))

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
	dataa => \Mux0~5_combout\,
	datab => \add_inst|add3|Add0~15_combout\,
	datac => \op0_and_not_op1_and_op2_s~0_combout\,
	datad => val1_s(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \result_s~3_combout\);

-- Location: LC_X12_Y7_N7
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!\result_s~1_combout\ & (!\result_s~0_combout\ & (!\result_s~3_combout\ & !\result_s~2_combout\)))

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
	dataa => \result_s~1_combout\,
	datab => \result_s~0_combout\,
	datac => \result_s~3_combout\,
	datad => \result_s~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X12_Y7_N9
\dep_nsgn_o~0\ : maxv_lcell
-- Equation(s):
-- \dep_nsgn_o~0_combout\ = ((\opcode_i~combout\(2) & (\opcode_i~combout\(0) $ (!\opcode_i~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode_i~combout\(0),
	datac => \opcode_i~combout\(1),
	datad => \opcode_i~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dep_nsgn_o~0_combout\);

-- Location: LC_X12_Y7_N1
\dep_nsgn_o~1\ : maxv_lcell
-- Equation(s):
-- \dep_nsgn_o~1_combout\ = \dep_nsgn_o~0_combout\ $ (((\add_inst|add3|Add0~15_combout\ & ((\Mux0~5_combout\) # (val1_s(3)))) # (!\add_inst|add3|Add0~15_combout\ & (\Mux0~5_combout\ & val1_s(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "366c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_inst|add3|Add0~15_combout\,
	datab => \dep_nsgn_o~0_combout\,
	datac => \Mux0~5_combout\,
	datad => val1_s(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dep_nsgn_o~1_combout\);

-- Location: LC_X12_Y7_N8
\add_inst|ovr_o\ : maxv_lcell
-- Equation(s):
-- \add_inst|ovr_o~combout\ = ((\add_inst|add3|Add0~15_combout\ & (!\Mux0~5_combout\ & !val1_s(3))) # (!\add_inst|add3|Add0~15_combout\ & (\Mux0~5_combout\ & val1_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "300c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_inst|add3|Add0~15_combout\,
	datac => \Mux0~5_combout\,
	datad => val1_s(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_inst|ovr_o~combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result_s~0_combout\,
	oe => VCC,
	padio => ww_result_o(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result_s~1_combout\,
	oe => VCC,
	padio => ww_result_o(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result_s~2_combout\,
	oe => VCC,
	padio => ww_result_o(2));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \result_s~3_combout\,
	oe => VCC,
	padio => ww_result_o(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z_o~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~0_combout\,
	oe => VCC,
	padio => ww_z_o);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dep_nsgn_o~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dep_nsgn_o~1_combout\,
	oe => VCC,
	padio => ww_dep_nsgn_o);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dep_sgn_o~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_inst|ovr_o~combout\,
	oe => VCC,
	padio => ww_dep_sgn_o);
END structure;


