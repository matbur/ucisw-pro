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
           POS : in  STD_LOGIC_VECTOR(18 downto 0);
           DATA : in  STD_LOGIC;
           Line : out  STD_LOGIC_VECTOR (63 downto 0);
           Blank : out  STD_LOGIC_VECTOR (15 downto 0);
           ADDR : out  STD_LOGIC_VECTOR (12 downto 0);
           VGA_COLOR : out STD_LOGIC_VECTOR(2 downto 0);
           AMP_WE : out  STD_LOGIC;
           ADC_Start : out  STD_LOGIC;
           AMP_DI : out  STD_LOGIC_VECTOR (7 downto 0));
end MASTER;

architecture Behavioral of MASTER is

begin


end Behavioral;

