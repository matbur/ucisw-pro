--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:22:00 05/17/2017
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/burniak_cyran/pro5/test_master_right.vhd
-- Project Name:  pro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MASTER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY test_master_right IS
END test_master_right;
 
ARCHITECTURE behavior OF test_master_right IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MASTER
    PORT(
         ADC_DOA : IN  std_logic_vector(13 downto 0);
         ADC_DOB : IN  std_logic_vector(13 downto 0);
         ADC_BUSY : IN  std_logic;
         RST_BUTTON : IN  std_logic;
         CLK : IN  std_logic;
         POS : IN  std_logic_vector(19 downto 0);
         DATA : IN  std_logic;
         DATA_CON : IN  std_logic;
         Line : OUT  std_logic_vector(63 downto 0);
         Blank : OUT  std_logic_vector(15 downto 0);
         ADDR : OUT  std_logic_vector(13 downto 0);
         VGA_COLOR : OUT  std_logic_vector(2 downto 0);
         AMP_WE : OUT  std_logic;
         ADC_Start : OUT  std_logic;
         AMP_DI : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADC_DOA : std_logic_vector(13 downto 0) := (others => '0');
   signal ADC_DOB : std_logic_vector(13 downto 0) := (others => '0');
   signal ADC_BUSY : std_logic := '0';
   signal RST_BUTTON : std_logic := '0';
   signal CLK : std_logic := '0';
   signal POS : std_logic_vector(19 downto 0) := (others => '0');
   signal DATA : std_logic := '0';
   signal DATA_CON : std_logic := '0';

 	--Outputs
   signal Line : std_logic_vector(63 downto 0);
   signal Blank : std_logic_vector(15 downto 0);
   signal ADDR : std_logic_vector(13 downto 0);
   signal VGA_COLOR : std_logic_vector(2 downto 0);
   signal AMP_WE : std_logic;
   signal ADC_Start : std_logic;
   signal AMP_DI : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MASTER PORT MAP (
          ADC_DOA => ADC_DOA,
          ADC_DOB => ADC_DOB,
          ADC_BUSY => ADC_BUSY,
          RST_BUTTON => RST_BUTTON,
          CLK => CLK,
          POS => POS,
          DATA => DATA,
          DATA_CON => DATA_CON,
          Line => Line,
          Blank => Blank,
          ADDR => ADDR,
          VGA_COLOR => VGA_COLOR,
          AMP_WE => AMP_WE,
          ADC_Start => ADC_Start,
          AMP_DI => AMP_DI
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;
      ADC_DOA <= X"A00" & "00";

      -- insert stimulus here 

      wait;
   end process;
   
   VGA_proc: process
   begin
      wait for CLK_period;
      POS <= STD_LOGIC_VECTOR(unsigned(POS) + 1);
   end process;

END;
