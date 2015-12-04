----------------------------------------------------------------------
-- Created by SmartDesign Fri Dec 04 22:58:05 2015
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
-- MSS_top entity declaration
----------------------------------------------------------------------
entity MSS_top is
    -- Port list
    port(
        -- Inputs
        DEVRST_N           : in    std_logic;
        RX                 : in    std_logic;
        -- Outputs
        Motor_in           : out   std_logic_vector(11 downto 0);
        PWM_0              : out   std_logic;
        PWM_1              : out   std_logic;
        PWM_2              : out   std_logic;
        PWM_3              : out   std_logic;
        TX                 : out   std_logic;
        -- Inouts
        COREI2C_0_0_SCL_IO : inout std_logic;
        COREI2C_0_0_SDA_IO : inout std_logic
        );
end MSS_top;
----------------------------------------------------------------------
-- MSS_top architecture body
----------------------------------------------------------------------
architecture RTL of MSS_top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- MSS_top_sb
component MSS_top_sb
    -- Port list
    port(
        -- Inputs
        DEVRST_N           : in    std_logic;
        FAB_RESET_N        : in    std_logic;
        GPIO_IN            : in    std_logic_vector(11 downto 0);
        RX                 : in    std_logic;
        TACHIN             : in    std_logic_vector(1 to 1);
        -- Outputs
        FAB_CCC_GL0        : out   std_logic;
        FAB_CCC_LOCK       : out   std_logic;
        GPIO_OUT           : out   std_logic_vector(11 downto 0);
        INIT_DONE          : out   std_logic;
        INT                : out   std_logic_vector(11 downto 0);
        MSS_READY          : out   std_logic;
        POWER_ON_RESET_N   : out   std_logic;
        PWM                : out   std_logic_vector(4 downto 1);
        TX                 : out   std_logic;
        -- Inouts
        COREI2C_0_0_SCL_IO : inout std_logic;
        COREI2C_0_0_SDA_IO : inout std_logic
        );
end component;
-- PWM_separator
component PWM_separator
    -- Port list
    port(
        -- Inputs
        pwm_in    : in  std_logic_vector(4 downto 1);
        -- Outputs
        pwm_out_1 : out std_logic;
        pwm_out_2 : out std_logic;
        pwm_out_3 : out std_logic;
        pwm_out_4 : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal Motor_in_net_0   : std_logic_vector(11 downto 0);
signal MSS_top_sb_0_PWM : std_logic_vector(4 downto 1);
signal PWM_0_net_0      : std_logic;
signal PWM_1_net_0      : std_logic;
signal PWM_2_net_0      : std_logic;
signal PWM_3_net_0      : std_logic;
signal TX_net_0         : std_logic;
signal TX_net_1         : std_logic;
signal PWM_0_net_1      : std_logic;
signal PWM_1_net_1      : std_logic;
signal PWM_2_net_1      : std_logic;
signal PWM_3_net_1      : std_logic;
signal Motor_in_net_1   : std_logic_vector(11 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net          : std_logic;
signal GPIO_IN_const_net_0: std_logic_vector(11 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net             <= '1';
 GPIO_IN_const_net_0 <= B"000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TX_net_1              <= TX_net_0;
 TX                    <= TX_net_1;
 PWM_0_net_1           <= PWM_0_net_0;
 PWM_0                 <= PWM_0_net_1;
 PWM_1_net_1           <= PWM_1_net_0;
 PWM_1                 <= PWM_1_net_1;
 PWM_2_net_1           <= PWM_2_net_0;
 PWM_2                 <= PWM_2_net_1;
 PWM_3_net_1           <= PWM_3_net_0;
 PWM_3                 <= PWM_3_net_1;
 Motor_in_net_1        <= Motor_in_net_0;
 Motor_in(11 downto 0) <= Motor_in_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- MSS_top_sb_0
MSS_top_sb_0 : MSS_top_sb
    port map( 
        -- Inputs
        FAB_RESET_N        => VCC_net,
        DEVRST_N           => DEVRST_N,
        GPIO_IN            => GPIO_IN_const_net_0,
        TACHIN(1)          => VCC_net,
        RX                 => RX,
        -- Outputs
        POWER_ON_RESET_N   => OPEN,
        INIT_DONE          => OPEN,
        FAB_CCC_GL0        => OPEN,
        FAB_CCC_LOCK       => OPEN,
        MSS_READY          => OPEN,
        INT                => OPEN,
        GPIO_OUT           => Motor_in_net_0,
        PWM                => MSS_top_sb_0_PWM,
        TX                 => TX_net_0,
        -- Inouts
        COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO,
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO 
        );
-- PWM_separator_0
PWM_separator_0 : PWM_separator
    port map( 
        -- Inputs
        pwm_in    => MSS_top_sb_0_PWM,
        -- Outputs
        pwm_out_1 => PWM_0_net_0,
        pwm_out_2 => PWM_1_net_0,
        pwm_out_3 => PWM_2_net_0,
        pwm_out_4 => PWM_3_net_0 
        );

end RTL;
