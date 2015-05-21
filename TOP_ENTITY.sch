<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(4:0)" />
        <signal name="XLXN_2(4:0)" />
        <signal name="XLXN_3(4:0)" />
        <signal name="XLXN_4(4:0)" />
        <signal name="an(3:0)" />
        <signal name="seg(6:0)" />
        <signal name="clk_I" />
        <signal name="Reset" />
        <signal name="XLXN_6(3:0)" />
        <signal name="DP" />
        <signal name="Led(7:0)" />
        <signal name="clk_400" />
        <signal name="XLXN_15(4:0)" />
        <signal name="btn(4:0)" />
        <signal name="XLXN_16(11:0)" />
        <signal name="XLXN_17(11:0)" />
        <signal name="adclk" />
        <signal name="adcs" />
        <signal name="CLK_48" />
        <signal name="addata_l" />
        <signal name="addata_r" />
        <signal name="dacs" />
        <signal name="dadata_r" />
        <signal name="dadata_l" />
        <signal name="daclk" />
        <signal name="DABUS_L(11:0)" />
        <signal name="DABUS_R(11:0)" />
        <port polarity="Output" name="an(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Input" name="clk_I" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="DP" />
        <port polarity="Output" name="Led(7:0)" />
        <port polarity="Output" name="clk_400" />
        <port polarity="Input" name="btn(4:0)" />
        <port polarity="Output" name="adclk" />
        <port polarity="Output" name="adcs" />
        <port polarity="Output" name="CLK_48" />
        <port polarity="Input" name="addata_l" />
        <port polarity="Input" name="addata_r" />
        <port polarity="Output" name="dacs" />
        <port polarity="Output" name="dadata_r" />
        <port polarity="Output" name="dadata_l" />
        <port polarity="Output" name="daclk" />
        <port polarity="Output" name="DABUS_L(11:0)" />
        <port polarity="Output" name="DABUS_R(11:0)" />
        <blockdef name="CONTROL_UNIT">
            <timestamp>2015-5-20T14:4:6</timestamp>
            <rect width="64" x="432" y="532" height="24" />
            <line x2="496" y1="544" y2="544" x1="432" />
            <rect width="64" x="432" y="596" height="24" />
            <line x2="496" y1="608" y2="608" x1="432" />
            <rect width="64" x="0" y="404" height="24" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <rect width="64" x="0" y="468" height="24" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="496" y1="224" y2="224" x1="432" />
            <line x2="496" y1="288" y2="288" x1="432" />
            <line x2="496" y1="352" y2="352" x1="432" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-512" y2="-512" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="368" x="64" y="-704" height="1472" />
        </blockdef>
        <blockdef name="FREQ_DIVIDER">
            <timestamp>2015-4-22T13:23:9</timestamp>
            <rect width="320" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <blockdef name="SEV_SEG_MUX">
            <timestamp>2015-4-16T18:54:5</timestamp>
            <rect width="352" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <rect width="64" x="416" y="-268" height="24" />
            <line x2="480" y1="-256" y2="-256" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="DEBOUNCE">
            <timestamp>2015-4-22T13:35:53</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
        </blockdef>
        <blockdef name="ADDA">
            <timestamp>2015-5-20T13:47:24</timestamp>
            <line x2="560" y1="96" y2="96" x1="496" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-304" y2="-304" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-156" height="24" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <line x2="560" y1="-352" y2="-352" x1="496" />
            <line x2="560" y1="-288" y2="-288" x1="496" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <rect width="432" x="64" y="-576" height="704" />
        </blockdef>
        <block symbolname="CONTROL_UNIT" name="XLXI_1">
            <blockpin signalname="clk_I" name="CLK_I" />
            <blockpin signalname="Reset" name="RESET_I" />
            <blockpin signalname="XLXN_16(11:0)" name="ADBUS_L_I(11:0)" />
            <blockpin signalname="XLXN_17(11:0)" name="ADBUS_R_I(11:0)" />
            <blockpin signalname="XLXN_15(4:0)" name="SELECT_I(4:0)" />
            <blockpin name="PLAY_O" />
            <blockpin name="REC_O" />
            <blockpin name="REVERSE_O" />
            <blockpin signalname="XLXN_1(4:0)" name="BCD_01_O(4:0)" />
            <blockpin signalname="XLXN_2(4:0)" name="BCD_02_O(4:0)" />
            <blockpin signalname="XLXN_3(4:0)" name="BCD_03_O(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="BCD_04_O(4:0)" />
            <blockpin signalname="Led(7:0)" name="LED_O(7:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="DPS_O(3:0)" />
            <blockpin signalname="DABUS_L(11:0)" name="DABUS_L_I(11:0)" />
            <blockpin signalname="DABUS_R(11:0)" name="DABUS_R_I(11:0)" />
        </block>
        <block symbolname="FREQ_DIVIDER" name="XLXI_2">
            <blockpin signalname="clk_I" name="CLK_I" />
            <blockpin signalname="Reset" name="RESET_I" />
            <blockpin signalname="clk_400" name="CLK_400_O" />
            <blockpin signalname="CLK_48" name="CLK_48_O" />
        </block>
        <block symbolname="SEV_SEG_MUX" name="XLXI_3">
            <blockpin signalname="clk_I" name="CLK_I" />
            <blockpin signalname="clk_400" name="CLK_400_I" />
            <blockpin signalname="Reset" name="RESET_I" />
            <blockpin signalname="XLXN_1(4:0)" name="BCD_01_I(4:0)" />
            <blockpin signalname="XLXN_2(4:0)" name="BCD_02_I(4:0)" />
            <blockpin signalname="XLXN_3(4:0)" name="BCD_03_I(4:0)" />
            <blockpin signalname="XLXN_4(4:0)" name="BCD_04_I(4:0)" />
            <blockpin signalname="XLXN_6(3:0)" name="DPS_I(3:0)" />
            <blockpin signalname="DP" name="DP_O" />
            <blockpin signalname="an(3:0)" name="ANODE_O(3:0)" />
            <blockpin signalname="seg(6:0)" name="DISPLAY_O(6:0)" />
        </block>
        <block symbolname="DEBOUNCE" name="XLXI_4">
            <blockpin signalname="clk_I" name="CLK" />
            <blockpin signalname="clk_400" name="CLK_400" />
            <blockpin signalname="Reset" name="RESET" />
            <blockpin signalname="btn(4:0)" name="BUTTON_I(4:0)" />
            <blockpin signalname="XLXN_15(4:0)" name="BUTTON_O(4:0)" />
        </block>
        <block symbolname="ADDA" name="XLXI_5">
            <blockpin signalname="clk_I" name="CLK_I" />
            <blockpin signalname="CLK_48" name="CLK_48_I" />
            <blockpin signalname="Reset" name="RESET_I" />
            <blockpin signalname="addata_l" name="ADDATA_L_I" />
            <blockpin signalname="addata_r" name="ADDATA_R_I" />
            <blockpin signalname="DABUS_R(11:0)" name="DA_BUS_R_O(11:0)" />
            <blockpin signalname="DABUS_L(11:0)" name="DA_BUS_L_O(11:0)" />
            <blockpin signalname="adclk" name="ADCLK_O" />
            <blockpin signalname="adcs" name="ADCS_O" />
            <blockpin signalname="dadata_l" name="DADATA_L_O" />
            <blockpin signalname="dadata_r" name="DADATA_R_O" />
            <blockpin signalname="daclk" name="DACLK_O" />
            <blockpin signalname="dacs" name="DACS_O" />
            <blockpin signalname="XLXN_17(11:0)" name="AD_BUS_R_O(11:0)" />
            <blockpin signalname="XLXN_16(11:0)" name="AD_BUS_L_O(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(4:0)">
            <wire x2="2624" y1="1184" y2="1184" x1="2320" />
            <wire x2="2640" y1="1184" y2="1184" x1="2624" />
        </branch>
        <branch name="XLXN_2(4:0)">
            <wire x2="2624" y1="1248" y2="1248" x1="2320" />
            <wire x2="2640" y1="1248" y2="1248" x1="2624" />
        </branch>
        <branch name="XLXN_3(4:0)">
            <wire x2="2624" y1="1312" y2="1312" x1="2320" />
            <wire x2="2640" y1="1312" y2="1312" x1="2624" />
        </branch>
        <branch name="XLXN_4(4:0)">
            <wire x2="2624" y1="1376" y2="1376" x1="2320" />
            <wire x2="2640" y1="1376" y2="1376" x1="2624" />
        </branch>
        <instance x="2640" y="1472" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2176" y="608" name="XLXI_2" orien="R0">
        </instance>
        <branch name="an(3:0)">
            <wire x2="3152" y1="1216" y2="1216" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1216" name="an(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="3152" y1="1440" y2="1440" x1="3120" />
        </branch>
        <branch name="clk_I">
            <wire x2="2640" y1="992" y2="992" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2608" y="992" name="clk_I" orien="R180" />
        <branch name="clk_I">
            <wire x2="2176" y1="320" y2="320" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2144" y="320" name="clk_I" orien="R180" />
        <branch name="clk_I">
            <wire x2="1824" y1="864" y2="864" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="1808" y="864" name="clk_I" orien="R180" />
        <branch name="Reset">
            <wire x2="1824" y1="1024" y2="1024" x1="1808" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1120" type="branch" />
            <wire x2="2640" y1="1120" y2="1120" x1="2496" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="576" type="branch" />
            <wire x2="2176" y1="576" y2="576" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="3152" y="1440" name="seg(6:0)" orien="R0" />
        <branch name="XLXN_6(3:0)">
            <wire x2="2624" y1="1440" y2="1440" x1="2320" />
            <wire x2="2640" y1="1440" y2="1440" x1="2624" />
        </branch>
        <branch name="DP">
            <wire x2="3152" y1="992" y2="992" x1="3120" />
        </branch>
        <iomarker fontsize="28" x="3152" y="992" name="DP" orien="R0" />
        <branch name="Led(7:0)">
            <wire x2="2352" y1="1504" y2="1504" x1="2320" />
            <wire x2="2368" y1="1504" y2="1504" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1504" name="Led(7:0)" orien="R0" />
        <instance x="1104" y="1792" name="XLXI_4" orien="R0">
        </instance>
        <branch name="clk_I">
            <wire x2="1088" y1="1568" y2="1568" x1="1072" />
            <wire x2="1104" y1="1568" y2="1568" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1568" name="clk_I" orien="R180" />
        <branch name="clk_400">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1632" type="branch" />
            <wire x2="1088" y1="1632" y2="1632" x1="1072" />
            <wire x2="1104" y1="1632" y2="1632" x1="1088" />
        </branch>
        <branch name="clk_400">
            <wire x2="2784" y1="320" y2="320" x1="2624" />
        </branch>
        <branch name="clk_400">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="1056" type="branch" />
            <wire x2="2640" y1="1056" y2="1056" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2784" y="320" name="clk_400" orien="R0" />
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1696" type="branch" />
            <wire x2="1088" y1="1696" y2="1696" x1="1072" />
            <wire x2="1104" y1="1696" y2="1696" x1="1088" />
        </branch>
        <branch name="XLXN_15(4:0)">
            <wire x2="1600" y1="1568" y2="1568" x1="1584" />
            <wire x2="1600" y1="1568" y2="1696" x1="1600" />
            <wire x2="1808" y1="1696" y2="1696" x1="1600" />
            <wire x2="1824" y1="1696" y2="1696" x1="1808" />
        </branch>
        <branch name="btn(4:0)">
            <wire x2="1088" y1="1760" y2="1760" x1="1072" />
            <wire x2="1104" y1="1760" y2="1760" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1760" name="btn(4:0)" orien="R180" />
        <iomarker fontsize="28" x="1808" y="1024" name="Reset" orien="R180" />
        <instance x="1824" y="1536" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_16(11:0)">
            <wire x2="1360" y1="2560" y2="2560" x1="912" />
            <wire x2="1808" y1="1952" y2="1952" x1="1360" />
            <wire x2="1824" y1="1952" y2="1952" x1="1808" />
            <wire x2="1360" y1="1952" y2="2560" x1="1360" />
        </branch>
        <branch name="XLXN_17(11:0)">
            <wire x2="1344" y1="2496" y2="2496" x1="912" />
            <wire x2="1808" y1="2016" y2="2016" x1="1344" />
            <wire x2="1824" y1="2016" y2="2016" x1="1808" />
            <wire x2="1344" y1="2016" y2="2496" x1="1344" />
        </branch>
        <branch name="adclk">
            <wire x2="928" y1="2176" y2="2176" x1="912" />
            <wire x2="944" y1="2176" y2="2176" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2176" name="adclk" orien="R0" />
        <branch name="adcs">
            <wire x2="928" y1="2240" y2="2240" x1="912" />
            <wire x2="944" y1="2240" y2="2240" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2240" name="adcs" orien="R0" />
        <branch name="CLK_48">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2128" type="branch" />
            <wire x2="336" y1="2128" y2="2128" x1="320" />
            <wire x2="352" y1="2128" y2="2128" x1="336" />
        </branch>
        <iomarker fontsize="28" x="320" y="2048" name="clk_I" orien="R180" />
        <branch name="CLK_48">
            <wire x2="2656" y1="384" y2="384" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2656" y="384" name="CLK_48" orien="R0" />
        <branch name="addata_l">
            <wire x2="336" y1="2288" y2="2288" x1="320" />
            <wire x2="352" y1="2288" y2="2288" x1="336" />
        </branch>
        <iomarker fontsize="28" x="320" y="2288" name="addata_l" orien="R180" />
        <branch name="addata_r">
            <wire x2="336" y1="2368" y2="2368" x1="320" />
            <wire x2="352" y1="2368" y2="2368" x1="336" />
        </branch>
        <iomarker fontsize="28" x="320" y="2368" name="addata_r" orien="R180" />
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2208" type="branch" />
            <wire x2="336" y1="2208" y2="2208" x1="320" />
            <wire x2="352" y1="2208" y2="2208" x1="336" />
        </branch>
        <branch name="dacs">
            <wire x2="928" y1="2432" y2="2432" x1="912" />
            <wire x2="944" y1="2432" y2="2432" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2432" name="dacs" orien="R0" />
        <branch name="dadata_r">
            <wire x2="928" y1="2368" y2="2368" x1="912" />
            <wire x2="944" y1="2368" y2="2368" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2368" name="dadata_r" orien="R0" />
        <branch name="dadata_l">
            <wire x2="928" y1="2304" y2="2304" x1="912" />
            <wire x2="944" y1="2304" y2="2304" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2304" name="dadata_l" orien="R0" />
        <branch name="daclk">
            <wire x2="928" y1="2688" y2="2688" x1="912" />
            <wire x2="944" y1="2688" y2="2688" x1="928" />
        </branch>
        <iomarker fontsize="28" x="944" y="2688" name="daclk" orien="R0" />
        <branch name="DABUS_L(11:0)">
            <wire x2="2352" y1="2080" y2="2080" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="2080" name="DABUS_L(11:0)" orien="R0" />
        <branch name="DABUS_R(11:0)">
            <wire x2="2352" y1="2144" y2="2144" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="2144" name="DABUS_R(11:0)" orien="R0" />
        <branch name="clk_I">
            <wire x2="336" y1="2048" y2="2048" x1="320" />
            <wire x2="352" y1="2048" y2="2048" x1="336" />
        </branch>
        <instance x="352" y="2592" name="XLXI_5" orien="R0">
        </instance>
        <branch name="DABUS_R(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2448" type="branch" />
            <wire x2="352" y1="2448" y2="2448" x1="320" />
        </branch>
        <branch name="DABUS_L(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="2528" type="branch" />
            <wire x2="352" y1="2528" y2="2528" x1="320" />
        </branch>
    </sheet>
</drawing>