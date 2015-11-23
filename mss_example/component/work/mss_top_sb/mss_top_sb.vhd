----------------------------------------------------------------------
-- Created by SmartDesign Sun Oct 25 01:31:25 2015
-- Version: v11.5 SP3 11.5.3.10
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREAPB3_LIB;
use COREAPB3_LIB.all;
use COREAPB3_LIB.components.all;
library COREI2C_LIB;
use COREI2C_LIB.all;
library COREPWM_LIB;
use COREPWM_LIB.all;
use COREPWM_LIB.components.all;
library COREUARTAPB_LIB;
use COREUARTAPB_LIB.all;
use COREUARTAPB_LIB.mss_top_sb_CoreUARTapb_0_0_components.all;
----------------------------------------------------------------------
-- mss_top_sb entity declaration
----------------------------------------------------------------------
entity mss_top_sb is
    -- Port list
    port(
        -- Inputs
        DEVRST_N           : in    std_logic;
        FAB_RESET_N        : in    std_logic;
        RX                 : in    std_logic;
        TACHIN             : in    std_logic_vector(1 to 1);
        -- Outputs
        FAB_CCC_GL0        : out   std_logic;
        FAB_CCC_LOCK       : out   std_logic;
        INIT_DONE          : out   std_logic;
        MSS_READY          : out   std_logic;
        POWER_ON_RESET_N   : out   std_logic;
        PWM                : out   std_logic_vector(4 downto 1);
        TX                 : out   std_logic;
        -- Inouts
        COREI2C_0_0_SCL_IO : inout std_logic;
        COREI2C_0_0_SDA_IO : inout std_logic
        );
end mss_top_sb;
----------------------------------------------------------------------
-- mss_top_sb architecture body
----------------------------------------------------------------------
architecture RTL of mss_top_sb is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- BIBUF
component BIBUF
    generic( 
        IOSTD : string := "" 
        );
    -- Port list
    port(
        -- Inputs
        D   : in    std_logic;
        E   : in    std_logic;
        -- Outputs
        Y   : out   std_logic;
        -- Inouts
        PAD : inout std_logic
        );
end component;
-- mss_top_sb_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
component mss_top_sb_CCC_0_FCCC
    -- Port list
    port(
        -- Inputs
        RCOSC_25_50MHZ : in  std_logic;
        -- Outputs
        GL0            : out std_logic;
        LOCK           : out std_logic
        );
end component;
-- CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
-- using entity instantiation for component CoreAPB3
-- COREI2C   -   Actel:DirectCore:COREI2C:7.0.102
component COREI2C
    generic( 
        ADD_SLAVE1_ADDRESS_EN   : integer := 0 ;
        BAUD_RATE_FIXED         : integer := 1 ;
        BAUD_RATE_VALUE         : integer := 0 ;
        BCLK_ENABLED            : integer := 0 ;
        FIXED_SLAVE0_ADDR_EN    : integer := 1 ;
        FIXED_SLAVE0_ADDR_VALUE : integer := 16#42# ;
        FIXED_SLAVE1_ADDR_EN    : integer := 0 ;
        FIXED_SLAVE1_ADDR_VALUE : integer := 16#0# ;
        FREQUENCY               : integer := 30 ;
        GLITCHREG_NUM           : integer := 3 ;
        I2C_NUM                 : integer := 1 ;
        IPMI_EN                 : integer := 0 ;
        OPERATING_MODE          : integer := 0 ;
        SMB_EN                  : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        BCLK        : in  std_logic;
        PADDR       : in  std_logic_vector(8 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        SCLI        : in  std_logic_vector(0 to 0);
        SDAI        : in  std_logic_vector(0 to 0);
        SMBALERT_NI : in  std_logic_vector(0 to 0);
        SMBSUS_NI   : in  std_logic_vector(0 to 0);
        -- Outputs
        INT         : out std_logic_vector(0 to 0);
        PRDATA      : out std_logic_vector(7 downto 0);
        SCLO        : out std_logic_vector(0 to 0);
        SDAO        : out std_logic_vector(0 to 0);
        SMBALERT_NO : out std_logic_vector(0 to 0);
        SMBA_INT    : out std_logic_vector(0 to 0);
        SMBSUS_NO   : out std_logic_vector(0 to 0);
        SMBS_INT    : out std_logic_vector(0 to 0)
        );
end component;
-- corepwm   -   Actel:DirectCore:corepwm:4.1.106
component corepwm
    generic( 
        APB_DWIDTH          : integer := 32 ;
        CONFIG_MODE         : integer := 0 ;
        DAC_MODE1           : integer := 0 ;
        DAC_MODE2           : integer := 0 ;
        DAC_MODE3           : integer := 0 ;
        DAC_MODE4           : integer := 0 ;
        DAC_MODE5           : integer := 0 ;
        DAC_MODE6           : integer := 0 ;
        DAC_MODE7           : integer := 0 ;
        DAC_MODE8           : integer := 0 ;
        DAC_MODE9           : integer := 0 ;
        DAC_MODE10          : integer := 0 ;
        DAC_MODE11          : integer := 0 ;
        DAC_MODE12          : integer := 0 ;
        DAC_MODE13          : integer := 0 ;
        DAC_MODE14          : integer := 0 ;
        DAC_MODE15          : integer := 0 ;
        DAC_MODE16          : integer := 0 ;
        FAMILY              : integer := 15 ;
        FIXED_PERIOD        : integer := 1000 ;
        FIXED_PERIOD_EN     : integer := 1 ;
        FIXED_PRESCALE      : integer := 1 ;
        FIXED_PRESCALE_EN   : integer := 1 ;
        FIXED_PWM_NEG_EN1   : integer := 0 ;
        FIXED_PWM_NEG_EN2   : integer := 0 ;
        FIXED_PWM_NEG_EN3   : integer := 0 ;
        FIXED_PWM_NEG_EN4   : integer := 0 ;
        FIXED_PWM_NEG_EN5   : integer := 0 ;
        FIXED_PWM_NEG_EN6   : integer := 0 ;
        FIXED_PWM_NEG_EN7   : integer := 0 ;
        FIXED_PWM_NEG_EN8   : integer := 0 ;
        FIXED_PWM_NEG_EN9   : integer := 0 ;
        FIXED_PWM_NEG_EN10  : integer := 0 ;
        FIXED_PWM_NEG_EN11  : integer := 0 ;
        FIXED_PWM_NEG_EN12  : integer := 0 ;
        FIXED_PWM_NEG_EN13  : integer := 0 ;
        FIXED_PWM_NEG_EN14  : integer := 0 ;
        FIXED_PWM_NEG_EN15  : integer := 0 ;
        FIXED_PWM_NEG_EN16  : integer := 0 ;
        FIXED_PWM_NEGEDGE1  : integer := 0 ;
        FIXED_PWM_NEGEDGE2  : integer := 0 ;
        FIXED_PWM_NEGEDGE3  : integer := 0 ;
        FIXED_PWM_NEGEDGE4  : integer := 0 ;
        FIXED_PWM_NEGEDGE5  : integer := 0 ;
        FIXED_PWM_NEGEDGE6  : integer := 0 ;
        FIXED_PWM_NEGEDGE7  : integer := 0 ;
        FIXED_PWM_NEGEDGE8  : integer := 0 ;
        FIXED_PWM_NEGEDGE9  : integer := 0 ;
        FIXED_PWM_NEGEDGE10 : integer := 0 ;
        FIXED_PWM_NEGEDGE11 : integer := 0 ;
        FIXED_PWM_NEGEDGE12 : integer := 0 ;
        FIXED_PWM_NEGEDGE13 : integer := 0 ;
        FIXED_PWM_NEGEDGE14 : integer := 0 ;
        FIXED_PWM_NEGEDGE15 : integer := 0 ;
        FIXED_PWM_NEGEDGE16 : integer := 0 ;
        FIXED_PWM_POS_EN1   : integer := 1 ;
        FIXED_PWM_POS_EN2   : integer := 1 ;
        FIXED_PWM_POS_EN3   : integer := 1 ;
        FIXED_PWM_POS_EN4   : integer := 1 ;
        FIXED_PWM_POS_EN5   : integer := 1 ;
        FIXED_PWM_POS_EN6   : integer := 1 ;
        FIXED_PWM_POS_EN7   : integer := 1 ;
        FIXED_PWM_POS_EN8   : integer := 1 ;
        FIXED_PWM_POS_EN9   : integer := 1 ;
        FIXED_PWM_POS_EN10  : integer := 1 ;
        FIXED_PWM_POS_EN11  : integer := 1 ;
        FIXED_PWM_POS_EN12  : integer := 1 ;
        FIXED_PWM_POS_EN13  : integer := 1 ;
        FIXED_PWM_POS_EN14  : integer := 1 ;
        FIXED_PWM_POS_EN15  : integer := 1 ;
        FIXED_PWM_POS_EN16  : integer := 1 ;
        FIXED_PWM_POSEDGE1  : integer := 0 ;
        FIXED_PWM_POSEDGE2  : integer := 0 ;
        FIXED_PWM_POSEDGE3  : integer := 0 ;
        FIXED_PWM_POSEDGE4  : integer := 0 ;
        FIXED_PWM_POSEDGE5  : integer := 0 ;
        FIXED_PWM_POSEDGE6  : integer := 0 ;
        FIXED_PWM_POSEDGE7  : integer := 0 ;
        FIXED_PWM_POSEDGE8  : integer := 0 ;
        FIXED_PWM_POSEDGE9  : integer := 0 ;
        FIXED_PWM_POSEDGE10 : integer := 0 ;
        FIXED_PWM_POSEDGE11 : integer := 0 ;
        FIXED_PWM_POSEDGE12 : integer := 0 ;
        FIXED_PWM_POSEDGE13 : integer := 0 ;
        FIXED_PWM_POSEDGE14 : integer := 0 ;
        FIXED_PWM_POSEDGE15 : integer := 0 ;
        FIXED_PWM_POSEDGE16 : integer := 0 ;
        PWM_NUM             : integer := 4 ;
        PWM_STRETCH_VALUE1  : integer := 0 ;
        PWM_STRETCH_VALUE2  : integer := 0 ;
        PWM_STRETCH_VALUE3  : integer := 0 ;
        PWM_STRETCH_VALUE4  : integer := 0 ;
        PWM_STRETCH_VALUE5  : integer := 0 ;
        PWM_STRETCH_VALUE6  : integer := 0 ;
        PWM_STRETCH_VALUE7  : integer := 0 ;
        PWM_STRETCH_VALUE8  : integer := 0 ;
        PWM_STRETCH_VALUE9  : integer := 0 ;
        PWM_STRETCH_VALUE10 : integer := 0 ;
        PWM_STRETCH_VALUE11 : integer := 0 ;
        PWM_STRETCH_VALUE12 : integer := 0 ;
        PWM_STRETCH_VALUE13 : integer := 0 ;
        PWM_STRETCH_VALUE14 : integer := 0 ;
        PWM_STRETCH_VALUE15 : integer := 0 ;
        PWM_STRETCH_VALUE16 : integer := 0 ;
        SHADOW_REG_EN1      : integer := 0 ;
        SHADOW_REG_EN2      : integer := 0 ;
        SHADOW_REG_EN3      : integer := 0 ;
        SHADOW_REG_EN4      : integer := 0 ;
        SHADOW_REG_EN5      : integer := 0 ;
        SHADOW_REG_EN6      : integer := 0 ;
        SHADOW_REG_EN7      : integer := 0 ;
        SHADOW_REG_EN8      : integer := 0 ;
        SHADOW_REG_EN9      : integer := 0 ;
        SHADOW_REG_EN10     : integer := 0 ;
        SHADOW_REG_EN11     : integer := 0 ;
        SHADOW_REG_EN12     : integer := 0 ;
        SHADOW_REG_EN13     : integer := 0 ;
        SHADOW_REG_EN14     : integer := 0 ;
        SHADOW_REG_EN15     : integer := 0 ;
        SHADOW_REG_EN16     : integer := 0 ;
        TACH_EDGE1          : integer := 0 ;
        TACH_EDGE2          : integer := 0 ;
        TACH_EDGE3          : integer := 0 ;
        TACH_EDGE4          : integer := 0 ;
        TACH_EDGE5          : integer := 0 ;
        TACH_EDGE6          : integer := 0 ;
        TACH_EDGE7          : integer := 0 ;
        TACH_EDGE8          : integer := 0 ;
        TACH_EDGE9          : integer := 0 ;
        TACH_EDGE10         : integer := 0 ;
        TACH_EDGE11         : integer := 0 ;
        TACH_EDGE12         : integer := 0 ;
        TACH_EDGE13         : integer := 0 ;
        TACH_EDGE14         : integer := 0 ;
        TACH_EDGE15         : integer := 0 ;
        TACH_EDGE16         : integer := 0 ;
        TACH_NUM            : integer := 1 ;
        TACHINT_ACT_LEVEL   : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        PADDR   : in  std_logic_vector(7 downto 0);
        PCLK    : in  std_logic;
        PENABLE : in  std_logic;
        PRESETN : in  std_logic;
        PSEL    : in  std_logic;
        PWDATA  : in  std_logic_vector(31 downto 0);
        PWRITE  : in  std_logic;
        TACHIN  : in  std_logic_vector(1 to 1);
        -- Outputs
        PRDATA  : out std_logic_vector(31 downto 0);
        PREADY  : out std_logic;
        PSLVERR : out std_logic;
        PWM     : out std_logic_vector(4 downto 1);
        TACHINT : out std_logic
        );
end component;
-- CoreResetP   -   Actel:DirectCore:CoreResetP:7.0.104
component CoreResetP
    generic( 
        DDR_WAIT            : integer := 200 ;
        DEVICE_090          : integer := 0 ;
        DEVICE_VOLTAGE      : integer := 2 ;
        ENABLE_SOFT_RESETS  : integer := 0 ;
        EXT_RESET_CFG       : integer := 0 ;
        FDDR_IN_USE         : integer := 0 ;
        MDDR_IN_USE         : integer := 0 ;
        SDIF0_IN_USE        : integer := 0 ;
        SDIF0_PCIE          : integer := 0 ;
        SDIF0_PCIE_HOTRESET : integer := 1 ;
        SDIF0_PCIE_L2P2     : integer := 1 ;
        SDIF1_IN_USE        : integer := 0 ;
        SDIF1_PCIE          : integer := 0 ;
        SDIF1_PCIE_HOTRESET : integer := 1 ;
        SDIF1_PCIE_L2P2     : integer := 1 ;
        SDIF2_IN_USE        : integer := 0 ;
        SDIF2_PCIE          : integer := 0 ;
        SDIF2_PCIE_HOTRESET : integer := 1 ;
        SDIF2_PCIE_L2P2     : integer := 1 ;
        SDIF3_IN_USE        : integer := 0 ;
        SDIF3_PCIE          : integer := 0 ;
        SDIF3_PCIE_HOTRESET : integer := 1 ;
        SDIF3_PCIE_L2P2     : integer := 1 
        );
    -- Port list
    port(
        -- Inputs
        CLK_BASE                       : in  std_logic;
        CLK_LTSSM                      : in  std_logic;
        CONFIG1_DONE                   : in  std_logic;
        CONFIG2_DONE                   : in  std_logic;
        FAB_RESET_N                    : in  std_logic;
        FIC_2_APB_M_PRESET_N           : in  std_logic;
        FPLL_LOCK                      : in  std_logic;
        POWER_ON_RESET_N               : in  std_logic;
        RCOSC_25_50MHZ                 : in  std_logic;
        RESET_N_M2F                    : in  std_logic;
        SDIF0_PERST_N                  : in  std_logic;
        SDIF0_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF0_PSEL                     : in  std_logic;
        SDIF0_PWRITE                   : in  std_logic;
        SDIF0_SPLL_LOCK                : in  std_logic;
        SDIF1_PERST_N                  : in  std_logic;
        SDIF1_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF1_PSEL                     : in  std_logic;
        SDIF1_PWRITE                   : in  std_logic;
        SDIF1_SPLL_LOCK                : in  std_logic;
        SDIF2_PERST_N                  : in  std_logic;
        SDIF2_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF2_PSEL                     : in  std_logic;
        SDIF2_PWRITE                   : in  std_logic;
        SDIF2_SPLL_LOCK                : in  std_logic;
        SDIF3_PERST_N                  : in  std_logic;
        SDIF3_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF3_PSEL                     : in  std_logic;
        SDIF3_PWRITE                   : in  std_logic;
        SDIF3_SPLL_LOCK                : in  std_logic;
        SOFT_EXT_RESET_OUT             : in  std_logic;
        SOFT_FDDR_CORE_RESET           : in  std_logic;
        SOFT_M3_RESET                  : in  std_logic;
        SOFT_MDDR_DDR_AXI_S_CORE_RESET : in  std_logic;
        SOFT_RESET_F2M                 : in  std_logic;
        SOFT_SDIF0_0_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_1_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_CORE_RESET          : in  std_logic;
        SOFT_SDIF0_PHY_RESET           : in  std_logic;
        SOFT_SDIF1_CORE_RESET          : in  std_logic;
        SOFT_SDIF1_PHY_RESET           : in  std_logic;
        SOFT_SDIF2_CORE_RESET          : in  std_logic;
        SOFT_SDIF2_PHY_RESET           : in  std_logic;
        SOFT_SDIF3_CORE_RESET          : in  std_logic;
        SOFT_SDIF3_PHY_RESET           : in  std_logic;
        -- Outputs
        DDR_READY                      : out std_logic;
        EXT_RESET_OUT                  : out std_logic;
        FDDR_CORE_RESET_N              : out std_logic;
        INIT_DONE                      : out std_logic;
        M3_RESET_N                     : out std_logic;
        MDDR_DDR_AXI_S_CORE_RESET_N    : out std_logic;
        MSS_HPMS_READY                 : out std_logic;
        RESET_N_F2M                    : out std_logic;
        SDIF0_0_CORE_RESET_N           : out std_logic;
        SDIF0_1_CORE_RESET_N           : out std_logic;
        SDIF0_CORE_RESET_N             : out std_logic;
        SDIF0_PHY_RESET_N              : out std_logic;
        SDIF1_CORE_RESET_N             : out std_logic;
        SDIF1_PHY_RESET_N              : out std_logic;
        SDIF2_CORE_RESET_N             : out std_logic;
        SDIF2_PHY_RESET_N              : out std_logic;
        SDIF3_CORE_RESET_N             : out std_logic;
        SDIF3_PHY_RESET_N              : out std_logic;
        SDIF_READY                     : out std_logic;
        SDIF_RELEASED                  : out std_logic
        );
end component;
-- mss_top_sb_CoreUARTapb_0_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
component mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
    generic( 
        BAUD_VAL_FRCTN    : integer := 0 ;
        BAUD_VAL_FRCTN_EN : integer := 0 ;
        BAUD_VALUE        : integer := 26 ;
        FAMILY            : integer := 19 ;
        FIXEDMODE         : integer := 1 ;
        PRG_BIT8          : integer := 1 ;
        PRG_PARITY        : integer := 0 ;
        RX_FIFO           : integer := 0 ;
        RX_LEGACY_MODE    : integer := 0 ;
        TX_FIFO           : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(4 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        RX          : in  std_logic;
        -- Outputs
        FRAMING_ERR : out std_logic;
        OVERFLOW    : out std_logic;
        PARITY_ERR  : out std_logic;
        PRDATA      : out std_logic_vector(7 downto 0);
        PREADY      : out std_logic;
        PSLVERR     : out std_logic;
        RXRDY       : out std_logic;
        TX          : out std_logic;
        TXRDY       : out std_logic
        );
end component;
-- OR3
component OR3
    -- Port list
    port(
        -- Inputs
        A : in  std_logic;
        B : in  std_logic;
        C : in  std_logic;
        -- Outputs
        Y : out std_logic
        );
end component;
-- mss_top_sb_FABOSC_0_OSC   -   Actel:SgCore:OSC:1.0.103
component mss_top_sb_FABOSC_0_OSC
    -- Port list
    port(
        -- Inputs
        XTL                : in  std_logic;
        -- Outputs
        RCOSC_1MHZ_CCC     : out std_logic;
        RCOSC_1MHZ_O2F     : out std_logic;
        RCOSC_25_50MHZ_CCC : out std_logic;
        RCOSC_25_50MHZ_O2F : out std_logic;
        XTLOSC_CCC         : out std_logic;
        XTLOSC_O2F         : out std_logic
        );
end component;
-- mss_top_sb_MSS
component mss_top_sb_MSS
    -- Port list
    port(
        -- Inputs
        FIC_0_APB_M_PRDATA     : in  std_logic_vector(31 downto 0);
        FIC_0_APB_M_PREADY     : in  std_logic;
        FIC_0_APB_M_PSLVERR    : in  std_logic;
        FIC_2_APB_M_PRDATA     : in  std_logic_vector(31 downto 0);
        FIC_2_APB_M_PREADY     : in  std_logic;
        FIC_2_APB_M_PSLVERR    : in  std_logic;
        MCCC_CLK_BASE          : in  std_logic;
        MCCC_CLK_BASE_PLL_LOCK : in  std_logic;
        MSS_INT_F2M            : in  std_logic_vector(15 downto 0);
        MSS_RESET_N_F2M        : in  std_logic;
        -- Outputs
        FIC_0_APB_M_PADDR      : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PENABLE    : out std_logic;
        FIC_0_APB_M_PSEL       : out std_logic;
        FIC_0_APB_M_PWDATA     : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PWRITE     : out std_logic;
        FIC_2_APB_M_PADDR      : out std_logic_vector(15 downto 2);
        FIC_2_APB_M_PCLK       : out std_logic;
        FIC_2_APB_M_PENABLE    : out std_logic;
        FIC_2_APB_M_PRESET_N   : out std_logic;
        FIC_2_APB_M_PSEL       : out std_logic;
        FIC_2_APB_M_PWDATA     : out std_logic_vector(31 downto 0);
        FIC_2_APB_M_PWRITE     : out std_logic;
        MSS_RESET_N_M2F        : out std_logic
        );
end component;
-- SYSRESET
component SYSRESET
    -- Port list
    port(
        -- Inputs
        DEVRST_N         : in  std_logic;
        -- Outputs
        POWER_ON_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal BIBUF_COREI2C_0_0_SCL_IO_Y                         : std_logic;
signal BIBUF_COREI2C_0_0_SDA_IO_Y                         : std_logic;
signal CoreAPB3_0_APBmslave0_PENABLE                      : std_logic;
signal CoreAPB3_0_APBmslave0_PSELx                        : std_logic;
signal CoreAPB3_0_APBmslave0_PWRITE                       : std_logic;
signal CoreAPB3_0_APBmslave1_PREADY                       : std_logic;
signal CoreAPB3_0_APBmslave1_PSELx                        : std_logic;
signal CoreAPB3_0_APBmslave1_PSLVERR                      : std_logic;
signal CoreAPB3_0_APBmslave2_PRDATA                       : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave2_PREADY                       : std_logic;
signal CoreAPB3_0_APBmslave2_PSELx                        : std_logic;
signal CoreAPB3_0_APBmslave2_PSLVERR                      : std_logic;
signal COREI2C_0_0_INT                                    : std_logic_vector(0 to 0);
signal COREI2C_0_0_SCLO                                   : std_logic_vector(0 to 0);
signal COREI2C_0_0_SDAO                                   : std_logic_vector(0 to 0);
signal corepwm_0_0_TACHINT                                : std_logic;
signal CORERESETP_0_RESET_N_F2M                           : std_logic;
signal CoreUARTapb_0_0_FRAMING_ERR                        : std_logic;
signal CoreUARTapb_0_0_intr_or_0_Y                        : std_logic;
signal CoreUARTapb_0_0_intr_or_1_Y                        : std_logic;
signal CoreUARTapb_0_0_intr_or_2_Y                        : std_logic;
signal CoreUARTapb_0_0_OVERFLOW                           : std_logic;
signal CoreUARTapb_0_0_PARITY_ERR                         : std_logic;
signal CoreUARTapb_0_0_RXRDY                              : std_logic;
signal CoreUARTapb_0_0_TXRDY                              : std_logic;
signal FAB_CCC_GL0_net_0                                  : std_logic;
signal FAB_CCC_LOCK_net_0                                 : std_logic;
signal FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : std_logic;
signal FABOSC_0_RCOSC_25_50MHZ_O2F                        : std_logic;
signal INIT_DONE_net_0                                    : std_logic;
signal MSS_READY_net_0                                    : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR        : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE      : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA       : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY       : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx        : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR      : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA       : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE       : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N          : std_logic;
signal mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F               : std_logic;
signal POWER_ON_RESET_N_net_0                             : std_logic;
signal PWM_net_0                                          : std_logic_vector(4 downto 1);
signal TX_net_0                                           : std_logic;
signal POWER_ON_RESET_N_net_1                             : std_logic;
signal INIT_DONE_net_1                                    : std_logic;
signal FAB_CCC_GL0_net_1                                  : std_logic;
signal FAB_CCC_LOCK_net_1                                 : std_logic;
signal MSS_READY_net_1                                    : std_logic;
signal PWM_net_1                                          : std_logic_vector(4 downto 1);
signal TX_net_1                                           : std_logic;
signal MSS_INT_F2M_net_0                                  : std_logic_vector(15 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                                            : std_logic;
signal VCC_net                                            : std_logic;
signal PADDR_const_net_0                                  : std_logic_vector(7 downto 2);
signal PWDATA_const_net_0                                 : std_logic_vector(7 downto 0);
signal IADDR_const_net_0                                  : std_logic_vector(31 downto 0);
signal SDIF0_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF1_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF2_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF3_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS3_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS4_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS5_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS6_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS7_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS8_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS9_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS10_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS11_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS12_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS13_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS14_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS15_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS16_const_net_0                              : std_logic_vector(31 downto 0);
signal FIC_2_APB_M_PRDATA_const_net_0                     : std_logic_vector(31 downto 0);
----------------------------------------------------------------------
-- Inverted Signals
----------------------------------------------------------------------
signal E_IN_POST_INV0_0                                   : std_logic;
signal E_IN_POST_INV1_0                                   : std_logic;
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal CoreAPB3_0_APBmslave0_PADDR                        : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_0_8to0                 : std_logic_vector(8 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_0                      : std_logic_vector(8 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_1_4to0                 : std_logic_vector(4 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_1                      : std_logic_vector(4 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_2_7to0                 : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_2                      : std_logic_vector(7 downto 0);

signal CoreAPB3_0_APBmslave0_PRDATA_0_31to8               : std_logic_vector(31 downto 8);
signal CoreAPB3_0_APBmslave0_PRDATA_0_7to0                : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA_0                     : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA                       : std_logic_vector(7 downto 0);

signal CoreAPB3_0_APBmslave0_PWDATA                       : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0_7to0                : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0                     : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_1_7to0                : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_1                     : std_logic_vector(7 downto 0);

signal CoreAPB3_0_APBmslave1_PRDATA_0_31to8               : std_logic_vector(31 downto 8);
signal CoreAPB3_0_APBmslave1_PRDATA_0_7to0                : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave1_PRDATA_0                     : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave1_PRDATA                       : std_logic_vector(7 downto 0);


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net                        <= '0';
 VCC_net                        <= '1';
 PADDR_const_net_0              <= B"000000";
 PWDATA_const_net_0             <= B"00000000";
 IADDR_const_net_0              <= B"00000000000000000000000000000000";
 SDIF0_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF1_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF2_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF3_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 PRDATAS3_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS4_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS5_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS6_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS7_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS8_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS9_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS10_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS11_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS12_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS13_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS14_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS15_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS16_const_net_0          <= B"00000000000000000000000000000000";
 FIC_2_APB_M_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Inversions
----------------------------------------------------------------------
 E_IN_POST_INV0_0 <= NOT COREI2C_0_0_SCLO(0);
 E_IN_POST_INV1_0 <= NOT COREI2C_0_0_SDAO(0);
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 POWER_ON_RESET_N_net_1 <= POWER_ON_RESET_N_net_0;
 POWER_ON_RESET_N       <= POWER_ON_RESET_N_net_1;
 INIT_DONE_net_1        <= INIT_DONE_net_0;
 INIT_DONE              <= INIT_DONE_net_1;
 FAB_CCC_GL0_net_1      <= FAB_CCC_GL0_net_0;
 FAB_CCC_GL0            <= FAB_CCC_GL0_net_1;
 FAB_CCC_LOCK_net_1     <= FAB_CCC_LOCK_net_0;
 FAB_CCC_LOCK           <= FAB_CCC_LOCK_net_1;
 MSS_READY_net_1        <= MSS_READY_net_0;
 MSS_READY              <= MSS_READY_net_1;
 PWM_net_1              <= PWM_net_0;
 PWM(4 downto 1)        <= PWM_net_1;
 TX_net_1               <= TX_net_0;
 TX                     <= TX_net_1;
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 MSS_INT_F2M_net_0 <= ( '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & corepwm_0_0_TACHINT & CoreUARTapb_0_0_intr_or_2_Y & COREI2C_0_0_INT(0) );
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 CoreAPB3_0_APBmslave0_PADDR_0_8to0(8 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(8 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_0 <= ( CoreAPB3_0_APBmslave0_PADDR_0_8to0(8 downto 0) );
 CoreAPB3_0_APBmslave0_PADDR_1_4to0(4 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(4 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_1 <= ( CoreAPB3_0_APBmslave0_PADDR_1_4to0(4 downto 0) );
 CoreAPB3_0_APBmslave0_PADDR_2_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(7 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_2 <= ( CoreAPB3_0_APBmslave0_PADDR_2_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PRDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PRDATA_0 <= ( CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) & CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_0 <= ( CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) );
 CoreAPB3_0_APBmslave0_PWDATA_1_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_1 <= ( CoreAPB3_0_APBmslave0_PWDATA_1_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave1_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 CoreAPB3_0_APBmslave1_PRDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave1_PRDATA(7 downto 0);
 CoreAPB3_0_APBmslave1_PRDATA_0 <= ( CoreAPB3_0_APBmslave1_PRDATA_0_31to8(31 downto 8) & CoreAPB3_0_APBmslave1_PRDATA_0_7to0(7 downto 0) );

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- BIBUF_COREI2C_0_0_SCL_IO
BIBUF_COREI2C_0_0_SCL_IO : BIBUF
    port map( 
        -- Inputs
        D   => GND_net,
        E   => E_IN_POST_INV0_0,
        -- Outputs
        Y   => BIBUF_COREI2C_0_0_SCL_IO_Y,
        -- Inouts
        PAD => COREI2C_0_0_SCL_IO 
        );
-- BIBUF_COREI2C_0_0_SDA_IO
BIBUF_COREI2C_0_0_SDA_IO : BIBUF
    port map( 
        -- Inputs
        D   => GND_net,
        E   => E_IN_POST_INV1_0,
        -- Outputs
        Y   => BIBUF_COREI2C_0_0_SDA_IO_Y,
        -- Inouts
        PAD => COREI2C_0_0_SDA_IO 
        );
-- CCC_0   -   Actel:SgCore:FCCC:2.0.200
CCC_0 : mss_top_sb_CCC_0_FCCC
    port map( 
        -- Inputs
        RCOSC_25_50MHZ => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        -- Outputs
        GL0            => FAB_CCC_GL0_net_0,
        LOCK           => FAB_CCC_LOCK_net_0 
        );
-- CoreAPB3_0   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3_0 : entity COREAPB3_LIB.CoreAPB3
    generic map( 
        APB_DWIDTH      => ( 32 ),
        APBSLOT0ENABLE  => ( 1 ),
        APBSLOT1ENABLE  => ( 1 ),
        APBSLOT2ENABLE  => ( 1 ),
        APBSLOT3ENABLE  => ( 0 ),
        APBSLOT4ENABLE  => ( 0 ),
        APBSLOT5ENABLE  => ( 0 ),
        APBSLOT6ENABLE  => ( 0 ),
        APBSLOT7ENABLE  => ( 0 ),
        APBSLOT8ENABLE  => ( 0 ),
        APBSLOT9ENABLE  => ( 0 ),
        APBSLOT10ENABLE => ( 0 ),
        APBSLOT11ENABLE => ( 0 ),
        APBSLOT12ENABLE => ( 0 ),
        APBSLOT13ENABLE => ( 0 ),
        APBSLOT14ENABLE => ( 0 ),
        APBSLOT15ENABLE => ( 0 ),
        FAMILY          => ( 19 ),
        IADDR_OPTION    => ( 0 ),
        MADDR_BITS      => ( 16 ),
        SC_0            => ( 0 ),
        SC_1            => ( 0 ),
        SC_2            => ( 0 ),
        SC_3            => ( 0 ),
        SC_4            => ( 0 ),
        SC_5            => ( 0 ),
        SC_6            => ( 0 ),
        SC_7            => ( 0 ),
        SC_8            => ( 0 ),
        SC_9            => ( 0 ),
        SC_10           => ( 0 ),
        SC_11           => ( 0 ),
        SC_12           => ( 0 ),
        SC_13           => ( 0 ),
        SC_14           => ( 0 ),
        SC_15           => ( 0 ),
        UPR_NIBBLE_POSN => ( 3 )
        )
    port map( 
        -- Inputs
        PRESETN    => GND_net, -- tied to '0' from definition
        PCLK       => GND_net, -- tied to '0' from definition
        PADDR      => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR,
        PWRITE     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE,
        PENABLE    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE,
        PWDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA,
        PSEL       => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx,
        PRDATAS0   => CoreAPB3_0_APBmslave0_PRDATA_0,
        PREADYS0   => VCC_net, -- tied to '1' from definition
        PSLVERRS0  => GND_net, -- tied to '0' from definition
        PRDATAS1   => CoreAPB3_0_APBmslave1_PRDATA_0,
        PREADYS1   => CoreAPB3_0_APBmslave1_PREADY,
        PSLVERRS1  => CoreAPB3_0_APBmslave1_PSLVERR,
        PRDATAS2   => CoreAPB3_0_APBmslave2_PRDATA,
        PREADYS2   => CoreAPB3_0_APBmslave2_PREADY,
        PSLVERRS2  => CoreAPB3_0_APBmslave2_PSLVERR,
        PRDATAS3   => PRDATAS3_const_net_0, -- tied to X"0" from definition
        PREADYS3   => VCC_net, -- tied to '1' from definition
        PSLVERRS3  => GND_net, -- tied to '0' from definition
        PRDATAS4   => PRDATAS4_const_net_0, -- tied to X"0" from definition
        PREADYS4   => VCC_net, -- tied to '1' from definition
        PSLVERRS4  => GND_net, -- tied to '0' from definition
        PRDATAS5   => PRDATAS5_const_net_0, -- tied to X"0" from definition
        PREADYS5   => VCC_net, -- tied to '1' from definition
        PSLVERRS5  => GND_net, -- tied to '0' from definition
        PRDATAS6   => PRDATAS6_const_net_0, -- tied to X"0" from definition
        PREADYS6   => VCC_net, -- tied to '1' from definition
        PSLVERRS6  => GND_net, -- tied to '0' from definition
        PRDATAS7   => PRDATAS7_const_net_0, -- tied to X"0" from definition
        PREADYS7   => VCC_net, -- tied to '1' from definition
        PSLVERRS7  => GND_net, -- tied to '0' from definition
        PRDATAS8   => PRDATAS8_const_net_0, -- tied to X"0" from definition
        PREADYS8   => VCC_net, -- tied to '1' from definition
        PSLVERRS8  => GND_net, -- tied to '0' from definition
        PRDATAS9   => PRDATAS9_const_net_0, -- tied to X"0" from definition
        PREADYS9   => VCC_net, -- tied to '1' from definition
        PSLVERRS9  => GND_net, -- tied to '0' from definition
        PRDATAS10  => PRDATAS10_const_net_0, -- tied to X"0" from definition
        PREADYS10  => VCC_net, -- tied to '1' from definition
        PSLVERRS10 => GND_net, -- tied to '0' from definition
        PRDATAS11  => PRDATAS11_const_net_0, -- tied to X"0" from definition
        PREADYS11  => VCC_net, -- tied to '1' from definition
        PSLVERRS11 => GND_net, -- tied to '0' from definition
        PRDATAS12  => PRDATAS12_const_net_0, -- tied to X"0" from definition
        PREADYS12  => VCC_net, -- tied to '1' from definition
        PSLVERRS12 => GND_net, -- tied to '0' from definition
        PRDATAS13  => PRDATAS13_const_net_0, -- tied to X"0" from definition
        PREADYS13  => VCC_net, -- tied to '1' from definition
        PSLVERRS13 => GND_net, -- tied to '0' from definition
        PRDATAS14  => PRDATAS14_const_net_0, -- tied to X"0" from definition
        PREADYS14  => VCC_net, -- tied to '1' from definition
        PSLVERRS14 => GND_net, -- tied to '0' from definition
        PRDATAS15  => PRDATAS15_const_net_0, -- tied to X"0" from definition
        PREADYS15  => VCC_net, -- tied to '1' from definition
        PSLVERRS15 => GND_net, -- tied to '0' from definition
        PRDATAS16  => PRDATAS16_const_net_0, -- tied to X"0" from definition
        PREADYS16  => VCC_net, -- tied to '1' from definition
        PSLVERRS16 => GND_net, -- tied to '0' from definition
        IADDR      => IADDR_const_net_0, -- tied to X"0" from definition
        -- Outputs
        PRDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA,
        PREADY     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY,
        PSLVERR    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR,
        PADDRS     => CoreAPB3_0_APBmslave0_PADDR,
        PWRITES    => CoreAPB3_0_APBmslave0_PWRITE,
        PENABLES   => CoreAPB3_0_APBmslave0_PENABLE,
        PWDATAS    => CoreAPB3_0_APBmslave0_PWDATA,
        PSELS0     => CoreAPB3_0_APBmslave0_PSELx,
        PSELS1     => CoreAPB3_0_APBmslave1_PSELx,
        PSELS2     => CoreAPB3_0_APBmslave2_PSELx,
        PSELS3     => OPEN,
        PSELS4     => OPEN,
        PSELS5     => OPEN,
        PSELS6     => OPEN,
        PSELS7     => OPEN,
        PSELS8     => OPEN,
        PSELS9     => OPEN,
        PSELS10    => OPEN,
        PSELS11    => OPEN,
        PSELS12    => OPEN,
        PSELS13    => OPEN,
        PSELS14    => OPEN,
        PSELS15    => OPEN,
        PSELS16    => OPEN 
        );
-- COREI2C_0_0   -   Actel:DirectCore:COREI2C:7.0.102
COREI2C_0_0 : COREI2C
    generic map( 
        ADD_SLAVE1_ADDRESS_EN   => ( 0 ),
        BAUD_RATE_FIXED         => ( 1 ),
        BAUD_RATE_VALUE         => ( 0 ),
        BCLK_ENABLED            => ( 0 ),
        FIXED_SLAVE0_ADDR_EN    => ( 1 ),
        FIXED_SLAVE0_ADDR_VALUE => ( 16#42# ),
        FIXED_SLAVE1_ADDR_EN    => ( 0 ),
        FIXED_SLAVE1_ADDR_VALUE => ( 16#0# ),
        FREQUENCY               => ( 30 ),
        GLITCHREG_NUM           => ( 3 ),
        I2C_NUM                 => ( 1 ),
        IPMI_EN                 => ( 0 ),
        OPERATING_MODE          => ( 0 ),
        SMB_EN                  => ( 0 )
        )
    port map( 
        -- Inputs
        BCLK           => GND_net, -- tied to '0' from definition
        PADDR          => CoreAPB3_0_APBmslave0_PADDR_0,
        PCLK           => FAB_CCC_GL0_net_0,
        PENABLE        => CoreAPB3_0_APBmslave0_PENABLE,
        PRESETN        => MSS_READY_net_0,
        PSEL           => CoreAPB3_0_APBmslave0_PSELx,
        PWDATA         => CoreAPB3_0_APBmslave0_PWDATA_0,
        PWRITE         => CoreAPB3_0_APBmslave0_PWRITE,
        SCLI(0)        => BIBUF_COREI2C_0_0_SCL_IO_Y,
        SDAI(0)        => BIBUF_COREI2C_0_0_SDA_IO_Y,
        SMBALERT_NI(0) => GND_net, -- tied to '0' from definition
        SMBSUS_NI(0)   => GND_net, -- tied to '0' from definition
        -- Outputs
        INT            => COREI2C_0_0_INT,
        PRDATA         => CoreAPB3_0_APBmslave0_PRDATA,
        SCLO           => COREI2C_0_0_SCLO,
        SDAO           => COREI2C_0_0_SDAO,
        SMBALERT_NO    => OPEN,
        SMBA_INT       => OPEN,
        SMBSUS_NO      => OPEN,
        SMBS_INT       => OPEN 
        );
-- corepwm_0_0   -   Actel:DirectCore:corepwm:4.1.106
corepwm_0_0 : corepwm
    generic map( 
        APB_DWIDTH          => ( 32 ),
        CONFIG_MODE         => ( 0 ),
        DAC_MODE1           => ( 0 ),
        DAC_MODE2           => ( 0 ),
        DAC_MODE3           => ( 0 ),
        DAC_MODE4           => ( 0 ),
        DAC_MODE5           => ( 0 ),
        DAC_MODE6           => ( 0 ),
        DAC_MODE7           => ( 0 ),
        DAC_MODE8           => ( 0 ),
        DAC_MODE9           => ( 0 ),
        DAC_MODE10          => ( 0 ),
        DAC_MODE11          => ( 0 ),
        DAC_MODE12          => ( 0 ),
        DAC_MODE13          => ( 0 ),
        DAC_MODE14          => ( 0 ),
        DAC_MODE15          => ( 0 ),
        DAC_MODE16          => ( 0 ),
        FAMILY              => ( 15 ),
        FIXED_PERIOD        => ( 1000 ),
        FIXED_PERIOD_EN     => ( 1 ),
        FIXED_PRESCALE      => ( 1 ),
        FIXED_PRESCALE_EN   => ( 1 ),
        FIXED_PWM_NEG_EN1   => ( 0 ),
        FIXED_PWM_NEG_EN2   => ( 0 ),
        FIXED_PWM_NEG_EN3   => ( 0 ),
        FIXED_PWM_NEG_EN4   => ( 0 ),
        FIXED_PWM_NEG_EN5   => ( 0 ),
        FIXED_PWM_NEG_EN6   => ( 0 ),
        FIXED_PWM_NEG_EN7   => ( 0 ),
        FIXED_PWM_NEG_EN8   => ( 0 ),
        FIXED_PWM_NEG_EN9   => ( 0 ),
        FIXED_PWM_NEG_EN10  => ( 0 ),
        FIXED_PWM_NEG_EN11  => ( 0 ),
        FIXED_PWM_NEG_EN12  => ( 0 ),
        FIXED_PWM_NEG_EN13  => ( 0 ),
        FIXED_PWM_NEG_EN14  => ( 0 ),
        FIXED_PWM_NEG_EN15  => ( 0 ),
        FIXED_PWM_NEG_EN16  => ( 0 ),
        FIXED_PWM_NEGEDGE1  => ( 0 ),
        FIXED_PWM_NEGEDGE2  => ( 0 ),
        FIXED_PWM_NEGEDGE3  => ( 0 ),
        FIXED_PWM_NEGEDGE4  => ( 0 ),
        FIXED_PWM_NEGEDGE5  => ( 0 ),
        FIXED_PWM_NEGEDGE6  => ( 0 ),
        FIXED_PWM_NEGEDGE7  => ( 0 ),
        FIXED_PWM_NEGEDGE8  => ( 0 ),
        FIXED_PWM_NEGEDGE9  => ( 0 ),
        FIXED_PWM_NEGEDGE10 => ( 0 ),
        FIXED_PWM_NEGEDGE11 => ( 0 ),
        FIXED_PWM_NEGEDGE12 => ( 0 ),
        FIXED_PWM_NEGEDGE13 => ( 0 ),
        FIXED_PWM_NEGEDGE14 => ( 0 ),
        FIXED_PWM_NEGEDGE15 => ( 0 ),
        FIXED_PWM_NEGEDGE16 => ( 0 ),
        FIXED_PWM_POS_EN1   => ( 1 ),
        FIXED_PWM_POS_EN2   => ( 1 ),
        FIXED_PWM_POS_EN3   => ( 1 ),
        FIXED_PWM_POS_EN4   => ( 1 ),
        FIXED_PWM_POS_EN5   => ( 1 ),
        FIXED_PWM_POS_EN6   => ( 1 ),
        FIXED_PWM_POS_EN7   => ( 1 ),
        FIXED_PWM_POS_EN8   => ( 1 ),
        FIXED_PWM_POS_EN9   => ( 1 ),
        FIXED_PWM_POS_EN10  => ( 1 ),
        FIXED_PWM_POS_EN11  => ( 1 ),
        FIXED_PWM_POS_EN12  => ( 1 ),
        FIXED_PWM_POS_EN13  => ( 1 ),
        FIXED_PWM_POS_EN14  => ( 1 ),
        FIXED_PWM_POS_EN15  => ( 1 ),
        FIXED_PWM_POS_EN16  => ( 1 ),
        FIXED_PWM_POSEDGE1  => ( 0 ),
        FIXED_PWM_POSEDGE2  => ( 0 ),
        FIXED_PWM_POSEDGE3  => ( 0 ),
        FIXED_PWM_POSEDGE4  => ( 0 ),
        FIXED_PWM_POSEDGE5  => ( 0 ),
        FIXED_PWM_POSEDGE6  => ( 0 ),
        FIXED_PWM_POSEDGE7  => ( 0 ),
        FIXED_PWM_POSEDGE8  => ( 0 ),
        FIXED_PWM_POSEDGE9  => ( 0 ),
        FIXED_PWM_POSEDGE10 => ( 0 ),
        FIXED_PWM_POSEDGE11 => ( 0 ),
        FIXED_PWM_POSEDGE12 => ( 0 ),
        FIXED_PWM_POSEDGE13 => ( 0 ),
        FIXED_PWM_POSEDGE14 => ( 0 ),
        FIXED_PWM_POSEDGE15 => ( 0 ),
        FIXED_PWM_POSEDGE16 => ( 0 ),
        PWM_NUM             => ( 4 ),
        PWM_STRETCH_VALUE1  => ( 0 ),
        PWM_STRETCH_VALUE2  => ( 0 ),
        PWM_STRETCH_VALUE3  => ( 0 ),
        PWM_STRETCH_VALUE4  => ( 0 ),
        PWM_STRETCH_VALUE5  => ( 0 ),
        PWM_STRETCH_VALUE6  => ( 0 ),
        PWM_STRETCH_VALUE7  => ( 0 ),
        PWM_STRETCH_VALUE8  => ( 0 ),
        PWM_STRETCH_VALUE9  => ( 0 ),
        PWM_STRETCH_VALUE10 => ( 0 ),
        PWM_STRETCH_VALUE11 => ( 0 ),
        PWM_STRETCH_VALUE12 => ( 0 ),
        PWM_STRETCH_VALUE13 => ( 0 ),
        PWM_STRETCH_VALUE14 => ( 0 ),
        PWM_STRETCH_VALUE15 => ( 0 ),
        PWM_STRETCH_VALUE16 => ( 0 ),
        SHADOW_REG_EN1      => ( 0 ),
        SHADOW_REG_EN2      => ( 0 ),
        SHADOW_REG_EN3      => ( 0 ),
        SHADOW_REG_EN4      => ( 0 ),
        SHADOW_REG_EN5      => ( 0 ),
        SHADOW_REG_EN6      => ( 0 ),
        SHADOW_REG_EN7      => ( 0 ),
        SHADOW_REG_EN8      => ( 0 ),
        SHADOW_REG_EN9      => ( 0 ),
        SHADOW_REG_EN10     => ( 0 ),
        SHADOW_REG_EN11     => ( 0 ),
        SHADOW_REG_EN12     => ( 0 ),
        SHADOW_REG_EN13     => ( 0 ),
        SHADOW_REG_EN14     => ( 0 ),
        SHADOW_REG_EN15     => ( 0 ),
        SHADOW_REG_EN16     => ( 0 ),
        TACH_EDGE1          => ( 0 ),
        TACH_EDGE2          => ( 0 ),
        TACH_EDGE3          => ( 0 ),
        TACH_EDGE4          => ( 0 ),
        TACH_EDGE5          => ( 0 ),
        TACH_EDGE6          => ( 0 ),
        TACH_EDGE7          => ( 0 ),
        TACH_EDGE8          => ( 0 ),
        TACH_EDGE9          => ( 0 ),
        TACH_EDGE10         => ( 0 ),
        TACH_EDGE11         => ( 0 ),
        TACH_EDGE12         => ( 0 ),
        TACH_EDGE13         => ( 0 ),
        TACH_EDGE14         => ( 0 ),
        TACH_EDGE15         => ( 0 ),
        TACH_EDGE16         => ( 0 ),
        TACH_NUM            => ( 1 ),
        TACHINT_ACT_LEVEL   => ( 0 )
        )
    port map( 
        -- Inputs
        PADDR   => CoreAPB3_0_APBmslave0_PADDR_2,
        PCLK    => FAB_CCC_GL0_net_0,
        PENABLE => CoreAPB3_0_APBmslave0_PENABLE,
        PRESETN => MSS_READY_net_0,
        PSEL    => CoreAPB3_0_APBmslave2_PSELx,
        PWDATA  => CoreAPB3_0_APBmslave0_PWDATA,
        TACHIN  => TACHIN,
        PWRITE  => CoreAPB3_0_APBmslave0_PWRITE,
        -- Outputs
        PRDATA  => CoreAPB3_0_APBmslave2_PRDATA,
        PREADY  => CoreAPB3_0_APBmslave2_PREADY,
        PSLVERR => CoreAPB3_0_APBmslave2_PSLVERR,
        TACHINT => corepwm_0_0_TACHINT,
        PWM     => PWM_net_0 
        );
-- CORERESETP_0   -   Actel:DirectCore:CoreResetP:7.0.104
CORERESETP_0 : CoreResetP
    generic map( 
        DDR_WAIT            => ( 200 ),
        DEVICE_090          => ( 0 ),
        DEVICE_VOLTAGE      => ( 2 ),
        ENABLE_SOFT_RESETS  => ( 0 ),
        EXT_RESET_CFG       => ( 0 ),
        FDDR_IN_USE         => ( 0 ),
        MDDR_IN_USE         => ( 0 ),
        SDIF0_IN_USE        => ( 0 ),
        SDIF0_PCIE          => ( 0 ),
        SDIF0_PCIE_HOTRESET => ( 1 ),
        SDIF0_PCIE_L2P2     => ( 1 ),
        SDIF1_IN_USE        => ( 0 ),
        SDIF1_PCIE          => ( 0 ),
        SDIF1_PCIE_HOTRESET => ( 1 ),
        SDIF1_PCIE_L2P2     => ( 1 ),
        SDIF2_IN_USE        => ( 0 ),
        SDIF2_PCIE          => ( 0 ),
        SDIF2_PCIE_HOTRESET => ( 1 ),
        SDIF2_PCIE_L2P2     => ( 1 ),
        SDIF3_IN_USE        => ( 0 ),
        SDIF3_PCIE          => ( 0 ),
        SDIF3_PCIE_HOTRESET => ( 1 ),
        SDIF3_PCIE_L2P2     => ( 1 )
        )
    port map( 
        -- Inputs
        RESET_N_M2F                    => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F,
        FIC_2_APB_M_PRESET_N           => mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N,
        POWER_ON_RESET_N               => POWER_ON_RESET_N_net_0,
        FAB_RESET_N                    => FAB_RESET_N,
        RCOSC_25_50MHZ                 => FABOSC_0_RCOSC_25_50MHZ_O2F,
        CLK_BASE                       => FAB_CCC_GL0_net_0,
        CLK_LTSSM                      => GND_net, -- tied to '0' from definition
        FPLL_LOCK                      => VCC_net, -- tied to '1' from definition
        SDIF0_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF1_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF2_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF3_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        CONFIG1_DONE                   => VCC_net,
        CONFIG2_DONE                   => VCC_net,
        SDIF0_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF1_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF2_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF3_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF0_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF0_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF0_PRDATA                   => SDIF0_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF1_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF1_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF1_PRDATA                   => SDIF1_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF2_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF2_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF2_PRDATA                   => SDIF2_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF3_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF3_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF3_PRDATA                   => SDIF3_PRDATA_const_net_0, -- tied to X"0" from definition
        SOFT_EXT_RESET_OUT             => GND_net, -- tied to '0' from definition
        SOFT_RESET_F2M                 => GND_net, -- tied to '0' from definition
        SOFT_M3_RESET                  => GND_net, -- tied to '0' from definition
        SOFT_MDDR_DDR_AXI_S_CORE_RESET => GND_net, -- tied to '0' from definition
        SOFT_FDDR_CORE_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_0_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_1_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_CORE_RESET          => GND_net, -- tied to '0' from definition
        -- Outputs
        MSS_HPMS_READY                 => MSS_READY_net_0,
        DDR_READY                      => OPEN,
        SDIF_READY                     => OPEN,
        RESET_N_F2M                    => CORERESETP_0_RESET_N_F2M,
        M3_RESET_N                     => OPEN,
        EXT_RESET_OUT                  => OPEN,
        MDDR_DDR_AXI_S_CORE_RESET_N    => OPEN,
        FDDR_CORE_RESET_N              => OPEN,
        SDIF0_CORE_RESET_N             => OPEN,
        SDIF0_0_CORE_RESET_N           => OPEN,
        SDIF0_1_CORE_RESET_N           => OPEN,
        SDIF0_PHY_RESET_N              => OPEN,
        SDIF1_CORE_RESET_N             => OPEN,
        SDIF1_PHY_RESET_N              => OPEN,
        SDIF2_CORE_RESET_N             => OPEN,
        SDIF2_PHY_RESET_N              => OPEN,
        SDIF3_CORE_RESET_N             => OPEN,
        SDIF3_PHY_RESET_N              => OPEN,
        SDIF_RELEASED                  => OPEN,
        INIT_DONE                      => INIT_DONE_net_0 
        );
-- CoreUARTapb_0_0   -   Actel:DirectCore:CoreUARTapb:5.2.2
CoreUARTapb_0_0 : mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
    generic map( 
        BAUD_VAL_FRCTN    => ( 0 ),
        BAUD_VAL_FRCTN_EN => ( 0 ),
        BAUD_VALUE        => ( 26 ),
        FAMILY            => ( 19 ),
        FIXEDMODE         => ( 1 ),
        PRG_BIT8          => ( 1 ),
        PRG_PARITY        => ( 0 ),
        RX_FIFO           => ( 0 ),
        RX_LEGACY_MODE    => ( 0 ),
        TX_FIFO           => ( 0 )
        )
    port map( 
        -- Inputs
        PCLK        => FAB_CCC_GL0_net_0,
        PRESETN     => MSS_READY_net_0,
        PADDR       => CoreAPB3_0_APBmslave0_PADDR_1,
        PSEL        => CoreAPB3_0_APBmslave1_PSELx,
        PENABLE     => CoreAPB3_0_APBmslave0_PENABLE,
        PWRITE      => CoreAPB3_0_APBmslave0_PWRITE,
        PWDATA      => CoreAPB3_0_APBmslave0_PWDATA_1,
        RX          => RX,
        -- Outputs
        PRDATA      => CoreAPB3_0_APBmslave1_PRDATA,
        TXRDY       => CoreUARTapb_0_0_TXRDY,
        RXRDY       => CoreUARTapb_0_0_RXRDY,
        PARITY_ERR  => CoreUARTapb_0_0_PARITY_ERR,
        OVERFLOW    => CoreUARTapb_0_0_OVERFLOW,
        TX          => TX_net_0,
        PREADY      => CoreAPB3_0_APBmslave1_PREADY,
        PSLVERR     => CoreAPB3_0_APBmslave1_PSLVERR,
        FRAMING_ERR => CoreUARTapb_0_0_FRAMING_ERR 
        );
-- CoreUARTapb_0_0_intr_or_0
CoreUARTapb_0_0_intr_or_0 : OR3
    port map( 
        -- Inputs
        A => CoreUARTapb_0_0_FRAMING_ERR,
        B => CoreUARTapb_0_0_OVERFLOW,
        C => CoreUARTapb_0_0_PARITY_ERR,
        -- Outputs
        Y => CoreUARTapb_0_0_intr_or_0_Y 
        );
-- CoreUARTapb_0_0_intr_or_1
CoreUARTapb_0_0_intr_or_1 : OR3
    port map( 
        -- Inputs
        A => CoreUARTapb_0_0_RXRDY,
        B => CoreUARTapb_0_0_TXRDY,
        C => GND_net,
        -- Outputs
        Y => CoreUARTapb_0_0_intr_or_1_Y 
        );
-- CoreUARTapb_0_0_intr_or_2
CoreUARTapb_0_0_intr_or_2 : OR3
    port map( 
        -- Inputs
        A => CoreUARTapb_0_0_intr_or_1_Y,
        B => CoreUARTapb_0_0_intr_or_0_Y,
        C => GND_net,
        -- Outputs
        Y => CoreUARTapb_0_0_intr_or_2_Y 
        );
-- FABOSC_0   -   Actel:SgCore:OSC:1.0.103
FABOSC_0 : mss_top_sb_FABOSC_0_OSC
    port map( 
        -- Inputs
        XTL                => GND_net, -- tied to '0' from definition
        -- Outputs
        RCOSC_25_50MHZ_CCC => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        RCOSC_25_50MHZ_O2F => FABOSC_0_RCOSC_25_50MHZ_O2F,
        RCOSC_1MHZ_CCC     => OPEN,
        RCOSC_1MHZ_O2F     => OPEN,
        XTLOSC_CCC         => OPEN,
        XTLOSC_O2F         => OPEN 
        );
-- mss_top_sb_MSS_0
mss_top_sb_MSS_0 : mss_top_sb_MSS
    port map( 
        -- Inputs
        MCCC_CLK_BASE          => FAB_CCC_GL0_net_0,
        MCCC_CLK_BASE_PLL_LOCK => FAB_CCC_LOCK_net_0,
        MSS_RESET_N_F2M        => CORERESETP_0_RESET_N_F2M,
        FIC_0_APB_M_PREADY     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY,
        FIC_0_APB_M_PSLVERR    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR,
        FIC_2_APB_M_PREADY     => VCC_net, -- tied to '1' from definition
        FIC_2_APB_M_PSLVERR    => GND_net, -- tied to '0' from definition
        MSS_INT_F2M            => MSS_INT_F2M_net_0,
        FIC_0_APB_M_PRDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA,
        FIC_2_APB_M_PRDATA     => FIC_2_APB_M_PRDATA_const_net_0, -- tied to X"0" from definition
        -- Outputs
        MSS_RESET_N_M2F        => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F,
        FIC_0_APB_M_PSEL       => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx,
        FIC_0_APB_M_PWRITE     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE,
        FIC_0_APB_M_PENABLE    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE,
        FIC_2_APB_M_PRESET_N   => mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N,
        FIC_2_APB_M_PCLK       => OPEN,
        FIC_2_APB_M_PWRITE     => OPEN,
        FIC_2_APB_M_PENABLE    => OPEN,
        FIC_2_APB_M_PSEL       => OPEN,
        FIC_0_APB_M_PADDR      => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR,
        FIC_0_APB_M_PWDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA,
        FIC_2_APB_M_PADDR      => OPEN,
        FIC_2_APB_M_PWDATA     => OPEN 
        );
-- SYSRESET_POR
SYSRESET_POR : SYSRESET
    port map( 
        -- Inputs
        DEVRST_N         => DEVRST_N,
        -- Outputs
        POWER_ON_RESET_N => POWER_ON_RESET_N_net_0 
        );

end RTL;
