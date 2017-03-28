<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9(7:0)" />
        <signal name="XLXN_10(63:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18(13:0)" />
        <signal name="XLXN_19(13:0)" />
        <signal name="XLXN_21" />
        <signal name="SPI_MISO" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="AMP_DOUT" />
        <signal name="AMP_SHDN" />
        <signal name="XLXN_29">
        </signal>
        <signal name="XLXN_30">
        </signal>
        <signal name="SPI_SS_B" />
        <signal name="XLXN_32">
        </signal>
        <signal name="FPGA_INIT_B" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Input" name="AMP_DOUT" />
        <port polarity="Output" name="AMP_SHDN" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="ADC_Ctrl">
            <timestamp>2017-3-22T10:38:10</timestamp>
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="416" y1="-800" y2="-800" x1="480" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-12" height="24" />
            <line x2="480" y1="0" y2="0" x1="416" />
            <rect width="64" x="416" y="52" height="24" />
            <line x2="480" y1="64" y2="64" x1="416" />
            <line x2="480" y1="128" y2="128" x1="416" />
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="416" y1="-480" y2="-480" x1="480" />
            <line x2="0" y1="-640" y2="-640" x1="64" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="352" x="64" y="-832" height="992" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2017-3-22T10:58:37</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vga_init">
            <timestamp>2017-3-22T12:57:0</timestamp>
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <rect width="64" x="0" y="340" height="24" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <rect width="64" x="320" y="212" height="24" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="704" />
        </blockdef>
        <block symbolname="ADC_Ctrl" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="XLXN_7" name="AMP_WE" />
            <blockpin signalname="XLXN_8" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_9(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_21" name="Busy" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AMP_SHDN" name="AMP_SHDN" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="XLXN_30" name="DAC_CS" />
            <blockpin signalname="XLXN_29" name="DAC_CLR" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="XLXN_32" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_18(13:0)" name="ADC_DOA(13:0)" />
            <blockpin signalname="XLXN_19(13:0)" name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_3">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_10(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="vga_init" name="XLXI_4">
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_21" name="ADC_Busy" />
            <blockpin signalname="XLXN_18(13:0)" name="ADC_DOA(13:0)" />
            <blockpin signalname="XLXN_19(13:0)" name="ADC_DOB(13:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_7" name="AMP_WE" />
            <blockpin signalname="XLXN_8" name="ADC_Start" />
            <blockpin signalname="XLXN_9(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_10(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Blank(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="496" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="384" y1="1872" y2="1872" x1="288" />
            <wire x2="384" y1="1872" y2="2144" x1="384" />
            <wire x2="384" y1="2144" y2="2640" x1="384" />
            <wire x2="1136" y1="2640" y2="2640" x1="384" />
            <wire x2="1088" y1="2144" y2="2144" x1="384" />
            <wire x2="1280" y1="2144" y2="2144" x1="1088" />
            <wire x2="384" y1="960" y2="1872" x1="384" />
            <wire x2="496" y1="960" y2="960" x1="384" />
            <wire x2="1280" y1="2080" y2="2080" x1="1088" />
            <wire x2="1088" y1="2080" y2="2144" x1="1088" />
        </branch>
        <branch name="VGA_R">
            <wire x2="912" y1="960" y2="960" x1="880" />
        </branch>
        <branch name="VGA_G">
            <wire x2="912" y1="1024" y2="1024" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="1024" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="912" y1="1088" y2="1088" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="1088" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="912" y1="1152" y2="1152" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="1152" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="912" y1="1216" y2="1216" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="1216" name="VGA_VS" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1088" y1="1280" y2="1280" x1="880" />
            <wire x2="1088" y1="1216" y2="1280" x1="1088" />
            <wire x2="1280" y1="1216" y2="1216" x1="1088" />
        </branch>
        <branch name="XLXN_9(7:0)">
            <wire x2="1104" y1="1408" y2="1408" x1="880" />
            <wire x2="1104" y1="1280" y2="1408" x1="1104" />
            <wire x2="1280" y1="1280" y2="1280" x1="1104" />
        </branch>
        <instance x="1136" y="2672" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_10(63:0)">
            <wire x2="1008" y1="1472" y2="1472" x1="880" />
            <wire x2="1008" y1="1472" y2="2384" x1="1008" />
            <wire x2="1136" y1="2384" y2="2384" x1="1008" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="992" y1="1536" y2="1536" x1="880" />
            <wire x2="992" y1="1536" y2="2448" x1="992" />
            <wire x2="1136" y1="2448" y2="2448" x1="992" />
        </branch>
        <instance x="1280" y="2016" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="896" y1="1344" y2="1344" x1="880" />
            <wire x2="896" y1="1344" y2="1376" x1="896" />
            <wire x2="1280" y1="1376" y2="1376" x1="896" />
        </branch>
        <branch name="XLXN_18(13:0)">
            <wire x2="496" y1="1536" y2="1536" x1="416" />
            <wire x2="416" y1="1536" y2="2240" x1="416" />
            <wire x2="1840" y1="2240" y2="2240" x1="416" />
            <wire x2="1840" y1="2016" y2="2016" x1="1760" />
            <wire x2="1840" y1="2016" y2="2240" x1="1840" />
        </branch>
        <branch name="XLXN_19(13:0)">
            <wire x2="496" y1="1600" y2="1600" x1="432" />
            <wire x2="432" y1="1600" y2="2256" x1="432" />
            <wire x2="1824" y1="2256" y2="2256" x1="432" />
            <wire x2="1824" y1="2080" y2="2080" x1="1760" />
            <wire x2="1824" y1="2080" y2="2256" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="288" y="1872" name="Clk" orien="R180" />
        <branch name="XLXN_21">
            <wire x2="496" y1="1472" y2="1472" x1="400" />
            <wire x2="400" y1="1472" y2="2224" x1="400" />
            <wire x2="1808" y1="2224" y2="2224" x1="400" />
            <wire x2="1808" y1="2144" y2="2144" x1="1760" />
            <wire x2="1808" y1="2144" y2="2224" x1="1808" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="1792" y1="1216" y2="1216" x1="1760" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="1792" y1="1280" y2="1280" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1280" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="1792" y1="1344" y2="1344" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1344" name="SPI_SCK" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="1792" y1="1408" y2="1408" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1408" name="AD_CONV" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="1792" y1="1472" y2="1472" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1472" name="AMP_CS" orien="R0" />
        <branch name="AMP_DOUT">
            <wire x2="1792" y1="1536" y2="1536" x1="1760" />
        </branch>
        <branch name="AMP_SHDN">
            <wire x2="1792" y1="1600" y2="1600" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1600" name="AMP_SHDN" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1792" y1="1664" y2="1664" x1="1760" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1792" y1="1728" y2="1728" x1="1760" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="1792" y1="1792" y2="1792" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1792" name="SPI_SS_B" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="1792" y1="1856" y2="1856" x1="1760" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="1792" y1="1920" y2="1920" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="1920" name="FPGA_INIT_B" orien="R0" />
        <branch name="LCD_E">
            <wire x2="1584" y1="2384" y2="2384" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2384" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="1584" y1="2448" y2="2448" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2448" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="1584" y1="2512" y2="2512" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2512" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="1584" y1="2576" y2="2576" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2576" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="1584" y1="2640" y2="2640" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1584" y="2640" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="912" y="960" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1536" name="AMP_DOUT" orien="R0" />
        <iomarker fontsize="28" x="1792" y="1216" name="SPI_MISO" orien="R0" />
    </sheet>
</drawing>