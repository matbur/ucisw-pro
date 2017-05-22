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
        <signal name="XLXN_45" />
        <signal name="XLXN_50(2:0)" />
        <signal name="XLXN_51(63:0)" />
        <signal name="XLXN_52(15:0)" />
        <signal name="XLXN_53" />
        <signal name="XLXN_55(7:0)" />
        <signal name="XLXN_56(13:0)" />
        <signal name="XLXN_57(13:0)" />
        <signal name="XLXN_58" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SPI_MISO" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="AMP_DOUT" />
        <signal name="AMP_SHDN" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="SPI_SS_B" />
        <signal name="SF_CE" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64(19:0)" />
        <signal name="XLXN_65(13:0)" />
        <signal name="XLXN_68" />
        <signal name="btn_south" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Input" name="AMP_DOUT" />
        <port polarity="Output" name="AMP_SHDN" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="btn_south" />
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
            <timestamp>2017-4-26T10:9:58</timestamp>
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="412" />
            <rect width="64" x="0" y="0" height="24" />
            <line x2="0" y1="12" y2="12" x1="64" />
            <line x2="384" y1="64" y2="64" x1="320" />
            <rect width="64" x="320" y="52" height="24" />
        </blockdef>
        <blockdef name="MAZE">
            <timestamp>2017-5-17T9:27:31</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="CONGRATS">
            <timestamp>2017-5-17T9:16:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MASTER">
            <timestamp>2017-5-17T9:56:38</timestamp>
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="384" y="84" height="24" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="64" x="384" y="-300" height="24" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="320" x="64" y="-448" height="704" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_11">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_51(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_52(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="ADC_Ctrl" name="XLXI_12">
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="XLXN_53" name="AMP_WE" />
            <blockpin signalname="XLXN_63" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_55(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_58" name="Busy" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AMP_SHDN" name="AMP_SHDN" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_56(13:0)" name="ADC_DOA(13:0)" />
            <blockpin signalname="XLXN_57(13:0)" name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
        </block>
        <block symbolname="vga_init" name="XLXI_14">
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_50(2:0)" name="VGA_COLOR(2:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_64(19:0)" name="POS(19:0)" />
        </block>
        <block symbolname="MAZE" name="XLXI_21">
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_65(13:0)" name="ADDR(13:0)" />
            <blockpin signalname="XLXN_45" name="DATA" />
        </block>
        <block symbolname="CONGRATS" name="XLXI_22">
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_65(13:0)" name="ADDR(13:0)" />
            <blockpin signalname="XLXN_68" name="DATA" />
        </block>
        <block symbolname="MASTER" name="XLXI_23">
            <blockpin signalname="XLXN_58" name="ADC_BUSY" />
            <blockpin signalname="btn_south" name="RST_BUTTON" />
            <blockpin signalname="Clk" name="CLK" />
            <blockpin signalname="XLXN_45" name="DATA" />
            <blockpin signalname="XLXN_68" name="DATA_CON" />
            <blockpin signalname="XLXN_56(13:0)" name="ADC_DOA(13:0)" />
            <blockpin signalname="XLXN_57(13:0)" name="ADC_DOB(13:0)" />
            <blockpin signalname="XLXN_64(19:0)" name="POS(19:0)" />
            <blockpin signalname="XLXN_53" name="AMP_WE" />
            <blockpin signalname="XLXN_63" name="ADC_Start" />
            <blockpin signalname="XLXN_51(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_52(15:0)" name="Blank(15:0)" />
            <blockpin signalname="XLXN_65(13:0)" name="ADDR(13:0)" />
            <blockpin signalname="XLXN_50(2:0)" name="VGA_COLOR(2:0)" />
            <blockpin signalname="XLXN_55(7:0)" name="AMP_DI(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="656" y="2368" name="XLXI_12" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="272" y1="1376" y2="1376" x1="160" />
            <wire x2="272" y1="1376" y2="1424" x1="272" />
            <wire x2="272" y1="1424" y2="2432" x1="272" />
            <wire x2="640" y1="2432" y2="2432" x1="272" />
            <wire x2="656" y1="2432" y2="2432" x1="640" />
            <wire x2="640" y1="2432" y2="2496" x1="640" />
            <wire x2="656" y1="2496" y2="2496" x1="640" />
            <wire x2="944" y1="1424" y2="1424" x1="272" />
            <wire x2="1248" y1="1424" y2="1424" x1="944" />
            <wire x2="1248" y1="1424" y2="1728" x1="1248" />
            <wire x2="1664" y1="1728" y2="1728" x1="1248" />
            <wire x2="448" y1="144" y2="144" x1="272" />
            <wire x2="272" y1="144" y2="384" x1="272" />
            <wire x2="272" y1="384" y2="768" x1="272" />
            <wire x2="272" y1="768" y2="1376" x1="272" />
            <wire x2="432" y1="768" y2="768" x1="272" />
            <wire x2="448" y1="384" y2="384" x1="272" />
            <wire x2="1296" y1="800" y2="800" x1="944" />
            <wire x2="944" y1="800" y2="1424" x1="944" />
        </branch>
        <branch name="VGA_R">
            <wire x2="1712" y1="800" y2="800" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="800" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1712" y1="864" y2="864" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="864" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1712" y1="928" y2="928" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="928" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="1712" y1="992" y2="992" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="992" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1712" y1="1056" y2="1056" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="1056" name="VGA_VS" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="368" y1="608" y2="960" x1="368" />
            <wire x2="432" y1="960" y2="960" x1="368" />
            <wire x2="848" y1="608" y2="608" x1="368" />
            <wire x2="848" y1="384" y2="384" x1="832" />
            <wire x2="848" y1="384" y2="608" x1="848" />
        </branch>
        <branch name="XLXN_50(2:0)">
            <wire x2="1088" y1="1216" y2="1216" x1="880" />
            <wire x2="1088" y1="1104" y2="1216" x1="1088" />
            <wire x2="1296" y1="1104" y2="1104" x1="1088" />
        </branch>
        <branch name="XLXN_51(63:0)">
            <wire x2="1280" y1="832" y2="832" x1="880" />
            <wire x2="1280" y1="832" y2="1472" x1="1280" />
            <wire x2="1664" y1="1472" y2="1472" x1="1280" />
        </branch>
        <branch name="XLXN_52(15:0)">
            <wire x2="1264" y1="896" y2="896" x1="880" />
            <wire x2="1264" y1="896" y2="1536" x1="1264" />
            <wire x2="1664" y1="1536" y2="1536" x1="1264" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="592" y1="1472" y2="1568" x1="592" />
            <wire x2="656" y1="1568" y2="1568" x1="592" />
            <wire x2="912" y1="1472" y2="1472" x1="592" />
            <wire x2="912" y1="704" y2="704" x1="880" />
            <wire x2="912" y1="704" y2="1472" x1="912" />
        </branch>
        <branch name="XLXN_55(7:0)">
            <wire x2="624" y1="1504" y2="1632" x1="624" />
            <wire x2="656" y1="1632" y2="1632" x1="624" />
            <wire x2="976" y1="1504" y2="1504" x1="624" />
            <wire x2="976" y1="1024" y2="1024" x1="880" />
            <wire x2="976" y1="1024" y2="1504" x1="976" />
        </branch>
        <branch name="XLXN_56(13:0)">
            <wire x2="384" y1="624" y2="1024" x1="384" />
            <wire x2="432" y1="1024" y2="1024" x1="384" />
            <wire x2="1232" y1="624" y2="624" x1="384" />
            <wire x2="1232" y1="624" y2="2368" x1="1232" />
            <wire x2="1232" y1="2368" y2="2368" x1="1136" />
        </branch>
        <branch name="XLXN_57(13:0)">
            <wire x2="416" y1="592" y2="1088" x1="416" />
            <wire x2="432" y1="1088" y2="1088" x1="416" />
            <wire x2="1216" y1="592" y2="592" x1="416" />
            <wire x2="1216" y1="592" y2="2432" x1="1216" />
            <wire x2="1216" y1="2432" y2="2432" x1="1136" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="352" y1="640" y2="704" x1="352" />
            <wire x2="432" y1="704" y2="704" x1="352" />
            <wire x2="1200" y1="640" y2="640" x1="352" />
            <wire x2="1200" y1="640" y2="2496" x1="1200" />
            <wire x2="1200" y1="2496" y2="2496" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="160" y="1376" name="Clk" orien="R180" />
        <instance x="1664" y="1760" name="XLXI_11" orien="R0">
        </instance>
        <branch name="LCD_E">
            <wire x2="2112" y1="1472" y2="1472" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1472" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2112" y1="1536" y2="1536" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1536" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2112" y1="1600" y2="1600" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1600" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2112" y1="1664" y2="1664" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1664" name="LCD_D(3:0)" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="1168" y1="1568" y2="1568" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1568" name="SPI_MISO" orien="R0" />
        <branch name="SPI_MOSI">
            <wire x2="1168" y1="1632" y2="1632" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1632" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="1168" y1="1696" y2="1696" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1696" name="SPI_SCK" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="1168" y1="1760" y2="1760" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1760" name="AD_CONV" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="1168" y1="1824" y2="1824" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1824" name="AMP_CS" orien="R0" />
        <branch name="AMP_DOUT">
            <wire x2="1168" y1="1888" y2="1888" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1888" name="AMP_DOUT" orien="R0" />
        <branch name="AMP_SHDN">
            <wire x2="1168" y1="1952" y2="1952" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="1952" name="AMP_SHDN" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="1168" y1="2016" y2="2016" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="2016" name="DAC_CLR" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="1168" y1="2080" y2="2080" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="2080" name="DAC_CS" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="1168" y1="2208" y2="2208" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="2208" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="1168" y1="2272" y2="2272" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="2272" name="FPGA_INIT_B" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="1168" y1="2144" y2="2144" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="2144" name="SPI_SS_B" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2112" y1="1728" y2="1728" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1728" name="SF_CE" orien="R0" />
        <branch name="XLXN_63">
            <wire x2="608" y1="1488" y2="1728" x1="608" />
            <wire x2="656" y1="1728" y2="1728" x1="608" />
            <wire x2="896" y1="1488" y2="1488" x1="608" />
            <wire x2="896" y1="768" y2="768" x1="880" />
            <wire x2="896" y1="768" y2="1488" x1="896" />
        </branch>
        <instance x="1296" y="1088" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_64(19:0)">
            <wire x2="432" y1="1152" y2="1152" x1="368" />
            <wire x2="368" y1="1152" y2="1392" x1="368" />
            <wire x2="1760" y1="1392" y2="1392" x1="368" />
            <wire x2="1760" y1="1152" y2="1152" x1="1680" />
            <wire x2="1760" y1="1152" y2="1392" x1="1760" />
        </branch>
        <branch name="XLXN_65(13:0)">
            <wire x2="448" y1="208" y2="208" x1="384" />
            <wire x2="384" y1="208" y2="448" x1="384" />
            <wire x2="384" y1="448" y2="560" x1="384" />
            <wire x2="976" y1="560" y2="560" x1="384" />
            <wire x2="976" y1="560" y2="960" x1="976" />
            <wire x2="448" y1="448" y2="448" x1="384" />
            <wire x2="976" y1="960" y2="960" x1="880" />
        </branch>
        <instance x="448" y="480" name="XLXI_21" orien="R0">
        </instance>
        <instance x="448" y="240" name="XLXI_22" orien="R0">
        </instance>
        <branch name="XLXN_68">
            <wire x2="432" y1="1280" y2="1280" x1="384" />
            <wire x2="384" y1="1280" y2="1408" x1="384" />
            <wire x2="960" y1="1408" y2="1408" x1="384" />
            <wire x2="960" y1="144" y2="144" x1="832" />
            <wire x2="960" y1="144" y2="1408" x1="960" />
        </branch>
        <instance x="432" y="1120" name="XLXI_23" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="1280" name="btn_south" orien="R180" />
        <branch name="btn_south">
            <wire x2="304" y1="1280" y2="1280" x1="192" />
            <wire x2="304" y1="1280" y2="1344" x1="304" />
            <wire x2="416" y1="1344" y2="1344" x1="304" />
            <wire x2="432" y1="1344" y2="1344" x1="416" />
        </branch>
    </sheet>
</drawing>