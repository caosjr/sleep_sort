-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 14.1.0 Build 186 12/03/2014 SJ Full Version"
-- CREATED		"Mon Jun  3 14:29:03 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY display7seg IS 
	PORT
	(
		data :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		output :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END display7seg;

ARCHITECTURE bdf_type OF display7seg IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT \16dmux_0\
	PORT(C : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 A : IN STD_LOGIC;
		 D : IN STD_LOGIC;
		 Q12 : OUT STD_LOGIC;
		 Q13 : OUT STD_LOGIC;
		 Q11 : OUT STD_LOGIC;
		 Q9 : OUT STD_LOGIC;
		 Q10 : OUT STD_LOGIC;
		 Q7 : OUT STD_LOGIC;
		 Q4 : OUT STD_LOGIC;
		 Q5 : OUT STD_LOGIC;
		 Q6 : OUT STD_LOGIC;
		 Q2 : OUT STD_LOGIC;
		 Q3 : OUT STD_LOGIC;
		 Q14 : OUT STD_LOGIC;
		 Q15 : OUT STD_LOGIC;
		 Q0 : OUT STD_LOGIC;
		 Q1 : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF \16dmux_0\: COMPONENT IS true;
ATTRIBUTE noopt OF \16dmux_0\: COMPONENT IS true;

SIGNAL	output_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	q0 :  STD_LOGIC;
SIGNAL	q1 :  STD_LOGIC;
SIGNAL	q10 :  STD_LOGIC;
SIGNAL	q11 :  STD_LOGIC;
SIGNAL	q12 :  STD_LOGIC;
SIGNAL	q13 :  STD_LOGIC;
SIGNAL	q14 :  STD_LOGIC;
SIGNAL	q15 :  STD_LOGIC;
SIGNAL	q2 :  STD_LOGIC;
SIGNAL	q3 :  STD_LOGIC;
SIGNAL	q4 :  STD_LOGIC;
SIGNAL	q5 :  STD_LOGIC;
SIGNAL	q6 :  STD_LOGIC;
SIGNAL	q7 :  STD_LOGIC;
SIGNAL	q8 :  STD_LOGIC;
SIGNAL	q9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';



b2v_inst : 16dmux_0
PORT MAP(C => data(2),
		 B => data(1),
		 A => data(0),
		 D => data(3),
		 Q12 => q12,
		 Q13 => q13,
		 Q11 => q11,
		 Q9 => q9,
		 Q10 => q10,
		 Q7 => q7,
		 Q4 => q4,
		 Q5 => q5,
		 Q6 => q6,
		 Q2 => q2,
		 Q3 => q3,
		 Q14 => q14,
		 Q15 => q15,
		 Q0 => q0,
		 Q1 => q1);



output_ALTERA_SYNTHESIZED(6) <= q0 OR q7 OR q12 OR q1;


output_ALTERA_SYNTHESIZED(5) <= q1 OR q3 OR q2 OR q7 OR q10 OR q13;


output_ALTERA_SYNTHESIZED(4) <= q1 OR q4 OR q3 OR q5 OR q7 OR q9;


output_ALTERA_SYNTHESIZED(3) <= q1 OR q7 OR q15 OR q4;


output_ALTERA_SYNTHESIZED(2) <= q2 OR q14 OR q15 OR q12;


output_ALTERA_SYNTHESIZED(1) <= q5 OR q11 OR q6 OR q12 OR q15 OR SYNTHESIZED_WIRE_0;


output_ALTERA_SYNTHESIZED(0) <= q1 OR q11 OR q13 OR q4;

output <= output_ALTERA_SYNTHESIZED;

END bdf_type;