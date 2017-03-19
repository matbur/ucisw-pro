----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:12 03/08/2017 
-- Design Name: 
-- Module Name:    vga_init - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_init is
    Port ( CLK : in  STD_LOGIC;
           VGA_R : out  STD_LOGIC;
           VGA_G : out  STD_LOGIC;
           VGA_B : out  STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC);
end vga_init;

architecture Behavioral of vga_init is
-- x = HPOS, y = VPOS
   constant HPOS_MAX : integer := 1039;
   constant VPOS_MAX : integer := 665;

--   constant HT_S : integer := 1040;
   constant HT_DISP : integer := 800;
   constant HT_PW : integer := 120;
   constant HT_FP : integer := 64;
   constant HT_BP : integer := 56;

--   constant VT_S : integer := 666;
   constant VT_DISP : integer := 600;
   constant VT_PW : integer := 6;
   constant VT_FP : integer := 37;
   constant VT_BP : integer := 23;

   constant NUM0 : integer := 0;
   constant NUM3 : integer := 3;
   constant NUM97 : integer := 97;


   signal HPOS : integer range 0 to HPOS_MAX := 0;
   signal VPOS : integer range 0 to VPOS_MAX := 0;

   constant BLUE : STD_LOGIC_VECTOR(0 to 2) := "001";
   constant YELLOW : STD_LOGIC_VECTOR(0 to 2) := "110";
begin

   HPOS_CNT: process (CLK) 
   begin
      if rising_edge(CLK) then
         if HPOS = HPOS_MAX then
            HPOS <= 0;
         else
            HPOS <= HPOS + 1;
         end if;
      end if;
   end process HPOS_CNT;

   VPOS_CNT: process (CLK) 
   begin
      if rising_edge(CLK) and HPOS = HPOS_MAX then
         if VPOS = VPOS_MAX then
            VPOS <= 0;
         else
            VPOS <= VPOS + 1;
         end if;
      end if;
   end process VPOS_CNT;

   VGA_HS <= '1' when HPOS >= HT_DISP + HT_FP and HPOS < HPOS_MAX - HT_BP else '0';
   VGA_VS <= '1' when VPOS >= VT_DISP + VT_FP and VPOS < VPOS_MAX - VT_BP else '0';

   VGA_B <= '1' when HPOS < HT_DISP and VPOS < VT_DISP else '0';


end Behavioral;

