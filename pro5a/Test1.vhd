-- Vhdl test bench created from schematic C:\Users\lab\Desktop\burniak_cyran\pro\schema_example2.sch - Wed Mar 08 13:41:39 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY schema_example2_schema_example2_sch_tb IS
END schema_example2_schema_example2_sch_tb;
ARCHITECTURE behavioral OF schema_example2_schema_example2_sch_tb IS 

   COMPONENT schema_example2
   PORT( Clk_50MHz	:	IN	STD_LOGIC; 
          VGA_R	:	OUT	STD_LOGIC; 
          VGA_G	:	OUT	STD_LOGIC; 
          VGA_B	:	OUT	STD_LOGIC; 
          VGA_HS	:	OUT	STD_LOGIC; 
          VGA_VS	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL VGA_R	:	STD_LOGIC;
   SIGNAL VGA_G	:	STD_LOGIC;
   SIGNAL VGA_B	:	STD_LOGIC;
   SIGNAL VGA_HS	:	STD_LOGIC;
   SIGNAL VGA_VS	:	STD_LOGIC;

BEGIN

   UUT: schema_example2 PORT MAP(
		Clk_50MHz => Clk_50MHz, 
		VGA_R => VGA_R, 
		VGA_G => VGA_G, 
		VGA_B => VGA_B, 
		VGA_HS => VGA_HS, 
		VGA_VS => VGA_VS
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
