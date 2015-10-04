-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_OSC_0_OSC is

    port( OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );

end top_OSC_0_OSC;

architecture DEF_ARCH of top_OSC_0_OSC is 

  component RCOSC_25_50MHZ
    generic (FREQUENCY:real := 50.0);

    port( CLKOUT : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

begin 


    I_RCOSC_25_50MHZ : RCOSC_25_50MHZ
      generic map(FREQUENCY => 50.0)

      port map(CLKOUT => 
        OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_COREABC_0_RAM128X8_0 is

    port( SMADDR               : in    std_logic_vector(0 to 0);
          RAMRDATA             : out   std_logic_vector(7 downto 0);
          STKPTR_i_0           : in    std_logic_vector(0 to 0);
          FCCC_0_GL0           : in    std_logic;
          COREABC_0_PRESETN    : in    std_logic;
          N_14_0_i_0           : in    std_logic;
          N_16_0_i_0           : in    std_logic;
          N_18_0_i_0           : in    std_logic;
          un5_ramwdata_cry_1_S : in    std_logic;
          un5_ramwdata_cry_2_S : in    std_logic;
          un5_ramwdata_cry_3_S : in    std_logic;
          un5_ramwdata_cry_4_S : in    std_logic;
          un5_ramwdata_cry_5_S : in    std_logic;
          un5_ramwdata_cry_6_S : in    std_logic;
          un5_ramwdata_s_7_S   : in    std_logic
        );

end top_COREABC_0_RAM128X8_0;

architecture DEF_ARCH of top_COREABC_0_RAM128X8_0 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component RAM64x18
    generic (MEMORYFILE:string := "");

    port( A_DOUT        : out   std_logic_vector(17 downto 0);
          B_DOUT        : out   std_logic_vector(17 downto 0);
          BUSY          : out   std_logic;
          A_ADDR_CLK    : in    std_logic := 'U';
          A_DOUT_CLK    : in    std_logic := 'U';
          A_ADDR_SRST_N : in    std_logic := 'U';
          A_DOUT_SRST_N : in    std_logic := 'U';
          A_ADDR_ARST_N : in    std_logic := 'U';
          A_DOUT_ARST_N : in    std_logic := 'U';
          A_ADDR_EN     : in    std_logic := 'U';
          A_DOUT_EN     : in    std_logic := 'U';
          A_BLK         : in    std_logic_vector(1 downto 0) := (others => 'U');
          A_ADDR        : in    std_logic_vector(9 downto 0) := (others => 'U');
          B_ADDR_CLK    : in    std_logic := 'U';
          B_DOUT_CLK    : in    std_logic := 'U';
          B_ADDR_SRST_N : in    std_logic := 'U';
          B_DOUT_SRST_N : in    std_logic := 'U';
          B_ADDR_ARST_N : in    std_logic := 'U';
          B_DOUT_ARST_N : in    std_logic := 'U';
          B_ADDR_EN     : in    std_logic := 'U';
          B_DOUT_EN     : in    std_logic := 'U';
          B_BLK         : in    std_logic_vector(1 downto 0) := (others => 'U');
          B_ADDR        : in    std_logic_vector(9 downto 0) := (others => 'U');
          C_CLK         : in    std_logic := 'U';
          C_ADDR        : in    std_logic_vector(9 downto 0) := (others => 'U');
          C_DIN         : in    std_logic_vector(17 downto 0) := (others => 'U');
          C_WEN         : in    std_logic := 'U';
          C_BLK         : in    std_logic_vector(1 downto 0) := (others => 'U');
          A_EN          : in    std_logic := 'U';
          A_ADDR_LAT    : in    std_logic := 'U';
          A_DOUT_LAT    : in    std_logic := 'U';
          A_WIDTH       : in    std_logic_vector(2 downto 0) := (others => 'U');
          B_EN          : in    std_logic := 'U';
          B_ADDR_LAT    : in    std_logic := 'U';
          B_DOUT_LAT    : in    std_logic := 'U';
          B_WIDTH       : in    std_logic_vector(2 downto 0) := (others => 'U');
          C_EN          : in    std_logic := 'U';
          C_WIDTH       : in    std_logic_vector(2 downto 0) := (others => 'U');
          SII_LOCK      : in    std_logic := 'U'
        );
  end component;

    signal \SMADDR_i_0[0]\, VCC_net_1, GND_net_1 : std_logic;
    signal nc24, nc1, nc8, nc13, nc16, nc19, nc25, nc20, nc27, 
        nc9, nc22, nc28, nc14, nc5, nc21, nc15, nc3, nc10, nc7, 
        nc17, nc4, nc12, nc2, nc23, nc18, nc26, nc6, nc11
         : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    U_RAM64x18_RNO : CFG1
      generic map(INIT => "01")

      port map(A => SMADDR(0), Y => \SMADDR_i_0[0]\);
    
    U_RAM64x18 : RAM64x18
      port map(A_DOUT(17) => nc24, A_DOUT(16) => nc1, A_DOUT(15)
         => nc8, A_DOUT(14) => nc13, A_DOUT(13) => nc16, 
        A_DOUT(12) => nc19, A_DOUT(11) => nc25, A_DOUT(10) => 
        nc20, A_DOUT(9) => nc27, A_DOUT(8) => nc9, A_DOUT(7) => 
        RAMRDATA(7), A_DOUT(6) => RAMRDATA(6), A_DOUT(5) => 
        RAMRDATA(5), A_DOUT(4) => RAMRDATA(4), A_DOUT(3) => 
        RAMRDATA(3), A_DOUT(2) => RAMRDATA(2), A_DOUT(1) => 
        RAMRDATA(1), A_DOUT(0) => RAMRDATA(0), B_DOUT(17) => nc22, 
        B_DOUT(16) => nc28, B_DOUT(15) => nc14, B_DOUT(14) => nc5, 
        B_DOUT(13) => nc21, B_DOUT(12) => nc15, B_DOUT(11) => nc3, 
        B_DOUT(10) => nc10, B_DOUT(9) => nc7, B_DOUT(8) => nc17, 
        B_DOUT(7) => nc4, B_DOUT(6) => nc12, B_DOUT(5) => nc2, 
        B_DOUT(4) => nc23, B_DOUT(3) => nc18, B_DOUT(2) => nc26, 
        B_DOUT(1) => nc6, B_DOUT(0) => nc11, BUSY => OPEN, 
        A_ADDR_CLK => FCCC_0_GL0, A_DOUT_CLK => VCC_net_1, 
        A_ADDR_SRST_N => VCC_net_1, A_DOUT_SRST_N => VCC_net_1, 
        A_ADDR_ARST_N => COREABC_0_PRESETN, A_DOUT_ARST_N => 
        VCC_net_1, A_ADDR_EN => VCC_net_1, A_DOUT_EN => VCC_net_1, 
        A_BLK(1) => VCC_net_1, A_BLK(0) => VCC_net_1, A_ADDR(9)
         => VCC_net_1, A_ADDR(8) => VCC_net_1, A_ADDR(7) => 
        VCC_net_1, A_ADDR(6) => N_18_0_i_0, A_ADDR(5) => 
        N_16_0_i_0, A_ADDR(4) => N_14_0_i_0, A_ADDR(3) => 
        STKPTR_i_0(0), A_ADDR(2) => GND_net_1, A_ADDR(1) => 
        GND_net_1, A_ADDR(0) => GND_net_1, B_ADDR_CLK => 
        VCC_net_1, B_DOUT_CLK => VCC_net_1, B_ADDR_SRST_N => 
        VCC_net_1, B_DOUT_SRST_N => VCC_net_1, B_ADDR_ARST_N => 
        VCC_net_1, B_DOUT_ARST_N => VCC_net_1, B_ADDR_EN => 
        VCC_net_1, B_DOUT_EN => VCC_net_1, B_BLK(1) => GND_net_1, 
        B_BLK(0) => GND_net_1, B_ADDR(9) => GND_net_1, B_ADDR(8)
         => GND_net_1, B_ADDR(7) => GND_net_1, B_ADDR(6) => 
        GND_net_1, B_ADDR(5) => GND_net_1, B_ADDR(4) => GND_net_1, 
        B_ADDR(3) => GND_net_1, B_ADDR(2) => GND_net_1, B_ADDR(1)
         => GND_net_1, B_ADDR(0) => GND_net_1, C_CLK => 
        FCCC_0_GL0, C_ADDR(9) => VCC_net_1, C_ADDR(8) => 
        VCC_net_1, C_ADDR(7) => VCC_net_1, C_ADDR(6) => 
        N_18_0_i_0, C_ADDR(5) => N_16_0_i_0, C_ADDR(4) => 
        N_14_0_i_0, C_ADDR(3) => STKPTR_i_0(0), C_ADDR(2) => 
        GND_net_1, C_ADDR(1) => GND_net_1, C_ADDR(0) => GND_net_1, 
        C_DIN(17) => GND_net_1, C_DIN(16) => GND_net_1, C_DIN(15)
         => GND_net_1, C_DIN(14) => GND_net_1, C_DIN(13) => 
        GND_net_1, C_DIN(12) => GND_net_1, C_DIN(11) => GND_net_1, 
        C_DIN(10) => GND_net_1, C_DIN(9) => GND_net_1, C_DIN(8)
         => GND_net_1, C_DIN(7) => un5_ramwdata_s_7_S, C_DIN(6)
         => un5_ramwdata_cry_6_S, C_DIN(5) => 
        un5_ramwdata_cry_5_S, C_DIN(4) => un5_ramwdata_cry_4_S, 
        C_DIN(3) => un5_ramwdata_cry_3_S, C_DIN(2) => 
        un5_ramwdata_cry_2_S, C_DIN(1) => un5_ramwdata_cry_1_S, 
        C_DIN(0) => \SMADDR_i_0[0]\, C_WEN => GND_net_1, C_BLK(1)
         => VCC_net_1, C_BLK(0) => VCC_net_1, A_EN => VCC_net_1, 
        A_ADDR_LAT => GND_net_1, A_DOUT_LAT => VCC_net_1, 
        A_WIDTH(2) => GND_net_1, A_WIDTH(1) => VCC_net_1, 
        A_WIDTH(0) => VCC_net_1, B_EN => VCC_net_1, B_ADDR_LAT
         => GND_net_1, B_DOUT_LAT => VCC_net_1, B_WIDTH(2) => 
        GND_net_1, B_WIDTH(1) => VCC_net_1, B_WIDTH(0) => 
        VCC_net_1, C_EN => VCC_net_1, C_WIDTH(2) => GND_net_1, 
        C_WIDTH(1) => VCC_net_1, C_WIDTH(0) => VCC_net_1, 
        SII_LOCK => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_COREABC_0_RAMBLOCKS_8_19 is

    port( SMADDR               : in    std_logic_vector(0 to 0);
          RAMRDATA             : out   std_logic_vector(7 downto 0);
          STKPTR_i_0           : in    std_logic_vector(0 to 0);
          FCCC_0_GL0           : in    std_logic;
          COREABC_0_PRESETN    : in    std_logic;
          N_14_0_i_0           : in    std_logic;
          N_16_0_i_0           : in    std_logic;
          N_18_0_i_0           : in    std_logic;
          un5_ramwdata_cry_1_S : in    std_logic;
          un5_ramwdata_cry_2_S : in    std_logic;
          un5_ramwdata_cry_3_S : in    std_logic;
          un5_ramwdata_cry_4_S : in    std_logic;
          un5_ramwdata_cry_5_S : in    std_logic;
          un5_ramwdata_cry_6_S : in    std_logic;
          un5_ramwdata_s_7_S   : in    std_logic
        );

end top_COREABC_0_RAMBLOCKS_8_19;

architecture DEF_ARCH of top_COREABC_0_RAMBLOCKS_8_19 is 

  component top_COREABC_0_RAM128X8_0
    port( SMADDR               : in    std_logic_vector(0 to 0) := (others => 'U');
          RAMRDATA             : out   std_logic_vector(7 downto 0);
          STKPTR_i_0           : in    std_logic_vector(0 to 0) := (others => 'U');
          FCCC_0_GL0           : in    std_logic := 'U';
          COREABC_0_PRESETN    : in    std_logic := 'U';
          N_14_0_i_0           : in    std_logic := 'U';
          N_16_0_i_0           : in    std_logic := 'U';
          N_18_0_i_0           : in    std_logic := 'U';
          un5_ramwdata_cry_1_S : in    std_logic := 'U';
          un5_ramwdata_cry_2_S : in    std_logic := 'U';
          un5_ramwdata_cry_3_S : in    std_logic := 'U';
          un5_ramwdata_cry_4_S : in    std_logic := 'U';
          un5_ramwdata_cry_5_S : in    std_logic := 'U';
          un5_ramwdata_cry_6_S : in    std_logic := 'U';
          un5_ramwdata_s_7_S   : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : top_COREABC_0_RAM128X8_0
	Use entity work.top_COREABC_0_RAM128X8_0(DEF_ARCH);
begin 


    \UG4.UR8.ram_r1c0\ : top_COREABC_0_RAM128X8_0
      port map(SMADDR(0) => SMADDR(0), RAMRDATA(7) => RAMRDATA(7), 
        RAMRDATA(6) => RAMRDATA(6), RAMRDATA(5) => RAMRDATA(5), 
        RAMRDATA(4) => RAMRDATA(4), RAMRDATA(3) => RAMRDATA(3), 
        RAMRDATA(2) => RAMRDATA(2), RAMRDATA(1) => RAMRDATA(1), 
        RAMRDATA(0) => RAMRDATA(0), STKPTR_i_0(0) => 
        STKPTR_i_0(0), FCCC_0_GL0 => FCCC_0_GL0, 
        COREABC_0_PRESETN => COREABC_0_PRESETN, N_14_0_i_0 => 
        N_14_0_i_0, N_16_0_i_0 => N_16_0_i_0, N_18_0_i_0 => 
        N_18_0_i_0, un5_ramwdata_cry_1_S => un5_ramwdata_cry_1_S, 
        un5_ramwdata_cry_2_S => un5_ramwdata_cry_2_S, 
        un5_ramwdata_cry_3_S => un5_ramwdata_cry_3_S, 
        un5_ramwdata_cry_4_S => un5_ramwdata_cry_4_S, 
        un5_ramwdata_cry_5_S => un5_ramwdata_cry_5_S, 
        un5_ramwdata_cry_6_S => un5_ramwdata_cry_6_S, 
        un5_ramwdata_s_7_S => un5_ramwdata_s_7_S);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0 is

    port( SMADDR         : in    std_logic_vector(7 downto 0);
          INSTRUCTION_18 : out   std_logic;
          INSTRUCTION_19 : out   std_logic;
          INSTRUCTION_0  : out   std_logic;
          N_32           : out   std_logic;
          N_32_i_0       : out   std_logic;
          N_24           : out   std_logic;
          N_7_i_0        : out   std_logic
        );

end top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0;

architecture DEF_ARCH of 
        top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0 is 

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \N_32\, \INS_0_a2_i_a2_1_1[4]_net_1\, 
        \INS_0_a2_i_a2_1[4]_net_1\, GND_net_1, VCC_net_1
         : std_logic;

begin 

    N_32 <= \N_32\;

    \INS_i_a2_i_a2_RNILF6E[1]\ : CFG1
      generic map(INIT => "01")

      port map(A => \N_32\, Y => N_32_i_0);
    
    \INS_i_a2_i_a2[3]\ : CFG4
      generic map(INIT => x"1020")

      port map(A => SMADDR(0), B => SMADDR(1), C => 
        \INS_0_a2_i_a2_1[4]_net_1\, D => SMADDR(2), Y => N_24);
    
    \INS_0_a2_i_a2_1_1[4]\ : CFG2
      generic map(INIT => x"1")

      port map(A => SMADDR(4), B => SMADDR(6), Y => 
        \INS_0_a2_i_a2_1_1[4]_net_1\);
    
    \INS_0_a2_i_a2_1[4]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => SMADDR(3), B => \INS_0_a2_i_a2_1_1[4]_net_1\, 
        C => SMADDR(7), D => SMADDR(5), Y => 
        \INS_0_a2_i_a2_1[4]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PROM.ins249_0_a2\ : CFG2
      generic map(INIT => x"2")

      port map(A => \N_32\, B => SMADDR(1), Y => INSTRUCTION_0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \INS_0_a2_i_a2_1_RNIV18A1[4]\ : CFG4
      generic map(INIT => x"EF7F")

      port map(A => SMADDR(0), B => SMADDR(1), C => 
        \INS_0_a2_i_a2_1[4]_net_1\, D => SMADDR(2), Y => N_7_i_0);
    
    \PROM.ins248_0_a2\ : CFG4
      generic map(INIT => x"0010")

      port map(A => SMADDR(0), B => SMADDR(1), C => 
        \INS_0_a2_i_a2_1[4]_net_1\, D => SMADDR(2), Y => 
        INSTRUCTION_18);
    
    \INS_i_a2_i_a2[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => SMADDR(0), B => SMADDR(2), C => 
        \INS_0_a2_i_a2_1[4]_net_1\, Y => \N_32\);
    
    \PROM.ins250_0_a2\ : CFG4
      generic map(INIT => x"0040")

      port map(A => SMADDR(0), B => SMADDR(1), C => 
        \INS_0_a2_i_a2_1[4]_net_1\, D => SMADDR(2), Y => 
        INSTRUCTION_19);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity 
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32 is

    port( COREABC_0_APB3master_PADDR   : out   std_logic_vector(2 to 2);
          tx_rx_0_tx_rx                : in    std_logic_vector(1 downto 0);
          COREABC_0_APB3master_PWDATA  : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PRDATA : in    std_logic_vector(7 downto 0);
          COREABC_0_PRESETN            : out   std_logic;
          un1_csn                      : out   std_logic;
          un1_csn_i_0                  : out   std_logic;
          un1_temp_xhdl10              : out   std_logic;
          un1_temp_xhdl10_i_0          : out   std_logic;
          FCCC_0_GL0                   : in    std_logic;
          FCCC_0_LOCK                  : in    std_logic;
          N_110_mux                    : out   std_logic
        );

end 
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32;

architecture DEF_ARCH of 
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32 is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component top_COREABC_0_RAMBLOCKS_8_19
    port( SMADDR               : in    std_logic_vector(0 to 0) := (others => 'U');
          RAMRDATA             : out   std_logic_vector(7 downto 0);
          STKPTR_i_0           : in    std_logic_vector(0 to 0) := (others => 'U');
          FCCC_0_GL0           : in    std_logic := 'U';
          COREABC_0_PRESETN    : in    std_logic := 'U';
          N_14_0_i_0           : in    std_logic := 'U';
          N_16_0_i_0           : in    std_logic := 'U';
          N_18_0_i_0           : in    std_logic := 'U';
          un5_ramwdata_cry_1_S : in    std_logic := 'U';
          un5_ramwdata_cry_2_S : in    std_logic := 'U';
          un5_ramwdata_cry_3_S : in    std_logic := 'U';
          un5_ramwdata_cry_4_S : in    std_logic := 'U';
          un5_ramwdata_cry_5_S : in    std_logic := 'U';
          un5_ramwdata_cry_6_S : in    std_logic := 'U';
          un5_ramwdata_s_7_S   : in    std_logic := 'U'
        );
  end component;

  component top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0
    port( SMADDR         : in    std_logic_vector(7 downto 0) := (others => 'U');
          INSTRUCTION_18 : out   std_logic;
          INSTRUCTION_19 : out   std_logic;
          INSTRUCTION_0  : out   std_logic;
          N_32           : out   std_logic;
          N_32_i_0       : out   std_logic;
          N_24           : out   std_logic;
          N_7_i_0        : out   std_logic
        );
  end component;

    signal \COREABC_0_PRESETN\, \RSTSYNC2\, \ICYCLE[1]_net_1\, 
        \ICYCLE_i_0[1]\, \STKPTR[0]_net_1\, \STKPTR_i_0[0]\, 
        \un1_csn\, \un1_temp_xhdl10\, \ACCUMULATOR[0]_net_1\, 
        VCC_net_1, N_79_i_0, \un1_stbaccum\, GND_net_1, 
        \ACCUMULATOR[1]_net_1\, N_69_i_0, \ACCUMULATOR[2]_net_1\, 
        N_64_i_0, \ACCUMULATOR[3]_net_1\, N_550, 
        \ACCUMULATOR[4]_net_1\, \ACCUM_NEXT_6[4]_net_1\, 
        \ACCUMULATOR[5]_net_1\, \ACCUM_NEXT_6[5]_net_1\, 
        \ACCUMULATOR[6]_net_1\, N_553, \ACCUMULATOR[7]_net_1\, 
        \ACCUM_NEXT_6[7]_net_1\, \DOJMP\, N_99, SHIFTLSB, 
        \SMADDR[2]_net_1\, \INSTR_DATA[4]_net_1\, 
        \INSTRUCTION[30]\, \INSTR_DATA[5]_net_1\, 
        \INSTRUCTION[31]\, accum_next10, N_32, 
        \INSTR_CMD[2]_net_1\, N_32_i_0, \INSTR_SCMD[0]_net_1\, 
        N_24, \INSTR_SCMD[1]_net_1\, N_7_i_0, \SMADDR[1]_net_1\, 
        N_36_0_i_0, N_113_mux, N_40_i_0, \SMADDR[3]_net_1\, 
        N_43_i_0, \SMADDR[4]_net_1\, N_46_i_0, \SMADDR[5]_net_1\, 
        N_49_i_0, \SMADDR[6]_net_1\, N_52_i_0, \SMADDR[7]_net_1\, 
        N_55_i_0, N_12_0, \STKPTR[1]_net_1\, \STKPTR_10[1]\, 
        \STKPTR[2]_net_1\, \STKPTR_10[2]\, \STKPTR[3]_net_1\, 
        \STKPTR_10[3]\, \COREABC_0_APB3master_PADDR[2]\, 
        \INSTRUCTION[12]\, \SMADDR[0]_net_1\, N_58_i_0, 
        \ICYCLE[0]_net_1\, \ICYCLE_ns[0]\, N_4_0_i_0, \RSTSYNC1\, 
        COREABC_0_APB3master_PENABLE, ICYCLE_1_sqmuxa, \STBACCUM\, 
        STBFLAG_cnst, COREABC_0_APB3master_PSELx, N_84, 
        un1_ACCUMULATOR_0_s0_0_cry_0, 
        un1_ACCUMULATOR_0_s0_0_cry_1, 
        un1_ACCUMULATOR_0_s0_0_cry_2, 
        un1_ACCUMULATOR_0_s0_0_cry_3, 
        un1_ACCUMULATOR_0_s0_0_cry_4, 
        \ACCUM_NEXT_6_ns_1_0_RNO_0_S[6]\, 
        un1_ACCUMULATOR_0_s0_0_cry_5, un5_ramwdata_s_1_49_FCO, 
        \un5_ramwdata_cry_1\, un5_ramwdata_cry_1_S, 
        \un5_ramwdata_cry_2\, un5_ramwdata_cry_2_S, 
        \un5_ramwdata_cry_3\, un5_ramwdata_cry_3_S, 
        \un5_ramwdata_cry_4\, un5_ramwdata_cry_4_S, 
        \un5_ramwdata_cry_5\, un5_ramwdata_cry_5_S, 
        un5_ramwdata_s_7_S, \un5_ramwdata_cry_6\, 
        un5_ramwdata_cry_6_S, \un1_ACCUMULATOR0[6]\, 
        \ACCUM_NEXT_6_ns_1_0[6]_net_1\, m10_2, N_106_mux, 
        m63_ns_1, m68_ns_1, \aluout31_0\, 
        \ACCUM_NEXT_6_1_1[7]_net_1\, un1_ACCUMULATOR_0_d1_c6, 
        \ACCUM_NEXT_6_1[7]_net_1\, m6_1, m83_ns_1, m86_ns_1, 
        un1_ACCUMULATOR_0_d1_c4, \ACCUM_NEXT_5_ns_1[4]_net_1\, 
        N_542, i7_mux, \un1_ACCUMULATOR0_s1[2]\, 
        \ACCUM_NEXT_6_ns_1[3]_net_1\, un1_ACCUMULATOR_0_d1_c3, 
        \ACCUM_NEXT_5_am[5]_net_1\, \ACCUM_NEXT_5_bm[5]_net_1\, 
        N_543, m29_e_0, N_19_0, \RAMRDATA[2]\, N_39, 
        \un1_ACCUMULATOR_0_d1_ac0_7_0\, N_14_0_i_0, N_16_0_i_0, 
        \RAMRDATA[0]\, \RAMRDATA[7]\, \RAMRDATA[6]\, 
        \RAMRDATA[5]\, \RAMRDATA[4]\, \RAMRDATA[3]\, 
        \RAMRDATA[1]\, N_18_0_i_0, N_88 : std_logic;

    for all : top_COREABC_0_RAMBLOCKS_8_19
	Use entity work.top_COREABC_0_RAMBLOCKS_8_19(DEF_ARCH);
    for all : top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0
	Use entity work.
        top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0(DEF_ARCH);
begin 

    COREABC_0_APB3master_PADDR(2) <= 
        \COREABC_0_APB3master_PADDR[2]\;
    COREABC_0_PRESETN <= \COREABC_0_PRESETN\;
    un1_csn <= \un1_csn\;
    un1_temp_xhdl10 <= \un1_temp_xhdl10\;

    \INSTR_ADDR[2]\ : SLE
      port map(D => \INSTRUCTION[12]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREABC_0_APB3master_PADDR[2]\);
    
    \ACCUMULATOR[6]\ : SLE
      port map(D => N_553, CLK => FCCC_0_GL0, EN => 
        \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[6]_net_1\);
    
    STBACCUM_RNO : CFG4
      generic map(INIT => x"0002")

      port map(A => \ICYCLE[0]_net_1\, B => accum_next10, C => 
        \INSTR_CMD[2]_net_1\, D => \ICYCLE[1]_net_1\, Y => 
        STBFLAG_cnst);
    
    \INSTR_DATA[5]\ : SLE
      port map(D => \INSTRUCTION[31]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \INSTR_DATA[5]_net_1\);
    
    \ACCUMULATOR[5]\ : SLE
      port map(D => \ACCUM_NEXT_6[5]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[5]_net_1\);
    
    \ACCUM_NEXT_6_ns_1_0_RNO[6]\ : CFG4
      generic map(INIT => x"7D28")

      port map(A => \aluout31_0\, B => \ACCUMULATOR[6]_net_1\, C
         => un1_ACCUMULATOR_0_d1_c6, D => 
        \ACCUM_NEXT_6_ns_1_0_RNO_0_S[6]\, Y => 
        \un1_ACCUMULATOR0[6]\);
    
    \SMADDR_RNO_0[2]\ : CFG3
      generic map(INIT => x"1D")

      port map(A => \COREABC_0_APB3master_PADDR[2]\, B => 
        accum_next10, C => \RAMRDATA[2]\, Y => N_39);
    
    PSELI : SLE
      port map(D => N_84, CLK => FCCC_0_GL0, EN => VCC_net_1, ALn
         => \COREABC_0_PRESETN\, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        COREABC_0_APB3master_PSELx);
    
    \ACCUM_NEXT_5_ns[4]\ : CFG4
      generic map(INIT => x"C339")

      port map(A => un1_ACCUMULATOR_0_d1_c4, B => 
        \ACCUM_NEXT_5_ns_1[4]_net_1\, C => \INSTR_SCMD[1]_net_1\, 
        D => \INSTR_SCMD[0]_net_1\, Y => N_542);
    
    aluout31_0_RNIEFA6 : CFG2
      generic map(INIT => x"8")

      port map(A => \aluout31_0\, B => \ACCUMULATOR[1]_net_1\, Y
         => COREABC_0_APB3master_PWDATA(1));
    
    PSELI_RNO_0 : CFG4
      generic map(INIT => x"0530")

      port map(A => COREABC_0_APB3master_PENABLE, B => 
        \INSTR_CMD[2]_net_1\, C => \ICYCLE[0]_net_1\, D => 
        \ICYCLE[1]_net_1\, Y => m83_ns_1);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_4[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \ACCUMULATOR[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        un1_ACCUMULATOR_0_s0_0_cry_1, S => OPEN, Y => OPEN, FCO
         => un1_ACCUMULATOR_0_s0_0_cry_2);
    
    PENABLEI_RNIAR8D1 : CFG4
      generic map(INIT => x"8000")

      port map(A => \COREABC_0_APB3master_PADDR[2]\, B => 
        COREABC_0_APB3master_PENABLE, C => N_19_0, D => 
        COREABC_0_APB3master_PSELx, Y => \un1_temp_xhdl10\);
    
    \INSTR_DATA[0]\ : SLE
      port map(D => \SMADDR[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        SHIFTLSB);
    
    \ACCUM_NEXT_5_ns[5]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \aluout31_0\, B => \ACCUM_NEXT_5_am[5]_net_1\, 
        C => \ACCUM_NEXT_5_bm[5]_net_1\, Y => N_543);
    
    PENABLEI : SLE
      port map(D => ICYCLE_1_sqmuxa, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => COREABC_0_APB3master_PENABLE);
    
    un1_ACCUMULATOR_0_d1_ac0_7_0 : CFG3
      generic map(INIT => x"80")

      port map(A => \ACCUMULATOR[4]_net_1\, B => 
        \ACCUMULATOR[3]_net_1\, C => \ACCUMULATOR[2]_net_1\, Y
         => \un1_ACCUMULATOR_0_d1_ac0_7_0\);
    
    \ACCUMULATOR_RNO[2]\ : CFG4
      generic map(INIT => x"880F")

      port map(A => COREABC_0_APB3master_PSELx, B => 
        CoreAPB3_0_APBmslave0_PRDATA(2), C => m63_ns_1, D => 
        accum_next10, Y => N_64_i_0);
    
    \SMADDR_RNO[7]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[7]\, D => un5_ramwdata_s_7_S, Y => N_55_i_0);
    
    \INSTR_DATA_RNIA9R72[5]\ : CFG4
      generic map(INIT => x"5999")

      port map(A => \INSTR_SCMD[0]_net_1\, B => m6_1, C => 
        tx_rx_0_tx_rx(1), D => \INSTR_DATA[5]_net_1\, Y => 
        N_106_mux);
    
    un1_stbaccum : CFG3
      generic map(INIT => x"EA")

      port map(A => \STBACCUM\, B => COREABC_0_APB3master_PENABLE, 
        C => N_19_0, Y => \un1_stbaccum\);
    
    \ACCUM_NEXT_6_1[7]\ : CFG4
      generic map(INIT => x"D25A")

      port map(A => \aluout31_0\, B => \ACCUMULATOR[6]_net_1\, C
         => \ACCUM_NEXT_6_1_1[7]_net_1\, D => 
        un1_ACCUMULATOR_0_d1_c6, Y => \ACCUM_NEXT_6_1[7]_net_1\);
    
    \STKPTR_RNIMPPA[3]\ : CFG4
      generic map(INIT => x"6AAA")

      port map(A => \STKPTR[3]_net_1\, B => \STKPTR[2]_net_1\, C
         => \STKPTR[1]_net_1\, D => \STKPTR[0]_net_1\, Y => 
        N_18_0_i_0);
    
    \STKPTR[1]\ : SLE
      port map(D => \STKPTR_10[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \STKPTR[1]_net_1\);
    
    un1_ACCUMULATOR_0_d1_ac0_5 : CFG4
      generic map(INIT => x"8000")

      port map(A => \ACCUMULATOR[3]_net_1\, B => 
        \ACCUMULATOR[2]_net_1\, C => \ACCUMULATOR[1]_net_1\, D
         => \ACCUMULATOR[0]_net_1\, Y => un1_ACCUMULATOR_0_d1_c4);
    
    \STKPTR[3]\ : SLE
      port map(D => \STKPTR_10[3]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \STKPTR[3]_net_1\);
    
    DOJMP_RNO_0 : CFG4
      generic map(INIT => x"AA20")

      port map(A => \ICYCLE[0]_net_1\, B => N_106_mux, C => 
        \INSTR_CMD[2]_net_1\, D => \ICYCLE[1]_net_1\, Y => N_99);
    
    \ACCUM_NEXT_6_ns_1_0[6]\ : CFG4
      generic map(INIT => x"5AEE")

      port map(A => \INSTR_SCMD[1]_net_1\, B => 
        \un1_ACCUMULATOR0[6]\, C => \ACCUMULATOR[6]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => 
        \ACCUM_NEXT_6_ns_1_0[6]_net_1\);
    
    \SMADDR[5]\ : SLE
      port map(D => N_49_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[5]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \ACCUMULATOR[1]\ : SLE
      port map(D => N_69_i_0, CLK => FCCC_0_GL0, EN => 
        \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[1]_net_1\);
    
    \ICYCLE_RNO[0]\ : CFG4
      generic map(INIT => x"85A5")

      port map(A => \ICYCLE[0]_net_1\, B => \INSTR_CMD[2]_net_1\, 
        C => m86_ns_1, D => accum_next10, Y => \ICYCLE_ns[0]\);
    
    un5_ramwdata_cry_2 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_1\, S
         => un5_ramwdata_cry_2_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_2\);
    
    \PWDATA_M[0]\ : CFG4
      generic map(INIT => x"D1C0")

      port map(A => \INSTR_SCMD[1]_net_1\, B => 
        \INSTR_SCMD[0]_net_1\, C => SHIFTLSB, D => 
        \ACCUMULATOR[0]_net_1\, Y => 
        COREABC_0_APB3master_PWDATA(0));
    
    PENABLEI_RNIAR8D1_1 : CFG1
      generic map(INIT => "01")

      port map(A => \un1_temp_xhdl10\, Y => un1_temp_xhdl10_i_0);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_1[6]\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => \ACCUMULATOR[5]_net_1\, B => 
        \INSTR_DATA[5]_net_1\, C => GND_net_1, D => GND_net_1, 
        FCI => un1_ACCUMULATOR_0_s0_0_cry_4, S => OPEN, Y => OPEN, 
        FCO => un1_ACCUMULATOR_0_s0_0_cry_5);
    
    \ACCUMULATOR[7]\ : SLE
      port map(D => \ACCUM_NEXT_6[7]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[7]_net_1\);
    
    aluout31_0 : CFG2
      generic map(INIT => x"1")

      port map(A => \INSTR_SCMD[0]_net_1\, B => 
        \INSTR_SCMD[1]_net_1\, Y => \aluout31_0\);
    
    \SMADDR[0]\ : SLE
      port map(D => N_58_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[0]_net_1\);
    
    \ACCUM_NEXT_6_ns_1[3]\ : CFG4
      generic map(INIT => x"7675")

      port map(A => \ACCUMULATOR[3]_net_1\, B => 
        \INSTR_SCMD[1]_net_1\, C => \INSTR_SCMD[0]_net_1\, D => 
        un1_ACCUMULATOR_0_d1_c3, Y => 
        \ACCUM_NEXT_6_ns_1[3]_net_1\);
    
    \SMADDR[2]\ : SLE
      port map(D => N_40_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[2]_net_1\);
    
    \ACCUMULATOR_RNO[0]\ : CFG4
      generic map(INIT => x"E444")

      port map(A => accum_next10, B => i7_mux, C => 
        CoreAPB3_0_APBmslave0_PRDATA(0), D => 
        COREABC_0_APB3master_PSELx, Y => N_79_i_0);
    
    \STKPTR[2]\ : SLE
      port map(D => \STKPTR_10[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \STKPTR[2]_net_1\);
    
    \INSTR_SCMD_RNILPUP[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \INSTR_SCMD[0]_net_1\, B => 
        \INSTR_SCMD[1]_net_1\, Y => N_19_0);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_3[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \ACCUMULATOR[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        un1_ACCUMULATOR_0_s0_0_cry_2, S => OPEN, Y => OPEN, FCO
         => un1_ACCUMULATOR_0_s0_0_cry_3);
    
    \STKPTR_RNO[1]\ : CFG4
      generic map(INIT => x"D2F0")

      port map(A => m10_2, B => N_106_mux, C => \STKPTR[1]_net_1\, 
        D => \STKPTR[0]_net_1\, Y => \STKPTR_10[1]\);
    
    \INSTR_DATA[4]\ : SLE
      port map(D => \INSTRUCTION[30]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \INSTR_DATA[4]_net_1\);
    
    \INSTR_CMD[2]\ : SLE
      port map(D => N_32_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => VCC_net_1, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \INSTR_CMD[2]_net_1\);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_0[6]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \ACCUMULATOR[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        un1_ACCUMULATOR_0_s0_0_cry_5, S => 
        \ACCUM_NEXT_6_ns_1_0_RNO_0_S[6]\, Y => OPEN, FCO => OPEN);
    
    un5_ramwdata_cry_6 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_5\, S
         => un5_ramwdata_cry_6_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_6\);
    
    \SMADDR_RNO[4]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[4]\, D => un5_ramwdata_cry_4_S, Y => N_46_i_0);
    
    \SMADDR[1]\ : SLE
      port map(D => N_36_0_i_0, CLK => FCCC_0_GL0, EN => 
        N_113_mux, ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SMADDR[1]_net_1\);
    
    \PWDATA_M[7]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => \INSTR_SCMD[0]_net_1\, B => 
        \ACCUMULATOR[7]_net_1\, C => \INSTR_SCMD[1]_net_1\, Y => 
        COREABC_0_APB3master_PWDATA(7));
    
    \ICYCLE_RNI4RE21[1]\ : CFG4
      generic map(INIT => x"8808")

      port map(A => \ICYCLE[0]_net_1\, B => \ICYCLE[1]_net_1\, C
         => m29_e_0, D => accum_next10, Y => N_113_mux);
    
    \SMADDR_RNO[2]\ : CFG3
      generic map(INIT => x"74")

      port map(A => N_39, B => \DOJMP\, C => un5_ramwdata_cry_2_S, 
        Y => N_40_i_0);
    
    RSTSYNC2_RNIK5VD : CLKINT
      port map(A => \RSTSYNC2\, Y => \COREABC_0_PRESETN\);
    
    \INSTR_CMD_RNICU6K[2]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \ICYCLE[0]_net_1\, B => accum_next10, C => 
        \INSTR_CMD[2]_net_1\, D => \ICYCLE[1]_net_1\, Y => m10_2);
    
    \INSTR_CMD[1]\ : SLE
      port map(D => N_32, CLK => FCCC_0_GL0, EN => VCC_net_1, ALn
         => VCC_net_1, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => accum_next10);
    
    un5_ramwdata_cry_4 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_3\, S
         => un5_ramwdata_cry_4_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_4\);
    
    \STKPTR_RNO[3]\ : CFG4
      generic map(INIT => x"78F0")

      port map(A => \STKPTR[1]_net_1\, B => N_88, C => 
        \STKPTR[3]_net_1\, D => \STKPTR[2]_net_1\, Y => 
        \STKPTR_10[3]\);
    
    PENABLEI_RNO : CFG4
      generic map(INIT => x"0400")

      port map(A => \ICYCLE[0]_net_1\, B => 
        COREABC_0_APB3master_PSELx, C => 
        COREABC_0_APB3master_PENABLE, D => \ICYCLE[1]_net_1\, Y
         => ICYCLE_1_sqmuxa);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \URAM.UR\ : top_COREABC_0_RAMBLOCKS_8_19
      port map(SMADDR(0) => \SMADDR[0]_net_1\, RAMRDATA(7) => 
        \RAMRDATA[7]\, RAMRDATA(6) => \RAMRDATA[6]\, RAMRDATA(5)
         => \RAMRDATA[5]\, RAMRDATA(4) => \RAMRDATA[4]\, 
        RAMRDATA(3) => \RAMRDATA[3]\, RAMRDATA(2) => 
        \RAMRDATA[2]\, RAMRDATA(1) => \RAMRDATA[1]\, RAMRDATA(0)
         => \RAMRDATA[0]\, STKPTR_i_0(0) => \STKPTR_i_0[0]\, 
        FCCC_0_GL0 => FCCC_0_GL0, COREABC_0_PRESETN => 
        \COREABC_0_PRESETN\, N_14_0_i_0 => N_14_0_i_0, N_16_0_i_0
         => N_16_0_i_0, N_18_0_i_0 => N_18_0_i_0, 
        un5_ramwdata_cry_1_S => un5_ramwdata_cry_1_S, 
        un5_ramwdata_cry_2_S => un5_ramwdata_cry_2_S, 
        un5_ramwdata_cry_3_S => un5_ramwdata_cry_3_S, 
        un5_ramwdata_cry_4_S => un5_ramwdata_cry_4_S, 
        un5_ramwdata_cry_5_S => un5_ramwdata_cry_5_S, 
        un5_ramwdata_cry_6_S => un5_ramwdata_cry_6_S, 
        un5_ramwdata_s_7_S => un5_ramwdata_s_7_S);
    
    \INSTR_DATA_RNIE0N81[0]\ : CFG3
      generic map(INIT => x"13")

      port map(A => tx_rx_0_tx_rx(0), B => SHIFTLSB, C => 
        \INSTR_DATA[4]_net_1\, Y => m6_1);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_5[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \ACCUMULATOR[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        un1_ACCUMULATOR_0_s0_0_cry_0, S => OPEN, Y => OPEN, FCO
         => un1_ACCUMULATOR_0_s0_0_cry_1);
    
    RSTSYNC2 : SLE
      port map(D => \RSTSYNC1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \RSTSYNC2\);
    
    \PWDATA_M[4]\ : CFG4
      generic map(INIT => x"AA0C")

      port map(A => \INSTR_DATA[4]_net_1\, B => 
        \ACCUMULATOR[4]_net_1\, C => \INSTR_SCMD[1]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => 
        COREABC_0_APB3master_PWDATA(4));
    
    \STKPTR_RNIIKOU2[0]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \STKPTR[0]_net_1\, B => m10_2, C => N_106_mux, 
        Y => N_88);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_6[6]\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => \ACCUMULATOR[0]_net_1\, B => SHIFTLSB, C => 
        GND_net_1, D => GND_net_1, FCI => GND_net_1, S => OPEN, Y
         => OPEN, FCO => un1_ACCUMULATOR_0_s0_0_cry_0);
    
    aluout31_0_RNIFGA6 : CFG2
      generic map(INIT => x"8")

      port map(A => \aluout31_0\, B => \ACCUMULATOR[2]_net_1\, Y
         => COREABC_0_APB3master_PWDATA(2));
    
    \ACCUMULATOR[4]\ : SLE
      port map(D => \ACCUM_NEXT_6[4]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[4]_net_1\);
    
    PENABLEI_RNIAR8D1_2 : CFG1
      generic map(INIT => "01")

      port map(A => \un1_csn\, Y => un1_csn_i_0);
    
    DOJMP_RNIHR0K : CFG2
      generic map(INIT => x"8")

      port map(A => \INSTR_SCMD[1]_net_1\, B => \DOJMP\, Y => 
        m29_e_0);
    
    \ACCUM_NEXT_5_am[5]\ : CFG4
      generic map(INIT => x"68E8")

      port map(A => \INSTR_DATA[5]_net_1\, B => 
        \ACCUMULATOR[5]_net_1\, C => \INSTR_SCMD[1]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => \ACCUM_NEXT_5_am[5]_net_1\);
    
    un1_ACCUMULATOR_0_d1_ac0_3 : CFG3
      generic map(INIT => x"80")

      port map(A => \ACCUMULATOR[2]_net_1\, B => 
        \ACCUMULATOR[1]_net_1\, C => \ACCUMULATOR[0]_net_1\, Y
         => un1_ACCUMULATOR_0_d1_c3);
    
    \ACCUMULATOR_RNIGHA6[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \aluout31_0\, B => \ACCUMULATOR[3]_net_1\, Y
         => COREABC_0_APB3master_PWDATA(3));
    
    un5_ramwdata_s_1_49 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => un5_ramwdata_s_1_49_FCO);
    
    \SMADDR[3]\ : SLE
      port map(D => N_43_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[3]_net_1\);
    
    \ACCUMULATOR_RNO_0[1]\ : CFG4
      generic map(INIT => x"5F59")

      port map(A => \ACCUMULATOR[1]_net_1\, B => 
        \ACCUMULATOR[0]_net_1\, C => \INSTR_SCMD[1]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => m68_ns_1);
    
    \ACCUM_NEXT_6_ns_1_0_RNO_2[6]\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => \ACCUMULATOR[4]_net_1\, B => 
        \INSTR_DATA[4]_net_1\, C => GND_net_1, D => GND_net_1, 
        FCI => un1_ACCUMULATOR_0_s0_0_cry_3, S => OPEN, Y => OPEN, 
        FCO => un1_ACCUMULATOR_0_s0_0_cry_4);
    
    \SMADDR[6]\ : SLE
      port map(D => N_52_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[6]_net_1\);
    
    \ACCUM_NEXT_6[5]\ : CFG4
      generic map(INIT => x"8F80")

      port map(A => CoreAPB3_0_APBmslave0_PRDATA(5), B => 
        COREABC_0_APB3master_PSELx, C => accum_next10, D => N_543, 
        Y => \ACCUM_NEXT_6[5]_net_1\);
    
    \ACCUM_NEXT_6_ns[3]\ : CFG4
      generic map(INIT => x"808F")

      port map(A => CoreAPB3_0_APBmslave0_PRDATA(3), B => 
        COREABC_0_APB3master_PSELx, C => accum_next10, D => 
        \ACCUM_NEXT_6_ns_1[3]_net_1\, Y => N_550);
    
    \ACCUM_NEXT_5_ns_1[4]\ : CFG4
      generic map(INIT => x"6713")

      port map(A => \INSTR_DATA[4]_net_1\, B => 
        \ACCUMULATOR[4]_net_1\, C => \INSTR_SCMD[1]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => \ACCUM_NEXT_5_ns_1[4]_net_1\);
    
    \INSTR_SCMD[1]\ : SLE
      port map(D => N_7_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => VCC_net_1, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \INSTR_SCMD[1]_net_1\);
    
    \STKPTR_RNISCM2[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \STKPTR[0]_net_1\, Y => \STKPTR_i_0[0]\);
    
    \SMADDR_RNO[1]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[1]\, D => un5_ramwdata_cry_1_S, Y => N_36_0_i_0);
    
    \STKPTR_RNO[2]\ : CFG3
      generic map(INIT => x"78")

      port map(A => \STKPTR[1]_net_1\, B => N_88, C => 
        \STKPTR[2]_net_1\, Y => \STKPTR_10[2]\);
    
    \ICYCLE[1]\ : SLE
      port map(D => N_4_0_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \ICYCLE[1]_net_1\);
    
    un5_ramwdata_cry_3 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_2\, S
         => un5_ramwdata_cry_3_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_3\);
    
    un5_ramwdata_cry_5 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_4\, S
         => un5_ramwdata_cry_5_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_5\);
    
    un5_ramwdata_cry_1 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => un5_ramwdata_s_1_49_FCO, 
        S => un5_ramwdata_cry_1_S, Y => OPEN, FCO => 
        \un5_ramwdata_cry_1\);
    
    un1_ACCUMULATOR_0_d1_ac0_9 : CFG4
      generic map(INIT => x"8000")

      port map(A => \ACCUMULATOR[3]_net_1\, B => 
        un1_ACCUMULATOR_0_d1_c3, C => \ACCUMULATOR[5]_net_1\, D
         => \ACCUMULATOR[4]_net_1\, Y => un1_ACCUMULATOR_0_d1_c6);
    
    \STKPTR[0]\ : SLE
      port map(D => N_12_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \STKPTR[0]_net_1\);
    
    \STKPTR_RNIPQC5[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \STKPTR[0]_net_1\, B => \STKPTR[1]_net_1\, Y
         => N_14_0_i_0);
    
    \ACCUMULATOR[0]\ : SLE
      port map(D => N_79_i_0, CLK => FCCC_0_GL0, EN => 
        \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[0]_net_1\);
    
    \SMADDR_RNO[6]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[6]\, D => un5_ramwdata_cry_6_S, Y => N_52_i_0);
    
    \SMADDR[7]\ : SLE
      port map(D => N_55_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[7]_net_1\);
    
    \ICYCLE[0]\ : SLE
      port map(D => \ICYCLE_ns[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \ICYCLE[0]_net_1\);
    
    \ACCUMULATOR_RNO_0[0]\ : CFG4
      generic map(INIT => x"6AB1")

      port map(A => \INSTR_SCMD[1]_net_1\, B => 
        \INSTR_SCMD[0]_net_1\, C => SHIFTLSB, D => 
        \ACCUMULATOR[0]_net_1\, Y => i7_mux);
    
    \PWDATA_M[6]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => \INSTR_SCMD[0]_net_1\, B => 
        \ACCUMULATOR[6]_net_1\, C => \INSTR_SCMD[1]_net_1\, Y => 
        COREABC_0_APB3master_PWDATA(6));
    
    \INSTR_SCMD[0]\ : SLE
      port map(D => N_24, CLK => FCCC_0_GL0, EN => VCC_net_1, ALn
         => VCC_net_1, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \INSTR_SCMD[0]_net_1\);
    
    PSELI_RNO : CFG4
      generic map(INIT => x"8C80")

      port map(A => accum_next10, B => m83_ns_1, C => 
        \ICYCLE[0]_net_1\, D => COREABC_0_APB3master_PSELx, Y => 
        N_84);
    
    \ICYCLE_RNO[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \ICYCLE[0]_net_1\, B => \ICYCLE[1]_net_1\, Y
         => N_4_0_i_0);
    
    DOJMP_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \ICYCLE[1]_net_1\, Y => \ICYCLE_i_0[1]\);
    
    \ACCUMULATOR[2]\ : SLE
      port map(D => N_64_i_0, CLK => FCCC_0_GL0, EN => 
        \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[2]_net_1\);
    
    \UROM.UROM\ : top_COREABC_0_INSTRUCTIONS_8_8_1_8_2_2_58_0_1_0
      port map(SMADDR(7) => \SMADDR[7]_net_1\, SMADDR(6) => 
        \SMADDR[6]_net_1\, SMADDR(5) => \SMADDR[5]_net_1\, 
        SMADDR(4) => \SMADDR[4]_net_1\, SMADDR(3) => 
        \SMADDR[3]_net_1\, SMADDR(2) => \SMADDR[2]_net_1\, 
        SMADDR(1) => \SMADDR[1]_net_1\, SMADDR(0) => 
        \SMADDR[0]_net_1\, INSTRUCTION_18 => \INSTRUCTION[30]\, 
        INSTRUCTION_19 => \INSTRUCTION[31]\, INSTRUCTION_0 => 
        \INSTRUCTION[12]\, N_32 => N_32, N_32_i_0 => N_32_i_0, 
        N_24 => N_24, N_7_i_0 => N_7_i_0);
    
    \STKPTR_RNO[0]\ : CFG3
      generic map(INIT => x"A6")

      port map(A => \STKPTR[0]_net_1\, B => m10_2, C => N_106_mux, 
        Y => N_12_0);
    
    \SMADDR_RNO[5]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[5]\, D => un5_ramwdata_cry_5_S, Y => N_49_i_0);
    
    \ACCUMULATOR[3]\ : SLE
      port map(D => N_550, CLK => FCCC_0_GL0, EN => 
        \un1_stbaccum\, ALn => \COREABC_0_PRESETN\, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \ACCUMULATOR[3]_net_1\);
    
    DOJMP : SLE
      port map(D => \ICYCLE_i_0[1]\, CLK => FCCC_0_GL0, EN => 
        N_99, ALn => \COREABC_0_PRESETN\, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \DOJMP\);
    
    STBACCUM : SLE
      port map(D => STBFLAG_cnst, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => \COREABC_0_PRESETN\, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \STBACCUM\);
    
    \SMADDR_RNO[3]\ : CFG4
      generic map(INIT => x"B380")

      port map(A => accum_next10, B => \DOJMP\, C => 
        \RAMRDATA[3]\, D => un5_ramwdata_cry_3_S, Y => N_43_i_0);
    
    RSTSYNC1 : SLE
      port map(D => VCC_net_1, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \RSTSYNC1\);
    
    \ACCUM_NEXT_6_ns[6]\ : CFG4
      generic map(INIT => x"8F80")

      port map(A => CoreAPB3_0_APBmslave0_PRDATA(6), B => 
        COREABC_0_APB3master_PSELx, C => accum_next10, D => 
        \ACCUM_NEXT_6_ns_1_0[6]_net_1\, Y => N_553);
    
    \ACCUM_NEXT_6_1_1[7]\ : CFG4
      generic map(INIT => x"556E")

      port map(A => \ACCUMULATOR[7]_net_1\, B => 
        \INSTR_SCMD[1]_net_1\, C => \INSTR_SCMD[0]_net_1\, D => 
        \aluout31_0\, Y => \ACCUM_NEXT_6_1_1[7]_net_1\);
    
    un5_ramwdata_s_7 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \SMADDR[7]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un5_ramwdata_cry_6\, S
         => un5_ramwdata_s_7_S, Y => OPEN, FCO => OPEN);
    
    \ACCUM_NEXT_6[4]\ : CFG4
      generic map(INIT => x"8F80")

      port map(A => CoreAPB3_0_APBmslave0_PRDATA(4), B => 
        COREABC_0_APB3master_PSELx, C => accum_next10, D => N_542, 
        Y => \ACCUM_NEXT_6[4]_net_1\);
    
    PENABLEI_RNIAESC1 : CFG3
      generic map(INIT => x"40")

      port map(A => COREABC_0_APB3master_PENABLE, B => 
        COREABC_0_APB3master_PSELx, C => N_19_0, Y => N_110_mux);
    
    \ACCUMULATOR_RNO[1]\ : CFG4
      generic map(INIT => x"880F")

      port map(A => COREABC_0_APB3master_PSELx, B => 
        CoreAPB3_0_APBmslave0_PRDATA(1), C => m68_ns_1, D => 
        accum_next10, Y => N_69_i_0);
    
    \ACCUM_NEXT_5_bm[5]\ : CFG4
      generic map(INIT => x"78F0")

      port map(A => \ACCUMULATOR[0]_net_1\, B => 
        \un1_ACCUMULATOR_0_d1_ac0_7_0\, C => 
        \ACCUMULATOR[5]_net_1\, D => \ACCUMULATOR[1]_net_1\, Y
         => \ACCUM_NEXT_5_bm[5]_net_1\);
    
    \PWDATA_M[5]\ : CFG4
      generic map(INIT => x"AA0C")

      port map(A => \INSTR_DATA[5]_net_1\, B => 
        \ACCUMULATOR[5]_net_1\, C => \INSTR_SCMD[1]_net_1\, D => 
        \INSTR_SCMD[0]_net_1\, Y => 
        COREABC_0_APB3master_PWDATA(5));
    
    un1_ACCUMULATOR_0_d1_axbxc2 : CFG3
      generic map(INIT => x"6A")

      port map(A => \ACCUMULATOR[2]_net_1\, B => 
        \ACCUMULATOR[1]_net_1\, C => \ACCUMULATOR[0]_net_1\, Y
         => \un1_ACCUMULATOR0_s1[2]\);
    
    PENABLEI_RNIAR8D1_0 : CFG4
      generic map(INIT => x"0400")

      port map(A => \COREABC_0_APB3master_PADDR[2]\, B => 
        COREABC_0_APB3master_PENABLE, C => N_19_0, D => 
        COREABC_0_APB3master_PSELx, Y => \un1_csn\);
    
    \ICYCLE_RNO_0[0]\ : CFG4
      generic map(INIT => x"04AA")

      port map(A => \ICYCLE[0]_net_1\, B => 
        COREABC_0_APB3master_PSELx, C => 
        COREABC_0_APB3master_PENABLE, D => \ICYCLE[1]_net_1\, Y
         => m86_ns_1);
    
    \ACCUM_NEXT_6[7]\ : CFG4
      generic map(INIT => x"8F80")

      port map(A => CoreAPB3_0_APBmslave0_PRDATA(7), B => 
        COREABC_0_APB3master_PSELx, C => accum_next10, D => 
        \ACCUM_NEXT_6_1[7]_net_1\, Y => \ACCUM_NEXT_6[7]_net_1\);
    
    \STKPTR_RNIN938[2]\ : CFG3
      generic map(INIT => x"6A")

      port map(A => \STKPTR[2]_net_1\, B => \STKPTR[1]_net_1\, C
         => \STKPTR[0]_net_1\, Y => N_16_0_i_0);
    
    \SMADDR[4]\ : SLE
      port map(D => N_46_i_0, CLK => FCCC_0_GL0, EN => N_113_mux, 
        ALn => \COREABC_0_PRESETN\, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SMADDR[4]_net_1\);
    
    \SMADDR_RNO[0]\ : CFG4
      generic map(INIT => x"D111")

      port map(A => \SMADDR[0]_net_1\, B => \DOJMP\, C => 
        accum_next10, D => \RAMRDATA[0]\, Y => N_58_i_0);
    
    \ACCUMULATOR_RNO_0[2]\ : CFG4
      generic map(INIT => x"7477")

      port map(A => \ACCUMULATOR[2]_net_1\, B => 
        \INSTR_SCMD[1]_net_1\, C => \INSTR_SCMD[0]_net_1\, D => 
        \un1_ACCUMULATOR0_s1[2]\, Y => m63_ns_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_FCCC_0_FCCC is

    port( FCCC_0_GL0                                      : out   std_logic;
          FCCC_0_LOCK                                     : out   std_logic;
          OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic
        );

end top_FCCC_0_FCCC;

architecture DEF_ARCH of top_FCCC_0_FCCC is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CCC

            generic (INIT:std_logic_vector(209 downto 0) := "00" & x"0000000000000000000000000000000000000000000000000000"; 
        VCOFREQUENCY:real := 0.0);

    port( Y0              : out   std_logic;
          Y1              : out   std_logic;
          Y2              : out   std_logic;
          Y3              : out   std_logic;
          PRDATA          : out   std_logic_vector(7 downto 0);
          LOCK            : out   std_logic;
          BUSY            : out   std_logic;
          CLK0            : in    std_logic := 'U';
          CLK1            : in    std_logic := 'U';
          CLK2            : in    std_logic := 'U';
          CLK3            : in    std_logic := 'U';
          NGMUX0_SEL      : in    std_logic := 'U';
          NGMUX1_SEL      : in    std_logic := 'U';
          NGMUX2_SEL      : in    std_logic := 'U';
          NGMUX3_SEL      : in    std_logic := 'U';
          NGMUX0_HOLD_N   : in    std_logic := 'U';
          NGMUX1_HOLD_N   : in    std_logic := 'U';
          NGMUX2_HOLD_N   : in    std_logic := 'U';
          NGMUX3_HOLD_N   : in    std_logic := 'U';
          NGMUX0_ARST_N   : in    std_logic := 'U';
          NGMUX1_ARST_N   : in    std_logic := 'U';
          NGMUX2_ARST_N   : in    std_logic := 'U';
          NGMUX3_ARST_N   : in    std_logic := 'U';
          PLL_BYPASS_N    : in    std_logic := 'U';
          PLL_ARST_N      : in    std_logic := 'U';
          PLL_POWERDOWN_N : in    std_logic := 'U';
          GPD0_ARST_N     : in    std_logic := 'U';
          GPD1_ARST_N     : in    std_logic := 'U';
          GPD2_ARST_N     : in    std_logic := 'U';
          GPD3_ARST_N     : in    std_logic := 'U';
          PRESET_N        : in    std_logic := 'U';
          PCLK            : in    std_logic := 'U';
          PSEL            : in    std_logic := 'U';
          PENABLE         : in    std_logic := 'U';
          PWRITE          : in    std_logic := 'U';
          PADDR           : in    std_logic_vector(7 downto 2) := (others => 'U');
          PWDATA          : in    std_logic_vector(7 downto 0) := (others => 'U');
          CLK0_PAD        : in    std_logic := 'U';
          CLK1_PAD        : in    std_logic := 'U';
          CLK2_PAD        : in    std_logic := 'U';
          CLK3_PAD        : in    std_logic := 'U';
          GL0             : out   std_logic;
          GL1             : out   std_logic;
          GL2             : out   std_logic;
          GL3             : out   std_logic;
          RCOSC_25_50MHZ  : in    std_logic := 'U';
          RCOSC_1MHZ      : in    std_logic := 'U';
          XTLOSC          : in    std_logic := 'U'
        );
  end component;

    signal GL0_net, VCC_net_1, GND_net_1 : std_logic;
    signal nc8, nc7, nc6, nc2, nc5, nc4, nc3, nc1 : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    GL0_INST : CLKINT
      port map(A => GL0_net, Y => FCCC_0_GL0);
    
    CCC_INST : CCC

              generic map(INIT => "00" & x"000007FB8000045164000318C6318C1F18C61EC0404040400101",
         VCOFREQUENCY => 800.0)

      port map(Y0 => OPEN, Y1 => OPEN, Y2 => OPEN, Y3 => OPEN, 
        PRDATA(7) => nc8, PRDATA(6) => nc7, PRDATA(5) => nc6, 
        PRDATA(4) => nc2, PRDATA(3) => nc5, PRDATA(2) => nc4, 
        PRDATA(1) => nc3, PRDATA(0) => nc1, LOCK => FCCC_0_LOCK, 
        BUSY => OPEN, CLK0 => VCC_net_1, CLK1 => VCC_net_1, CLK2
         => VCC_net_1, CLK3 => VCC_net_1, NGMUX0_SEL => GND_net_1, 
        NGMUX1_SEL => GND_net_1, NGMUX2_SEL => GND_net_1, 
        NGMUX3_SEL => GND_net_1, NGMUX0_HOLD_N => VCC_net_1, 
        NGMUX1_HOLD_N => VCC_net_1, NGMUX2_HOLD_N => VCC_net_1, 
        NGMUX3_HOLD_N => VCC_net_1, NGMUX0_ARST_N => VCC_net_1, 
        NGMUX1_ARST_N => VCC_net_1, NGMUX2_ARST_N => VCC_net_1, 
        NGMUX3_ARST_N => VCC_net_1, PLL_BYPASS_N => VCC_net_1, 
        PLL_ARST_N => VCC_net_1, PLL_POWERDOWN_N => VCC_net_1, 
        GPD0_ARST_N => VCC_net_1, GPD1_ARST_N => VCC_net_1, 
        GPD2_ARST_N => VCC_net_1, GPD3_ARST_N => VCC_net_1, 
        PRESET_N => GND_net_1, PCLK => VCC_net_1, PSEL => 
        VCC_net_1, PENABLE => VCC_net_1, PWRITE => VCC_net_1, 
        PADDR(7) => VCC_net_1, PADDR(6) => VCC_net_1, PADDR(5)
         => VCC_net_1, PADDR(4) => VCC_net_1, PADDR(3) => 
        VCC_net_1, PADDR(2) => VCC_net_1, PWDATA(7) => VCC_net_1, 
        PWDATA(6) => VCC_net_1, PWDATA(5) => VCC_net_1, PWDATA(4)
         => VCC_net_1, PWDATA(3) => VCC_net_1, PWDATA(2) => 
        VCC_net_1, PWDATA(1) => VCC_net_1, PWDATA(0) => VCC_net_1, 
        CLK0_PAD => GND_net_1, CLK1_PAD => GND_net_1, CLK2_PAD
         => GND_net_1, CLK3_PAD => GND_net_1, GL0 => GL0_net, GL1
         => OPEN, GL2 => OPEN, GL3 => OPEN, RCOSC_25_50MHZ => 
        OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        RCOSC_1MHZ => GND_net_1, XTLOSC => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_CoreUARTapb_0_Tx_async_0_0 is

    port( tx_rx_0_tx_rx     : out   std_logic_vector(1 to 1);
          tx_hold_reg       : in    std_logic_vector(7 downto 0);
          TX_c              : out   std_logic;
          COREABC_0_PRESETN : in    std_logic;
          FCCC_0_GL0        : in    std_logic;
          xmit_pulse        : in    std_logic;
          un1_csn_i_0       : in    std_logic;
          baud_clock        : in    std_logic;
          xmit_clock        : in    std_logic;
          un1_csn           : in    std_logic
        );

end top_CoreUARTapb_0_Tx_async_0_0;

architecture DEF_ARCH of top_CoreUARTapb_0_Tx_async_0_0 is 

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, tx_xhdl2_3_iv_i_0, N_122_i_0, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_106_i_0, 
        \xmit_bit_sel[2]_net_1\, N_108_i_0, 
        \xmit_bit_sel[3]_net_1\, N_110_i_0, \tx_rx_0_tx_rx[1]\, 
        txrdy_int_1_sqmuxa_i_0, \tx_byte[0]_net_1\, N_113_i_0, 
        \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, \xmit_state[5]_net_1\, 
        \xmit_state_ns[0]\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[1]\, \xmit_state[3]_net_1\, 
        \xmit_state_ns[2]_net_1\, \xmit_state[2]_net_1\, N_96_i_0, 
        \xmit_state[0]_net_1\, \xmit_state_ns[5]_net_1\, 
        tx_xhdl2_1_7_am_1_1, tx_xhdl2_1_7_am, tx_xhdl2_1_7_bm_1_1, 
        tx_xhdl2_1_7_bm, tx_xhdl2_1, N_111, N_141, N_118
         : std_logic;

begin 

    tx_rx_0_tx_rx(1) <= \tx_rx_0_tx_rx[1]\;

    \xmit_sel.tx_xhdl2_1_7_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_am_1_1, D => \xmit_bit_sel[1]_net_1\, Y
         => tx_xhdl2_1_7_am);
    
    txrdy_int : SLE
      port map(D => un1_csn_i_0, CLK => FCCC_0_GL0, EN => 
        txrdy_int_1_sqmuxa_i_0, ALn => COREABC_0_PRESETN, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_rx_0_tx_rx[1]\);
    
    \xmit_state_ns_i_a3_1[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \xmit_bit_sel[3]_net_1\, B => 
        \xmit_bit_sel[2]_net_1\, C => N_111, Y => N_141);
    
    \xmit_state[3]\ : SLE
      port map(D => \xmit_state_ns[2]_net_1\, CLK => FCCC_0_GL0, 
        EN => VCC_net_1, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \xmit_state[3]_net_1\);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_hold_reg(0), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => \xmit_state_ns[5]_net_1\, CLK => FCCC_0_GL0, 
        EN => VCC_net_1, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \xmit_state[0]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_am_1_1);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_hold_reg(4), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[4]_net_1\);
    
    \xmit_state_ns_a3[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[2]_net_1\, C => N_118, Y => 
        \xmit_state_ns[0]\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[2]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_106_i_0);
    
    \xmit_state_ns_o4[0]\ : CFG4
      generic map(INIT => x"C5C0")

      port map(A => \xmit_state[4]_net_1\, B => xmit_pulse, C => 
        \xmit_state[0]_net_1\, D => \tx_rx_0_tx_rx[1]\, Y => 
        N_118);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \xmit_cnt.xmit_bit_sel_3_i_o4[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, Y => N_111);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_hold_reg(5), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[5]_net_1\);
    
    txrdy_int_1_sqmuxa_i : CFG3
      generic map(INIT => x"EA")

      port map(A => un1_csn, B => \xmit_state[3]_net_1\, C => 
        xmit_pulse, Y => txrdy_int_1_sqmuxa_i_0);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_state[5]_net_1\);
    
    \xmit_sel.tx_xhdl2_3_iv_i\ : CFG3
      generic map(INIT => x"51")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[2]_net_1\, C => tx_xhdl2_1, Y => 
        tx_xhdl2_3_iv_i_0);
    
    tx_xhdl2_RNO : CFG3
      generic map(INIT => x"FE")

      port map(A => \xmit_state[4]_net_1\, B => xmit_pulse, C => 
        \xmit_state[5]_net_1\, Y => N_122_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_bm\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[5]_net_1\, B => \tx_byte[7]_net_1\, 
        C => tx_xhdl2_1_7_bm_1_1, D => \xmit_bit_sel[0]_net_1\, Y
         => tx_xhdl2_1_7_bm);
    
    \xmit_cnt.xmit_bit_sel_3_a3[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \xmit_state[2]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    \xmit_state_ns[2]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \xmit_state[3]_net_1\, B => xmit_pulse, C => 
        \xmit_state[4]_net_1\, Y => \xmit_state_ns[2]_net_1\);
    
    \xmit_state[2]\ : SLE
      port map(D => N_96_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[2]_net_1\);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_110_i_0, CLK => FCCC_0_GL0, EN => 
        xmit_pulse, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_bit_sel[3]_net_1\);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_i_0, CLK => FCCC_0_GL0, EN => 
        N_122_i_0, ALn => COREABC_0_PRESETN, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => TX_c);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_108_i_0, CLK => FCCC_0_GL0, EN => 
        xmit_pulse, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_hold_reg(3), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[3]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_hold_reg(7), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[7]_net_1\);
    
    \xmit_state_RNIEME51[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[3]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_113_i_0);
    
    \xmit_bit_sel_RNO[2]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \xmit_state[2]_net_1\, B => N_111, C => 
        \xmit_bit_sel[2]_net_1\, Y => N_108_i_0);
    
    \xmit_state_ns_a3[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \tx_rx_0_tx_rx[1]\, B => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[1]\);
    
    \xmit_state_ns[5]\ : CFG4
      generic map(INIT => x"B830")

      port map(A => N_141, B => xmit_pulse, C => 
        \xmit_state[0]_net_1\, D => \xmit_state[2]_net_1\, Y => 
        \xmit_state_ns[5]_net_1\);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_hold_reg(6), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[6]_net_1\);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_106_i_0, CLK => FCCC_0_GL0, EN => 
        xmit_pulse, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_bit_sel[1]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_bm_1_1);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FCCC_0_GL0, EN
         => xmit_pulse, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \xmit_bit_sel[0]_net_1\);
    
    \xmit_state_RNO[2]\ : CFG4
      generic map(INIT => x"F7C0")

      port map(A => N_141, B => xmit_pulse, C => 
        \xmit_state[3]_net_1\, D => \xmit_state[2]_net_1\, Y => 
        N_96_i_0);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_hold_reg(2), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[2]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_ns\ : CFG3
      generic map(INIT => x"E2")

      port map(A => tx_xhdl2_1_7_am, B => \xmit_bit_sel[2]_net_1\, 
        C => tx_xhdl2_1_7_bm, Y => tx_xhdl2_1);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_hold_reg(1), CLK => FCCC_0_GL0, EN => 
        N_113_i_0, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_state[4]_net_1\);
    
    \xmit_bit_sel_RNO[3]\ : CFG4
      generic map(INIT => x"82A0")

      port map(A => \xmit_state[2]_net_1\, B => N_111, C => 
        \xmit_bit_sel[3]_net_1\, D => \xmit_bit_sel[2]_net_1\, Y
         => N_110_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_CoreUARTapb_0_Rx_async_0_0 is

    port( data_out            : out   std_logic_vector(7 downto 0);
          COREABC_0_PRESETN   : in    std_logic;
          FCCC_0_GL0          : in    std_logic;
          baud_clock          : in    std_logic;
          receive_full        : out   std_logic;
          un1_temp_xhdl10_i_0 : in    std_logic;
          stop_strobe         : out   std_logic;
          RX_c                : in    std_logic;
          un1_temp_xhdl10     : in    std_logic
        );

end top_CoreUARTapb_0_Rx_async_0_0;

architecture DEF_ARCH of top_CoreUARTapb_0_Rx_async_0_0 is 

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \rx_state[1]_net_1\, VCC_net_1, N_19_i_0, GND_net_1, 
        \rx_state[0]_net_1\, N_21_i_0, \rx_shift[0]_net_1\, 
        \rx_shift_12[0]\, \un1_samples8_1_0_0\, 
        \rx_shift[1]_net_1\, \rx_shift_12[1]\, 
        \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_60_i_0, \receive_count[0]_net_1\, 
        N_279_i_0, \receive_count[1]_net_1\, N_298_i_0, 
        \receive_count[2]_net_1\, N_319_i_0, 
        \receive_count[3]_net_1\, N_341_i_0, \receive_full\, N_34, 
        rx_byte_xhdl5_1_sqmuxa, \last_bit[0]_net_1\, 
        un30_baud_clock, \last_bit[3]_net_1\, 
        framing_error_int_2_sqmuxa, \samples[0]_net_1\, 
        \samples[1]_net_1\, \samples[2]_net_1\, 
        \rx_bit_cnt[0]_net_1\, N_56_i_0, \rx_bit_cnt[1]_net_1\, 
        N_53_i_0, \rx_bit_cnt[2]_net_1\, N_25_i_0, 
        \rx_bit_cnt[3]_net_1\, N_50_i_0, N_145, N_75, 
        un47_baud_clock_NE_0, N_142, N_143, N_140, N_96, 
        \rx_bit_cnt_4_i_o2_0[2]\, un47_baud_clock_NE_2, N_141, 
        N_146, \un1_receive_full_int_1_sqmuxa_i_a2_1\, 
        receive_count_3_2_85_i_0_a2_1, N_87, N_73, N_118, N_122, 
        N_126, N_147, N_123, N_77, m16_i_2, m16_i_1, m19_i_0, 
        N_81, N_91 : std_logic;

begin 

    receive_full <= \receive_full\;

    \rx_state_ns_1_0_.m19_i_0\ : CFG4
      generic map(INIT => x"CFCE")

      port map(A => un47_baud_clock_NE_0, B => N_140, C => 
        \rx_state[1]_net_1\, D => un47_baud_clock_NE_2, Y => 
        m19_i_0);
    
    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(0));
    
    \rcv_sm.un47_baud_clock_NE_0\ : CFG4
      generic map(INIT => x"7BDE")

      port map(A => \last_bit[3]_net_1\, B => \last_bit[0]_net_1\, 
        C => \rx_bit_cnt[3]_net_1\, D => \rx_bit_cnt[0]_net_1\, Y
         => un47_baud_clock_NE_0);
    
    \samples_RNIC95C[0]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => N_140, Y => N_96);
    
    \samples[0]\ : SLE
      port map(D => \samples[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \samples[0]_net_1\);
    
    \rx_state_RNIQTOA[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, Y => N_146);
    
    \rx_shift[2]\ : SLE
      port map(D => \rx_shift_12[2]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(6));
    
    \rcv_sm.un47_baud_clock_NE_2\ : CFG2
      generic map(INIT => x"E")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, Y => un47_baud_clock_NE_2);
    
    \receive_count_RNINPCM[2]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_75);
    
    \receive_count[1]\ : SLE
      port map(D => N_298_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_60_i_0, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[7]_net_1\);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[0]_net_1\);
    
    un1_samples8_1_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => N_145, D => N_75, Y => \un1_samples8_1_0_0\);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[1]_net_1\, Y => 
        \rx_shift_12[0]\);
    
    \receive_count_RNO_0[0]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[3]_net_1\, C => \receive_count[2]_net_1\, 
        Y => receive_count_3_2_85_i_0_a2_1);
    
    \receive_shift.rx_bit_cnt_4_i_o2_0_0[2]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, Y => \rx_bit_cnt_4_i_o2_0[2]\);
    
    un1_receive_full_int_1_sqmuxa_i_0 : CFG4
      generic map(INIT => x"CECC")

      port map(A => \un1_receive_full_int_1_sqmuxa_i_a2_1\, B => 
        un1_temp_xhdl10, C => un47_baud_clock_NE_2, D => N_142, Y
         => N_34);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_341_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_state_ns_1_0_.N_21_i\ : CFG4
      generic map(INIT => x"1011")

      port map(A => m16_i_2, B => m16_i_1, C => 
        \receive_count[3]_net_1\, D => N_147, Y => N_21_i_0);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_25_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_1\ : CFG4
      generic map(INIT => x"F4F0")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => N_143, D => N_75, Y => m16_i_1);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_53_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \receive_count_RNO_0[3]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_140, B => N_87, Y => N_122);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_77, B => \rx_bit_cnt[0]_net_1\, C => N_145, 
        Y => N_56_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => N_81, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_319_i_0);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \samples[1]_net_1\);
    
    \rx_bit_cnt_RNO[2]\ : CFG4
      generic map(INIT => x"0A09")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt_4_i_o2_0[2]\, C => N_145, D => N_77, Y => 
        N_25_i_0);
    
    \receive_count[2]\ : SLE
      port map(D => N_319_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \receive_count[2]_net_1\);
    
    stop_strobe_i : SLE
      port map(D => framing_error_int_2_sqmuxa, CLK => FCCC_0_GL0, 
        EN => baud_clock, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => stop_strobe);
    
    \receive_shift.rx_shift_12[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[3]_net_1\, Y => 
        \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[6]_net_1\, Y => 
        \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_19_i_0, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => N_73, Y => N_60_i_0);
    
    un1_receive_full_int_1_sqmuxa_i_a2_1 : CFG3
      generic map(INIT => x"20")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => baud_clock, Y => 
        \un1_receive_full_int_1_sqmuxa_i_a2_1\);
    
    \rx_state_ns_1_0_.m16_i_a2_3\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => un47_baud_clock_NE_0, D => 
        N_142, Y => N_143);
    
    \receive_count_RNO[1]\ : CFG4
      generic map(INIT => x"0006")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[0]_net_1\, C => N_118, D => N_96, Y => 
        N_298_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \samples_RNILCH5[0]\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => N_73);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[4]_net_1\);
    
    framing_error_int_0_sqmuxa_0_a4_0_a2_0 : CFG3
      generic map(INIT => x"40")

      port map(A => \receive_count[0]_net_1\, B => N_141, C => 
        \receive_count[1]_net_1\, Y => N_147);
    
    \last_bit[3]\ : SLE
      port map(D => VCC_net_1, CLK => FCCC_0_GL0, EN => 
        un30_baud_clock, ALn => COREABC_0_PRESETN, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \last_bit[3]_net_1\);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[2]_net_1\, Y => 
        \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => N_75, B => \receive_count[3]_net_1\, C => 
        N_96, D => N_122, Y => N_341_i_0);
    
    receive_full_int : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FCCC_0_GL0, EN
         => N_34, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_full\);
    
    \rx_state_ns_1_0_.m16_i_a2\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_140, B => N_87, Y => N_126);
    
    \receive_count_RNO_0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \receive_count[0]_net_1\, B => N_141, C => 
        N_146, Y => N_118);
    
    \receive_count_RNO[0]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \receive_count[0]_net_1\, B => 
        receive_count_3_2_85_i_0_a2_1, C => N_140, D => N_81, Y
         => N_279_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[6]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_a2[3]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => baud_clock, Y => N_145);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[1]_net_1\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a2 : CFG3
      generic map(INIT => x"08")

      port map(A => baud_clock, B => N_143, C => \receive_full\, 
        Y => rx_byte_xhdl5_1_sqmuxa);
    
    \receive_count_RNIQTOA[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state[1]_net_1\, B => 
        \receive_count[2]_net_1\, Y => N_141);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[3]_net_1\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(2));
    
    \rx_state[0]\ : SLE
      port map(D => N_21_i_0, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    un1_receive_full_int_1_sqmuxa_i_a2_0 : CFG2
      generic map(INIT => x"2")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_142);
    
    \samples[2]\ : SLE
      port map(D => RX_c, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => COREABC_0_PRESETN, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[7]_net_1\, Y => 
        \rx_shift_12[6]\);
    
    framing_error_int_2_sqmuxa_0_a4_0_a2 : CFG4
      generic map(INIT => x"0020")

      port map(A => \receive_count[3]_net_1\, B => N_75, C => 
        \rx_state[1]_net_1\, D => \rx_state[0]_net_1\, Y => 
        framing_error_int_2_sqmuxa);
    
    \receive_count[0]\ : SLE
      port map(D => N_279_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(3));
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[5]_net_1\, Y => 
        \rx_shift_12[4]\);
    
    \rx_state_ns_1_0_.m19_i_a2\ : CFG3
      generic map(INIT => x"80")

      port map(A => \rx_state[0]_net_1\, B => N_73, C => 
        \rx_state[1]_net_1\, Y => N_123);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_140, B => \rx_shift[4]_net_1\, Y => 
        \rx_shift_12[3]\);
    
    \rx_state_ns_1_0_.m16_i_2\ : CFG4
      generic map(INIT => x"FFF1")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, C => N_126, D => N_123, Y => m16_i_2);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => COREABC_0_PRESETN, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[5]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_o2_0[2]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \rx_bit_cnt_4_i_o2_0[2]\, B => N_77, C => 
        \rx_bit_cnt[2]_net_1\, Y => N_91);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_56_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \make_last_bit.un30_baud_clock_0_a4_0_a2\ : CFG3
      generic map(INIT => x"20")

      port map(A => \receive_count[3]_net_1\, B => N_87, C => 
        N_145, Y => un30_baud_clock);
    
    \receive_shift.rx_bit_cnt_4_i_o2[0]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => N_75, C => 
        \receive_count[3]_net_1\, Y => N_77);
    
    \receive_count_RNIT2691[1]\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => N_141, B => \receive_count[1]_net_1\, C => 
        N_96, D => N_146, Y => N_81);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(1));
    
    \rx_state_ns_1_0_.m16_i_o2\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_87);
    
    \last_bit[0]\ : SLE
      port map(D => GND_net_1, CLK => FCCC_0_GL0, EN => 
        un30_baud_clock, ALn => COREABC_0_PRESETN, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \last_bit[0]_net_1\);
    
    \rx_state_ns_1_0_.N_19_i\ : CFG4
      generic map(INIT => x"0007")

      port map(A => N_147, B => N_146, C => m19_i_0, D => N_123, 
        Y => N_19_i_0);
    
    \rx_state_RNINSJ6[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_140);
    
    \rx_bit_cnt_RNO[3]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_91, B => \rx_bit_cnt[3]_net_1\, C => N_145, 
        Y => N_50_i_0);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_50_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => N_145, D => N_77, Y => 
        N_53_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_CoreUARTapb_0_Clock_gen_0_0 is

    port( xmit_clock        : out   std_logic;
          COREABC_0_PRESETN : in    std_logic;
          FCCC_0_GL0        : in    std_logic;
          baud_clock        : out   std_logic;
          xmit_pulse        : out   std_logic
        );

end top_CoreUARTapb_0_Clock_gen_0_0;

architecture DEF_ARCH of top_CoreUARTapb_0_Clock_gen_0_0 is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal xmit_clock_net_1, VCC_net_1, un8_baud_clock_int, 
        \baud_clock\, GND_net_1, \xmit_cntr[0]_net_1\, 
        \xmit_cntr_3[0]\, \xmit_cntr[1]_net_1\, \xmit_cntr_3[1]\, 
        \xmit_cntr[2]_net_1\, \xmit_cntr_3[2]\, 
        \xmit_cntr[3]_net_1\, \xmit_cntr_3[3]\, baud_cntr, 
        \baud_cntr[0]_net_1\, \baud_cntr_s[0]\, 
        \baud_cntr[1]_net_1\, \baud_cntr_s[1]\, 
        \baud_cntr[2]_net_1\, \baud_cntr_s[2]\, 
        \baud_cntr[3]_net_1\, \baud_cntr_s[3]\, 
        \baud_cntr[4]_net_1\, \baud_cntr_s[4]\, 
        \baud_cntr[5]_net_1\, \baud_cntr_s[5]\, 
        \baud_cntr[6]_net_1\, \baud_cntr_s[6]\, 
        \baud_cntr[7]_net_1\, \baud_cntr_s[7]\, 
        \baud_cntr[8]_net_1\, \baud_cntr_s[8]\, 
        \baud_cntr[9]_net_1\, \baud_cntr_s[9]\, 
        \baud_cntr[10]_net_1\, \baud_cntr_s[10]\, 
        \baud_cntr[11]_net_1\, \baud_cntr_s[11]\, 
        \baud_cntr[12]_net_1\, \baud_cntr_s[12]\, 
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNIQFHL1_Y, 
        un2_baud_cntr_1, un2_baud_cntr_7, un2_baud_cntr_8, 
        \baud_cntr_cry[0]\, \baud_cntr_cry[1]\, 
        \baud_cntr_cry[2]\, \baud_cntr_cry[3]\, 
        \baud_cntr_cry[4]\, \baud_cntr_cry[5]\, 
        \baud_cntr_cry[6]\, \baud_cntr_cry[7]\, 
        \baud_cntr_cry[8]\, \baud_cntr_cry[9]\, 
        \baud_cntr_cry[10]\, \baud_cntr_cry[11]\, CO0
         : std_logic;

begin 

    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_s[7]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[7]_net_1\);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_s[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[0]_net_1\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_s[9]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => \xmit_cntr_3[3]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_cntr[3]_net_1\);
    
    \baud_cntr_RNI87OH6[7]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[7]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]\, S => \baud_cntr_s[7]\, Y => OPEN, FCO
         => \baud_cntr_cry[7]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[0]_net_1\, Y => un2_baud_cntr_1);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"4BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[12]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, D => 
        \baud_cntr[2]_net_1\, Y => un2_baud_cntr_7);
    
    \UG10.make_baud_cntr2.un2_baud_cntr\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_8, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_1, Y => 
        baud_cntr);
    
    \baud_cntr[5]\ : SLE
      port map(D => \baud_cntr_s[5]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[5]_net_1\);
    
    \baud_cntr_RNI03SM7[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
    \baud_cntr[3]\ : SLE
      port map(D => \baud_cntr_s[3]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[3]\ : CFG4
      generic map(INIT => x"6AAA")

      port map(A => \xmit_cntr[3]_net_1\, B => 
        \xmit_cntr[2]_net_1\, C => \xmit_cntr[1]_net_1\, D => CO0, 
        Y => \xmit_cntr_3[3]\);
    
    \baud_cntr_RNI45228[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_s[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[2]_net_1\);
    
    \baud_cntr_RNIGNV12[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \baud_cntr_cry_cy[0]\, 
        S => \baud_cntr_s[0]\, Y => OPEN, FCO => 
        \baud_cntr_cry[0]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[9]_net_1\, B => 
        \baud_cntr[8]_net_1\, C => \baud_cntr[7]_net_1\, D => 
        \baud_cntr[6]_net_1\, Y => un2_baud_cntr_8);
    
    \baud_cntr_RNI24NU6[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \baud_cntr_RNI0NRA5[4]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
    \baud_cntr_RNIT1MB7[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \baud_cntr[10]\ : SLE
      port map(D => \baud_cntr_s[10]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[10]_net_1\);
    
    \baud_cntr[11]\ : SLE
      port map(D => \baud_cntr_s[11]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[11]_net_1\);
    
    \baud_cntr[6]\ : SLE
      port map(D => \baud_cntr_s[6]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[6]_net_1\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNIQFHL1\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_1, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNIQFHL1_Y, 
        FCO => \baud_cntr_cry_cy[0]\);
    
    \baud_cntr[4]\ : SLE
      port map(D => \baud_cntr_s[4]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[4]_net_1\);
    
    \baud_cntr_RNIAUST4[3]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => \xmit_cntr_3[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_cntr[2]_net_1\);
    
    \baud_cntr_RNIFBP46[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => CO0, B => \xmit_cntr[1]_net_1\, Y => 
        \xmit_cntr_3[1]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_s[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[1]_net_1\);
    
    \xmit_clock\ : SLE
      port map(D => un8_baud_clock_int, CLK => FCCC_0_GL0, EN => 
        \baud_clock\, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => xmit_clock_net_1);
    
    \baud_cntr_RNIL6UG4[2]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
    baud_clock_int : SLE
      port map(D => baud_cntr, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_clock\);
    
    \make_xmit_clock.xmit_cntr_3_1.CO0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => CO0);
    
    \xmit_cntr[1]\ : SLE
      port map(D => \xmit_cntr_3[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_cntr[1]_net_1\);
    
    \baud_cntr_RNI1GV34[1]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNIQFHL1_Y, C
         => \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_s[12]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[12]_net_1\);
    
    \xmit_pulse\ : CFG2
      generic map(INIT => x"8")

      port map(A => \baud_clock\, B => xmit_clock_net_1, Y => 
        xmit_pulse);
    
    \xmit_cntr[0]\ : SLE
      port map(D => \xmit_cntr_3[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \xmit_cntr[0]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => \xmit_cntr_3[0]\);
    
    \baud_cntr_RNINGQN5[5]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \make_xmit_clock.un8_baud_clock_int\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un8_baud_clock_int);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[2]\ : CFG3
      generic map(INIT => x"6A")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[1]_net_1\, C => CO0, Y => \xmit_cntr_3[2]\);
    
    \baud_cntr[8]\ : SLE
      port map(D => \baud_cntr_s[8]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \baud_cntr[8]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_CoreUARTapb_0_COREUART_19_0_0_0_0 is

    port( COREABC_0_APB3master_PWDATA : in    std_logic_vector(7 downto 0);
          tx_rx_0_tx_rx               : out   std_logic_vector(1 downto 0);
          data_out                    : out   std_logic_vector(7 downto 0);
          COREABC_0_PRESETN           : in    std_logic;
          FCCC_0_GL0                  : in    std_logic;
          un1_csn                     : in    std_logic;
          TX_c                        : out   std_logic;
          un1_csn_i_0                 : in    std_logic;
          un1_temp_xhdl10_i_0         : in    std_logic;
          RX_c                        : in    std_logic;
          un1_temp_xhdl10             : in    std_logic
        );

end top_CoreUARTapb_0_COREUART_19_0_0_0_0;

architecture DEF_ARCH of top_CoreUARTapb_0_COREUART_19_0_0_0_0 is 

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component top_CoreUARTapb_0_Tx_async_0_0
    port( tx_rx_0_tx_rx     : out   std_logic_vector(1 to 1);
          tx_hold_reg       : in    std_logic_vector(7 downto 0) := (others => 'U');
          TX_c              : out   std_logic;
          COREABC_0_PRESETN : in    std_logic := 'U';
          FCCC_0_GL0        : in    std_logic := 'U';
          xmit_pulse        : in    std_logic := 'U';
          un1_csn_i_0       : in    std_logic := 'U';
          baud_clock        : in    std_logic := 'U';
          xmit_clock        : in    std_logic := 'U';
          un1_csn           : in    std_logic := 'U'
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component top_CoreUARTapb_0_Rx_async_0_0
    port( data_out            : out   std_logic_vector(7 downto 0);
          COREABC_0_PRESETN   : in    std_logic := 'U';
          FCCC_0_GL0          : in    std_logic := 'U';
          baud_clock          : in    std_logic := 'U';
          receive_full        : out   std_logic;
          un1_temp_xhdl10_i_0 : in    std_logic := 'U';
          stop_strobe         : out   std_logic;
          RX_c                : in    std_logic := 'U';
          un1_temp_xhdl10     : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component top_CoreUARTapb_0_Clock_gen_0_0
    port( xmit_clock        : out   std_logic;
          COREABC_0_PRESETN : in    std_logic := 'U';
          FCCC_0_GL0        : in    std_logic := 'U';
          baud_clock        : out   std_logic;
          xmit_pulse        : out   std_logic
        );
  end component;

    signal VCC_net_1, receive_full, un1_rx_fifo, GND_net_1, 
        \tx_hold_reg[0]_net_1\, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        stop_strobe, xmit_clock, baud_clock, xmit_pulse
         : std_logic;

    for all : top_CoreUARTapb_0_Tx_async_0_0
	Use entity work.top_CoreUARTapb_0_Tx_async_0_0(DEF_ARCH);
    for all : top_CoreUARTapb_0_Rx_async_0_0
	Use entity work.top_CoreUARTapb_0_Rx_async_0_0(DEF_ARCH);
    for all : top_CoreUARTapb_0_Clock_gen_0_0
	Use entity work.top_CoreUARTapb_0_Clock_gen_0_0(DEF_ARCH);
begin 


    \RXRDY_NEW.un1_rx_fifo\ : CFG2
      generic map(INIT => x"D")

      port map(A => receive_full, B => stop_strobe, Y => 
        un1_rx_fifo);
    
    make_TX : top_CoreUARTapb_0_Tx_async_0_0
      port map(tx_rx_0_tx_rx(1) => tx_rx_0_tx_rx(1), 
        tx_hold_reg(7) => \tx_hold_reg[7]_net_1\, tx_hold_reg(6)
         => \tx_hold_reg[6]_net_1\, tx_hold_reg(5) => 
        \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, TX_c => TX_c, COREABC_0_PRESETN
         => COREABC_0_PRESETN, FCCC_0_GL0 => FCCC_0_GL0, 
        xmit_pulse => xmit_pulse, un1_csn_i_0 => un1_csn_i_0, 
        baud_clock => baud_clock, xmit_clock => xmit_clock, 
        un1_csn => un1_csn);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(7), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(3), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    make_RX : top_CoreUARTapb_0_Rx_async_0_0
      port map(data_out(7) => data_out(7), data_out(6) => 
        data_out(6), data_out(5) => data_out(5), data_out(4) => 
        data_out(4), data_out(3) => data_out(3), data_out(2) => 
        data_out(2), data_out(1) => data_out(1), data_out(0) => 
        data_out(0), COREABC_0_PRESETN => COREABC_0_PRESETN, 
        FCCC_0_GL0 => FCCC_0_GL0, baud_clock => baud_clock, 
        receive_full => receive_full, un1_temp_xhdl10_i_0 => 
        un1_temp_xhdl10_i_0, stop_strobe => stop_strobe, RX_c => 
        RX_c, un1_temp_xhdl10 => un1_temp_xhdl10);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(1), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    rxrdy_xhdl4 : SLE
      port map(D => receive_full, CLK => FCCC_0_GL0, EN => 
        un1_rx_fifo, ALn => COREABC_0_PRESETN, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => tx_rx_0_tx_rx(0));
    
    \tx_hold_reg[0]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(0), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    make_top_CoreUARTapb_0_Clock_gen : 
        top_CoreUARTapb_0_Clock_gen_0_0
      port map(xmit_clock => xmit_clock, COREABC_0_PRESETN => 
        COREABC_0_PRESETN, FCCC_0_GL0 => FCCC_0_GL0, baud_clock
         => baud_clock, xmit_pulse => xmit_pulse);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(6), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    \tx_hold_reg[5]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(5), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(2), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    \tx_hold_reg[4]\ : SLE
      port map(D => COREABC_0_APB3master_PWDATA(4), CLK => 
        FCCC_0_GL0, EN => un1_csn, ALn => COREABC_0_PRESETN, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[4]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0 is

    port( CoreAPB3_0_APBmslave0_PRDATA : out   std_logic_vector(7 downto 0);
          COREABC_0_APB3master_PADDR   : in    std_logic_vector(2 to 2);
          COREABC_0_APB3master_PWDATA  : in    std_logic_vector(7 downto 0);
          tx_rx_0_tx_rx                : out   std_logic_vector(1 downto 0);
          COREABC_0_PRESETN            : in    std_logic;
          FCCC_0_GL0                   : in    std_logic;
          N_110_mux                    : in    std_logic;
          un1_csn                      : in    std_logic;
          TX_c                         : out   std_logic;
          un1_csn_i_0                  : in    std_logic;
          un1_temp_xhdl10_i_0          : in    std_logic;
          RX_c                         : in    std_logic;
          un1_temp_xhdl10              : in    std_logic
        );

end top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0;

architecture DEF_ARCH of 
        top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0 is 

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component top_CoreUARTapb_0_COREUART_19_0_0_0_0
    port( COREABC_0_APB3master_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          tx_rx_0_tx_rx               : out   std_logic_vector(1 downto 0);
          data_out                    : out   std_logic_vector(7 downto 0);
          COREABC_0_PRESETN           : in    std_logic := 'U';
          FCCC_0_GL0                  : in    std_logic := 'U';
          un1_csn                     : in    std_logic := 'U';
          TX_c                        : out   std_logic;
          un1_csn_i_0                 : in    std_logic := 'U';
          un1_temp_xhdl10_i_0         : in    std_logic := 'U';
          RX_c                        : in    std_logic := 'U';
          un1_temp_xhdl10             : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, N_48, GND_net_1, N_49, N_50, N_51, N_52, 
        N_53, N_54, N_55, \data_out[1]\, \data_out[2]\, 
        \data_out[3]\, \data_out[5]\, \data_out[6]\, 
        \data_out[7]\, \data_out[4]\, \data_out[0]\ : std_logic;

    for all : top_CoreUARTapb_0_COREUART_19_0_0_0_0
	Use entity work.top_CoreUARTapb_0_COREUART_19_0_0_0_0(DEF_ARCH);
begin 


    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[7]\, Y => N_55);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[4]\, Y => N_52);
    
    \iPRDATA[1]\ : SLE
      port map(D => N_49, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(1));
    
    \iPRDATA[0]\ : SLE
      port map(D => N_48, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(0));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[3]\, Y => N_51);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[0]\, Y => N_48);
    
    \iPRDATA[4]\ : SLE
      port map(D => N_52, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(4));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    uUART : top_CoreUARTapb_0_COREUART_19_0_0_0_0
      port map(COREABC_0_APB3master_PWDATA(7) => 
        COREABC_0_APB3master_PWDATA(7), 
        COREABC_0_APB3master_PWDATA(6) => 
        COREABC_0_APB3master_PWDATA(6), 
        COREABC_0_APB3master_PWDATA(5) => 
        COREABC_0_APB3master_PWDATA(5), 
        COREABC_0_APB3master_PWDATA(4) => 
        COREABC_0_APB3master_PWDATA(4), 
        COREABC_0_APB3master_PWDATA(3) => 
        COREABC_0_APB3master_PWDATA(3), 
        COREABC_0_APB3master_PWDATA(2) => 
        COREABC_0_APB3master_PWDATA(2), 
        COREABC_0_APB3master_PWDATA(1) => 
        COREABC_0_APB3master_PWDATA(1), 
        COREABC_0_APB3master_PWDATA(0) => 
        COREABC_0_APB3master_PWDATA(0), tx_rx_0_tx_rx(1) => 
        tx_rx_0_tx_rx(1), tx_rx_0_tx_rx(0) => tx_rx_0_tx_rx(0), 
        data_out(7) => \data_out[7]\, data_out(6) => 
        \data_out[6]\, data_out(5) => \data_out[5]\, data_out(4)
         => \data_out[4]\, data_out(3) => \data_out[3]\, 
        data_out(2) => \data_out[2]\, data_out(1) => 
        \data_out[1]\, data_out(0) => \data_out[0]\, 
        COREABC_0_PRESETN => COREABC_0_PRESETN, FCCC_0_GL0 => 
        FCCC_0_GL0, un1_csn => un1_csn, TX_c => TX_c, un1_csn_i_0
         => un1_csn_i_0, un1_temp_xhdl10_i_0 => 
        un1_temp_xhdl10_i_0, RX_c => RX_c, un1_temp_xhdl10 => 
        un1_temp_xhdl10);
    
    \iPRDATA[3]\ : SLE
      port map(D => N_51, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(3));
    
    \iPRDATA[2]\ : SLE
      port map(D => N_50, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[2]\, Y => N_50);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[5]\, Y => N_53);
    
    \iPRDATA[7]\ : SLE
      port map(D => N_55, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(7));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[6]\, Y => N_54);
    
    \iPRDATA[6]\ : SLE
      port map(D => N_54, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(6));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \iPRDATA[5]\ : SLE
      port map(D => N_53, CLK => FCCC_0_GL0, EN => N_110_mux, ALn
         => COREABC_0_PRESETN, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave0_PRDATA(5));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_3[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREABC_0_APB3master_PADDR(2), B => 
        \data_out[1]\, Y => N_49);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity top is

    port( RX : in    std_logic;
          TX : out   std_logic
        );

end top;

architecture DEF_ARCH of top is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INBUF
    generic (IOSTD:string := "");

    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component top_OSC_0_OSC
    port( OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component OUTBUF
    generic (IOSTD:string := "");

    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component 
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32
    port( COREABC_0_APB3master_PADDR   : out   std_logic_vector(2 to 2);
          tx_rx_0_tx_rx                : in    std_logic_vector(1 downto 0) := (others => 'U');
          COREABC_0_APB3master_PWDATA  : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PRDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          COREABC_0_PRESETN            : out   std_logic;
          un1_csn                      : out   std_logic;
          un1_csn_i_0                  : out   std_logic;
          un1_temp_xhdl10              : out   std_logic;
          un1_temp_xhdl10_i_0          : out   std_logic;
          FCCC_0_GL0                   : in    std_logic := 'U';
          FCCC_0_LOCK                  : in    std_logic := 'U';
          N_110_mux                    : out   std_logic
        );
  end component;

  component top_FCCC_0_FCCC
    port( FCCC_0_GL0                                      : out   std_logic;
          FCCC_0_LOCK                                     : out   std_logic;
          OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic := 'U'
        );
  end component;

  component top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0
    port( CoreAPB3_0_APBmslave0_PRDATA : out   std_logic_vector(7 downto 0);
          COREABC_0_APB3master_PADDR   : in    std_logic_vector(2 to 2) := (others => 'U');
          COREABC_0_APB3master_PWDATA  : in    std_logic_vector(7 downto 0) := (others => 'U');
          tx_rx_0_tx_rx                : out   std_logic_vector(1 downto 0);
          COREABC_0_PRESETN            : in    std_logic := 'U';
          FCCC_0_GL0                   : in    std_logic := 'U';
          N_110_mux                    : in    std_logic := 'U';
          un1_csn                      : in    std_logic := 'U';
          TX_c                         : out   std_logic;
          un1_csn_i_0                  : in    std_logic := 'U';
          un1_temp_xhdl10_i_0          : in    std_logic := 'U';
          RX_c                         : in    std_logic := 'U';
          un1_temp_xhdl10              : in    std_logic := 'U'
        );
  end component;

    signal FCCC_0_GL0, FCCC_0_LOCK, COREABC_0_PRESETN, 
        \COREABC_0_APB3master_PADDR[2]\, 
        \COREABC_0_APB3master_PWDATA[0]\, 
        \COREABC_0_APB3master_PWDATA[4]\, 
        \COREABC_0_APB3master_PWDATA[5]\, 
        \COREABC_0_APB3master_PWDATA[6]\, 
        \COREABC_0_APB3master_PWDATA[7]\, GND_net_1, 
        \CoreAPB3_0_APBmslave0_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, \tx_rx_0_tx_rx[1]\, 
        \tx_rx_0_tx_rx[0]\, 
        OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        VCC_net_1, \CoreUARTapb_0.uUART.reg_write.un1_csn\, 
        N_110_mux, RX_c, TX_c, 
        \CoreUARTapb_0.uUART.un1_temp_xhdl10\, 
        \COREABC_0_APB3master_PWDATA[2]\, 
        \COREABC_0_APB3master_PWDATA[1]\, 
        \COREABC_0_APB3master_PWDATA[3]\, 
        \CoreUARTapb_0.uUART.reg_write.un1_csn_i_0\, 
        \CoreUARTapb_0.uUART.un1_temp_xhdl10_i_0\ : std_logic;

    for all : top_OSC_0_OSC
	Use entity work.top_OSC_0_OSC(DEF_ARCH);
    for all : top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32
	Use entity work.
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32(DEF_ARCH);
    for all : top_FCCC_0_FCCC
	Use entity work.top_FCCC_0_FCCC(DEF_ARCH);
    for all : top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0
	Use entity work.
        top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    RX_ibuf : INBUF
      port map(PAD => RX, Y => RX_c);
    
    OSC_0 : top_OSC_0_OSC
      port map(OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
         => OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    TX_obuf : OUTBUF
      port map(D => TX_c, PAD => TX);
    
    COREABC_0 : 
        top_COREABC_0_COREABC_19_8_8_2_8_0_2_2_1_4_1_1_1_1_1_1_1_1_1_1_0_1_2_0_1_1_0_0_1_1_0_11_0_1_0_13_32
      port map(COREABC_0_APB3master_PADDR(2) => 
        \COREABC_0_APB3master_PADDR[2]\, tx_rx_0_tx_rx(1) => 
        \tx_rx_0_tx_rx[1]\, tx_rx_0_tx_rx(0) => 
        \tx_rx_0_tx_rx[0]\, COREABC_0_APB3master_PWDATA(7) => 
        \COREABC_0_APB3master_PWDATA[7]\, 
        COREABC_0_APB3master_PWDATA(6) => 
        \COREABC_0_APB3master_PWDATA[6]\, 
        COREABC_0_APB3master_PWDATA(5) => 
        \COREABC_0_APB3master_PWDATA[5]\, 
        COREABC_0_APB3master_PWDATA(4) => 
        \COREABC_0_APB3master_PWDATA[4]\, 
        COREABC_0_APB3master_PWDATA(3) => 
        \COREABC_0_APB3master_PWDATA[3]\, 
        COREABC_0_APB3master_PWDATA(2) => 
        \COREABC_0_APB3master_PWDATA[2]\, 
        COREABC_0_APB3master_PWDATA(1) => 
        \COREABC_0_APB3master_PWDATA[1]\, 
        COREABC_0_APB3master_PWDATA(0) => 
        \COREABC_0_APB3master_PWDATA[0]\, 
        CoreAPB3_0_APBmslave0_PRDATA(7) => 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, 
        CoreAPB3_0_APBmslave0_PRDATA(6) => 
        \CoreAPB3_0_APBmslave0_PRDATA[6]\, 
        CoreAPB3_0_APBmslave0_PRDATA(5) => 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, 
        CoreAPB3_0_APBmslave0_PRDATA(4) => 
        \CoreAPB3_0_APBmslave0_PRDATA[4]\, 
        CoreAPB3_0_APBmslave0_PRDATA(3) => 
        \CoreAPB3_0_APBmslave0_PRDATA[3]\, 
        CoreAPB3_0_APBmslave0_PRDATA(2) => 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        CoreAPB3_0_APBmslave0_PRDATA(1) => 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        CoreAPB3_0_APBmslave0_PRDATA(0) => 
        \CoreAPB3_0_APBmslave0_PRDATA[0]\, COREABC_0_PRESETN => 
        COREABC_0_PRESETN, un1_csn => 
        \CoreUARTapb_0.uUART.reg_write.un1_csn\, un1_csn_i_0 => 
        \CoreUARTapb_0.uUART.reg_write.un1_csn_i_0\, 
        un1_temp_xhdl10 => \CoreUARTapb_0.uUART.un1_temp_xhdl10\, 
        un1_temp_xhdl10_i_0 => 
        \CoreUARTapb_0.uUART.un1_temp_xhdl10_i_0\, FCCC_0_GL0 => 
        FCCC_0_GL0, FCCC_0_LOCK => FCCC_0_LOCK, N_110_mux => 
        N_110_mux);
    
    FCCC_0 : top_FCCC_0_FCCC
      port map(FCCC_0_GL0 => FCCC_0_GL0, FCCC_0_LOCK => 
        FCCC_0_LOCK, 
        OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC => 
        OSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    CoreUARTapb_0 : 
        top_CoreUARTapb_0_CoreUARTapb_0_19_0_0_26_1_1_0_0_0
      port map(CoreAPB3_0_APBmslave0_PRDATA(7) => 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, 
        CoreAPB3_0_APBmslave0_PRDATA(6) => 
        \CoreAPB3_0_APBmslave0_PRDATA[6]\, 
        CoreAPB3_0_APBmslave0_PRDATA(5) => 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, 
        CoreAPB3_0_APBmslave0_PRDATA(4) => 
        \CoreAPB3_0_APBmslave0_PRDATA[4]\, 
        CoreAPB3_0_APBmslave0_PRDATA(3) => 
        \CoreAPB3_0_APBmslave0_PRDATA[3]\, 
        CoreAPB3_0_APBmslave0_PRDATA(2) => 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        CoreAPB3_0_APBmslave0_PRDATA(1) => 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        CoreAPB3_0_APBmslave0_PRDATA(0) => 
        \CoreAPB3_0_APBmslave0_PRDATA[0]\, 
        COREABC_0_APB3master_PADDR(2) => 
        \COREABC_0_APB3master_PADDR[2]\, 
        COREABC_0_APB3master_PWDATA(7) => 
        \COREABC_0_APB3master_PWDATA[7]\, 
        COREABC_0_APB3master_PWDATA(6) => 
        \COREABC_0_APB3master_PWDATA[6]\, 
        COREABC_0_APB3master_PWDATA(5) => 
        \COREABC_0_APB3master_PWDATA[5]\, 
        COREABC_0_APB3master_PWDATA(4) => 
        \COREABC_0_APB3master_PWDATA[4]\, 
        COREABC_0_APB3master_PWDATA(3) => 
        \COREABC_0_APB3master_PWDATA[3]\, 
        COREABC_0_APB3master_PWDATA(2) => 
        \COREABC_0_APB3master_PWDATA[2]\, 
        COREABC_0_APB3master_PWDATA(1) => 
        \COREABC_0_APB3master_PWDATA[1]\, 
        COREABC_0_APB3master_PWDATA(0) => 
        \COREABC_0_APB3master_PWDATA[0]\, tx_rx_0_tx_rx(1) => 
        \tx_rx_0_tx_rx[1]\, tx_rx_0_tx_rx(0) => 
        \tx_rx_0_tx_rx[0]\, COREABC_0_PRESETN => 
        COREABC_0_PRESETN, FCCC_0_GL0 => FCCC_0_GL0, N_110_mux
         => N_110_mux, un1_csn => 
        \CoreUARTapb_0.uUART.reg_write.un1_csn\, TX_c => TX_c, 
        un1_csn_i_0 => 
        \CoreUARTapb_0.uUART.reg_write.un1_csn_i_0\, 
        un1_temp_xhdl10_i_0 => 
        \CoreUARTapb_0.uUART.un1_temp_xhdl10_i_0\, RX_c => RX_c, 
        un1_temp_xhdl10 => \CoreUARTapb_0.uUART.un1_temp_xhdl10\);
    

end DEF_ARCH; 
