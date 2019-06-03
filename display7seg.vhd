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
-- CREATED		"Sun Jun 02 03:30:06 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY display7seg IS 
	PORT
	(
		data :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		g :  OUT  STD_LOGIC;
		f :  OUT  STD_LOGIC;
		e :  OUT  STD_LOGIC;
		d :  OUT  STD_LOGIC;
		c :  OUT  STD_LOGIC;
		b :  OUT  STD_LOGIC;
		a :  OUT  STD_LOGIC
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
		 Q8 : OUT STD_LOGIC;
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


BEGIN 



b2v_inst : 16dmux_0
PORT MAP(C => data(1),
		 B => data(2),
		 A => data(3),
		 D => data(0),
		 Q12 => q12,
		 Q13 => q13,
		 Q11 => q11,
		 Q9 => q9,
		 Q10 => q10,
		 Q8 => q8,
		 Q4 => q4,
		 Q5 => q5,
		 Q6 => q6,
		 Q2 => q2,
		 Q3 => q3,
		 Q14 => q14,
		 Q15 => q15,
		 Q0 => q0,
		 Q1 => q1);


g <= q15 OR q8 OR q12 OR q14;


f <= q14 OR q12 OR q13 OR q8 OR q5 OR q2;


e <= q14 OR q11 OR q12 OR q10 OR q8 OR q6;


d <= q14 OR q8 OR q0 OR q11;


c <= q13 OR q1 OR q0 OR q3;


b <= q10 OR q4 OR q9 OR q3 OR q1 OR q0;


a <= q14 OR q4 OR q2 OR q11;


END bdf_type;