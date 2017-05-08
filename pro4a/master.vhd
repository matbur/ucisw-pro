----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:57 04/05/2017 
-- Design Name: 
-- Module Name:    master - Behavioral 
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

entity MASTER is
    Port ( ADC_DOA : in  STD_LOGIC_VECTOR (13 downto 0);
           ADC_DOB : in  STD_LOGIC_VECTOR (13 downto 0);
           ADC_BUSY : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           POS : in  STD_LOGIC_VECTOR(19 downto 0);
           DATA : in  STD_LOGIC;
           Line : out  STD_LOGIC_VECTOR (63 downto 0);
           Blank : out  STD_LOGIC_VECTOR (15 downto 0);
           ADDR : out  STD_LOGIC_VECTOR (13 downto 0);
           VGA_COLOR : out STD_LOGIC_VECTOR(2 downto 0);
           AMP_WE : out  STD_LOGIC;
           ADC_Start : out  STD_LOGIC;
           AMP_DI : out  STD_LOGIC_VECTOR (7 downto 0));
end MASTER;

architecture Behavioral of MASTER is

--   constant SIDE : integer := 50;
   constant SIDE : signed ( 10 downto 0 ) := to_signed( 20, 11);
   constant VMAX : signed ( 10 downto 0 ) := to_signed( 600, 11);
   constant HMAX : signed ( 10 downto 0 ) := to_signed( 800, 11);
--   constant HMAX : integer := 800;
   
--   signal BOX_HPOS : integer range -100 to 1000 := 400;
   signal BOX_HPOS : signed( 10 downto 0) := to_signed( 0, 11 );
   signal BOX_VPOS : signed( 10 downto 0) := to_signed( 550, 11 );
   constant BOX_VPOS_INIT : signed ( 10 downto 0 ) := to_signed( 550, 11);
   constant BOX_HPOS_INIT : signed ( 10 downto 0 ) := to_signed( 0, 11);
--   signal BOX_VPOS : integer range -100 to 1000 := 300;
   
   signal HPOS : signed( 10 downto 0) := to_signed( 0, 11 );
   signal VPOS : signed( 10 downto 0) := to_signed( 0, 11 );

--   signal HPOS : integer range 0 to 800 := 0;
--   signal VPOS : integer range 0 to 600 := 0;
   signal VGA_COLOR_INT : STD_LOGIC_VECTOR(2 downto 0);

begin

   HPOS <= signed('0' & POS(19 downto 10));
   VPOS <= signed('0' & POS(9 downto 0));

   AMP_WE <= '1' when HPOS = 0 and VPOS = 0 else '0';
   AMP_DI <= X"11";
   ADC_Start <= '1' when HPOS = HMAX and VPOS = VMAX else '0';
   
   Blank <= X"0F0F";
   Line <= "00" & ADC_DOA & X"0000" & "00" & ADC_DOB & X"0000";

   BOX: process (CLK, HPOS, VPOS)
   begin
      if rising_edge(CLK) then
         if HPOS = 0 and VPOS = 0 then
            BOX_HPOS <= BOX_HPOS - signed(ADC_DOA(13 downto 11));
            BOX_VPOS <= BOX_VPOS + signed(ADC_DOB(13 downto 11));
         end if;
         
         if BOX_HPOS < 0 then
            BOX_HPOS <= to_signed(0, 11);
         elsif BOX_HPOS > HMAX - SIDE then
            BOX_HPOS <= HMAX - SIDE;
         end if;

         if BOX_VPOS < 0 then
            BOX_VPOS <= to_signed(0, 11);
         elsif BOX_VPOS > VMAX - SIDE then
            BOX_VPOS <= VMAX - SIDE;
         end if;
         
         if DATA = '0' and
               HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and 
               VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE then
            BOX_HPOS <= BOX_HPOS_INIT;
            BOX_VPOS <= BOX_VPOS_INIT;
         end if;
         
--         if HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE then
--            VGA_COLOR_INT <= B"101";
--         else
--            VGA_COLOR_INT <= DATA & DATA & not DATA;
--         end if;
--         VGA_COLOR_INT <= B"101" when HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE else ;

       
--       if HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE then
--         VGA_COLOR <= B"101";
--       else
--         VGA_COLOR <= B"001";
--       end if;
      end if;
   end process BOX;
--   BOX_HPOS <= BOX_HPOS + to_integer(signed(ADC_DOA(13 downto 12)));

   ADDR <= STD_LOGIC_VECTOR(VPOS(9 downto 3)) & STD_LOGIC_VECTOR(HPOS(9 downto 3));
   
   VGA_COLOR_INT <= B"101" when HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE else DATA & DATA & not DATA;
--   VGA_COLOR_INT <= DATA & DATA & not DATA;
   VGA_COLOR <= VGA_COLOR_INT;

end Behavioral;

