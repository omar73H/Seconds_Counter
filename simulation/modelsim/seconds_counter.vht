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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/07/2019 21:06:55"
                                                            
-- Vhdl Test Bench template for design  :  seconds_counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seconds_counter_vhd_tst IS
END seconds_counter_vhd_tst;
ARCHITECTURE seconds_counter_arch OF seconds_counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk50 : STD_LOGIC;
SIGNAL l1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL l2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL pause : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT seconds_counter
	PORT (
	clk50 : IN STD_LOGIC;
	l1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	l2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	pause : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : seconds_counter
	PORT MAP (
-- list connections between master ports and signals
	clk50 => clk50,
	l1 => l1,
	l2 => l2,
	pause => pause,
	reset => reset
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END seconds_counter_arch;
