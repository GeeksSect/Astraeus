----------------------------------------------------------------------
-- Created by SmartDesign Mon Oct 05 23:59:28 2015
-- Version: v11.5 SP3 11.5.3.10
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- mss_top entity declaration
----------------------------------------------------------------------
entity mss_top is
    -- Port list
    port(
        -- Inputs
        DEVRST_N           : in    std_logic;
        RX                 : in    std_logic;
        -- Outputs
        TX                 : out   std_logic;
        -- Inouts
        COREI2C_0_0_SCL_IO : inout std_logic;
        COREI2C_0_0_SDA_IO : inout std_logic
        );
end mss_top;
----------------------------------------------------------------------
-- mss_top architecture body
----------------------------------------------------------------------
architecture RTL of mss_top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- mss_top_sb
component mss_top_sb
    -- Port list
    port(
        -- Inputs
        DEVRST_N           : in    std_logic;
        FAB_RESET_N        : in    std_logic;
        RX                 : in    std_logic;
        -- Outputs
        FAB_CCC_GL0        : out   std_logic;
        FAB_CCC_LOCK       : out   std_logic;
        INIT_DONE          : out   std_logic;
        MSS_READY          : out   std_logic;
        POWER_ON_RESET_N   : out   std_logic;
        TX                 : out   std_logic;
        -- Inouts
        COREI2C_0_0_SCL_IO : inout std_logic;
        COREI2C_0_0_SDA_IO : inout std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal TX_net_0 : std_logic;
signal TX_net_1 : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net  : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net <= '1';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TX_net_1 <= TX_net_0;
 TX       <= TX_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- mss_top_sb_0
mss_top_sb_0 : mss_top_sb
    port map( 
        -- Inputs
        FAB_RESET_N        => VCC_net,
        DEVRST_N           => DEVRST_N,
        RX                 => RX,
        -- Outputs
        POWER_ON_RESET_N   => OPEN,
        INIT_DONE          => OPEN,
        FAB_CCC_GL0        => OPEN,
        FAB_CCC_LOCK       => OPEN,
        MSS_READY          => OPEN,
        TX                 => TX_net_0,
        -- Inouts
        COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO,
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO 
        );

end RTL;
