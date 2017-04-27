<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="vga_init">
            <timestamp>2017-3-22T11:13:53</timestamp>
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
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <block symbolname="vga_init" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin name="AMP_WE" />
            <blockpin name="ADC_Start" />
            <blockpin name="AMP_DI(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk_50MHz">
            <wire x2="1264" y1="1264" y2="1264" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1232" y="1264" name="Clk_50MHz" orien="R180" />
        <branch name="VGA_R">
            <wire x2="1680" y1="1264" y2="1264" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1264" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1680" y1="1328" y2="1328" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1328" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1680" y1="1392" y2="1392" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1392" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="1680" y1="1456" y2="1456" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1456" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1680" y1="1520" y2="1520" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1680" y="1520" name="VGA_VS" orien="R0" />
        <instance x="1264" y="1552" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>