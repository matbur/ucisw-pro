--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schema1.vhf
-- /___/   /\     Timestamp : 03/22/2017 13:57:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/burniak_cyran/pro/schema1.vhf -w C:/Users/lab/Desktop/burniak_cyran/pro/schema1.sch
--Design Name: schema1
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schema1 is
   port ( AMP_DOUT    : in    std_logic; 
          Clk         : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          AMP_SHDN    : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          LCD_E       : out   std_logic; 
          LCD_RS      : out   std_logic; 
          LCD_RW      : out   std_logic; 
          SF_CE       : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          VGA_B       : out   std_logic; 
          VGA_G       : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_R       : out   std_logic; 
          VGA_VS      : out   std_logic; 
          LCD_D       : inout std_logic_vector (3 downto 0));
end schema1;

architecture BEHAVIORAL of schema1 is
   signal XLXN_7                  : std_logic;
   signal XLXN_8                  : std_logic;
   signal XLXN_9                  : std_logic_vector (7 downto 0);
   signal XLXN_10                 : std_logic_vector (63 downto 0);
   signal XLXN_11                 : std_logic_vector (15 downto 0);
   signal XLXN_18                 : std_logic_vector (13 downto 0);
   signal XLXN_19                 : std_logic_vector (13 downto 0);
   signal XLXN_21                 : std_logic;
   signal XLXN_29                 : std_logic;
   signal XLXN_30                 : std_logic;
   signal XLXN_32                 : std_logic;
   signal XLXI_1_Reset_openSignal : std_logic;
   signal XLXI_3_Reset_openSignal : std_logic;
   component ADC_Ctrl
      port ( Clk_Sys     : in    std_logic; 
             AMP_WE      : in    std_logic; 
             ADC_Start   : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             AMP_DOUT    : in    std_logic; 
             AMP_DI      : in    std_logic_vector (7 downto 0); 
             Busy        : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AMP_SHDN    : out   std_logic; 
             AD_CONV     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             DAC_CLR     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             ADC_DOA     : out   std_logic_vector (13 downto 0); 
             ADC_DOB     : out   std_logic_vector (13 downto 0); 
             Reset       : in    std_logic; 
             Clk_50MHz   : in    std_logic);
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
   component vga_init
      port ( CLK       : in    std_logic; 
             ADC_Busy  : in    std_logic; 
             ADC_DOA   : in    std_logic_vector (13 downto 0); 
             ADC_DOB   : in    std_logic_vector (13 downto 0); 
             VGA_R     : out   std_logic; 
             VGA_G     : out   std_logic; 
             VGA_B     : out   std_logic; 
             VGA_HS    : out   std_logic; 
             VGA_VS    : out   std_logic; 
             AMP_WE    : out   std_logic; 
             ADC_Start : out   std_logic; 
             AMP_DI    : out   std_logic_vector (7 downto 0); 
             Line      : out   std_logic_vector (63 downto 0); 
             Blank     : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_1 : ADC_Ctrl
      port map (ADC_Start=>XLXN_8,
                AMP_DI(7 downto 0)=>XLXN_9(7 downto 0),
                AMP_DOUT=>AMP_DOUT,
                AMP_WE=>XLXN_7,
                Clk_Sys=>Clk,
                Clk_50MHz=>Clk,
                Reset=>XLXI_1_Reset_openSignal,
                SPI_MISO=>SPI_MISO,
                ADC_DOA(13 downto 0)=>XLXN_18(13 downto 0),
                ADC_DOB(13 downto 0)=>XLXN_19(13 downto 0),
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                AMP_SHDN=>AMP_SHDN,
                Busy=>XLXN_21,
                DAC_CLR=>XLXN_29,
                DAC_CS=>XLXN_30,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>XLXN_32,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_3 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_11(15 downto 0),
                Clk_50MHz=>Clk,
                Line(63 downto 0)=>XLXN_10(63 downto 0),
                Reset=>XLXI_3_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_4 : vga_init
      port map (ADC_Busy=>XLXN_21,
                ADC_DOA(13 downto 0)=>XLXN_18(13 downto 0),
                ADC_DOB(13 downto 0)=>XLXN_19(13 downto 0),
                CLK=>Clk,
                ADC_Start=>XLXN_8,
                AMP_DI(7 downto 0)=>XLXN_9(7 downto 0),
                AMP_WE=>XLXN_7,
                Blank(15 downto 0)=>XLXN_11(15 downto 0),
                Line(63 downto 0)=>XLXN_10(63 downto 0),
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
end BEHAVIORAL;


