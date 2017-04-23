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
use ieee.numeric_std.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_init is
    Port ( CLK : in  STD_LOGIC;
           
           VGA_COLOR : in STD_LOGIC_VECTOR(2 downto 0);
           
           POS : out STD_LOGIC_VECTOR(18 downto 0);
--           ADC_DOA : in STD_LOGIC_VECTOR(13 downto 0);
--           ADC_DOB : in STD_LOGIC_VECTOR(13 downto 0);
--           ADC_Busy : in STD_LOGIC;

           VGA_R : out  STD_LOGIC;
           VGA_G : out  STD_LOGIC;
           VGA_B : out  STD_LOGIC;
           VGA_HS : out  STD_LOGIC;
           VGA_VS : out  STD_LOGIC

--           AMP_WE : out STD_LOGIC;
--           AMP_DI : out STD_LOGIC_VECTOR(7 downto 0);
--           ADC_Start : out STD_LOGIC;
--
--           Line : out STD_LOGIC_VECTOR(63 downto 0);
--           Blank : out STD_LOGIC_VECTOR(15 downto 0)
           );
           
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

   signal HPOS : integer range 0 to HPOS_MAX := 0;
   signal VPOS : integer range 0 to VPOS_MAX := 0;

--   constant BLUE : STD_LOGIC_VECTOR(0 to 2) := "001";
--   constant YELLOW : STD_LOGIC_VECTOR(0 to 2) := "110";
   
--   constant SIDE : integer := 50;
   
--   signal BOX_HPOS : integer range -100 to HT_DISP := 400;
--   signal BOX_VPOS : integer range -100 to VT_DISP := 300;
--   signal BOX_HPOS_INT : integer range -100 to HT_DISP := 400;
--   signal BOX_VPOS_INT : integer range -100 to VT_DISP := 300;
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
   
   POS <= STD_LOGIC_VECTOR(to_unsigned(HPOS + VPOS * HPOS_MAX, 19));

--   VGA_R <= '1' when HPOS < HT_DISP and VPOS < VT_DISP else '0';
--   VGA_G <= '1' when HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE else '0';

--   AMP_WE <= '1' when HPOS = 0 and VPOS = 0 else '0';
--   AMP_DI <= X"11";
--   ADC_Start <= '1' when HPOS = HT_DISP and VPOS = VT_DISP else '0';
--   
--   Blank <= X"0F0F";
--   Line <= "00" & ADC_DOA & X"0000" & "00" & ADC_DOB & X"0000";
--   
--   BOX: process (CLK, HPOS, VPOS)
--   begin
--      if rising_edge(CLK) then
--         if HPOS = 0 and VPOS = 0 then
--            BOX_HPOS_INT <= BOX_HPOS - to_integer(signed(ADC_DOA(13 downto 11)));
--            BOX_VPOS_INT <= BOX_VPOS + to_integer(signed(ADC_DOB(13 downto 11)));
--         end if;
--         
--         if BOX_HPOS_INT < 0 then
--            BOX_HPOS_INT <= 0;
--         elsif BOX_HPOS_INT > HT_DISP - SIDE then
--            BOX_HPOS_INT <= HT_DISP - SIDE;
--         end if;
--
--         if BOX_VPOS_INT < 0 then
--            BOX_VPOS_INT <= 0;
--         elsif BOX_VPOS_INT > VT_DISP - SIDE then
--            BOX_VPOS_INT <= VT_DISP - SIDE;
--         end if;
--		 
--		 BOX_HPOS <= BOX_HPOS_INT;
--		 BOX_VPOS <= BOX_VPOS_INT;
--      end if;
--   end process BOX;
----   BOX_HPOS <= BOX_HPOS + to_integer(signed(ADC_DOA(13 downto 12)));
   
   

end Behavioral;

