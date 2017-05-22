--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:08:57 05/17/2017
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/burniak_cyran/pro5/test_vga.vhd
-- Project Name:  pro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_init
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
--USE ieee.numeric_std.ALL;
 
ENTITY test_vga IS
END test_vga;
 
ARCHITECTURE behavior OF test_vga IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_init
    PORT(
         CLK : IN  std_logic;
         VGA_COLOR : IN  std_logic_vector(2 downto 0);
         POS : OUT  std_logic_vector(19 downto 0);
         VGA_R : OUT  std_logic;
         VGA_G : OUT  std_logic;
         VGA_B : OUT  std_logic;
         VGA_HS : OUT  std_logic;
         VGA_VS : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal VGA_COLOR : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal POS : std_logic_vector(19 downto 0);
   signal VGA_R : std_logic;
   signal VGA_G : std_logic;
   signal VGA_B : std_logic;
   signal VGA_HS : std_logic;
   signal VGA_VS : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_init PORT MAP (
          CLK => CLK,
          VGA_COLOR => VGA_COLOR,
          POS => POS,
          VGA_R => VGA_R,
          VGA_G => VGA_G,
          VGA_B => VGA_B,
          VGA_HS => VGA_HS,
          VGA_VS => VGA_VS
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

      -- insert stimulus here 

      wait;
   end process;

END;
