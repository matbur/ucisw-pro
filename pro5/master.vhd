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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


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
           RST_BUTTON : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           POS : in  STD_LOGIC_VECTOR(19 downto 0);
           DATA : in  STD_LOGIC;
           DATA_CON : in  STD_LOGIC;
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
   
   signal CLKTIME : signed(22 downto 0) := (others =>'0');
   signal PLAYTIME : signed(15 downto 0) := to_signed(0, 16);
   signal TOUCHING : STD_LOGIC := '0';
   signal TIMER_EN : STD_LOGIC := '1';

   signal RESTART : STD_LOGIC := '0';

begin

   HPOS <= signed('0' & POS(19 downto 10));
   VPOS <= signed('0' & POS(9 downto 0));

   AMP_WE <= '1' when HPOS = 0 and VPOS = 0 else '0';
   AMP_DI <= X"22";
   ADC_Start <= '1' when HPOS = HMAX and VPOS = VMAX else '0';
   
   Blank <= X"0C30";
   Line <= ADC_DOA & "00" & X"00" & ADC_DOB & "00" & X"00" & STD_LOGIC_VECTOR(PLAYTIME);

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
         
         if BOX_VPOS < 2 then
            TIMER_EN <= '0';
         end if;
         
         if RESTART = '1' then
            BOX_HPOS <= BOX_HPOS_INIT;
            BOX_VPOS <= BOX_VPOS_INIT;
            TIMER_EN <= '1';
         end if;
         
         if TOUCHING = '1' then
            TOUCHING <= '0';
            BOX_HPOS <= BOX_HPOS + signed(ADC_DOA(13 downto 11));
            BOX_VPOS <= BOX_VPOS - signed(ADC_DOB(13 downto 11));
         end if;
         
         TOUCHING <= '0';
         if DATA = '0' and
               HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and 
               VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE then
            TOUCHING <= '1';
         end if;
         
      end if;
   end process BOX;

   ADDR <= STD_LOGIC_VECTOR(VPOS(9 downto 3)) & STD_LOGIC_VECTOR(HPOS(9 downto 3));

   VGA_COLOR_INT <= DATA_CON & DATA_CON & not DATA_CON when TIMER_EN = '0'
                    else B"101" when HPOS > BOX_HPOS and HPOS < BOX_HPOS + SIDE and VPOS > BOX_VPOS and VPOS < BOX_VPOS + SIDE
                    else DATA & DATA & not DATA;
--   VGA_COLOR_INT <= DATA & DATA & not DATA;
   VGA_COLOR <= VGA_COLOR_INT;

   TIMER: process (CLK)
   begin
      if rising_edge(CLK) then
         if RESTART = '1' then
            PLAYTIME <= to_signed(0, 16);
--            TIMER_EN <= '1';
         end if;
            
         if TOUCHING = '1' and TIMER_EN = '1' then
            PLAYTIME <= PLAYTIME + 1;
--            PLAYTIME <= to_signed(0, 16);
         end if;
         
         if TIMER_EN = '1' then
            if CLKTIME = "10011000100101101000000" then     -- 5 MHz
               CLKTIME <= "00000000000000000000000";
               if PLAYTIME = X"ffff" then
                  PLAYTIME <= to_signed(0, 16);
               else
                  PLAYTIME <= PLAYTIME + 1;
               end if;
            else
               CLKTIME <= CLKTIME + 1;
            end if;
         end if;
      end if;
   end process TIMER;
   
   process (CLK)
   begin
      if rising_edge(CLK) then
         if RST_BUTTON = '1' then
            RESTART <= '1';
         else
            RESTART <= '0';
         end if;
      end if;
   end process;

end Behavioral;

