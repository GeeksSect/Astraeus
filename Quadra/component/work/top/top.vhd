----------------------------------------------------------------------
-- Created by SmartDesign Sun Oct 04 22:09:49 2015
-- Version: v11.5 SP3 11.5.3.10
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREABC_LIB;
use COREABC_LIB.all;
use COREABC_LIB.top_COREABC_0_components.all;
library COREAPB3_LIB;
use COREAPB3_LIB.all;
use COREAPB3_LIB.components.all;
library COREUARTAPB_LIB;
use COREUARTAPB_LIB.all;
use COREUARTAPB_LIB.top_CoreUARTapb_0_components.all;
----------------------------------------------------------------------
-- top entity declaration
----------------------------------------------------------------------
entity top is
    -- Port list
    port(
        -- Inputs
        RX : in  std_logic;
        -- Outputs
        TX : out std_logic
        );
end top;
----------------------------------------------------------------------
-- top architecture body
----------------------------------------------------------------------
architecture RTL of top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- top_COREABC_0_COREABC   -   Actel:DirectCore:COREABC:3.6.100
component top_COREABC_0_COREABC
    generic( 
        ACT_CALIBRATIONDATA : integer := 1 ;
        APB_AWIDTH          : integer := 8 ;
        APB_DWIDTH          : integer := 8 ;
        APB_SDEPTH          : integer := 2 ;
        DEBUG               : integer := 1 ;
        EN_ACM              : integer := 1 ;
        EN_ADD              : integer := 1 ;
        EN_ALURAM           : integer := 0 ;
        EN_AND              : integer := 1 ;
        EN_CALL             : integer := 1 ;
        EN_DATAM            : integer := 2 ;
        EN_INC              : integer := 1 ;
        EN_INDIRECT         : integer := 0 ;
        EN_INT              : integer := 0 ;
        EN_IOREAD           : integer := 1 ;
        EN_IOWRT            : integer := 1 ;
        EN_MULT             : integer := 0 ;
        EN_OR               : integer := 1 ;
        EN_PUSH             : integer := 1 ;
        EN_RAM              : integer := 1 ;
        EN_SHL              : integer := 1 ;
        EN_SHR              : integer := 1 ;
        EN_XOR              : integer := 1 ;
        FAMILY              : integer := 19 ;
        ICWIDTH             : integer := 8 ;
        IFWIDTH             : integer := 2 ;
        IIWIDTH             : integer := 2 ;
        IMEM_APB_ACCESS     : integer := 0 ;
        INITWIDTH           : integer := 11 ;
        INSMODE             : integer := 0 ;
        IOWIDTH             : integer := 1 ;
        ISRADDR             : integer := 1 ;
        MAX_NVMDWIDTH       : integer := 32 ;
        STWIDTH             : integer := 4 ;
        TESTMODE            : integer := 0 ;
        UNIQ_STRING_LENGTH  : integer := 13 ;
        ZRWIDTH             : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        INITADDR   : in  std_logic_vector(10 downto 0);
        INITDATA   : in  std_logic_vector(8 downto 0);
        INITDATVAL : in  std_logic;
        INITDONE   : in  std_logic;
        INTREQ     : in  std_logic;
        IO_IN      : in  std_logic_vector(1 downto 0);
        NSYSRESET  : in  std_logic;
        PADDR_S    : in  std_logic_vector(7 downto 0);
        PCLK       : in  std_logic;
        PENABLE_S  : in  std_logic;
        PRDATA_M   : in  std_logic_vector(7 downto 0);
        PREADY_M   : in  std_logic;
        PSEL_S     : in  std_logic;
        PSLVERR_M  : in  std_logic;
        PWDATA_S   : in  std_logic_vector(7 downto 0);
        PWRITE_S   : in  std_logic;
        -- Outputs
        INTACT     : out std_logic;
        IO_OUT     : out std_logic_vector(0 to 0);
        PADDR_M    : out std_logic_vector(19 downto 0);
        PENABLE_M  : out std_logic;
        PRDATA_S   : out std_logic_vector(7 downto 0);
        PREADY_S   : out std_logic;
        PRESETN    : out std_logic;
        PSEL_M     : out std_logic;
        PSLVERR_S  : out std_logic;
        PWDATA_M   : out std_logic_vector(7 downto 0);
        PWRITE_M   : out std_logic
        );
end component;
-- CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
-- using entity instantiation for component CoreAPB3
-- top_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.5.101
component top_CoreUARTapb_0_CoreUARTapb
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
-- top_FCCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
component top_FCCC_0_FCCC
    -- Port list
    port(
        -- Inputs
        RCOSC_25_50MHZ : in  std_logic;
        -- Outputs
        GL0            : out std_logic;
        LOCK           : out std_logic
        );
end component;
-- top_OSC_0_OSC   -   Actel:SgCore:OSC:1.0.103
component top_OSC_0_OSC
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
-- tx_rx
component tx_rx
    -- Port list
    port(
        -- Inputs
        rx_rdy : in  std_logic;
        tx_rdy : in  std_logic;
        -- Outputs
        tx_rx  : out std_logic_vector(1 downto 0)
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal COREABC_0_APB3master_PENABLE                    : std_logic;
signal COREABC_0_APB3master_PREADY                     : std_logic;
signal COREABC_0_APB3master_PSELx                      : std_logic;
signal COREABC_0_APB3master_PSLVERR                    : std_logic;
signal COREABC_0_APB3master_PWRITE                     : std_logic;
signal COREABC_0_PRESETN                               : std_logic;
signal CoreAPB3_0_APBmslave0_PENABLE                   : std_logic;
signal CoreAPB3_0_APBmslave0_PREADY                    : std_logic;
signal CoreAPB3_0_APBmslave0_PSELx                     : std_logic;
signal CoreAPB3_0_APBmslave0_PSLVERR                   : std_logic;
signal CoreAPB3_0_APBmslave0_PWRITE                    : std_logic;
signal CoreUARTapb_0_RXRDY                             : std_logic;
signal CoreUARTapb_0_TXRDY                             : std_logic;
signal FCCC_0_GL0                                      : std_logic;
signal FCCC_0_LOCK                                     : std_logic;
signal OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : std_logic;
signal TX_net_0                                        : std_logic;
signal tx_rx_0_tx_rx                                   : std_logic_vector(1 downto 0);
signal TX_net_1                                        : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal INITADDR_const_net_0                            : std_logic_vector(10 downto 0);
signal INITDATA_const_net_0                            : std_logic_vector(8 downto 0);
signal GND_net                                         : std_logic;
signal VCC_net                                         : std_logic;
signal PADDR_S_const_net_0                             : std_logic_vector(7 downto 0);
signal PWDATA_S_const_net_0                            : std_logic_vector(7 downto 0);
signal IADDR_const_net_0                               : std_logic_vector(31 downto 0);
signal PADDR_const_net_0                               : std_logic_vector(7 downto 2);
signal PWDATA_const_net_0                              : std_logic_vector(7 downto 0);
signal PRDATAS1_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS2_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS3_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS4_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS5_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS6_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS7_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS8_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS9_const_net_0                            : std_logic_vector(31 downto 0);
signal PRDATAS10_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS11_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS12_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS13_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS14_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS15_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS16_const_net_0                           : std_logic_vector(31 downto 0);
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal COREABC_0_APB3master_PADDR                      : std_logic_vector(19 downto 0);
signal COREABC_0_APB3master_PADDR_0_31to20             : std_logic_vector(31 downto 20);
signal COREABC_0_APB3master_PADDR_0_19to0              : std_logic_vector(19 downto 0);
signal COREABC_0_APB3master_PADDR_0                    : std_logic_vector(31 downto 0);

signal COREABC_0_APB3master_PRDATA_0_7to0              : std_logic_vector(7 downto 0);
signal COREABC_0_APB3master_PRDATA_0                   : std_logic_vector(7 downto 0);
signal COREABC_0_APB3master_PRDATA                     : std_logic_vector(31 downto 0);

signal COREABC_0_APB3master_PWDATA                     : std_logic_vector(7 downto 0);
signal COREABC_0_APB3master_PWDATA_0_31to8             : std_logic_vector(31 downto 8);
signal COREABC_0_APB3master_PWDATA_0_7to0              : std_logic_vector(7 downto 0);
signal COREABC_0_APB3master_PWDATA_0                   : std_logic_vector(31 downto 0);

signal CoreAPB3_0_APBmslave0_PADDR                     : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_0_4to0              : std_logic_vector(4 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_0                   : std_logic_vector(4 downto 0);

signal CoreAPB3_0_APBmslave0_PRDATA_0_31to8            : std_logic_vector(31 downto 8);
signal CoreAPB3_0_APBmslave0_PRDATA_0_7to0             : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA_0                  : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA                    : std_logic_vector(7 downto 0);

signal CoreAPB3_0_APBmslave0_PWDATA                    : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0_7to0             : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0                  : std_logic_vector(7 downto 0);


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 INITADDR_const_net_0  <= B"00000000000";
 INITDATA_const_net_0  <= B"000000000";
 GND_net               <= '0';
 VCC_net               <= '1';
 PADDR_S_const_net_0   <= B"00000000";
 PWDATA_S_const_net_0  <= B"00000000";
 IADDR_const_net_0     <= B"00000000000000000000000000000000";
 PADDR_const_net_0     <= B"000000";
 PWDATA_const_net_0    <= B"00000000";
 PRDATAS1_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS2_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS3_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS4_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS5_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS6_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS7_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS8_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS9_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS10_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS11_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS12_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS13_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS14_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS15_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS16_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TX_net_1 <= TX_net_0;
 TX       <= TX_net_1;
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 COREABC_0_APB3master_PADDR_0_31to20(31 downto 20) <= B"000000000000";
 COREABC_0_APB3master_PADDR_0_19to0(19 downto 0) <= COREABC_0_APB3master_PADDR(19 downto 0);
 COREABC_0_APB3master_PADDR_0 <= ( COREABC_0_APB3master_PADDR_0_31to20(31 downto 20) & COREABC_0_APB3master_PADDR_0_19to0(19 downto 0) );

 COREABC_0_APB3master_PRDATA_0_7to0(7 downto 0) <= COREABC_0_APB3master_PRDATA(7 downto 0);
 COREABC_0_APB3master_PRDATA_0 <= ( COREABC_0_APB3master_PRDATA_0_7to0(7 downto 0) );

 COREABC_0_APB3master_PWDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 COREABC_0_APB3master_PWDATA_0_7to0(7 downto 0) <= COREABC_0_APB3master_PWDATA(7 downto 0);
 COREABC_0_APB3master_PWDATA_0 <= ( COREABC_0_APB3master_PWDATA_0_31to8(31 downto 8) & COREABC_0_APB3master_PWDATA_0_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(4 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_0 <= ( CoreAPB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) );

 CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PRDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PRDATA_0 <= ( CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) & CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_0 <= ( CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) );

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREABC_0   -   Actel:DirectCore:COREABC:3.6.100
COREABC_0 : top_COREABC_0_COREABC
    generic map( 
        ACT_CALIBRATIONDATA => ( 1 ),
        APB_AWIDTH          => ( 8 ),
        APB_DWIDTH          => ( 8 ),
        APB_SDEPTH          => ( 2 ),
        DEBUG               => ( 1 ),
        EN_ACM              => ( 1 ),
        EN_ADD              => ( 1 ),
        EN_ALURAM           => ( 0 ),
        EN_AND              => ( 1 ),
        EN_CALL             => ( 1 ),
        EN_DATAM            => ( 2 ),
        EN_INC              => ( 1 ),
        EN_INDIRECT         => ( 0 ),
        EN_INT              => ( 0 ),
        EN_IOREAD           => ( 1 ),
        EN_IOWRT            => ( 1 ),
        EN_MULT             => ( 0 ),
        EN_OR               => ( 1 ),
        EN_PUSH             => ( 1 ),
        EN_RAM              => ( 1 ),
        EN_SHL              => ( 1 ),
        EN_SHR              => ( 1 ),
        EN_XOR              => ( 1 ),
        FAMILY              => ( 19 ),
        ICWIDTH             => ( 8 ),
        IFWIDTH             => ( 2 ),
        IIWIDTH             => ( 2 ),
        IMEM_APB_ACCESS     => ( 0 ),
        INITWIDTH           => ( 11 ),
        INSMODE             => ( 0 ),
        IOWIDTH             => ( 1 ),
        ISRADDR             => ( 1 ),
        MAX_NVMDWIDTH       => ( 32 ),
        STWIDTH             => ( 4 ),
        TESTMODE            => ( 0 ),
        UNIQ_STRING_LENGTH  => ( 13 ),
        ZRWIDTH             => ( 0 )
        )
    port map( 
        -- Inputs
        INITADDR   => INITADDR_const_net_0, -- tied to X"0" from definition
        INITDATA   => INITDATA_const_net_0, -- tied to X"0" from definition
        INITDATVAL => GND_net, -- tied to '0' from definition
        INITDONE   => VCC_net, -- tied to '1' from definition
        INTREQ     => GND_net, -- tied to '0' from definition
        IO_IN      => tx_rx_0_tx_rx,
        NSYSRESET  => FCCC_0_LOCK,
        PCLK       => FCCC_0_GL0,
        PRDATA_M   => COREABC_0_APB3master_PRDATA_0,
        PREADY_M   => COREABC_0_APB3master_PREADY,
        PSLVERR_M  => COREABC_0_APB3master_PSLVERR,
        PADDR_S    => PADDR_S_const_net_0, -- tied to X"0" from definition
        PSEL_S     => GND_net, -- tied to '0' from definition
        PENABLE_S  => GND_net, -- tied to '0' from definition
        PWRITE_S   => GND_net, -- tied to '0' from definition
        PWDATA_S   => PWDATA_S_const_net_0, -- tied to X"0" from definition
        -- Outputs
        INTACT     => OPEN,
        IO_OUT     => OPEN,
        PRESETN    => COREABC_0_PRESETN,
        PADDR_M    => COREABC_0_APB3master_PADDR,
        PENABLE_M  => COREABC_0_APB3master_PENABLE,
        PSEL_M     => COREABC_0_APB3master_PSELx,
        PWDATA_M   => COREABC_0_APB3master_PWDATA,
        PWRITE_M   => COREABC_0_APB3master_PWRITE,
        PRDATA_S   => OPEN,
        PREADY_S   => OPEN,
        PSLVERR_S  => OPEN 
        );
-- CoreAPB3_0   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3_0 : entity COREAPB3_LIB.CoreAPB3
    generic map( 
        APB_DWIDTH      => ( 32 ),
        APBSLOT0ENABLE  => ( 1 ),
        APBSLOT1ENABLE  => ( 0 ),
        APBSLOT2ENABLE  => ( 0 ),
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
        MADDR_BITS      => ( 28 ),
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
        UPR_NIBBLE_POSN => ( 6 )
        )
    port map( 
        -- Inputs
        PRESETN    => GND_net, -- tied to '0' from definition
        PCLK       => GND_net, -- tied to '0' from definition
        PADDR      => COREABC_0_APB3master_PADDR_0,
        PWRITE     => COREABC_0_APB3master_PWRITE,
        PENABLE    => COREABC_0_APB3master_PENABLE,
        PWDATA     => COREABC_0_APB3master_PWDATA_0,
        PSEL       => COREABC_0_APB3master_PSELx,
        PRDATAS0   => CoreAPB3_0_APBmslave0_PRDATA_0,
        PREADYS0   => CoreAPB3_0_APBmslave0_PREADY,
        PSLVERRS0  => CoreAPB3_0_APBmslave0_PSLVERR,
        PRDATAS1   => PRDATAS1_const_net_0, -- tied to X"0" from definition
        PREADYS1   => VCC_net, -- tied to '1' from definition
        PSLVERRS1  => GND_net, -- tied to '0' from definition
        PRDATAS2   => PRDATAS2_const_net_0, -- tied to X"0" from definition
        PREADYS2   => VCC_net, -- tied to '1' from definition
        PSLVERRS2  => GND_net, -- tied to '0' from definition
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
        PRDATA     => COREABC_0_APB3master_PRDATA,
        PREADY     => COREABC_0_APB3master_PREADY,
        PSLVERR    => COREABC_0_APB3master_PSLVERR,
        PADDRS     => CoreAPB3_0_APBmslave0_PADDR,
        PWRITES    => CoreAPB3_0_APBmslave0_PWRITE,
        PENABLES   => CoreAPB3_0_APBmslave0_PENABLE,
        PWDATAS    => CoreAPB3_0_APBmslave0_PWDATA,
        PSELS0     => CoreAPB3_0_APBmslave0_PSELx,
        PSELS1     => OPEN,
        PSELS2     => OPEN,
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
-- CoreUARTapb_0   -   Actel:DirectCore:CoreUARTapb:5.5.101
CoreUARTapb_0 : top_CoreUARTapb_0_CoreUARTapb
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
        PCLK        => FCCC_0_GL0,
        PRESETN     => COREABC_0_PRESETN,
        PADDR       => CoreAPB3_0_APBmslave0_PADDR_0,
        PSEL        => CoreAPB3_0_APBmslave0_PSELx,
        PENABLE     => CoreAPB3_0_APBmslave0_PENABLE,
        PWRITE      => CoreAPB3_0_APBmslave0_PWRITE,
        PWDATA      => CoreAPB3_0_APBmslave0_PWDATA_0,
        RX          => RX,
        -- Outputs
        PRDATA      => CoreAPB3_0_APBmslave0_PRDATA,
        TXRDY       => CoreUARTapb_0_TXRDY,
        RXRDY       => CoreUARTapb_0_RXRDY,
        PARITY_ERR  => OPEN,
        OVERFLOW    => OPEN,
        TX          => TX_net_0,
        PREADY      => CoreAPB3_0_APBmslave0_PREADY,
        PSLVERR     => CoreAPB3_0_APBmslave0_PSLVERR,
        FRAMING_ERR => OPEN 
        );
-- FCCC_0   -   Actel:SgCore:FCCC:2.0.200
FCCC_0 : top_FCCC_0_FCCC
    port map( 
        -- Inputs
        RCOSC_25_50MHZ => OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        -- Outputs
        GL0            => FCCC_0_GL0,
        LOCK           => FCCC_0_LOCK 
        );
-- OSC_0   -   Actel:SgCore:OSC:1.0.103
OSC_0 : top_OSC_0_OSC
    port map( 
        -- Inputs
        XTL                => GND_net, -- tied to '0' from definition
        -- Outputs
        RCOSC_25_50MHZ_CCC => OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        RCOSC_25_50MHZ_O2F => OPEN,
        RCOSC_1MHZ_CCC     => OPEN,
        RCOSC_1MHZ_O2F     => OPEN,
        XTLOSC_CCC         => OPEN,
        XTLOSC_O2F         => OPEN 
        );
-- tx_rx_0
tx_rx_0 : tx_rx
    port map( 
        -- Inputs
        tx_rdy => CoreUARTapb_0_TXRDY,
        rx_rdy => CoreUARTapb_0_RXRDY,
        -- Outputs
        tx_rx  => tx_rx_0_tx_rx 
        );

end RTL;
