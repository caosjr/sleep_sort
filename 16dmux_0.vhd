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

LIBRARY altera;
USE altera.maxplus2.all; 

LIBRARY work;

ENTITY 16dmux_0 IS 
PORT 
( 
	C	:	IN	 STD_LOGIC;
	B	:	IN	 STD_LOGIC;
	A	:	IN	 STD_LOGIC;
	D	:	IN	 STD_LOGIC;
	Q12	:	OUT	 STD_LOGIC;
	Q13	:	OUT	 STD_LOGIC;
	Q11	:	OUT	 STD_LOGIC;
	Q9	:	OUT	 STD_LOGIC;
	Q10	:	OUT	 STD_LOGIC;
	Q8	:	OUT	 STD_LOGIC;
	Q4	:	OUT	 STD_LOGIC;
	Q5	:	OUT	 STD_LOGIC;
	Q6	:	OUT	 STD_LOGIC;
	Q2	:	OUT	 STD_LOGIC;
	Q3	:	OUT	 STD_LOGIC;
	Q14	:	OUT	 STD_LOGIC;
	Q15	:	OUT	 STD_LOGIC;
	Q0	:	OUT	 STD_LOGIC;
	Q1	:	OUT	 STD_LOGIC
); 
END 16dmux_0;

ARCHITECTURE bdf_type OF 16dmux_0 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst : 16dmux
PORT MAP(C => C,
		 B => B,
		 A => A,
		 D => D,
		 Q12 => Q12,
		 Q13 => Q13,
		 Q11 => Q11,
		 Q9 => Q9,
		 Q10 => Q10,
		 Q8 => Q8,
		 Q4 => Q4,
		 Q5 => Q5,
		 Q6 => Q6,
		 Q2 => Q2,
		 Q3 => Q3,
		 Q14 => Q14,
		 Q15 => Q15,
		 Q0 => Q0,
		 Q1 => Q1);

END bdf_type; 