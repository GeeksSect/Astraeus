-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CCC_0_FCCC is

    port( FAB_CCC_GL0                                        : out   std_logic;
          FAB_CCC_LOCK                                       : out   std_logic;
          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic
        );

end mss_top_sb_CCC_0_FCCC;

architecture DEF_ARCH of mss_top_sb_CCC_0_FCCC is 

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
      port map(A => GL0_net, Y => FAB_CCC_GL0);
    
    CCC_INST : CCC

              generic map(INIT => "00" & x"000007FB8000045164000318C6318C1F18C61EC0404040400101",
         VCOFREQUENCY => 800.0)

      port map(Y0 => OPEN, Y1 => OPEN, Y2 => OPEN, Y3 => OPEN, 
        PRDATA(7) => nc8, PRDATA(6) => nc7, PRDATA(5) => nc6, 
        PRDATA(4) => nc2, PRDATA(3) => nc5, PRDATA(2) => nc4, 
        PRDATA(1) => nc3, PRDATA(0) => nc1, LOCK => FAB_CCC_LOCK, 
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
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        RCOSC_1MHZ => GND_net_1, XTLOSC => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreResetP is

    port( MSS_READY                                 : out   std_logic;
          FAB_CCC_GL0                               : in    std_logic;
          POWER_ON_RESET_N                          : in    std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic
        );

end CoreResetP;

architecture DEF_ARCH of CoreResetP is 

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

  component CLKINT
    port( A : in    std_logic := 'U';
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

    signal \MSS_HPMS_READY_int\, \mss_ready_select\, VCC_net_1, 
        \POWER_ON_RESET_N_clk_base\, 
        \un6_fic_2_apb_m_preset_n_clk_base\, GND_net_1, 
        \mss_ready_state\, \RESET_N_M2F_clk_base\, 
        \MSS_HPMS_READY_int_3\, \POWER_ON_RESET_N_q1\, 
        \RESET_N_M2F_q1\, \FIC_2_APB_M_PRESET_N_q1\, 
        \FIC_2_APB_M_PRESET_N_clk_base\ : std_logic;

begin 


    RESET_N_M2F_clk_base : SLE
      port map(D => \RESET_N_M2F_q1\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \RESET_N_M2F_clk_base\);
    
    POWER_ON_RESET_N_clk_base : SLE
      port map(D => \POWER_ON_RESET_N_q1\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => POWER_ON_RESET_N, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \POWER_ON_RESET_N_clk_base\);
    
    mss_ready_select : SLE
      port map(D => VCC_net_1, CLK => FAB_CCC_GL0, EN => 
        \un6_fic_2_apb_m_preset_n_clk_base\, ALn => 
        \POWER_ON_RESET_N_clk_base\, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \mss_ready_select\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    mss_ready_state : SLE
      port map(D => VCC_net_1, CLK => FAB_CCC_GL0, EN => 
        \RESET_N_M2F_clk_base\, ALn => 
        \POWER_ON_RESET_N_clk_base\, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \mss_ready_state\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    un6_fic_2_apb_m_preset_n_clk_base : CFG2
      generic map(INIT => x"8")

      port map(A => \FIC_2_APB_M_PRESET_N_clk_base\, B => 
        \mss_ready_state\, Y => 
        \un6_fic_2_apb_m_preset_n_clk_base\);
    
    RESET_N_M2F_q1 : SLE
      port map(D => VCC_net_1, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \RESET_N_M2F_q1\);
    
    MSS_HPMS_READY_int_RNINJS6 : CLKINT
      port map(A => \MSS_HPMS_READY_int\, Y => MSS_READY);
    
    FIC_2_APB_M_PRESET_N_clk_base : SLE
      port map(D => \FIC_2_APB_M_PRESET_N_q1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \FIC_2_APB_M_PRESET_N_clk_base\);
    
    POWER_ON_RESET_N_q1 : SLE
      port map(D => VCC_net_1, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => POWER_ON_RESET_N, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \POWER_ON_RESET_N_q1\);
    
    FIC_2_APB_M_PRESET_N_q1 : SLE
      port map(D => VCC_net_1, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \FIC_2_APB_M_PRESET_N_q1\);
    
    MSS_HPMS_READY_int_3 : CFG3
      generic map(INIT => x"E0")

      port map(A => \RESET_N_M2F_clk_base\, B => 
        \mss_ready_select\, C => \FIC_2_APB_M_PRESET_N_clk_base\, 
        Y => \MSS_HPMS_READY_int_3\);
    
    MSS_HPMS_READY_int : SLE
      port map(D => \MSS_HPMS_READY_int_3\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => \POWER_ON_RESET_N_clk_base\, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \MSS_HPMS_READY_int\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2CREAL is

    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(3 downto 2);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          N_902                                       : in    std_logic;
          N_431_i                                     : in    std_logic;
          N_428                                       : in    std_logic
        );

end COREI2CREAL;

architecture DEF_ARCH of COREI2CREAL is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \COREI2C_0_0_SDAO[0]\, \COREI2C_0_0_SCLO[0]\, 
        \fsmdet[3]_net_1\, \fsmdet_i_0[3]\, \SCLInt\, SCLInt_i_0, 
        \adrcomp_2_sqmuxa_i_o2_0\, N_342_i_0, \fsmsta[0]_net_1\, 
        GND_net_1, \fsmsta_8_0_iv_i_0[0]\, 
        un1_ens1_pre_1_sqmuxa_i_0, VCC_net_1, \fsmsta[1]_net_1\, 
        \fsmsta_8[1]\, \fsmsta[2]_net_1\, FSMSTA_N_13_mux_i_0, 
        \fsmsta[3]_net_1\, \fsmsta_8_0_iv_i_0[3]\, 
        \fsmsta[4]_net_1\, \fsmsta_8[4]\, \ack\, ack_7, 
        \sercon_6\, N_115_i_0, N_64, \serdat[0]_net_1\, N_670, 
        \un1_serdat_2_sqmuxa_0_0\, \serdat[1]_net_1\, 
        \serdat_9_i_m3_i_m2[1]\, \serdat[2]_net_1\, N_668, 
        \serdat[3]_net_1\, \serdat_9_i_m3[3]\, \serdat[4]_net_1\, 
        N_669, \serdat[5]_net_1\, N_446, \serdat[6]_net_1\, N_445, 
        \serdat[7]_net_1\, N_444, \bsd7\, N_248_i_0, \bsd7_tmp\, 
        bsd7_tmp_6, \adrcomp\, \adrcomp_2_sqmuxa_i_0\, \ack_bit\, 
        \ack_bit_1_sqmuxa\, \PCLKint\, PCLKint_3, N_41, \busfree\, 
        un105_fsmdet, \adrcompen\, N_196_i_0, 
        \adrcompen_2_sqmuxa_i_0_0\, \SCLSCL\, \fsmmod[1]_net_1\, 
        SCLSCL_1_sqmuxa_i_0, \SDAInt\, \SDAI_ff_reg[0]_net_1\, 
        \un1_rtn_4_0_0\, \SCLI_ff_reg[0]_net_1\, \un1_rtn_3_0\, 
        \nedetect\, nedetect_0_sqmuxa, rtn_1_i_0, \pedetect\, 
        pedetect_0_sqmuxa, N_380_i_0, \starto_en\, N_188_i_0, 
        \starto_en_1_sqmuxa_0_a2_i\, \SCLI_ff_reg[2]_net_1\, 
        \SCLI_ff_reg_3[2]\, \SDAI_ff_reg_4[0]\, 
        \SDAI_ff_reg[1]_net_1\, N_427_i_0, \SDAI_ff_reg[2]_net_1\, 
        N_426_i_0, \indelay[1]_net_1\, \indelay_4_i_i[1]\, 
        \indelay[2]_net_1\, N_47_i_0, \indelay[3]_net_1\, 
        N_344_i_0, \PCLK_count2[0]_net_1\, N_348_i_0, 
        \PCLK_count2[1]_net_1\, N_347_i_0, \SCLI_ff_reg_3[0]\, 
        \SCLI_ff_reg[1]_net_1\, \SCLI_ff_reg_3[1]\, N_555_i_0, 
        \sercon_2\, \COREI2C_0_0_INT[0]\, \sercon_9[3]\, 
        \sercon_4\, \sercon_9[4]\, \sercon_5\, \indelay[0]_net_1\, 
        N_346_i_0, \sersta_32[4]\, \framesync[0]_net_1\, N_86_i_0, 
        \framesync[1]_net_1\, \framesync_7[1]\, 
        \framesync[2]_net_1\, \framesync_7[2]\, 
        \framesync[3]_net_1\, N_82_i_0, \PCLK_count1[0]_net_1\, 
        N_588_i_0, \PCLK_count1[1]_net_1\, N_589_i_0, 
        \PCLK_count1[2]_net_1\, N_276_i_0, \PCLK_count1[3]_net_1\, 
        N_590_i_0, N_586_i_0, \sersta_32[1]\, \sersta_32[2]\, 
        \sersta_32[3]\, \fsmsync[5]_net_1\, N_952_i_0, 
        \fsmsync[4]_net_1\, N_954_i_0, \fsmsync[3]_net_1\, 
        N_956_i_0, \fsmsync[2]_net_1\, N_958_i_0, 
        \fsmsync[1]_net_1\, N_379_i_0, \fsmdet[6]_net_1\, 
        \fsmdet[5]_net_1\, N_916_i_0, \fsmdet[4]_net_1\, 
        N_918_i_0, N_920_i_0, \fsmdet[2]_net_1\, N_922_i_0, 
        \fsmdet[1]_net_1\, N_924_i_0, \fsmdet[0]_net_1\, 
        N_926_i_0, \fsmmod[6]_net_1\, \fsmmod_ns[0]\, 
        \fsmmod[5]_net_1\, N_406_i_0, \fsmmod[4]_net_1\, 
        N_1011_i_0, \fsmmod[3]_net_1\, N_587_i_0, 
        \fsmmod[2]_net_1\, N_1014_i_0, N_591_i_0, 
        \fsmmod[0]_net_1\, N_1017_i_0, \fsmsync[7]_net_1\, 
        \fsmsync_ns[0]\, \fsmsync[6]_net_1\, N_950_i_0, 
        un149_ens1_i_0, \PCLK_count1_ov\, N_349_i_0, \PCLKint_ff\, 
        PCLKint_ff_2, \PCLK_count2_ov\, N_29_i_0, N_611, N_600, 
        N_623, N_181, N_598, N_342_2, N_787, N_646, N_361, N_887, 
        \fsmsta_cnst_i_0_0_a2_1_0[0]_net_1\, N_157_i, 
        m50_i_0_a4_0_1, un53_fsmdet, N_6, N_9, 
        \fsmsta_nxt_cnst_i_m_i_a2_3_0[3]\, m50_i_0_o4_1, 
        un44_fsmsta, N_4, N_77, N_69, \fsmsta_8_0_iv_i_RNO_7[3]\, 
        N_154_i, FSMSTA_m3_0_a2_1, m50_i_0_a4_4_1, m50_i_0_a4_4, 
        N_302, N_215, un20_sdao_int_m, \fsmsta_8_0_iv_1[3]\, 
        bsd7_0_ss0, ack_7_u_xx_mm_1, N_594, 
        \un1_serdat_2_sqmuxa_1_i_3\, N_708, N_954_i_1, 
        \fsmsync_ns_i_0_0_0[3]_net_1\, N_618, N_619, N_341, 
        \sersta_32_0_1[3]\, N_300, \sersta_32_0_1[1]\, 
        \sercon_8_0_2_1[3]\, N_505, \sercon_8_0_2[3]\, N_609_i, 
        \adrcomp_2_sqmuxa_i_o2_1_0_1\, N_614, 
        \adrcomp_2_sqmuxa_i_o2_1_0\, N_123_i, 
        \SDAO_int_1_sqmuxa_i_0_0_5_1\, 
        \SDAO_int_1_sqmuxa_i_0_0_5\, \fsmsta_8_1_iv_0[4]\, N_117, 
        \fsmsta_8_1_iv_1_0[4]\, bsd7_8_m_i_a2_2_2, N_325_1, 
        \un1_serdat_2_sqmuxa_1_i_a2_0\, N_731, 
        \un1_serdat_2_sqmuxa_1_i_1\, SDAO_int_7_0_340_i_a2_0_0, 
        un105_ens1_0_o2_0_0, N_687, N_600_i, N_641, N_549, N_882, 
        N_74_i, N_1020_1, N_454, N_612, N_88_i, N_742_2, N_337, 
        N_298_3, \fsmsta_nxt_9[0]\, N_548, un2_fsmsta_5_s4_i_1, 
        \un1_serdat_2_sqmuxa_0_0_a2_1\, SDAO_int_m_0_0, 
        \serDAT_m2_e_0_0\, \SDAO_int_1_sqmuxa_i_0_0_2\, 
        SDAO_int_7_0_340_i_a2_2_1, \adrcomp_2_sqmuxa_i_a2_5\, 
        \adrcomp_2_sqmuxa_i_a2_4\, adrcomp_2_sqmuxa_i_a2_3, 
        \fsmsta_nxt_cnst_m_i_a2_0[1]\, 
        \framesync_7_enl_i_0_a2_0_0[3]\, 
        \fsmsta_cnst_i_0_0_a2_0[0]\, \PCLK_count1_10_i_o2_1[0]\, 
        un2_m7_0_a2_2, un2_m7_0_a2_1, un149_ens1_0_a2_1_1, 
        un149_ens1_0_a2_0_0, \fsmmod_ns_i_0_0_a2_3_0[2]_net_1\, 
        \fsmsync_ns_i_0_0_a2_0_0[3]_net_1\, 
        \fsmsta_cnst_i_0_o2_2[0]_net_1\, \sersta_32_i_a2_2_0[0]\, 
        \adrcomp_2_sqmuxa_i_a2_2_0\, 
        \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\, 
        \adrcomp_2_sqmuxa_i_a2_1_1\, N_602, N_205, N_700, N_234, 
        N_141, un133_fsmsta_i_i_o2_1_i_o2_0, 
        \un1_ens1_pre_1_sqmuxa_0_a2_1_0\, N_657, N_648, N_795, 
        N_794, N_748, N_149, N_554, N_469, N_297, N_851_1, N_162, 
        N_315, N_569, N_847, N_885, N_550, N_841, N_596, N_551, 
        N_636, bsd7_8_m_i_a2_1_0_0, N_665, \sercon_9_0_0_a2_1[4]\, 
        \fsmmod_ns_0_i_0[3]_net_1\, 
        \fsmsta_nxt_cnst_0_0_0_0[4]_net_1\, 
        \fsmmod_ns_i_0_0_0[2]_net_1\, \SDAO_int_1_sqmuxa_i_0_0_4\, 
        \framesync_7_enl_i_0_a2_1_1[3]\, 
        \framesync_7_enl_i_0_a2_0_0[0]\, 
        \PCLK_count1_10_i_o2_3[0]\, 
        \fsmmod_ns_i_0_0_a2_1_1[2]_net_1\, un54_fsmdet_i_0, N_312, 
        N_155, N_326, N_325, N_274, un7_fsmsta, N_329, N_227, 
        N_780, N_630, un1_fsmsta, 
        \un1_ens1_pre_1_sqmuxa_0_a2_0_0\, N_671, N_484, N_160, 
        N_783, i4_mux_5, N_150, N_838, N_307, N_440, 
        \sercon_9_0_0_a2_2[4]\, \fsmsta_nxt_60_i_m_0_a2_1[3]\, 
        serDAT_m2_e_1_2, \adrcomp_2_sqmuxa_i_o2_0_1\, 
        \adrcomp_2_sqmuxa_i_o2_0_0\, 
        \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\, 
        \fsmsta_nxt_cnst_0_0_0_1[4]_net_1\, 
        SDAO_int_7_0_340_i_a2_1_2, \fsmsta_8_0_iv_5_a0_2_0[0]\, 
        \sersta_32_i_0[0]\, \adrcomp_2_sqmuxa_i_a2_8\, 
        \fsmsta_8_0_iv_5_a2_1_0[0]\, \fsmmod_ns_i_0_0_a2_1[2]\, 
        \sersta_32_0_1[2]\, N_740, N_582, serDAT_N_5_mux_1, 
        \fsmsta_8_0_iv_5_a3_0[0]\, \fsmsta_8_0_iv_i_RNO_9[3]\, 
        N_617, \sersta_32_i_1_tz[0]\, N_736_tz, N_570, N_230, 
        N_564, N_689, N_174, N_850, N_805_2, 
        \fsmsta_nxt_cnst_m_i_1[1]\, 
        fsmsta_8_0_iv_0_312_i_i_a2_3_1, 
        fsmsta_8_0_iv_0_0_312_i_i_8_s_0, 
        fsmsta_8_0_iv_0_312_i_i_a2_6_0, 
        fsmsta_8_0_iv_0_312_i_i_a2_0_0, 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\, 
        \fsmsta_nxt_cnst_0_0_0_2[4]_net_1\, \sercon_8_0_1[3]\, 
        N_749_tz, N_805, N_813, N_247, N_817, N_791, N_224, N_679, 
        \fsmsta_8_0_iv_5_a2_1[0]\, \fsmsta_8_0_iv_5_a1_2[0]\, 
        fsmsta_8_0_iv_0_0_312_i_i_8_out_tz, N_674, 
        \framesync_RNO_0[0]_net_1\, N_683, N_682, N_681, N_680, 
        N_566, N_452, N_225, N_226, N_704, N_652, N_555, N_137, 
        N_235, N_804, N_860, serDAT_m5_0, bsd7_0_m0, N_231, N_233, 
        N_261, N_220, \ack_bit_1_sqmuxa_1\, 
        fsmsta_8_0_iv_0_312_i_i_a2_2_1, \fsmsta_cnst_m_i_0_0[1]\, 
        \fsmsync_ns_0_0_0_1[0]_net_1\, \fsmsta_8_0_iv_5_a0_2[0]\, 
        N_313, \fsmsta_nxt_cnst_i_m_i_o2_0[3]\, 
        \fsmsta_8_1_iv_3_a2_1_0[4]\, N_295, N_139, N_626, N_244_2, 
        \fsmsta_8_0_iv_1[0]\, \ack_bit_1_sqmuxa_2\, 
        SDAO_int_7_0_340_i_2, \fsmsta_nxt_cnst_m_0[4]\, 
        SDAO_int_m, N_1079, N_796, N_818, serDAT_N_10_mux, 
        \fsmsta_8_1_iv_1_tz[4]\, un2_fsmsta_8_s1, un2_fsmsta_9_s2, 
        bsd7_8_m_i_1_tz, bsd7_tmp_6_sm0, \fsmsta_8_0_iv_0[3]\, 
        \fsmsta_8_0_iv_2[0]\, FSMSTA_m6_0_a2_2, FSMSTA_m6_0_a2_1, 
        \fsmsta_nxt_cnst_m_i_4[1]\, \fsmsta_nxt_37_m[1]\, bsd7_81, 
        N_675, SDAInt_li_1_m, bsd7_8_m_i_0_tz, 
        \fsmsta_8_0_iv_2[1]\, \fsmsta_8_0_iv_2[3]\, 
        FSMSTA_m6_0_a2_3, \fsmsta_8_0_iv_3[0]\, 
        \fsmsta_8_0_iv_1[1]\ : std_logic;

begin 

    serdat(7) <= \serdat[7]_net_1\;
    serdat(6) <= \serdat[6]_net_1\;
    serdat(5) <= \serdat[5]_net_1\;
    serdat(4) <= \serdat[4]_net_1\;
    serdat(3) <= \serdat[3]_net_1\;
    serdat(2) <= \serdat[2]_net_1\;
    serdat(1) <= \serdat[1]_net_1\;
    serdat(0) <= \serdat[0]_net_1\;
    COREI2C_0_0_INT(0) <= \COREI2C_0_0_INT[0]\;
    sercon_6 <= \sercon_6\;
    sercon_2 <= \sercon_2\;
    sercon_4 <= \sercon_4\;
    sercon_5 <= \sercon_5\;

    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a2_1_0[0]\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \sercon_2\, B => \SDAInt\, C => un53_fsmdet, 
        Y => \fsmsta_8_0_iv_5_a2_1_0[0]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2_2_tz[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[6]_net_1\, Y
         => N_505);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3[3]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        serDAT_N_5_mux_1, C => \serdat[2]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \serdat_9_i_m3[3]\);
    
    \sercon[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_1);
    
    adrcomp_2_sqmuxa_i_a2_2_0 : CFG4
      generic map(INIT => x"8000")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[0]_net_1\, D => \COREI2C_0_0_INT[0]\, Y => 
        \adrcomp_2_sqmuxa_i_a2_2_0\);
    
    ack_RNO_0 : CFG4
      generic map(INIT => x"3353")

      port map(A => \SDAInt\, B => \ack\, C => N_594, D => 
        \un1_serdat_2_sqmuxa_1_i_3\, Y => ack_7_u_xx_mm_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0[3]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => \fsmsta_nxt_60_i_m_0_a2_1[3]\, B => N_674, C
         => N_297, D => N_9, Y => \fsmsta_8_0_iv_0[3]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_x2_0_o2[2]\ : CFG2
      generic map(INIT => x"9")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_569);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_0[3]\ : CFG4
      generic map(INIT => x"AABA")

      port map(A => N_9, B => \fsmsta_nxt_cnst_i_m_i_a2_3_0[3]\, 
        C => m50_i_0_o4_1, D => un44_fsmsta, Y => N_4);
    
    \fsmsync_ns_i_0_o2[4]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_646, B => \fsmsync[4]_net_1\, Y => N_671);
    
    \fsmdet[1]\ : SLE
      port map(D => N_924_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[1]_net_1\);
    
    un1_serdat_2_sqmuxa_1_i_a2_0 : CFG4
      generic map(INIT => x"4000")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_325_1, D => N_77, Y => N_731);
    
    \serSTA_WRITE_PROC.sersta_32[4]\ : CFG4
      generic map(INIT => x"73FB")

      port map(A => \fsmsta[3]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => i4_mux_5, D => N_300, Y => \sersta_32[4]\);
    
    SDAInt : SLE
      port map(D => \SDAI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_4_0_0\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SDAInt\);
    
    un1_ens1_pre_1_sqmuxa_0_a2_0_0_RNIIP9H1 : CFG4
      generic map(INIT => x"FFDC")

      port map(A => N_609_i, B => 
        \un1_ens1_pre_1_sqmuxa_0_a2_0_0\, C => 
        \COREI2C_0_0_INT[0]\, D => 
        \un1_ens1_pre_1_sqmuxa_0_a2_1_0\, Y => N_749_tz);
    
    starto_en : SLE
      port map(D => N_188_i_0, CLK => FAB_CCC_GL0, EN => 
        \starto_en_1_sqmuxa_0_a2_i\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \starto_en\);
    
    adrcomp_2_sqmuxa_i_o2_0_0 : CFG3
      generic map(INIT => x"CE")

      port map(A => \adrcomp_2_sqmuxa_i_a2_2_0\, B => N_329, C
         => N_69, Y => \adrcomp_2_sqmuxa_i_o2_0_0\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_0_RNO[4]\ : CFG3
      generic map(INIT => x"D1")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[3]_net_1\, C
         => N_611, Y => N_665);
    
    \fsmmod_ns_0_0_0_a2_2[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \pedetect\, B => \SCLSCL\, Y => N_882);
    
    \CLK_COUNTER1_PROC.PCLK_count1_ov_9_i_0_o2_0\ : CFG2
      generic map(INIT => x"7")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1[1]_net_1\, Y => N_549);
    
    \serdat[4]\ : SLE
      port map(D => N_669, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[4]_net_1\);
    
    \fsmsta_nxt_cnst_0_0_0_a2_1[4]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_700);
    
    \fsmsta[4]\ : SLE
      port map(D => \fsmsta_8[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[4]_net_1\);
    
    \SCLI_ff_reg[1]\ : SLE
      port map(D => \SCLI_ff_reg_3[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[1]_net_1\);
    
    pedetect : SLE
      port map(D => pedetect_0_sqmuxa, CLK => FAB_CCC_GL0, EN => 
        N_380_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \pedetect\);
    
    \fsmmod[4]\ : SLE
      port map(D => N_1011_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[4]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0_1[3]\ : CFG4
      generic map(INIT => x"55F7")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[1]_net_1\, 
        C => N_77, D => N_69, Y => \sersta_32_0_1[3]\);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3_i_m2[1]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(1), B => 
        serDAT_N_5_mux_1, C => \serdat[0]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \serdat_9_i_m3_i_m2[1]\);
    
    \fsmsync_ns_0_0_0[0]\ : CFG4
      generic map(INIT => x"FF80")

      port map(A => \fsmsync[7]_net_1\, B => \SCLInt\, C => N_570, 
        D => \fsmsync_ns_0_0_0_1[0]_net_1\, Y => \fsmsync_ns[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_i_o2[0]\ : CFG2
      generic map(INIT => x"9")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_469);
    
    \fsmsync_ns_i_i_i_a2_0[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmsync[1]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, Y => N_794);
    
    adrcomp_2_sqmuxa_i_a2_3_0 : CFG3
      generic map(INIT => x"40")

      port map(A => \framesync[3]_net_1\, B => \adrcompen\, C => 
        \sercon_2\, Y => adrcomp_2_sqmuxa_i_a2_3);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_6[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[1]_net_1\, B => N_614, C => 
        \fsmsta[2]_net_1\, Y => \fsmsta_nxt_cnst_m_i_a2_0[1]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_10[3]\ : CFG4
      generic map(INIT => x"C0C4")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => N_636, D => \fsmsta[1]_net_1\, Y => N_215);
    
    adrcomp_2_sqmuxa_i_o2_1 : CFG3
      generic map(INIT => x"CE")

      port map(A => N_315, B => \adrcomp_2_sqmuxa_i_o2_1_0\, C
         => \fsmsta[1]_net_1\, Y => N_247);
    
    un1_ens1_pre_1_sqmuxa_0_a2_1_0 : CFG3
      generic map(INIT => x"C8")

      port map(A => \framesync[2]_net_1\, B => 
        \framesync[3]_net_1\, C => \framesync[1]_net_1\, Y => 
        \un1_ens1_pre_1_sqmuxa_0_a2_1_0\);
    
    \serCON_WRITE_PROC.sercon_8_0_a2_1[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \sercon_6\, B => \adrcomp\, C => N_157_i, D
         => N_598, Y => N_274);
    
    ack : SLE
      port map(D => ack_7, CLK => FAB_CCC_GL0, EN => \sercon_6\, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \ack\);
    
    \fsmsta[3]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[3]_net_1\);
    
    SDAO_int_RNO_7 : CFG2
      generic map(INIT => x"1")

      port map(A => \framesync[3]_net_1\, B => \bsd7\, Y => 
        SDAO_int_7_0_340_i_a2_0_0);
    
    \fsmsta_RNIJVE8[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, Y => un2_fsmsta_5_s4_i_1);
    
    adrcomp_2_sqmuxa_i_a2_1_1 : CFG4
      generic map(INIT => x"0600")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[0]_net_1\, D => \COREI2C_0_0_INT[0]\, Y => 
        \adrcomp_2_sqmuxa_i_a2_1_1\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet_i_0\ : CFG4
      generic map(INIT => x"7333")

      port map(A => \PCLKint\, B => N_598, C => \PCLKint_ff\, D
         => \fsmmod[2]_net_1\, Y => un54_fsmdet_i_0);
    
    \serdat[2]\ : SLE
      port map(D => N_668, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[2]_net_1\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2_3[0]\ : CFG4
      generic map(INIT => x"5111")

      port map(A => \SCLInt\, B => N_687, C => 
        \COREI2C_0_0_SCLO[0]\, D => \fsmmod[2]_net_1\, Y => 
        \PCLK_count1_10_i_o2_3[0]\);
    
    \FSMSYNC_SYNC_PROC.un149_ens1_0_o2_0\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \fsmsync[6]_net_1\, D => \fsmsync[1]_net_1\, Y => 
        N_205);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_3_1_o2[4]\ : CFG2
      generic map(INIT => x"E")

      port map(A => un53_fsmdet, B => \ack\, Y => N_564);
    
    \serCON_WRITE_PROC.sercon_8_0_x2_i_x2[3]\ : CFG4
      generic map(INIT => x"5556")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[1]_net_1\, C => \framesync[2]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_609_i);
    
    \fsmmod_ns_i_0_0_0[2]\ : CFG3
      generic map(INIT => x"15")

      port map(A => \fsmmod[4]_net_1\, B => \nedetect\, C => 
        N_611, Y => \fsmmod_ns_i_0_0_0[2]_net_1\);
    
    \fsmmod_ns_0_i_0[3]\ : CFG4
      generic map(INIT => x"CECF")

      port map(A => \PCLKint\, B => N_748, C => \fsmmod[3]_net_1\, 
        D => \PCLKint_ff\, Y => \fsmmod_ns_0_i_0[3]_net_1\);
    
    \fsmsync_ns_i_0_0_a2[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmmod[2]_net_1\, B => N_887, C => 
        \fsmmod[3]_net_1\, Y => N_708);
    
    \fsmmod_RNO[1]\ : CFG4
      generic map(INIT => x"1131")

      port map(A => N_682, B => N_566, C => \fsmmod[1]_net_1\, D
         => N_882, Y => N_591_i_0);
    
    un1_serdat_2_sqmuxa_0_0_a2_1 : CFG4
      generic map(INIT => x"F0B0")

      port map(A => un133_fsmsta_i_i_o2_1_i_o2_0, B => 
        \fsmsta[3]_net_1\, C => N_440, D => N_841, Y => N_860);
    
    SDAO_int_RNO : CFG4
      generic map(INIT => x"0001")

      port map(A => N_234, B => N_230, C => N_233, D => 
        SDAO_int_7_0_340_i_2, Y => N_115_i_0);
    
    \PCLK_count1_RNO[2]\ : CFG4
      generic map(INIT => x"1320")

      port map(A => \PCLK_count1[0]_net_1\, B => N_361, C => 
        \PCLK_count1[1]_net_1\, D => \PCLK_count1[2]_net_1\, Y
         => N_276_i_0);
    
    \serCON_WRITE_PROC.sercon_8_0_o2[3]\ : CFG4
      generic map(INIT => x"888F")

      port map(A => N_611, B => \fsmdet[3]_net_1\, C => N_600, D
         => N_623, Y => N_181);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        Y => \SDAI_ff_reg_4[0]\);
    
    un1_pclkint4_i_0 : CFG2
      generic map(INIT => x"E")

      port map(A => N_361, B => \PCLK_count2_ov\, Y => N_41);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3_i_m2[4]\ : CFG4
      generic map(INIT => x"ACCC")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(4), B => 
        \serdat[3]_net_1\, C => serDAT_N_5_mux_1, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_669);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2[0]\ : CFG4
      generic map(INIT => x"EC4C")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => \ack\, C
         => serDAT_N_5_mux_1, D => 
        CoreAPB3_0_APBmslave0_PWDATA(0), Y => N_670);
    
    adrcomp_2_sqmuxa_i_o2_1_0 : CFG4
      generic map(INIT => x"0189")

      port map(A => \fsmsta[2]_net_1\, B => 
        \adrcomp_2_sqmuxa_i_o2_1_0_1\, C => N_614, D => N_69, Y
         => \adrcomp_2_sqmuxa_i_o2_1_0\);
    
    \indelay_RNO[0]\ : CFG4
      generic map(INIT => x"02AA")

      port map(A => \fsmsync[4]_net_1\, B => N_641, C => 
        \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        N_346_i_0);
    
    \fsmmod_ns_0_o3_i_o2_RNIKUEI3[3]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_9, B => N_554, C => N_674, Y => 
        un2_fsmsta_8_s1);
    
    \serCON_WRITE_PROC.sercon_9_0_0[4]\ : CFG4
      generic map(INIT => x"F4B0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        serDAT_N_5_mux_1, C => \sercon_9_0_0_a2_2[4]\, D => 
        CoreAPB3_0_APBmslave0_PWDATA(4), Y => \sercon_9[4]\);
    
    \serCON_WRITE_PROC.sercon_9[3]\ : CFG4
      generic map(INIT => x"EEF0")

      port map(A => \sercon_8_0_1[3]\, B => \sercon_8_0_2[3]\, C
         => CoreAPB3_0_APBmslave0_PWDATA(3), D => N_555, Y => 
        \sercon_9[3]\);
    
    \fsmmod[3]\ : SLE
      port map(D => N_587_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[3]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_2[3]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta_8_0_iv_i_RNO_7[3]\, B => N_154_i, C
         => FSMSTA_m3_0_a2_1, D => m50_i_0_a4_4_1, Y => 
        m50_i_0_a4_4);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3[7]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        serDAT_N_5_mux_1, C => \serdat[6]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_444);
    
    \serdat[7]\ : SLE
      port map(D => N_444, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[7]_net_1\);
    
    \fsmsta_nxt_cnst_i_0_a2_3_0_a2[0]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y => N_315);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_5[0]\ : CFG4
      generic map(INIT => x"0014")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_614, Y => N_850);
    
    \sercon[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_2\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_0[4]\ : CFG4
      generic map(INIT => x"0073")

      port map(A => \fsmdet[3]_net_1\, B => N_665, C => 
        \fsmsta_8_1_iv_1_tz[4]\, D => FSMSTA_m3_0_a2_1, Y => 
        \fsmsta_8_1_iv_0[4]\);
    
    \FSMSYNC_SYNC_PROC.un149_ens1_0_a2_1\ : CFG2
      generic map(INIT => x"8")

      port map(A => un149_ens1_0_a2_1_1, B => N_341, Y => N_326);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_0[3]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \framesync_7_enl_i_0_a2_0_0[3]\, B => N_805_2, 
        C => N_598, Y => N_805);
    
    adrcomp_2_sqmuxa_i_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => \adrcomp_2_sqmuxa_i_a2_1_1\, B => N_614, Y
         => N_329);
    
    un1_serdat_2_sqmuxa_0_0_o2 : CFG4
      generic map(INIT => x"4F5F")

      port map(A => un7_fsmsta, B => N_860, C => 
        \COREI2C_0_0_INT[0]\, D => N_602, Y => N_675);
    
    \fsmmod_RNO[5]\ : CFG4
      generic map(INIT => x"040F")

      port map(A => \nedetect\, B => \fsmmod[5]_net_1\, C => 
        N_566, D => N_681, Y => N_406_i_0);
    
    \serCON_WRITE_PROC.sercon_8_0_2_1[3]\ : CFG4
      generic map(INIT => x"51F3")

      port map(A => N_598, B => \pedetect\, C => N_9, D => 
        N_609_i, Y => \sercon_8_0_2_1[3]\);
    
    \fsmsta_nxt_cnst_i_0_0_0[0]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\, B
         => N_69, C => N_315, Y => 
        \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\);
    
    adrcomp_2_sqmuxa_i_0 : CFG4
      generic map(INIT => x"FAF8")

      port map(A => \adrcomp_2_sqmuxa_i_a2_8\, B => N_505, C => 
        \adrcomp_2_sqmuxa_i_o2_0\, D => un1_fsmsta, Y => 
        \adrcomp_2_sqmuxa_i_0\);
    
    un1_serdat_2_sqmuxa_0_0_a2_1_0 : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmdet[3]_net_1\, B => \sercon_6\, C => 
        \pedetect\, Y => \un1_serdat_2_sqmuxa_0_0_a2_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2[0]\ : CFG4
      generic map(INIT => x"B000")

      port map(A => N_838, B => N_612, C => N_626, D => N_847, Y
         => N_796);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_4[1]\ : CFG4
      generic map(INIT => x"5070")

      port map(A => N_548, B => \framesync[0]_net_1\, C => 
        \fsmsta_nxt_cnst_m_i_a2_0[1]\, D => N_596, Y => N_224);
    
    \fsmsta_cnst_i_0_o2_2[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[6]_net_1\, B => \serdat[2]_net_1\, C
         => \serdat[1]_net_1\, D => \ack\, Y => 
        \fsmsta_cnst_i_0_o2_2[0]_net_1\);
    
    \sersta_RNO[0]\ : CFG4
      generic map(INIT => x"0111")

      port map(A => N_740, B => \sersta_32_i_0[0]\, C => N_469, D
         => \sersta_32_i_1_tz[0]\, Y => N_586_i_0);
    
    SCLSCL : SLE
      port map(D => \fsmmod[1]_net_1\, CLK => FAB_CCC_GL0, EN => 
        SCLSCL_1_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLSCL\);
    
    un1_ens1_pre_1_sqmuxa_0_a2_0_0 : CFG3
      generic map(INIT => x"10")

      port map(A => N_157_i, B => \adrcomp\, C => N_505, Y => 
        \un1_ens1_pre_1_sqmuxa_0_a2_0_0\);
    
    busfree_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \fsmdet[3]_net_1\, Y => \fsmdet_i_0[3]\);
    
    \SCLI_ff_reg[0]\ : SLE
      port map(D => \SCLI_ff_reg_3[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[0]_net_1\);
    
    un1_serdat_2_sqmuxa_1_i_3 : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \un1_serdat_2_sqmuxa_1_i_1\, B => N_244_2, C
         => \COREI2C_0_0_INT[0]\, D => un7_fsmsta, Y => 
        \un1_serdat_2_sqmuxa_1_i_3\);
    
    \fsmsync_RNO[6]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \SCLInt\, B => N_708, C => \fsmsync[7]_net_1\, 
        Y => N_950_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_5[3]\ : CFG4
      generic map(INIT => x"31F5")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_77, D => N_69, Y => m50_i_0_o4_1);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3[5]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(5), B => 
        serDAT_N_5_mux_1, C => \serdat[4]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_446);
    
    \indelay_RNO[2]\ : CFG3
      generic map(INIT => x"28")

      port map(A => \fsmsync[4]_net_1\, B => N_74_i, C => 
        \indelay[2]_net_1\, Y => N_47_i_0);
    
    \fsmmod_ns_0_0_i_o2_2[1]\ : CFG3
      generic map(INIT => x"FB")

      port map(A => N_551, B => \starto_en\, C => N_600, Y => 
        N_630);
    
    adrcomp_2_sqmuxa_i_a2_4 : CFG4
      generic map(INIT => x"2000")

      port map(A => \serdat[6]_net_1\, B => \serdat[2]_net_1\, C
         => \serdat[1]_net_1\, D => \nedetect\, Y => 
        \adrcomp_2_sqmuxa_i_a2_4\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a2_1[0]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_141, B => \fsmsta[3]_net_1\, C => 
        \fsmsta_8_0_iv_5_a2_1_0[0]\, D => N_9, Y => 
        \fsmsta_8_0_iv_5_a2_1[0]\);
    
    \fsmsta_RNIK0F8[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[3]_net_1\, Y => N_297);
    
    un7_fsmsta_0_x2 : CFG2
      generic map(INIT => x"6")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_88_i);
    
    \fsmsta_nxt_cnst_0_0_a2_4_i_o2_RNII7MB[4]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_614, Y => N_312);
    
    \FSMSTA_SYNC_PROC.un133_framesync_0_a2\ : CFG4
      generic map(INIT => x"0008")

      port map(A => N_123_i, B => \pedetect\, C => un1_fsmsta, D
         => N_9, Y => FSMSTA_m3_0_a2_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[1]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => N_226, B => \fsmsta_nxt_cnst_m_i_1[1]\, C => 
        N_225, D => N_224, Y => \fsmsta_nxt_cnst_m_i_4[1]\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m26\ : CFG3
      generic map(INIT => x"D0")

      port map(A => \fsmsta[1]_net_1\, B => N_77, C => 
        \fsmsta[4]_net_1\, Y => i4_mux_5);
    
    SDAO_int_RNIVKBB : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SDAO[0]\, Y => 
        COREI2C_0_0_SDAO_i(0));
    
    SCLO_int_RNO : CFG4
      generic map(INIT => x"0007")

      port map(A => N_205, B => \sercon_6\, C => N_325, D => 
        N_326, Y => un149_ens1_i_0);
    
    \fsmsta_RNO_4[2]\ : CFG4
      generic map(INIT => x"888C")

      port map(A => N_150, B => N_9, C => N_548, D => N_1020_1, Y
         => fsmsta_8_0_iv_0_312_i_i_a2_0_0);
    
    \fsmmod_RNO[3]\ : CFG4
      generic map(INIT => x"0013")

      port map(A => N_484, B => \fsmmod_ns_0_i_0[3]_net_1\, C => 
        N_679, D => N_566, Y => N_587_i_0);
    
    \PCLK_count2[0]\ : SLE
      port map(D => N_348_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[0]_net_1\);
    
    \sersta[0]\ : SLE
      port map(D => N_586_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(0));
    
    \serDAT_WRITE_PROC.bsd7_8_m_i_a2_1_0_0\ : CFG4
      generic map(INIT => x"0305")

      port map(A => \bsd7\, B => \serdat[7]_net_1\, C => 
        \COREI2C_0_0_INT[0]\, D => \nedetect\, Y => 
        bsd7_8_m_i_a2_1_0_0);
    
    \PCLK_count1[3]\ : SLE
      port map(D => N_590_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[3]_net_1\);
    
    \indelay[2]\ : SLE
      port map(D => N_47_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \indelay[2]_net_1\);
    
    \fsmsync[2]\ : SLE
      port map(D => N_958_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_1[1]\ : CFG4
      generic map(INIT => x"1110")

      port map(A => N_596, B => \framesync[0]_net_1\, C => 
        un44_fsmsta, D => N_297, Y => N_226);
    
    un1_serdat_2_sqmuxa_1_i_a2_0_2 : CFG4
      generic map(INIT => x"1101")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => 
        \un1_serdat_2_sqmuxa_1_i_a2_0\);
    
    \fsmdet_RNO[5]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[5]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_916_i_0);
    
    \fsmsta_RNO_11[2]\ : CFG3
      generic map(INIT => x"F1")

      port map(A => N_123_i, B => un44_fsmsta, C => \ack\, Y => 
        N_137);
    
    \framesync[3]\ : SLE
      port map(D => N_82_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[3]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3_i_m2[2]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(2), B => 
        serDAT_N_5_mux_1, C => \serdat[1]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_668);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_o2[0]\ : CFG3
      generic map(INIT => x"FB")

      port map(A => \framesync[2]_net_1\, B => 
        \framesync[3]_net_1\, C => \framesync[1]_net_1\, Y => 
        N_596);
    
    \indelay_RNO[3]\ : CFG4
      generic map(INIT => x"28A0")

      port map(A => \fsmsync[4]_net_1\, B => N_74_i, C => 
        \indelay[3]_net_1\, D => \indelay[2]_net_1\, Y => 
        N_344_i_0);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        Y => \SCLI_ff_reg_3[0]\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet_i\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_611, B => un54_fsmdet_i_0, C => 
        \fsmdet[3]_net_1\, Y => N_582);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_0_0\ : CFG3
      generic map(INIT => x"BF")

      port map(A => N_342_2, B => \sercon_6\, C => N_648, Y => 
        un105_fsmdet);
    
    \fsmmod_ns_i_0_0_o2_1[2]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \fsmmod_ns_i_0_0_a2_3_0[2]_net_1\, B => N_554, 
        C => \sercon_4\, Y => N_689);
    
    adrcomp_2_sqmuxa_i_o2_0_1 : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \fsmsta[0]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_342_2, D => N_851_1, Y => 
        \adrcomp_2_sqmuxa_i_o2_0_1\);
    
    \serSTA_WRITE_PROC.sersta_32_i_a2_2_0[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[1]_net_1\, 
        C => \fsmsta[4]_net_1\, Y => \sersta_32_i_a2_2_0[0]\);
    
    \SDAO_INT_WRITE_PROC.un30_fsmsta_i_0_o2_i_a2_i_0_o2\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[1]_net_1\, C => \framesync[2]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_9);
    
    SDAO_int_1_sqmuxa_i_0_0_2 : CFG3
      generic map(INIT => x"ED")

      port map(A => \framesync[0]_net_1\, B => N_611, C => 
        \framesync[3]_net_1\, Y => \SDAO_int_1_sqmuxa_i_0_0_2\);
    
    PCLK_count1_ov : SLE
      port map(D => N_349_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1_ov\);
    
    \serSTA_WRITE_PROC.sersta_32_i_0[0]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \sersta_32_i_a2_2_0[0]\, B => N_77, C => 
        N_329, Y => \sersta_32_i_0[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_o2[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_69);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[3]\ : CFG4
      generic map(INIT => x"AEEE")

      port map(A => \fsmsta_8_0_iv_0[3]\, B => un2_fsmsta_8_s1, C
         => \ack\, D => \SDAInt\, Y => \fsmsta_8_0_iv_2[3]\);
    
    \indelay[1]\ : SLE
      port map(D => \indelay_4_i_i[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[1]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_3_1_a2[4]\ : CFG4
      generic map(INIT => x"7400")

      port map(A => N_611, B => \fsmdet[3]_net_1\, C => 
        FSMSTA_m3_0_a2_1, D => N_564, Y => N_818);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \framesync[0]_net_1\, B => \nedetect\, Y => 
        N_612);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0[2]\ : CFG4
      generic map(INIT => x"EDCC")

      port map(A => \framesync[2]_net_1\, B => \fsmdet[3]_net_1\, 
        C => N_550, D => N_885, Y => \framesync_7[2]\);
    
    \serdat[0]\ : SLE
      port map(D => N_670, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[0]_net_1\);
    
    \FSMSYNC_SYNC_PROC.un149_ens1_0_a2_0\ : CFG4
      generic map(INIT => x"C8CC")

      port map(A => N_337, B => un149_ens1_0_a2_0_0, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => N_325);
    
    \fsmsta_nxt_9_0_a2_0_a2[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \SDAInt\, B => \ack\, Y => \fsmsta_nxt_9[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_0[1]\ : CFG4
      generic map(INIT => x"BBB7")

      port map(A => \fsmsta[0]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => \sersta_32_0_1[1]\, D => N_69, Y => \sersta_32[1]\);
    
    un1_serdat_2_sqmuxa_1_i_a2_0_1 : CFG2
      generic map(INIT => x"8")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[3]_net_1\, 
        Y => N_325_1);
    
    \framesync_RNO[3]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => N_804, B => \framesync_7_enl_i_0_a2_1_1[3]\, 
        C => N_626, D => N_805, Y => N_82_i_0);
    
    \framesync[2]\ : SLE
      port map(D => \framesync_7[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[2]_net_1\);
    
    ack_bit_1_sqmuxa_1 : CFG4
      generic map(INIT => x"8808")

      port map(A => \sercon_6\, B => \COREI2C_0_0_INT[0]\, C => 
        N_617, D => un7_fsmsta, Y => \ack_bit_1_sqmuxa_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0_1[1]\ : CFG3
      generic map(INIT => x"54")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => \sersta_32_0_1[1]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \fsmmod_ns_0_0_i_o2_0[5]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \SDAInt\, B => N_630, C => \fsmmod[6]_net_1\, 
        Y => N_682);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_1_RNO_0[4]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_440, B => N_602, C => N_9, Y => N_220);
    
    adrcomp_2_sqmuxa_i_o2_1_0_1 : CFG3
      generic map(INIT => x"17")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => \adrcomp_2_sqmuxa_i_o2_1_0_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_i_0_tz\ : CFG4
      generic map(INIT => x"AAAB")

      port map(A => bsd7_8_m_i_a2_2_2, B => \bsd7_tmp\, C => 
        bsd7_0_ss0, D => N_454, Y => bsd7_8_m_i_0_tz);
    
    \fsmsta_RNO_2[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \ack\, B => \fsmsta[4]_net_1\, C => N_617, Y
         => fsmsta_8_0_iv_0_312_i_i_a2_3_1);
    
    SDAO_int_RNO_2 : CFG4
      generic map(INIT => x"1000")

      port map(A => N_160, B => N_440, C => 
        SDAO_int_7_0_340_i_a2_2_1, D => N_602, Y => N_233);
    
    SDAO_int_RNO_5 : CFG4
      generic map(INIT => x"0002")

      port map(A => \ack_bit\, B => \framesync[3]_net_1\, C => 
        N_149, D => N_160, Y => SDAO_int_7_0_340_i_a2_1_2);
    
    \serDAT_WRITE_PROC.un105_ens1_0_o2_0_0\ : CFG2
      generic map(INIT => x"7")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => un105_ens1_0_o2_0_0);
    
    \sersta[1]\ : SLE
      port map(D => \sersta_32[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(1));
    
    \fsmdet[4]\ : SLE
      port map(D => N_918_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[4]_net_1\);
    
    \fsmsync[7]\ : SLE
      port map(D => \fsmsync_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[7]_net_1\);
    
    \indelay[0]\ : SLE
      port map(D => N_346_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[0]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0[2]\ : CFG4
      generic map(INIT => x"F8F4")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \sersta_32_0_1[2]\, D => N_569, Y => \sersta_32[2]\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        serDAT_N_5_mux_1, C => \fsmdet[3]_net_1\, D => N_261, Y
         => bsd7_tmp_6_sm0);
    
    \fsmdet[0]\ : SLE
      port map(D => N_926_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[0]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \SDAInt\, B => N_297, C => N_9, D => N_674, Y
         => SDAInt_li_1_m);
    
    \sercon[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_7);
    
    \INDELAY_WRITE_PROC.indelay_4_i_o2_i_a2[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \indelay[0]_net_1\, B => \indelay[1]_net_1\, 
        Y => N_74_i);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_6[3]\ : CFG4
      generic map(INIT => x"0A88")

      port map(A => \adrcomp\, B => \fsmdet[1]_net_1\, C => N_611, 
        D => \fsmdet[3]_net_1\, Y => m50_i_0_a4_0_1);
    
    \fsmmod_ns_i_0_0_x2[6]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => N_600_i);
    
    \fsmsync_ns_i_i_i_a2_1[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \SDAInt\, Y => N_795);
    
    \fsmsta_RNO_6[2]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_617, B => un44_fsmsta, Y => 
        fsmsta_8_0_iv_0_0_312_i_i_8_s_0);
    
    \fsmmod_ns_i_0_0_o2[4]\ : CFG4
      generic map(INIT => x"FFF7")

      port map(A => \fsmmod[4]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, D => N_619, Y => N_680);
    
    ack_bit : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \ack_bit_1_sqmuxa\, ALn => MSS_READY, 
        ADn => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \ack_bit\);
    
    \fsmsta[2]\ : SLE
      port map(D => FSMSTA_N_13_mux_i_0, CLK => FAB_CCC_GL0, EN
         => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[2]_net_1\);
    
    \fsmdet[2]\ : SLE
      port map(D => N_922_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[2]_net_1\);
    
    \fsmdet_RNO[2]\ : CFG4
      generic map(INIT => x"88C8")

      port map(A => \fsmdet[3]_net_1\, B => \SCLInt\, C => 
        \fsmdet[2]_net_1\, D => \SDAInt\, Y => N_922_i_0);
    
    \framesync[1]\ : SLE
      port map(D => \framesync_7[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[1]_net_1\);
    
    \fsmsta_nxt_cnst_0_0_0_2[4]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => N_9, B => \fsmsta_nxt_cnst_0_0_0_1[4]_net_1\, 
        C => \fsmsta[4]_net_1\, D => N_636, Y => 
        \fsmsta_nxt_cnst_0_0_0_2[4]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO_0\ : CFG4
      generic map(INIT => x"0400")

      port map(A => un105_ens1_0_o2_0_0, B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => N_902, D => N_431_i, 
        Y => serDAT_m2_e_1_2);
    
    bsd7_RNO_0 : CFG4
      generic map(INIT => x"44F0")

      port map(A => bsd7_0_ss0, B => \bsd7\, C => bsd7_0_m0, D
         => N_244_2, Y => bsd7_81);
    
    \sercon[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_0);
    
    \fsmsync[1]\ : SLE
      port map(D => N_379_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[1]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_0[1]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[3]_net_1\, B => SDAO_int_m_0_0, C => 
        N_841, D => N_139, Y => SDAO_int_m);
    
    \fsmsta_RNO_7[2]\ : CFG4
      generic map(INIT => x"CDDD")

      port map(A => fsmsta_8_0_iv_0_312_i_i_a2_2_1, B => N_674, C
         => fsmsta_8_0_iv_0_312_i_i_a2_6_0, D => N_137, Y => 
        FSMSTA_m6_0_a2_1);
    
    \fsmmod[0]\ : SLE
      port map(D => N_1017_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[0]_net_1\);
    
    SDAO_int_1_sqmuxa_i_o2_6 : CFG4
      generic map(INIT => x"FF73")

      port map(A => \adrcomp\, B => \sercon_6\, C => 
        \fsmmod[6]_net_1\, D => \fsmmod[3]_net_1\, Y => N_160);
    
    pedetect_RNIKHQT1 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => N_154_i, B => \pedetect\, C => un53_fsmdet, D
         => un1_fsmsta, Y => \fsmsta_nxt_cnst_i_m_i_o2_0[3]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_1_0_RNO[4]\ : CFG4
      generic map(INIT => x"00F8")

      port map(A => N_154_i, B => \ack\, C => 
        \fsmsta_nxt_cnst_0_0_0_2[4]_net_1\, D => N_220, Y => 
        \fsmsta_nxt_cnst_m_0[4]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_1_0[4]\ : CFG4
      generic map(INIT => x"F1F0")

      port map(A => N_295, B => \fsmsta_nxt_cnst_i_m_i_o2_0[3]\, 
        C => N_818, D => \fsmsta_nxt_cnst_m_0[4]\, Y => 
        \fsmsta_8_1_iv_1_0[4]\);
    
    \fsmmod[6]\ : SLE
      port map(D => \fsmmod_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[6]_net_1\);
    
    adrcomp_2_sqmuxa_i_a2_3_2 : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1020_1, Y => N_851_1);
    
    \sercon[4]\ : SLE
      port map(D => \sercon_9[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sercon_4\);
    
    \fsmmod_ns_i_0_0_a2_1_2[2]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_611, C => N_619, 
        Y => \fsmmod_ns_i_0_0_a2_1[2]\);
    
    adrcomp_2_sqmuxa_i_o2_0 : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \COREI2C_0_0_INT[0]\, B => 
        \adrcomp_2_sqmuxa_i_o2_0_0\, C => N_247, D => 
        \adrcomp_2_sqmuxa_i_o2_0_1\, Y => 
        \adrcomp_2_sqmuxa_i_o2_0\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_5[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_1020_1, D => \fsmsta[1]_net_1\, Y => N_227);
    
    SCLO_int : SLE
      port map(D => un149_ens1_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_SCLO[0]\);
    
    \fsmmod[2]\ : SLE
      port map(D => N_1014_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_1[1]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, C => 
        N_139, D => un7_fsmsta, Y => \fsmsta_nxt_37_m[1]\);
    
    \fsmsta_RNO_12[2]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => un7_fsmsta, B => \fsmsta[1]_net_1\, C => 
        N_614, Y => N_174);
    
    \sersta[3]\ : SLE
      port map(D => \sersta_32[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(3));
    
    \fsmmod_ns_i_0_0_a2_1_1[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[0]_net_1\, B => N_851_1, C => 
        \pedetect\, Y => \fsmmod_ns_i_0_0_a2_1_1[2]_net_1\);
    
    SDAO_int_RNO_4 : CFG4
      generic map(INIT => x"0010")

      port map(A => \framesync[1]_net_1\, B => \bsd7\, C => 
        \framesync[0]_net_1\, D => \framesync[2]_net_1\, Y => 
        SDAO_int_7_0_340_i_a2_2_1);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_1_0_i_o2\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[1]_net_1\, Y
         => N_598);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_a2_0\ : CFG3
      generic map(INIT => x"40")

      port map(A => N_440, B => \COREI2C_0_0_INT[0]\, C => N_602, 
        Y => N_261);
    
    \fsmsync[6]\ : SLE
      port map(D => N_950_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[6]_net_1\);
    
    adrcompen_RNO : CFG2
      generic map(INIT => x"4")

      port map(A => N_787, B => \fsmdet[3]_net_1\, Y => N_196_i_0);
    
    \SDAI_ff_reg[2]\ : SLE
      port map(D => N_426_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[2]_net_1\);
    
    \serCON_WRITE_PROC.sercon_9_0_0_a2_2[4]\ : CFG4
      generic map(INIT => x"8CCC")

      port map(A => \PCLKint\, B => \sercon_9_0_0_a2_1[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => 
        \sercon_9_0_0_a2_2[4]\);
    
    \serCON_WRITE_PROC.sercon_9_0_o3_i_o2[4]\ : CFG4
      generic map(INIT => x"FFFB")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \serDAT_m2_e_0_0\, C => N_902, D => N_428, Y => N_555);
    
    \PCLK_count1[0]\ : SLE
      port map(D => N_588_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[0]_net_1\);
    
    \fsmsta_RNIQA9B[3]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[2]_net_1\, Y => N_150);
    
    \serSTA_WRITE_PROC.un27_si_int_0_a2_0_0_a2\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_337);
    
    \serSTA_WRITE_PROC.sersta_32_i_a2[0]\ : CFG4
      generic map(INIT => x"0028")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[1]_net_1\, 
        C => N_569, D => N_469, Y => N_740);
    
    \FSMSYNC_SYNC_PROC.un149_ens1_0_a2_0_0\ : CFG3
      generic map(INIT => x"40")

      port map(A => \SCLInt\, B => \sercon_6\, C => N_325_1, Y
         => un149_ens1_0_a2_0_0);
    
    \fsmsta[0]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[0]_net_1\);
    
    \serdat[3]\ : SLE
      port map(D => \serdat_9_i_m3[3]\, CLK => FAB_CCC_GL0, EN
         => \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[3]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_i_o2\ : CFG2
      generic map(INIT => x"D")

      port map(A => \COREI2C_0_0_INT[0]\, B => \SCLInt\, Y => 
        N_454);
    
    nedetect : SLE
      port map(D => nedetect_0_sqmuxa, CLK => FAB_CCC_GL0, EN => 
        rtn_1_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \nedetect\);
    
    \fsmmod_ns_0_0_0[0]\ : CFG4
      generic map(INIT => x"FDDD")

      port map(A => N_452, B => N_566, C => \fsmmod[1]_net_1\, D
         => N_882, Y => \fsmmod_ns[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_a2_0[2]\ : CFG4
      generic map(INIT => x"000B")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_69, Y => N_307);
    
    \fsmsync_ns_i_0_0_a2_0_0[3]\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \fsmsync[2]_net_1\, B => \sercon_4\, C => 
        \fsmsync[5]_net_1\, Y => 
        \fsmsync_ns_i_0_0_a2_0_0[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un44_fsmsta_0_a3\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => N_742_2, D => \fsmsta[2]_net_1\, Y => un44_fsmsta);
    
    \fsmsta_RNO_5[2]\ : CFG4
      generic map(INIT => x"FEFC")

      port map(A => un7_fsmsta, B => N_312, C => N_297, D => 
        N_162, Y => fsmsta_8_0_iv_0_0_312_i_i_8_out_tz);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_4[3]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[0]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_m_i_a2_3_0[3]\);
    
    \FSMSTA_COMB_PROC.un20_sdao_int_0_o2_i_o2\ : CFG2
      generic map(INIT => x"B")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, Y => 
        N_548);
    
    \fsmsta_RNIFNK5[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_302);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_4[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_598, B => N_454, Y => N_847);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_1_tz[4]\ : CFG4
      generic map(INIT => x"F0F8")

      port map(A => \fsmmod[2]_net_1\, B => \PCLKint_ff\, C => 
        \fsmsta_8_1_iv_3_a2_1_0[4]\, D => \PCLKint\, Y => 
        \fsmsta_8_1_iv_1_tz[4]\);
    
    \serSTA_WRITE_PROC.un32_si_int_0_a2_1_0_a2\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_341);
    
    SDAO_int_1_sqmuxa_i_0_0_5 : CFG4
      generic map(INIT => x"FFFB")

      port map(A => N_123_i, B => \SDAO_int_1_sqmuxa_i_0_0_5_1\, 
        C => \fsmmod[3]_net_1\, D => \fsmmod[2]_net_1\, Y => 
        \SDAO_int_1_sqmuxa_i_0_0_5\);
    
    N_555_i : CFG4
      generic map(INIT => x"0004")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \serDAT_m2_e_0_0\, C => N_902, D => N_428, Y => N_555_i_0);
    
    \SDAI_ff_reg_RNO[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[0]_net_1\, Y
         => N_427_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_3[1]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \fsmsta_cnst_i_0_0_a2_1_0[0]_net_1\, B => 
        N_157_i, C => \adrcomp\, D => N_598, Y => N_817);
    
    \serDAT_WRITE_PROC.serdat_9_i_m3[6]\ : CFG4
      generic map(INIT => x"B8F0")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(6), B => 
        serDAT_N_5_mux_1, C => \serdat[5]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_445);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_0[1]\ : CFG3
      generic map(INIT => x"10")

      port map(A => N_9, B => N_674, C => N_297, Y => 
        un2_fsmsta_9_s2);
    
    \fsmsta_nxt_cnst_i_0_0[0]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_154_i, B => \ack\, C => 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\, D => N_704, Y => 
        N_1079);
    
    un1_serdat_2_sqmuxa_1_i_1 : CFG4
      generic map(INIT => x"FFD5")

      port map(A => \pedetect\, B => N_325_1, C => 
        \un1_serdat_2_sqmuxa_1_i_a2_0\, D => N_731, Y => 
        \un1_serdat_2_sqmuxa_1_i_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ss0_0_o2_2_1_o2\ : CFG3
      generic map(INIT => x"EF")

      port map(A => N_440, B => \fsmdet[3]_net_1\, C => N_602, Y
         => bsd7_0_ss0);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta_0_o2\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \framesync[2]_net_1\, B => 
        \framesync[0]_net_1\, C => \framesync[1]_net_1\, Y => 
        N_149);
    
    adrcomp_2_sqmuxa_i_a2_8 : CFG4
      generic map(INIT => x"0080")

      port map(A => \adrcomp_2_sqmuxa_i_a2_4\, B => 
        \adrcomp_2_sqmuxa_i_a2_5\, C => adrcomp_2_sqmuxa_i_a2_3, 
        D => N_149, Y => \adrcomp_2_sqmuxa_i_a2_8\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ss0_0_o2\ : CFG4
      generic map(INIT => x"5F7F")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => N_141);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[3]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => N_4, B => N_6, C => m50_i_0_a4_4, D => 
        un20_sdao_int_m, Y => \fsmsta_8_0_iv_1[3]\);
    
    \fsmsta_nxt_cnst_0_0_o2_0_i_o2[4]\ : CFG3
      generic map(INIT => x"F7")

      port map(A => \fsmsta[2]_net_1\, B => \COREI2C_0_0_SDAO[0]\, 
        C => \SDAInt\, Y => N_636);
    
    \PCLK_count1_RNO[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_361, B => \PCLK_count1[0]_net_1\, Y => 
        N_588_i_0);
    
    \fsmsta_nxt_cnst_0_0_0_1[4]\ : CFG4
      generic map(INIT => x"F0FE")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta_nxt_cnst_0_0_0_0[4]_net_1\, D => N_69, Y => 
        \fsmsta_nxt_cnst_0_0_0_1[4]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_1_1[3]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \framesync[0]_net_1\, B => N_847, C => 
        \framesync[1]_net_1\, D => \framesync[2]_net_1\, Y => 
        \framesync_7_enl_i_0_a2_1_1[3]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[0]\ : CFG4
      generic map(INIT => x"F5F4")

      port map(A => FSMSTA_m3_0_a2_1, B => 
        \fsmsta_8_0_iv_5_a1_2[0]\, C => \fsmsta_8_0_iv_1[0]\, D
         => \fsmsta_8_0_iv_5_a2_1[0]\, Y => \fsmsta_8_0_iv_2[0]\);
    
    \fsmsta[1]\ : SLE
      port map(D => \fsmsta_8[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[1]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0[3]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_341, B => N_302, C => \sersta_32_0_1[3]\, D
         => N_300, Y => \sersta_32[3]\);
    
    \fsmsync_ns_i_0_0_o2_0[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_570, B => \SCLInt\, Y => N_683);
    
    \fsmsta_RNO_8[2]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_1020_1, B => \fsmsta[0]_net_1\, Y => N_162);
    
    \framesync[0]\ : SLE
      port map(D => N_86_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[0]_net_1\);
    
    ack_bit_1_sqmuxa_2 : CFG4
      generic map(INIT => x"3010")

      port map(A => N_602, B => \fsmdet[3]_net_1\, C => 
        \ack_bit_1_sqmuxa_1\, D => N_440, Y => 
        \ack_bit_1_sqmuxa_2\);
    
    bsd7_tmp : SLE
      port map(D => bsd7_tmp_6, CLK => FAB_CCC_GL0, EN => 
        \sercon_6\, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \bsd7_tmp\);
    
    \PCLK_count2_RNO[1]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \PCLK_count1_ov\, B => N_361, C => 
        \PCLK_count2[1]_net_1\, D => \PCLK_count2[0]_net_1\, Y
         => N_347_i_0);
    
    \fsmdet[3]\ : SLE
      port map(D => N_920_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[3]_net_1\);
    
    PCLKint_ff : SLE
      port map(D => PCLKint_ff_2, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint_ff\);
    
    \fsmmod_ns_0_i_a2_1[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_600, B => \SCLInt\, Y => N_748);
    
    \serdat[6]\ : SLE
      port map(D => N_445, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[6]_net_1\);
    
    \fsmdet_RNO[0]\ : CFG4
      generic map(INIT => x"E0A0")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_926_i_0);
    
    \fsmmod_RNO[2]\ : CFG4
      generic map(INIT => x"080A")

      port map(A => N_648, B => \fsmmod[2]_net_1\, C => N_566, D
         => N_680, Y => N_1014_i_0);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0_a2_1[1]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_454, B => \fsmdet[1]_net_1\, Y => N_885);
    
    \fsmsta_cnst_i_0_o2[0]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => N_298_3, B => \fsmsta_cnst_i_0_o2_2[0]_net_1\, 
        C => \serdat[4]_net_1\, D => \serdat[3]_net_1\, Y => 
        N_155);
    
    \fsmsta_RNO_10[2]\ : CFG4
      generic map(INIT => x"F0B0")

      port map(A => un133_fsmsta_i_i_o2_1_i_o2_0, B => 
        \fsmsta[3]_net_1\, C => N_150, D => N_841, Y => 
        fsmsta_8_0_iv_0_312_i_i_a2_6_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a3_0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => un53_fsmdet, B => N_9, Y => 
        \fsmsta_8_0_iv_5_a3_0[0]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[1]\ : CFG4
      generic map(INIT => x"CCCD")

      port map(A => \fsmsta_nxt_cnst_m_i_4[1]\, B => 
        un2_fsmsta_9_s2, C => N_295, D => 
        \fsmsta_nxt_cnst_i_m_i_o2_0[3]\, Y => 
        \fsmsta_8_0_iv_1[1]\);
    
    \fsmsta_cnst_i_0_0_a2_0_0[0]\ : CFG3
      generic map(INIT => x"70")

      port map(A => \fsmdet[3]_net_1\, B => \fsmmod[0]_net_1\, C
         => \adrcomp\, Y => \fsmsta_cnst_i_0_0_a2_0[0]\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_596, B => \nedetect\, Y => N_838);
    
    bsd7 : SLE
      port map(D => N_248_i_0, CLK => FAB_CCC_GL0, EN => 
        \sercon_6\, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => \bsd7\);
    
    un1_serdat_2_sqmuxa_1_i_o2 : CFG2
      generic map(INIT => x"7")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_77);
    
    PCLKint : SLE
      port map(D => PCLKint_3, CLK => FAB_CCC_GL0, EN => N_41, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \PCLKint\);
    
    \fsmsync_ns_0_0_0_1[0]\ : CFG4
      generic map(INIT => x"F8FA")

      port map(A => \SCLInt\, B => \fsmsync[3]_net_1\, C => N_708, 
        D => N_671, Y => \fsmsync_ns_0_0_0_1[0]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_o2_2[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_247, B => N_850, Y => N_626);
    
    \PCLK_count1[1]\ : SLE
      port map(D => N_589_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[1]_net_1\);
    
    \serdat[5]\ : SLE
      port map(D => N_446, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[5]_net_1\);
    
    SDAO_int_1_sqmuxa_i_0_0_o2 : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[5]_net_1\, Y
         => N_611);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0[1]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => N_736_tz, B => N_885, C => \fsmdet[3]_net_1\, 
        Y => \framesync_7[1]\);
    
    PCLK_count1_ov_RNO : CFG4
      generic map(INIT => x"0008")

      port map(A => \PCLK_count1[3]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => N_549, D => N_361, Y => 
        N_349_i_0);
    
    \FSMSTA_SYNC_PROC.un53_fsmdet_0_o2\ : CFG4
      generic map(INIT => x"DCCC")

      port map(A => \PCLKint\, B => N_598, C => \PCLKint_ff\, D
         => \fsmmod[2]_net_1\, Y => un53_fsmdet);
    
    \fsmsta_RNO_3[2]\ : CFG3
      generic map(INIT => x"51")

      port map(A => N_582, B => \adrcomp\, C => N_609_i, Y => 
        N_235);
    
    \fsmsync_RNO[4]\ : CFG4
      generic map(INIT => x"0054")

      port map(A => N_708, B => N_954_i_1, C => 
        \fsmsync[4]_net_1\, D => \fsmsync_ns_i_0_0_0[3]_net_1\, Y
         => N_954_i_0);
    
    \fsmmod_ns_0_o3_1[3]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_1020_1);
    
    \SDAI_ff_reg[0]\ : SLE
      port map(D => \SDAI_ff_reg_4[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[0]_net_1\);
    
    \fsmsync_RNO[5]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => N_708, B => N_683, C => \fsmsync[7]_net_1\, D
         => N_780, Y => N_952_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a0_2_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un53_fsmdet, B => un7_fsmsta, Y => 
        \fsmsta_8_0_iv_5_a0_2_0[0]\);
    
    bsd7_RNO_1 : CFG4
      generic map(INIT => x"FEFF")

      port map(A => N_440, B => CoreAPB3_0_APBmslave0_PWDATA(7), 
        C => \fsmdet[3]_net_1\, D => N_602, Y => bsd7_0_m0);
    
    \fsmmod_ns_i_0_0_o2_2[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_596, B => \framesync[0]_net_1\, Y => N_619);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_1[3]\ : CFG4
      generic map(INIT => x"7F00")

      port map(A => \fsmsta_cnst_i_0_0_a2_1_0[0]_net_1\, B => 
        N_157_i, C => m50_i_0_a4_0_1, D => un53_fsmdet, Y => N_6);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_0_1_0_o2\ : CFG4
      generic map(INIT => x"FAF8")

      port map(A => \sercon_4\, B => \fsmmod[6]_net_1\, C => 
        N_598, D => \fsmmod[1]_net_1\, Y => N_342_2);
    
    adrcomp : SLE
      port map(D => N_342_i_0, CLK => FAB_CCC_GL0, EN => 
        \adrcomp_2_sqmuxa_i_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcomp\);
    
    \serSTA_WRITE_PROC.sersta_32_0_a2_0[3]\ : CFG4
      generic map(INIT => x"FE00")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_302, Y => N_300);
    
    \INDELAY_WRITE_PROC.indelay_4_i_i[1]\ : CFG4
      generic map(INIT => x"08A0")

      port map(A => \fsmsync[4]_net_1\, B => N_641, C => 
        \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        \indelay_4_i_i[1]\);
    
    starto_en_1_sqmuxa_0_a2_i : CFG3
      generic map(INIT => x"F7")

      port map(A => N_600, B => \SCLInt\, C => N_687, Y => 
        \starto_en_1_sqmuxa_0_a2_i\);
    
    \FSMSYNC_SYNC_PROC.un149_ens1_0_a2_1_1\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \fsmsta[4]_net_1\, B => \SCLInt\, C => 
        \sercon_6\, D => \COREI2C_0_0_INT[0]\, Y => 
        un149_ens1_0_a2_1_1);
    
    adrcompen_RNIQT291 : CFG4
      generic map(INIT => x"0008")

      port map(A => \adrcomp\, B => \adrcompen\, C => 
        \framesync[2]_net_1\, D => \framesync[1]_net_1\, Y => 
        un2_m7_0_a2_2);
    
    SCLO_int_RNI96C8 : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SCLO[0]\, Y => 
        COREI2C_0_0_SCLO_i(0));
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO[3]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \SDAInt\, B => \sercon_2\, C => N_141, D => 
        \fsmsta[3]_net_1\, Y => \fsmsta_nxt_60_i_m_0_a2_1[3]\);
    
    adrcompen : SLE
      port map(D => N_196_i_0, CLK => FAB_CCC_GL0, EN => 
        \adrcompen_2_sqmuxa_i_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcompen\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO[1]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \fsmdet[3]_net_1\, B => N_611, C => N_817, Y
         => \fsmsta_cnst_m_i_0_0[1]\);
    
    \indelay[3]\ : SLE
      port map(D => N_344_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[3]_net_1\);
    
    \SDAI_ff_reg[1]\ : SLE
      port map(D => N_427_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[1]_net_1\);
    
    \fsmsta_RNIC9OJ[3]\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \fsmsta[3]_net_1\, B => 
        un133_fsmsta_i_i_o2_1_i_o2_0, C => N_841, Y => N_617);
    
    starto_en_1_sqmuxa_0_a2_i_o2 : CFG2
      generic map(INIT => x"B")

      port map(A => \fsmmod[1]_net_1\, B => \busfree\, Y => N_687);
    
    \fsmmod_ns_0_i_o2_3[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \sercon_4\, B => \COREI2C_0_0_INT[0]\, C => 
        \sercon_5\, Y => N_551);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_0_0[3]\ : CFG4
      generic map(INIT => x"0302")

      port map(A => \nedetect\, B => \framesync[1]_net_1\, C => 
        \framesync[2]_net_1\, D => \framesync[0]_net_1\, Y => 
        \framesync_7_enl_i_0_a2_0_0[3]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_3_a2_1_0[4]\ : CFG3
      generic map(INIT => x"40")

      port map(A => N_9, B => \fsmsta[3]_net_1\, C => N_652, Y
         => \fsmsta_8_1_iv_3_a2_1_0[4]\);
    
    \FSMSTA_SYNC_PROC.un53_fsmdet_0_o2_RNIOB063\ : CFG4
      generic map(INIT => x"F0F8")

      port map(A => un2_m7_0_a2_2, B => un2_m7_0_a2_1, C => 
        un53_fsmdet, D => un1_fsmsta, Y => N_674);
    
    \fsmmod_ns_0_o3_i_o2[3]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1020_1, Y => N_554);
    
    \fsmdet[6]\ : SLE
      port map(D => SCLInt_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[6]_net_1\);
    
    \framesync_RNO_0[0]\ : CFG4
      generic map(INIT => x"9010")

      port map(A => \framesync[0]_net_1\, B => \nedetect\, C => 
        N_847, D => N_596, Y => \framesync_RNO_0[0]_net_1\);
    
    PCLK_count2_ov_RNO : CFG4
      generic map(INIT => x"2000")

      port map(A => \PCLK_count1_ov\, B => N_361, C => 
        \PCLK_count2[1]_net_1\, D => \PCLK_count2[0]_net_1\, Y
         => N_29_i_0);
    
    \PCLK_count1_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \PCLK_count1[0]_net_1\, B => N_361, C => 
        \PCLK_count1[1]_net_1\, Y => N_589_i_0);
    
    SDAO_int_1_sqmuxa_i_0_0_5_1 : CFG4
      generic map(INIT => x"4003")

      port map(A => \nedetect\, B => \framesync[1]_net_1\, C => 
        \framesync[2]_net_1\, D => \framesync[0]_net_1\, Y => 
        \SDAO_int_1_sqmuxa_i_0_0_5_1\);
    
    \fsmsta_nxt_cnst_0_0_0_0[4]\ : CFG4
      generic map(INIT => x"FF01")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_614, D => N_700, Y => 
        \fsmsta_nxt_cnst_0_0_0_0[4]_net_1\);
    
    ack_bit_1_sqmuxa : CFG3
      generic map(INIT => x"20")

      port map(A => serDAT_N_5_mux_1, B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => \ack_bit_1_sqmuxa_2\, 
        Y => \ack_bit_1_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_7[3]\ : CFG3
      generic map(INIT => x"54")

      port map(A => N_9, B => un7_fsmsta, C => 
        \fsmsta_8_0_iv_i_RNO_9[3]\, Y => 
        \fsmsta_8_0_iv_i_RNO_7[3]\);
    
    nedetect_0_sqmuxa_0_a3 : CFG4
      generic map(INIT => x"0004")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => nedetect_0_sqmuxa);
    
    \sersta[4]\ : SLE
      port map(D => \sersta_32[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(4));
    
    SCLInt : SLE
      port map(D => \SCLI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_3_0\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLInt\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => N_598, B => \PCLK_count1_10_i_o2_3[0]\, C => 
        \PCLK_count1_10_i_o2_1[0]\, D => N_787, Y => N_361);
    
    \CLKINT_WRITE_PROC.PCLKint_ff_2_0_0\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_361, B => \PCLKint\, Y => PCLKint_ff_2);
    
    \fsmsync_RNO_0[4]\ : CFG4
      generic map(INIT => x"2F23")

      port map(A => \fsmsync[2]_net_1\, B => \sercon_4\, C => 
        N_618, D => N_619, Y => N_954_i_1);
    
    un1_ens1_pre_1_sqmuxa_0_o2_0_i_a2 : CFG4
      generic map(INIT => x"0201")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[1]_net_1\, C => \framesync[2]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_157_i);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[3]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta_8_0_iv_1[3]\, B => 
        \fsmsta_8_0_iv_2[3]\, Y => \fsmsta_8_0_iv_i_0[3]\);
    
    \fsmmod_RNO[0]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => \nedetect\, B => \fsmmod[3]_net_1\, C => 
        N_566, D => N_783, Y => N_1017_i_0);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ss0_0_o2_2_o2_2\ : CFG3
      generic map(INIT => x"FB")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_602);
    
    PCLK_count2_ov : SLE
      port map(D => N_29_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \PCLK_count2_ov\);
    
    serDAT_m2_e_0 : CFG3
      generic map(INIT => x"04")

      port map(A => N_428, B => \serDAT_m2_e_0_0\, C => N_902, Y
         => serDAT_N_5_mux_1);
    
    \fsmsync_RNO[2]\ : CFG4
      generic map(INIT => x"008C")

      port map(A => \fsmsync[2]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_618, D => N_708, Y => N_958_i_0);
    
    \fsmsta_RNO_1[2]\ : CFG4
      generic map(INIT => x"F700")

      port map(A => fsmsta_8_0_iv_0_0_312_i_i_8_out_tz, B => 
        fsmsta_8_0_iv_0_0_312_i_i_8_s_0, C => N_139, D => 
        FSMSTA_m6_0_a2_1, Y => FSMSTA_m6_0_a2_3);
    
    \fsmmod_ns_0_0_i_o2_0[1]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => \SDAInt\, B => N_630, C => \fsmmod[6]_net_1\, 
        Y => N_681);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_0_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_598, B => N_596, Y => 
        \framesync_7_enl_i_0_a2_0_0[0]\);
    
    \sercon[3]\ : SLE
      port map(D => \sercon_9[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_INT[0]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a0_2[0]\ : CFG4
      generic map(INIT => x"A020")

      port map(A => N_617, B => N_602, C => 
        \fsmsta_8_0_iv_5_a0_2_0[0]\, D => N_440, Y => 
        \fsmsta_8_0_iv_5_a0_2[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_1[2]\ : CFG4
      generic map(INIT => x"EFCF")

      port map(A => N_69, B => N_307, C => \COREI2C_0_0_INT[0]\, 
        D => N_337, Y => \sersta_32_0_1[2]\);
    
    \PCLK_count1_RNO[3]\ : CFG4
      generic map(INIT => x"00A6")

      port map(A => \PCLK_count1[3]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => N_549, D => N_361, Y => 
        N_590_i_0);
    
    \fsmsync_ns_i_0_o2_0[4]\ : CFG4
      generic map(INIT => x"FDFF")

      port map(A => \indelay[2]_net_1\, B => \indelay[3]_net_1\, 
        C => \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        N_646);
    
    SDAO_int_RNO_6 : CFG4
      generic map(INIT => x"1000")

      port map(A => N_160, B => N_440, C => 
        SDAO_int_7_0_340_i_a2_0_0, D => N_602, Y => N_231);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[1]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_674, B => \fsmsta_cnst_m_i_0_0[1]\, C => 
        SDAO_int_m, D => \fsmsta_nxt_37_m[1]\, Y => 
        \fsmsta_8_0_iv_2[1]\);
    
    \fsmmod[5]\ : SLE
      port map(D => N_406_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0_o2[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_612, B => \framesync[1]_net_1\, Y => N_550);
    
    adrcompen_0_sqmuxa_i_0_a2 : CFG3
      generic map(INIT => x"A8")

      port map(A => \sercon_4\, B => \fsmmod[1]_net_1\, C => 
        \fsmmod[6]_net_1\, Y => N_787);
    
    serDAT_m2_e_0_0 : CFG4
      generic map(INIT => x"0020")

      port map(A => CoreAPB3_0_APBmslave0_PWRITE, B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \serDAT_m2_e_0_0\);
    
    SDAO_int_RNO_1 : CFG3
      generic map(INIT => x"54")

      port map(A => N_160, B => \fsmmod[2]_net_1\, C => N_611, Y
         => N_230);
    
    \fsmdet[5]\ : SLE
      port map(D => N_916_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[5]_net_1\);
    
    \fsmmod[1]\ : SLE
      port map(D => N_591_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[1]_net_1\);
    
    \fsmsta_RNO_9[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_174, B => \fsmsta[2]_net_1\, C => N_617, Y
         => fsmsta_8_0_iv_0_312_i_i_a2_2_1);
    
    \fsmdet_RNO[4]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[4]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_918_i_0);
    
    \fsmdet_RNO[1]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[4]_net_1\, B => \fsmdet[2]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_924_i_0);
    
    \fsmsync_ns_i_0_0_o2[5]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_600, B => \fsmsync[5]_net_1\, Y => N_618);
    
    \fsmsync[4]\ : SLE
      port map(D => N_954_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[4]_net_1\);
    
    SCLSCL_1_sqmuxa_i : CFG2
      generic map(INIT => x"D")

      port map(A => \fsmmod[1]_net_1\, B => \pedetect\, Y => 
        SCLSCL_1_sqmuxa_i_0);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet_i_RNIL0BB5\ : CFG4
      generic map(INIT => x"FC54")

      port map(A => N_749_tz, B => N_674, C => \pedetect\, D => 
        N_582, Y => un1_ens1_pre_1_sqmuxa_i_0);
    
    \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]\ : CFG3
      generic map(INIT => x"32")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\);
    
    \fsmmod_ns_i_0_0_a2[6]\ : CFG4
      generic map(INIT => x"070F")

      port map(A => \SCLInt\, B => N_600_i, C => 
        \fsmmod[0]_net_1\, D => \fsmmod[3]_net_1\, Y => N_783);
    
    \serDAT_WRITE_PROC.un105_ens1_0_o3_i_o2\ : CFG4
      generic map(INIT => x"FFF7")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \serDAT_m2_e_0_0\, C => N_902, D => N_428, Y => N_594);
    
    \sercon[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_5\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[0]\ : CFG4
      generic map(INIT => x"00C8")

      port map(A => \fsmsta_8_0_iv_5_a0_2[0]\, B => N_1079, C => 
        \fsmsta_8_0_iv_5_a3_0[0]\, D => FSMSTA_m3_0_a2_1, Y => 
        \fsmsta_8_0_iv_3[0]\);
    
    \fsmsta_cnst_i_0_o2_RNI2APJ[0]\ : CFG3
      generic map(INIT => x"08")

      port map(A => FSMSTA_m3_0_a2_1, B => N_155, C => 
        un53_fsmdet, Y => N_313);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2_1[0]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \fsmsync[6]_net_1\, B => \fsmsync[3]_net_1\, 
        C => \fsmsync[2]_net_1\, Y => \PCLK_count1_10_i_o2_1[0]\);
    
    nedetect_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1_i_0);
    
    adrcompen_2_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"FCFE")

      port map(A => \nedetect\, B => \fsmdet[3]_net_1\, C => 
        N_787, D => N_9, Y => \adrcompen_2_sqmuxa_i_0_0\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_0_0_o2\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_600, B => N_623, Y => N_648);
    
    \PCLK_count2_RNO[0]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \PCLK_count1_ov\, B => N_361, C => 
        \PCLK_count2[0]_net_1\, Y => N_348_i_0);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ss0_0_o2_2_m3_RNIR64I1\ : CFG4
      generic map(INIT => x"CECC")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmdet[3]_net_1\, 
        C => N_440, D => N_602, Y => N_244_2);
    
    \fsmsync_ns_i_0_0_a2_4[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[0]_net_1\, C
         => \fsmmod[1]_net_1\, D => \fsmmod[4]_net_1\, Y => N_887);
    
    \fsmsta_RNIR5LU3[2]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[2]_net_1\, C
         => N_139, D => un2_fsmsta_5_s4_i_1, Y => N_117);
    
    \fsmmod_RNO[4]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmmod_ns_i_0_0_a2_1[2]\, B => 
        \fsmmod_ns_i_0_0_0[2]_net_1\, C => N_566, D => N_689, Y
         => N_1011_i_0);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2_0_2[0]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \sercon_4\, B => \sercon_5\, C => N_554, D
         => \COREI2C_0_0_INT[0]\, Y => N_805_2);
    
    adrcomp_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \adrcomp_2_sqmuxa_i_o2_0\, Y => N_342_i_0);
    
    \SCLI_ff_reg[2]\ : SLE
      port map(D => \SCLI_ff_reg_3[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[2]_net_1\);
    
    \fsmsync_RNO[3]\ : CFG4
      generic map(INIT => x"0405")

      port map(A => \SCLInt\, B => \fsmsync[3]_net_1\, C => N_708, 
        D => N_671, Y => N_956_i_0);
    
    \fsmsync[3]\ : SLE
      port map(D => N_956_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[3]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO_1\ : CFG3
      generic map(INIT => x"54")

      port map(A => bsd7_0_ss0, B => \nedetect\, C => 
        \COREI2C_0_0_INT[0]\, Y => serDAT_m5_0);
    
    \serCON_WRITE_PROC.sercon_8_0_1[3]\ : CFG4
      generic map(INIT => x"FEFC")

      port map(A => \sercon_6\, B => \COREI2C_0_0_INT[0]\, C => 
        N_274, D => N_181, Y => \sercon_8_0_1[3]\);
    
    \PCLK_count2[1]\ : SLE
      port map(D => N_347_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[1]_net_1\);
    
    \fsmsta_RNIJVE8[4]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_841);
    
    \fsmmod_ns_0_i_o2_1[3]\ : CFG4
      generic map(INIT => x"FFBF")

      port map(A => N_551, B => \fsmmod[4]_net_1\, C => N_554, D
         => N_619, Y => N_679);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_a2[3]\ : CFG4
      generic map(INIT => x"3090")

      port map(A => \framesync[2]_net_1\, B => 
        \framesync[3]_net_1\, C => N_847, D => N_550, Y => N_804);
    
    un1_rtn_4_0_0 : CFG3
      generic map(INIT => x"81")

      port map(A => \SDAI_ff_reg[2]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, C => \SDAI_ff_reg[0]_net_1\, Y
         => \un1_rtn_4_0_0\);
    
    un1_rtn_3_0 : CFG3
      generic map(INIT => x"81")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => \un1_rtn_3_0\);
    
    \serCON_WRITE_PROC.sercon_9_0_0_a2_1[4]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => \fsmdet[1]_net_1\, B => \sercon_4\, C => 
        \sercon_6\, D => N_505, Y => \sercon_9_0_0_a2_1[4]\);
    
    SDAO_int_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"FCFE")

      port map(A => N_617, B => \SDAO_int_1_sqmuxa_i_0_0_4\, C
         => \SDAO_int_1_sqmuxa_i_0_0_5\, D => un7_fsmsta, Y => 
        N_64);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_i_0_o2_RNIL8FT[0]\ : 
        CFG3
      generic map(INIT => x"04")

      port map(A => \framesync[0]_net_1\, B => N_123_i, C => 
        N_596, Y => N_154_i);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_8[3]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_302, B => N_215, C => un53_fsmdet, Y => 
        m50_i_0_a4_4_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_9[3]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsta[3]_net_1\, B => 
        un133_fsmsta_i_i_o2_1_i_o2_0, C => N_841, Y => 
        \fsmsta_8_0_iv_i_RNO_9[3]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \fsmmod[5]_net_1\, B => \fsmdet[3]_net_1\, C
         => N_813, D => N_313, Y => \fsmsta_8_0_iv_1[0]\);
    
    SDAO_int_RNO_3 : CFG4
      generic map(INIT => x"FFB0")

      port map(A => un7_fsmsta, B => N_617, C => 
        SDAO_int_7_0_340_i_a2_1_2, D => N_231, Y => 
        SDAO_int_7_0_340_i_2);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_0_0_o2_0\ : CFG2
      generic map(INIT => x"7")

      port map(A => \SCLInt\, B => \fsmmod[2]_net_1\, Y => N_623);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_3_o2_2[4]\ : CFG4
      generic map(INIT => x"B580")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => N_652);
    
    busfree : SLE
      port map(D => \fsmdet_i_0[3]\, CLK => FAB_CCC_GL0, EN => 
        un105_fsmdet, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \busfree\);
    
    \fsmsync_ns_0_0_0_o2[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_600, B => N_887, Y => N_570);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_5_a1_2[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_554, B => un53_fsmdet, C => 
        \fsmsta_nxt_9[0]\, D => N_9, Y => 
        \fsmsta_8_0_iv_5_a1_2[0]\);
    
    \fsmsta_nxt_cnst_i_0_0_a2_0[0]\ : CFG4
      generic map(INIT => x"F0E0")

      port map(A => \fsmsta[3]_net_1\, B => \framesync[0]_net_1\, 
        C => N_341, D => N_596, Y => N_704);
    
    \PCLK_count1[2]\ : SLE
      port map(D => N_276_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[2]_net_1\);
    
    \sercon[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => N_555_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_6\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[0]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => N_117, B => \fsmsta_8_0_iv_2[0]\, C => 
        \fsmsta_8_0_iv_3[0]\, D => SDAInt_li_1_m, Y => 
        \fsmsta_8_0_iv_i_0[0]\);
    
    SDAO_int : SLE
      port map(D => N_115_i_0, CLK => FAB_CCC_GL0, EN => N_64, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_SDAO[0]\);
    
    un7_fsmsta_0_a2 : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta[1]_net_1\, B => N_88_i, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        un7_fsmsta);
    
    pedetect_RNIR1121 : CFG3
      generic map(INIT => x"08")

      port map(A => \pedetect\, B => \framesync[3]_net_1\, C => 
        \framesync[0]_net_1\, Y => un2_m7_0_a2_1);
    
    \fsmsync_ns_i_0_0_a2_0[2]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => \fsmsync[5]_net_1\, B => N_600, C => 
        \fsmsync[6]_net_1\, D => \fsmsync[7]_net_1\, Y => N_780);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_0_0_RNO[1]\ : CFG4
      generic map(INIT => x"A5A1")

      port map(A => \framesync[1]_net_1\, B => 
        \framesync[3]_net_1\, C => N_612, D => 
        \framesync[2]_net_1\, Y => N_736_tz);
    
    \SDAO_INT_WRITE_PROC.un30_fsmsta_i_0_o2_i_a2_i_0_o2_RNITIHG3\ : 
        CFG2
      generic map(INIT => x"E")

      port map(A => N_674, B => N_9, Y => N_139);
    
    \fsmsta_RNO[2]\ : CFG4
      generic map(INIT => x"77F7")

      port map(A => FSMSTA_m6_0_a2_2, B => FSMSTA_m6_0_a2_3, C
         => fsmsta_8_0_iv_0_312_i_i_a2_3_1, D => N_139, Y => 
        FSMSTA_N_13_mux_i_0);
    
    SDAO_int_1_sqmuxa_i_0_0_4 : CFG4
      generic map(INIT => x"DDFD")

      port map(A => \sercon_6\, B => \SDAO_int_1_sqmuxa_i_0_0_2\, 
        C => \fsmmod[6]_net_1\, D => \adrcomp\, Y => 
        \SDAO_int_1_sqmuxa_i_0_0_4\);
    
    \fsmsta_nxt_cnst_i_0_0_1[0]\ : CFG4
      generic map(INIT => x"CECC")

      port map(A => N_9, B => \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\, 
        C => \fsmsta[0]_net_1\, D => N_657, Y => 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_i_1_tz[0]\ : CFG4
      generic map(INIT => x"0A20")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[4]_net_1\, 
        C => N_1020_1, D => \fsmsta[1]_net_1\, Y => 
        \sersta_32_i_1_tz[0]\);
    
    \fsmsta_nxt_cnst_0_0_a2_4_i_o2[4]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_614);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ss0_0_o2_2_m3\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => N_141, Y => N_440);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO\ : CFG4
      generic map(INIT => x"4B00")

      port map(A => N_428, B => serDAT_m2_e_1_2, C => 
        \COREI2C_0_0_INT[0]\, D => serDAT_m5_0, Y => 
        serDAT_N_10_mux);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_2[1]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_297, B => N_548, C => N_312, D => N_227, Y
         => \fsmsta_nxt_cnst_m_i_1[1]\);
    
    \fsmdet_RNO[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \SCLInt\, Y => SCLInt_i_0);
    
    \fsmsync_ns_i_i_i_a2[6]\ : CFG4
      generic map(INIT => x"1110")

      port map(A => \fsmsync[1]_net_1\, B => \fsmsync[2]_net_1\, 
        C => N_618, D => N_619, Y => N_791);
    
    \fsmsta_cnst_i_0_0_a2_1_0[0]\ : CFG4
      generic map(INIT => x"2333")

      port map(A => \PCLKint\, B => \COREI2C_0_0_INT[0]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => 
        \fsmsta_cnst_i_0_0_a2_1_0[0]_net_1\);
    
    \serdat[1]\ : SLE
      port map(D => \serdat_9_i_m3_i_m2[1]\, CLK => FAB_CCC_GL0, 
        EN => \un1_serdat_2_sqmuxa_0_0\, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[1]_net_1\);
    
    starto_en_1_sqmuxa_0_a2_i_o2_0 : CFG2
      generic map(INIT => x"D")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => N_600);
    
    \fsmmod_ns_0_o3_1_RNIE4CL[3]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_1020_1, D => \fsmsta[1]_net_1\, Y => un1_fsmsta);
    
    \CLKINT_WRITE_PROC.PCLKint_3_0_0_0\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_361, B => \PCLKint\, Y => PCLKint_3);
    
    \fsmsta_cnst_i_0_0_a2[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \fsmsta_cnst_i_0_0_a2_1_0[0]_net_1\, B => 
        N_157_i, C => \fsmsta_cnst_i_0_0_a2_0[0]\, D => N_598, Y
         => N_813);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6\ : CFG4
      generic map(INIT => x"BA32")

      port map(A => serDAT_N_10_mux, B => bsd7_tmp_6_sm0, C => 
        \bsd7_tmp\, D => CoreAPB3_0_APBmslave0_PWDATA(7), Y => 
        bsd7_tmp_6);
    
    \serDAT_WRITE_PROC.bsd7_8_m_i_a2_2_2\ : CFG3
      generic map(INIT => x"80")

      port map(A => \SCLInt\, B => \COREI2C_0_0_INT[0]\, C => 
        \fsmdet[3]_net_1\, Y => bsd7_8_m_i_a2_2_2);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[1]_net_1\, Y
         => \SCLI_ff_reg_3[2]\);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[1]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[0]_net_1\, Y
         => \SCLI_ff_reg_3[1]\);
    
    bsd7_RNO : CFG4
      generic map(INIT => x"1F10")

      port map(A => bsd7_8_m_i_0_tz, B => bsd7_8_m_i_1_tz, C => 
        N_594, D => bsd7_81, Y => N_248_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv[1]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => \ack\, B => un2_fsmsta_8_s1, C => 
        \fsmsta_8_0_iv_1[1]\, D => \fsmsta_8_0_iv_2[1]\, Y => 
        \fsmsta_8[1]\);
    
    \fsmdet_RNO[3]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[5]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_920_i_0);
    
    \SDAO_INT_WRITE_PROC.un44_fsmsta_0_a3_1\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_742_2);
    
    \fsmsync_RNO[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_794, B => N_795, C => N_791, D => N_708, Y
         => N_379_i_0);
    
    adrcomp_2_sqmuxa_i_a2_5 : CFG3
      generic map(INIT => x"04")

      port map(A => \serdat[3]_net_1\, B => N_298_3, C => 
        \serdat[4]_net_1\, Y => \adrcomp_2_sqmuxa_i_a2_5\);
    
    \ADRCOMP_WRITE_PROC.un14_adrcompen_i_i2_i_a2_2\ : CFG2
      generic map(INIT => x"1")

      port map(A => \serdat[0]_net_1\, B => \serdat[5]_net_1\, Y
         => N_298_3);
    
    un7_fsmsta_0_a2_RNI737A1 : CFG3
      generic map(INIT => x"0B")

      port map(A => un7_fsmsta, B => N_617, C => N_9, Y => N_295);
    
    \serCON_WRITE_PROC.sercon_8_0_2[3]\ : CFG4
      generic map(INIT => x"080A")

      port map(A => \sercon_6\, B => \adrcomp\, C => 
        \sercon_8_0_2_1[3]\, D => N_505, Y => \sercon_8_0_2[3]\);
    
    \fsmsync[5]\ : SLE
      port map(D => N_952_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[5]_net_1\);
    
    \fsmmod_ns_0_i_o2_0[3]\ : CFG4
      generic map(INIT => x"33B3")

      port map(A => \PCLKint_ff\, B => \fsmmod[3]_net_1\, C => 
        \SCLInt\, D => \PCLKint\, Y => N_484);
    
    ack_RNO : CFG3
      generic map(INIT => x"2F")

      port map(A => \COREI2C_0_0_INT[0]\, B => bsd7_0_ss0, C => 
        ack_7_u_xx_mm_1, Y => ack_7);
    
    un1_serdat_2_sqmuxa_0_0 : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_675, B => serDAT_N_5_mux_1, C => 
        \un1_serdat_2_sqmuxa_0_0_a2_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \un1_serdat_2_sqmuxa_0_0\);
    
    \SDAI_ff_reg_RNO[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[1]_net_1\, Y
         => N_426_i_0);
    
    \fsmsync_ns_i_0_o2_1[4]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \indelay[2]_net_1\, B => \indelay[3]_net_1\, 
        Y => N_641);
    
    \fsmsync_ns_i_0_0_0[3]\ : CFG4
      generic map(INIT => x"44F4")

      port map(A => \fsmsync[4]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => \fsmsync_ns_i_0_0_a2_0_0[3]_net_1\, D => N_646, Y
         => \fsmsync_ns_i_0_0_0[3]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_2[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[2]_net_1\, B => \COREI2C_0_0_SDAO[0]\, 
        C => \fsmsta[0]_net_1\, Y => SDAO_int_m_0_0);
    
    \fsmsta_RNIIUE8[4]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[0]_net_1\, Y => un133_fsmsta_i_i_o2_1_i_o2_0);
    
    adrcompen_RNIROGC : CFG2
      generic map(INIT => x"8")

      port map(A => \adrcomp\, B => \adrcompen\, Y => N_123_i);
    
    \fsmmod_ns_i_0_0_o2[2]\ : CFG4
      generic map(INIT => x"DDFD")

      port map(A => \sercon_6\, B => \fsmdet[1]_net_1\, C => 
        \fsmmod_ns_i_0_0_a2_1_1[2]_net_1\, D => N_9, Y => N_566);
    
    \fsmsta_RNO_0[2]\ : CFG4
      generic map(INIT => x"0501")

      port map(A => N_235, B => fsmsta_8_0_iv_0_312_i_i_a2_0_0, C
         => N_313, D => N_674, Y => FSMSTA_m6_0_a2_2);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO_3[1]\ : CFG4
      generic map(INIT => x"3323")

      port map(A => \framesync[0]_net_1\, B => \fsmsta[1]_net_1\, 
        C => N_123_i, D => N_596, Y => N_225);
    
    pedetect_0_sqmuxa_0_a3 : CFG4
      generic map(INIT => x"2000")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => pedetect_0_sqmuxa);
    
    \fsmmod_ns_i_0_0_a2_3_0[2]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \sercon_5\, B => \PCLKint_ff\, C => \PCLKint\, 
        Y => \fsmmod_ns_i_0_0_a2_3_0[2]_net_1\);
    
    \sersta[2]\ : SLE
      port map(D => \sersta_32[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(2));
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv[4]\ : CFG4
      generic map(INIT => x"FFCE")

      port map(A => \COREI2C_0_0_SDAO[0]\, B => 
        \fsmsta_8_1_iv_0[4]\, C => N_117, D => 
        \fsmsta_8_1_iv_1_0[4]\, Y => \fsmsta_8[4]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_3[3]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => un7_fsmsta, B => N_674, C => N_548, D => N_9, 
        Y => un20_sdao_int_m);
    
    \framesync_RNO[0]\ : CFG4
      generic map(INIT => x"0013")

      port map(A => \framesync_7_enl_i_0_a2_0_0[0]\, B => 
        \framesync_RNO_0[0]_net_1\, C => N_805_2, D => N_796, Y
         => N_86_i_0);
    
    \fsmmod_ns_0_0_0_o2[0]\ : CFG4
      generic map(INIT => x"54DC")

      port map(A => \fsmmod[6]_net_1\, B => N_623, C => N_600, D
         => N_630, Y => N_452);
    
    SDAO_int_RNO_0 : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmmod[3]_net_1\, B => \sercon_6\, C => 
        N_123_i, Y => N_234);
    
    pedetect_RNO : CFG3
      generic map(INIT => x"FE")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => N_380_i_0);
    
    \fsmsta_nxt_cnst_i_0_0_o2_0[0]\ : CFG4
      generic map(INIT => x"FF2F")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => \COREI2C_0_0_SDAO[0]\, D => \SDAInt\, Y => N_657);
    
    starto_en_RNO : CFG2
      generic map(INIT => x"4")

      port map(A => N_687, B => \SCLInt\, Y => N_188_i_0);
    
    \serDAT_WRITE_PROC.bsd7_8_m_i_1_tz\ : CFG4
      generic map(INIT => x"CECC")

      port map(A => bsd7_8_m_i_a2_1_0_0, B => \fsmdet[3]_net_1\, 
        C => N_440, D => N_602, Y => bsd7_8_m_i_1_tz);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2C is

    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(3 downto 2);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          N_902                                       : in    std_logic;
          N_431_i                                     : in    std_logic;
          N_428                                       : in    std_logic
        );

end COREI2C;

architecture DEF_ARCH of COREI2C is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component COREI2CREAL
    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(3 downto 2) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          N_902                                       : in    std_logic := 'U';
          N_431_i                                     : in    std_logic := 'U';
          N_428                                       : in    std_logic := 'U'
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : COREI2CREAL
	Use entity work.COREI2CREAL(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \G0a.0.ui2c\ : COREI2CREAL
      port map(COREI2C_0_0_SDAO_i(0) => COREI2C_0_0_SDAO_i(0), 
        COREI2C_0_0_SCLO_i(0) => COREI2C_0_0_SCLO_i(0), serdat(7)
         => serdat(7), serdat(6) => serdat(6), serdat(5) => 
        serdat(5), serdat(4) => serdat(4), serdat(3) => serdat(3), 
        serdat(2) => serdat(2), serdat(1) => serdat(1), serdat(0)
         => serdat(0), COREI2C_0_0_INT(0) => COREI2C_0_0_INT(0), 
        sersta(4) => sersta(4), sersta(3) => sersta(3), sersta(2)
         => sersta(2), sersta(1) => sersta(1), sersta(0) => 
        sersta(0), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), 
        CoreAPB3_0_APBmslave0_PWDATA(7) => 
        CoreAPB3_0_APBmslave0_PWDATA(7), 
        CoreAPB3_0_APBmslave0_PWDATA(6) => 
        CoreAPB3_0_APBmslave0_PWDATA(6), 
        CoreAPB3_0_APBmslave0_PWDATA(5) => 
        CoreAPB3_0_APBmslave0_PWDATA(5), 
        CoreAPB3_0_APBmslave0_PWDATA(4) => 
        CoreAPB3_0_APBmslave0_PWDATA(4), 
        CoreAPB3_0_APBmslave0_PWDATA(3) => 
        CoreAPB3_0_APBmslave0_PWDATA(3), 
        CoreAPB3_0_APBmslave0_PWDATA(2) => 
        CoreAPB3_0_APBmslave0_PWDATA(2), 
        CoreAPB3_0_APBmslave0_PWDATA(1) => 
        CoreAPB3_0_APBmslave0_PWDATA(1), 
        CoreAPB3_0_APBmslave0_PWDATA(0) => 
        CoreAPB3_0_APBmslave0_PWDATA(0), sercon_6 => sercon_6, 
        sercon_0 => sercon_0, sercon_1 => sercon_1, sercon_2 => 
        sercon_2, sercon_4 => sercon_4, sercon_5 => sercon_5, 
        sercon_7 => sercon_7, MSS_READY => MSS_READY, FAB_CCC_GL0
         => FAB_CCC_GL0, CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, BIBUF_COREI2C_0_0_SDA_IO_Y
         => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        BIBUF_COREI2C_0_0_SCL_IO_Y => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        N_902 => N_902, N_431_i => N_431_i, N_428 => N_428);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_FABOSC_0_OSC is

    port( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );

end mss_top_sb_FABOSC_0_OSC;

architecture DEF_ARCH of mss_top_sb_FABOSC_0_OSC is 

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
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREAPB3_MUXPTOB3 is

    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0);
          sersta                                      : in    std_logic_vector(4 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                : in    std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0);
          serdat                                      : in    std_logic_vector(7 downto 0);
          sercon_7                                    : in    std_logic;
          sercon_2                                    : in    std_logic;
          sercon_0                                    : in    std_logic;
          sercon_1                                    : in    std_logic;
          sercon_6                                    : in    std_logic;
          sercon_5                                    : in    std_logic;
          sercon_4                                    : in    std_logic;
          N_28_i_0                                    : out   std_logic;
          N_431_i                                     : out   std_logic;
          N_428                                       : out   std_logic;
          N_902                                       : in    std_logic;
          N_18_i_0                                    : out   std_logic;
          N_24_i_0                                    : out   std_logic;
          N_26_i_0                                    : out   std_logic;
          N_30_i_0                                    : out   std_logic;
          N_32_i_0                                    : out   std_logic;
          N_20_i_0                                    : out   std_logic;
          N_425_i_0                                   : out   std_logic
        );

end COREAPB3_MUXPTOB3;

architecture DEF_ARCH of COREAPB3_MUXPTOB3 is 

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

    signal N_28_i_1, N_437, \N_431_i\, N_479, 
        \PRDATA_i_o2_4[7]_net_1\, \N_428\, 
        \PRDATA_i_0_a2_1_0[7]_net_1\, N_503, N_661, N_660, N_917, 
        N_506, N_500, \PRDATA_i_0[6]_net_1\, 
        \PRDATA_i_0[5]_net_1\, \PRDATA_i_0[3]_net_1\, 
        \PRDATA_i_0[4]_net_1\, \PRDATA_i_0_0[0]_net_1\, 
        \PRDATA_i_0_0[1]_net_1\, N_463, N_468, 
        \PRDATA_i_0_0[7]_net_1\, \PRDATA_i_1[6]_net_1\, 
        \PRDATA_i_1[5]_net_1\, \PRDATA_i_2[3]_net_1\, 
        \PRDATA_i_2[4]_net_1\, GND_net_1, VCC_net_1 : std_logic;

begin 

    N_431_i <= \N_431_i\;
    N_428 <= \N_428\;

    \PRDATA_i_0_0_RNIKQMI[0]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \PRDATA_i_0_0[0]_net_1\, B => N_437, C => 
        serdat(0), D => N_503, Y => N_32_i_0);
    
    \PRDATA_i_a3_RNI7MHA[2]\ : CFG4
      generic map(INIT => x"00BF")

      port map(A => serdat(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => \N_431_i\, D => 
        N_479, Y => N_28_i_1);
    
    \PRDATA_i_0_0[0]\ : CFG4
      generic map(INIT => x"F0F1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => sercon_0, 
        C => N_661, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \PRDATA_i_0_0[0]_net_1\);
    
    \PRDATA_i_o2_4[7]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        CoreAPB3_0_APBmslave0_PADDR(1), D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => 
        \PRDATA_i_o2_4[7]_net_1\);
    
    \PRDATA_i_a2_0_a2[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_503);
    
    \PRDATA_i_0_0_RNIODTT[7]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => \PRDATA_i_0_a2_1_0[7]_net_1\, B => N_503, C
         => \PRDATA_i_0_0[7]_net_1\, D => N_437, Y => N_18_i_0);
    
    \PRDATA_i_o2[7]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(8), B => 
        \PRDATA_i_o2_4[7]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \N_428\);
    
    \PRDATA_i_a3_3[6]\ : CFG3
      generic map(INIT => x"08")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        N_500);
    
    \PRDATA_i_0_0[1]\ : CFG4
      generic map(INIT => x"F0F1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => sercon_1, 
        C => N_660, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \PRDATA_i_0_0[1]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_i_0_m2[7]\ : CFG3
      generic map(INIT => x"1D")

      port map(A => sercon_7, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        C => sersta(4), Y => N_917);
    
    \PRDATA_i_a3_2[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => sercon_5, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        N_468);
    
    \PRDATA_i_0_m2[1]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        CoreAPB3_0_APBmslave1_PRDATA(1), Y => N_660);
    
    \PRDATA_i_o2_0_i_a2[7]\ : CFG2
      generic map(INIT => x"1")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_431_i\);
    
    \PRDATA_i_2[3]\ : CFG4
      generic map(INIT => x"EFEE")

      port map(A => \PRDATA_i_0[3]_net_1\, B => N_500, C => 
        serdat(3), D => N_503, Y => \PRDATA_i_2[3]_net_1\);
    
    \PRDATA_i_0[6]\ : CFG4
      generic map(INIT => x"3530")

      port map(A => sersta(3), B => 
        CoreAPB3_0_APBmslave1_PRDATA(6), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_i_0[6]_net_1\);
    
    \PRDATA_i_1[6]\ : CFG3
      generic map(INIT => x"BA")

      port map(A => \PRDATA_i_0[6]_net_1\, B => serdat(6), C => 
        N_503, Y => \PRDATA_i_1[6]_net_1\);
    
    \PRDATA_i_0[3]\ : CFG4
      generic map(INIT => x"3530")

      port map(A => sersta(0), B => 
        CoreAPB3_0_APBmslave1_PRDATA(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_i_0[3]_net_1\);
    
    \PRDATA_i_2[4]\ : CFG4
      generic map(INIT => x"EFEE")

      port map(A => \PRDATA_i_0[4]_net_1\, B => N_500, C => 
        serdat(4), D => N_503, Y => \PRDATA_i_2[4]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA_i_o3_0_o2_RNIVHST[7]\ : CFG4
      generic map(INIT => x"00B0")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA(2), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_28_i_1, D => N_437, Y => N_28_i_0);
    
    \PRDATA_i_1_RNIS74S[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_468, B => N_500, C => N_437, D => 
        \PRDATA_i_1[5]_net_1\, Y => N_425_i_0);
    
    \PRDATA_i_0_0_RNIMSMI[1]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \PRDATA_i_0_0[1]_net_1\, B => N_437, C => 
        serdat(1), D => N_503, Y => N_30_i_0);
    
    \PRDATA_i_1_RNIU94S[6]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_463, B => N_500, C => N_437, D => 
        \PRDATA_i_1[6]_net_1\, Y => N_20_i_0);
    
    \PRDATA_i_o3_0_o2[7]\ : CFG3
      generic map(INIT => x"DC")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        N_902, C => \N_428\, Y => N_437);
    
    \PRDATA_i_2_RNI2ND61[3]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \PRDATA_i_2[3]_net_1\, B => N_437, C => 
        COREI2C_0_0_INT(0), D => N_506, Y => N_26_i_0);
    
    \PRDATA_i_0[5]\ : CFG4
      generic map(INIT => x"3530")

      port map(A => sersta(2), B => 
        CoreAPB3_0_APBmslave1_PRDATA(5), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_i_0[5]_net_1\);
    
    \PRDATA_i_a2_0[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        N_506);
    
    \PRDATA_i_2_RNI4PD61[4]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \PRDATA_i_2[4]_net_1\, B => N_437, C => 
        sercon_4, D => N_506, Y => N_24_i_0);
    
    \PRDATA_i_0_a2_1_0[7]\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        serdat(7), Y => \PRDATA_i_0_a2_1_0[7]_net_1\);
    
    \PRDATA_i_0_0[7]\ : CFG4
      generic map(INIT => x"5350")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA(7), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        N_917, Y => \PRDATA_i_0_0[7]_net_1\);
    
    \PRDATA_i_0[4]\ : CFG4
      generic map(INIT => x"3530")

      port map(A => sersta(1), B => 
        CoreAPB3_0_APBmslave1_PRDATA(4), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_i_0[4]_net_1\);
    
    \PRDATA_i_1[5]\ : CFG3
      generic map(INIT => x"BA")

      port map(A => \PRDATA_i_0[5]_net_1\, B => serdat(5), C => 
        N_503, Y => \PRDATA_i_1[5]_net_1\);
    
    \PRDATA_i_a3_2[6]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => sercon_6, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        N_463);
    
    \PRDATA_i_a3[2]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => sercon_2, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        N_479);
    
    \PRDATA_i_0_m2[0]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        CoreAPB3_0_APBmslave1_PRDATA(0), Y => N_661);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreAPB3 is

    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0);
          sersta                                      : in    std_logic_vector(4 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                : in    std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0);
          serdat                                      : in    std_logic_vector(7 downto 0);
          sercon_7                                    : in    std_logic;
          sercon_2                                    : in    std_logic;
          sercon_0                                    : in    std_logic;
          sercon_1                                    : in    std_logic;
          sercon_6                                    : in    std_logic;
          sercon_5                                    : in    std_logic;
          sercon_4                                    : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx : in    std_logic;
          N_902                                       : out   std_logic;
          N_28_i_0                                    : out   std_logic;
          N_431_i                                     : out   std_logic;
          N_428                                       : out   std_logic;
          N_18_i_0                                    : out   std_logic;
          N_24_i_0                                    : out   std_logic;
          N_26_i_0                                    : out   std_logic;
          N_30_i_0                                    : out   std_logic;
          N_32_i_0                                    : out   std_logic;
          N_20_i_0                                    : out   std_logic;
          N_425_i_0                                   : out   std_logic
        );

end CoreAPB3;

architecture DEF_ARCH of CoreAPB3 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component COREAPB3_MUXPTOB3
    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0) := (others => 'U');
          sersta                                      : in    std_logic_vector(4 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0) := (others => 'U');
          serdat                                      : in    std_logic_vector(7 downto 0) := (others => 'U');
          sercon_7                                    : in    std_logic := 'U';
          sercon_2                                    : in    std_logic := 'U';
          sercon_0                                    : in    std_logic := 'U';
          sercon_1                                    : in    std_logic := 'U';
          sercon_6                                    : in    std_logic := 'U';
          sercon_5                                    : in    std_logic := 'U';
          sercon_4                                    : in    std_logic := 'U';
          N_28_i_0                                    : out   std_logic;
          N_431_i                                     : out   std_logic;
          N_428                                       : out   std_logic;
          N_902                                       : in    std_logic := 'U';
          N_18_i_0                                    : out   std_logic;
          N_24_i_0                                    : out   std_logic;
          N_26_i_0                                    : out   std_logic;
          N_30_i_0                                    : out   std_logic;
          N_32_i_0                                    : out   std_logic;
          N_20_i_0                                    : out   std_logic;
          N_425_i_0                                   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
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

    signal \N_902\, GND_net_1, VCC_net_1 : std_logic;

    for all : COREAPB3_MUXPTOB3
	Use entity work.COREAPB3_MUXPTOB3(DEF_ARCH);
begin 

    N_902 <= \N_902\;

    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
      port map(mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12)
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        CoreAPB3_0_APBmslave0_PADDR(8) => 
        CoreAPB3_0_APBmslave0_PADDR(8), 
        CoreAPB3_0_APBmslave0_PADDR(7) => 
        CoreAPB3_0_APBmslave0_PADDR(7), 
        CoreAPB3_0_APBmslave0_PADDR(6) => 
        CoreAPB3_0_APBmslave0_PADDR(6), 
        CoreAPB3_0_APBmslave0_PADDR(5) => 
        CoreAPB3_0_APBmslave0_PADDR(5), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), 
        CoreAPB3_0_APBmslave0_PADDR(1) => 
        CoreAPB3_0_APBmslave0_PADDR(1), 
        CoreAPB3_0_APBmslave0_PADDR(0) => 
        CoreAPB3_0_APBmslave0_PADDR(0), sersta(4) => sersta(4), 
        sersta(3) => sersta(3), sersta(2) => sersta(2), sersta(1)
         => sersta(1), sersta(0) => sersta(0), 
        CoreAPB3_0_APBmslave1_PRDATA(7) => 
        CoreAPB3_0_APBmslave1_PRDATA(7), 
        CoreAPB3_0_APBmslave1_PRDATA(6) => 
        CoreAPB3_0_APBmslave1_PRDATA(6), 
        CoreAPB3_0_APBmslave1_PRDATA(5) => 
        CoreAPB3_0_APBmslave1_PRDATA(5), 
        CoreAPB3_0_APBmslave1_PRDATA(4) => 
        CoreAPB3_0_APBmslave1_PRDATA(4), 
        CoreAPB3_0_APBmslave1_PRDATA(3) => 
        CoreAPB3_0_APBmslave1_PRDATA(3), 
        CoreAPB3_0_APBmslave1_PRDATA(2) => 
        CoreAPB3_0_APBmslave1_PRDATA(2), 
        CoreAPB3_0_APBmslave1_PRDATA(1) => 
        CoreAPB3_0_APBmslave1_PRDATA(1), 
        CoreAPB3_0_APBmslave1_PRDATA(0) => 
        CoreAPB3_0_APBmslave1_PRDATA(0), COREI2C_0_0_INT(0) => 
        COREI2C_0_0_INT(0), serdat(7) => serdat(7), serdat(6) => 
        serdat(6), serdat(5) => serdat(5), serdat(4) => serdat(4), 
        serdat(3) => serdat(3), serdat(2) => serdat(2), serdat(1)
         => serdat(1), serdat(0) => serdat(0), sercon_7 => 
        sercon_7, sercon_2 => sercon_2, sercon_0 => sercon_0, 
        sercon_1 => sercon_1, sercon_6 => sercon_6, sercon_5 => 
        sercon_5, sercon_4 => sercon_4, N_28_i_0 => N_28_i_0, 
        N_431_i => N_431_i, N_428 => N_428, N_902 => \N_902\, 
        N_18_i_0 => N_18_i_0, N_24_i_0 => N_24_i_0, N_26_i_0 => 
        N_26_i_0, N_30_i_0 => N_30_i_0, N_32_i_0 => N_32_i_0, 
        N_20_i_0 => N_20_i_0, N_425_i_0 => N_425_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    CoreAPB3_0_APBmslave1_PSELx_i_0_o3 : CFG4
      generic map(INIT => x"FFFB")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \N_902\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_MSS is

    port( CoreAPB3_0_APBmslave0_PADDR                 : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N   : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F        : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                 : in    std_logic;
          N_32_i_0                                    : in    std_logic;
          N_30_i_0                                    : in    std_logic;
          N_28_i_0                                    : in    std_logic;
          N_26_i_0                                    : in    std_logic;
          N_24_i_0                                    : in    std_logic;
          N_425_i_0                                   : in    std_logic;
          N_20_i_0                                    : in    std_logic;
          N_18_i_0                                    : in    std_logic;
          FAB_CCC_LOCK                                : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic
        );

end mss_top_sb_MSS;

architecture DEF_ARCH of mss_top_sb_MSS is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component MSS_010

            generic (INIT:std_logic_vector(1437 downto 0) := "00" & x"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"; 
        ACT_UBITS:std_logic_vector(55 downto 0) := x"FFFFFFFFFFFFFF"; 
        MEMORYFILE:string := ""; RTC_MAIN_XTL_FREQ:real := 0.0; 
        RTC_MAIN_XTL_MODE:string := "1");

    port( CAN_RXBUS_MGPIO3A_H2F_A                 : out   std_logic;
          CAN_RXBUS_MGPIO3A_H2F_B                 : out   std_logic;
          CAN_TX_EBL_MGPIO4A_H2F_A                : out   std_logic;
          CAN_TX_EBL_MGPIO4A_H2F_B                : out   std_logic;
          CAN_TXBUS_MGPIO2A_H2F_A                 : out   std_logic;
          CAN_TXBUS_MGPIO2A_H2F_B                 : out   std_logic;
          CLK_CONFIG_APB                          : out   std_logic;
          COMMS_INT                               : out   std_logic;
          CONFIG_PRESET_N                         : out   std_logic;
          EDAC_ERROR                              : out   std_logic_vector(7 downto 0);
          F_FM0_RDATA                             : out   std_logic_vector(31 downto 0);
          F_FM0_READYOUT                          : out   std_logic;
          F_FM0_RESP                              : out   std_logic;
          F_HM0_ADDR                              : out   std_logic_vector(31 downto 0);
          F_HM0_ENABLE                            : out   std_logic;
          F_HM0_SEL                               : out   std_logic;
          F_HM0_SIZE                              : out   std_logic_vector(1 downto 0);
          F_HM0_TRANS1                            : out   std_logic;
          F_HM0_WDATA                             : out   std_logic_vector(31 downto 0);
          F_HM0_WRITE                             : out   std_logic;
          FAB_CHRGVBUS                            : out   std_logic;
          FAB_DISCHRGVBUS                         : out   std_logic;
          FAB_DMPULLDOWN                          : out   std_logic;
          FAB_DPPULLDOWN                          : out   std_logic;
          FAB_DRVVBUS                             : out   std_logic;
          FAB_IDPULLUP                            : out   std_logic;
          FAB_OPMODE                              : out   std_logic_vector(1 downto 0);
          FAB_SUSPENDM                            : out   std_logic;
          FAB_TERMSEL                             : out   std_logic;
          FAB_TXVALID                             : out   std_logic;
          FAB_VCONTROL                            : out   std_logic_vector(3 downto 0);
          FAB_VCONTROLLOADM                       : out   std_logic;
          FAB_XCVRSEL                             : out   std_logic_vector(1 downto 0);
          FAB_XDATAOUT                            : out   std_logic_vector(7 downto 0);
          FACC_GLMUX_SEL                          : out   std_logic;
          FIC32_0_MASTER                          : out   std_logic_vector(1 downto 0);
          FIC32_1_MASTER                          : out   std_logic_vector(1 downto 0);
          FPGA_RESET_N                            : out   std_logic;
          GTX_CLK                                 : out   std_logic;
          H2F_INTERRUPT                           : out   std_logic_vector(15 downto 0);
          H2F_NMI                                 : out   std_logic;
          H2FCALIB                                : out   std_logic;
          I2C0_SCL_MGPIO31B_H2F_A                 : out   std_logic;
          I2C0_SCL_MGPIO31B_H2F_B                 : out   std_logic;
          I2C0_SDA_MGPIO30B_H2F_A                 : out   std_logic;
          I2C0_SDA_MGPIO30B_H2F_B                 : out   std_logic;
          I2C1_SCL_MGPIO1A_H2F_A                  : out   std_logic;
          I2C1_SCL_MGPIO1A_H2F_B                  : out   std_logic;
          I2C1_SDA_MGPIO0A_H2F_A                  : out   std_logic;
          I2C1_SDA_MGPIO0A_H2F_B                  : out   std_logic;
          MDCF                                    : out   std_logic;
          MDOENF                                  : out   std_logic;
          MDOF                                    : out   std_logic;
          MMUART0_CTS_MGPIO19B_H2F_A              : out   std_logic;
          MMUART0_CTS_MGPIO19B_H2F_B              : out   std_logic;
          MMUART0_DCD_MGPIO22B_H2F_A              : out   std_logic;
          MMUART0_DCD_MGPIO22B_H2F_B              : out   std_logic;
          MMUART0_DSR_MGPIO20B_H2F_A              : out   std_logic;
          MMUART0_DSR_MGPIO20B_H2F_B              : out   std_logic;
          MMUART0_DTR_MGPIO18B_H2F_A              : out   std_logic;
          MMUART0_DTR_MGPIO18B_H2F_B              : out   std_logic;
          MMUART0_RI_MGPIO21B_H2F_A               : out   std_logic;
          MMUART0_RI_MGPIO21B_H2F_B               : out   std_logic;
          MMUART0_RTS_MGPIO17B_H2F_A              : out   std_logic;
          MMUART0_RTS_MGPIO17B_H2F_B              : out   std_logic;
          MMUART0_RXD_MGPIO28B_H2F_A              : out   std_logic;
          MMUART0_RXD_MGPIO28B_H2F_B              : out   std_logic;
          MMUART0_SCK_MGPIO29B_H2F_A              : out   std_logic;
          MMUART0_SCK_MGPIO29B_H2F_B              : out   std_logic;
          MMUART0_TXD_MGPIO27B_H2F_A              : out   std_logic;
          MMUART0_TXD_MGPIO27B_H2F_B              : out   std_logic;
          MMUART1_DTR_MGPIO12B_H2F_A              : out   std_logic;
          MMUART1_RTS_MGPIO11B_H2F_A              : out   std_logic;
          MMUART1_RTS_MGPIO11B_H2F_B              : out   std_logic;
          MMUART1_RXD_MGPIO26B_H2F_A              : out   std_logic;
          MMUART1_RXD_MGPIO26B_H2F_B              : out   std_logic;
          MMUART1_SCK_MGPIO25B_H2F_A              : out   std_logic;
          MMUART1_SCK_MGPIO25B_H2F_B              : out   std_logic;
          MMUART1_TXD_MGPIO24B_H2F_A              : out   std_logic;
          MMUART1_TXD_MGPIO24B_H2F_B              : out   std_logic;
          MPLL_LOCK                               : out   std_logic;
          PER2_FABRIC_PADDR                       : out   std_logic_vector(15 downto 2);
          PER2_FABRIC_PENABLE                     : out   std_logic;
          PER2_FABRIC_PSEL                        : out   std_logic;
          PER2_FABRIC_PWDATA                      : out   std_logic_vector(31 downto 0);
          PER2_FABRIC_PWRITE                      : out   std_logic;
          RTC_MATCH                               : out   std_logic;
          SLEEPDEEP                               : out   std_logic;
          SLEEPHOLDACK                            : out   std_logic;
          SLEEPING                                : out   std_logic;
          SMBALERT_NO0                            : out   std_logic;
          SMBALERT_NO1                            : out   std_logic;
          SMBSUS_NO0                              : out   std_logic;
          SMBSUS_NO1                              : out   std_logic;
          SPI0_CLK_OUT                            : out   std_logic;
          SPI0_SDI_MGPIO5A_H2F_A                  : out   std_logic;
          SPI0_SDI_MGPIO5A_H2F_B                  : out   std_logic;
          SPI0_SDO_MGPIO6A_H2F_A                  : out   std_logic;
          SPI0_SDO_MGPIO6A_H2F_B                  : out   std_logic;
          SPI0_SS0_MGPIO7A_H2F_A                  : out   std_logic;
          SPI0_SS0_MGPIO7A_H2F_B                  : out   std_logic;
          SPI0_SS1_MGPIO8A_H2F_A                  : out   std_logic;
          SPI0_SS1_MGPIO8A_H2F_B                  : out   std_logic;
          SPI0_SS2_MGPIO9A_H2F_A                  : out   std_logic;
          SPI0_SS2_MGPIO9A_H2F_B                  : out   std_logic;
          SPI0_SS3_MGPIO10A_H2F_A                 : out   std_logic;
          SPI0_SS3_MGPIO10A_H2F_B                 : out   std_logic;
          SPI0_SS4_MGPIO19A_H2F_A                 : out   std_logic;
          SPI0_SS5_MGPIO20A_H2F_A                 : out   std_logic;
          SPI0_SS6_MGPIO21A_H2F_A                 : out   std_logic;
          SPI0_SS7_MGPIO22A_H2F_A                 : out   std_logic;
          SPI1_CLK_OUT                            : out   std_logic;
          SPI1_SDI_MGPIO11A_H2F_A                 : out   std_logic;
          SPI1_SDI_MGPIO11A_H2F_B                 : out   std_logic;
          SPI1_SDO_MGPIO12A_H2F_A                 : out   std_logic;
          SPI1_SDO_MGPIO12A_H2F_B                 : out   std_logic;
          SPI1_SS0_MGPIO13A_H2F_A                 : out   std_logic;
          SPI1_SS0_MGPIO13A_H2F_B                 : out   std_logic;
          SPI1_SS1_MGPIO14A_H2F_A                 : out   std_logic;
          SPI1_SS1_MGPIO14A_H2F_B                 : out   std_logic;
          SPI1_SS2_MGPIO15A_H2F_A                 : out   std_logic;
          SPI1_SS2_MGPIO15A_H2F_B                 : out   std_logic;
          SPI1_SS3_MGPIO16A_H2F_A                 : out   std_logic;
          SPI1_SS3_MGPIO16A_H2F_B                 : out   std_logic;
          SPI1_SS4_MGPIO17A_H2F_A                 : out   std_logic;
          SPI1_SS5_MGPIO18A_H2F_A                 : out   std_logic;
          SPI1_SS6_MGPIO23A_H2F_A                 : out   std_logic;
          SPI1_SS7_MGPIO24A_H2F_A                 : out   std_logic;
          TCGF                                    : out   std_logic_vector(9 downto 0);
          TRACECLK                                : out   std_logic;
          TRACEDATA                               : out   std_logic_vector(3 downto 0);
          TX_CLK                                  : out   std_logic;
          TX_ENF                                  : out   std_logic;
          TX_ERRF                                 : out   std_logic;
          TXCTL_EN_RIF                            : out   std_logic;
          TXD_RIF                                 : out   std_logic_vector(3 downto 0);
          TXDF                                    : out   std_logic_vector(7 downto 0);
          TXEV                                    : out   std_logic;
          WDOGTIMEOUT                             : out   std_logic;
          F_ARREADY_HREADYOUT1                    : out   std_logic;
          F_AWREADY_HREADYOUT0                    : out   std_logic;
          F_BID                                   : out   std_logic_vector(3 downto 0);
          F_BRESP_HRESP0                          : out   std_logic_vector(1 downto 0);
          F_BVALID                                : out   std_logic;
          F_RDATA_HRDATA01                        : out   std_logic_vector(63 downto 0);
          F_RID                                   : out   std_logic_vector(3 downto 0);
          F_RLAST                                 : out   std_logic;
          F_RRESP_HRESP1                          : out   std_logic_vector(1 downto 0);
          F_RVALID                                : out   std_logic;
          F_WREADY                                : out   std_logic;
          MDDR_FABRIC_PRDATA                      : out   std_logic_vector(15 downto 0);
          MDDR_FABRIC_PREADY                      : out   std_logic;
          MDDR_FABRIC_PSLVERR                     : out   std_logic;
          CAN_RXBUS_F2H_SCP                       : in    std_logic := 'U';
          CAN_TX_EBL_F2H_SCP                      : in    std_logic := 'U';
          CAN_TXBUS_F2H_SCP                       : in    std_logic := 'U';
          COLF                                    : in    std_logic := 'U';
          CRSF                                    : in    std_logic := 'U';
          F2_DMAREADY                             : in    std_logic_vector(1 downto 0) := (others => 'U');
          F2H_INTERRUPT                           : in    std_logic_vector(15 downto 0) := (others => 'U');
          F2HCALIB                                : in    std_logic := 'U';
          F_DMAREADY                              : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_FM0_ADDR                              : in    std_logic_vector(31 downto 0) := (others => 'U');
          F_FM0_ENABLE                            : in    std_logic := 'U';
          F_FM0_MASTLOCK                          : in    std_logic := 'U';
          F_FM0_READY                             : in    std_logic := 'U';
          F_FM0_SEL                               : in    std_logic := 'U';
          F_FM0_SIZE                              : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_FM0_TRANS1                            : in    std_logic := 'U';
          F_FM0_WDATA                             : in    std_logic_vector(31 downto 0) := (others => 'U');
          F_FM0_WRITE                             : in    std_logic := 'U';
          F_HM0_RDATA                             : in    std_logic_vector(31 downto 0) := (others => 'U');
          F_HM0_READY                             : in    std_logic := 'U';
          F_HM0_RESP                              : in    std_logic := 'U';
          FAB_AVALID                              : in    std_logic := 'U';
          FAB_HOSTDISCON                          : in    std_logic := 'U';
          FAB_IDDIG                               : in    std_logic := 'U';
          FAB_LINESTATE                           : in    std_logic_vector(1 downto 0) := (others => 'U');
          FAB_M3_RESET_N                          : in    std_logic := 'U';
          FAB_PLL_LOCK                            : in    std_logic := 'U';
          FAB_RXACTIVE                            : in    std_logic := 'U';
          FAB_RXERROR                             : in    std_logic := 'U';
          FAB_RXVALID                             : in    std_logic := 'U';
          FAB_RXVALIDH                            : in    std_logic := 'U';
          FAB_SESSEND                             : in    std_logic := 'U';
          FAB_TXREADY                             : in    std_logic := 'U';
          FAB_VBUSVALID                           : in    std_logic := 'U';
          FAB_VSTATUS                             : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_XDATAIN                             : in    std_logic_vector(7 downto 0) := (others => 'U');
          GTX_CLKPF                               : in    std_logic := 'U';
          I2C0_BCLK                               : in    std_logic := 'U';
          I2C0_SCL_F2H_SCP                        : in    std_logic := 'U';
          I2C0_SDA_F2H_SCP                        : in    std_logic := 'U';
          I2C1_BCLK                               : in    std_logic := 'U';
          I2C1_SCL_F2H_SCP                        : in    std_logic := 'U';
          I2C1_SDA_F2H_SCP                        : in    std_logic := 'U';
          MDIF                                    : in    std_logic := 'U';
          MGPIO0A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO10A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO11A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO11B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO12A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO13A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO14A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO15A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO16A_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO17B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO18B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO19B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO1A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO20B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO21B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO22B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO24B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO25B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO26B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO27B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO28B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO29B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO2A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO30B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO31B_F2H_GPIN                       : in    std_logic := 'U';
          MGPIO3A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO4A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO5A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO6A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO7A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO8A_F2H_GPIN                        : in    std_logic := 'U';
          MGPIO9A_F2H_GPIN                        : in    std_logic := 'U';
          MMUART0_CTS_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_DCD_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_DSR_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_DTR_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_RI_F2H_SCP                      : in    std_logic := 'U';
          MMUART0_RTS_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_RXD_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_SCK_F2H_SCP                     : in    std_logic := 'U';
          MMUART0_TXD_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_CTS_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_DCD_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_DSR_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_RI_F2H_SCP                      : in    std_logic := 'U';
          MMUART1_RTS_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_RXD_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_SCK_F2H_SCP                     : in    std_logic := 'U';
          MMUART1_TXD_F2H_SCP                     : in    std_logic := 'U';
          PER2_FABRIC_PRDATA                      : in    std_logic_vector(31 downto 0) := (others => 'U');
          PER2_FABRIC_PREADY                      : in    std_logic := 'U';
          PER2_FABRIC_PSLVERR                     : in    std_logic := 'U';
          RCGF                                    : in    std_logic_vector(9 downto 0) := (others => 'U');
          RX_CLKPF                                : in    std_logic := 'U';
          RX_DVF                                  : in    std_logic := 'U';
          RX_ERRF                                 : in    std_logic := 'U';
          RX_EV                                   : in    std_logic := 'U';
          RXDF                                    : in    std_logic_vector(7 downto 0) := (others => 'U');
          SLEEPHOLDREQ                            : in    std_logic := 'U';
          SMBALERT_NI0                            : in    std_logic := 'U';
          SMBALERT_NI1                            : in    std_logic := 'U';
          SMBSUS_NI0                              : in    std_logic := 'U';
          SMBSUS_NI1                              : in    std_logic := 'U';
          SPI0_CLK_IN                             : in    std_logic := 'U';
          SPI0_SDI_F2H_SCP                        : in    std_logic := 'U';
          SPI0_SDO_F2H_SCP                        : in    std_logic := 'U';
          SPI0_SS0_F2H_SCP                        : in    std_logic := 'U';
          SPI0_SS1_F2H_SCP                        : in    std_logic := 'U';
          SPI0_SS2_F2H_SCP                        : in    std_logic := 'U';
          SPI0_SS3_F2H_SCP                        : in    std_logic := 'U';
          SPI1_CLK_IN                             : in    std_logic := 'U';
          SPI1_SDI_F2H_SCP                        : in    std_logic := 'U';
          SPI1_SDO_F2H_SCP                        : in    std_logic := 'U';
          SPI1_SS0_F2H_SCP                        : in    std_logic := 'U';
          SPI1_SS1_F2H_SCP                        : in    std_logic := 'U';
          SPI1_SS2_F2H_SCP                        : in    std_logic := 'U';
          SPI1_SS3_F2H_SCP                        : in    std_logic := 'U';
          TX_CLKPF                                : in    std_logic := 'U';
          USER_MSS_GPIO_RESET_N                   : in    std_logic := 'U';
          USER_MSS_RESET_N                        : in    std_logic := 'U';
          XCLK_FAB                                : in    std_logic := 'U';
          CLK_BASE                                : in    std_logic := 'U';
          CLK_MDDR_APB                            : in    std_logic := 'U';
          F_ARADDR_HADDR1                         : in    std_logic_vector(31 downto 0) := (others => 'U');
          F_ARBURST_HTRANS1                       : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_ARID_HSEL1                            : in    std_logic_vector(3 downto 0) := (others => 'U');
          F_ARLEN_HBURST1                         : in    std_logic_vector(3 downto 0) := (others => 'U');
          F_ARLOCK_HMASTLOCK1                     : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_ARSIZE_HSIZE1                         : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_ARVALID_HWRITE1                       : in    std_logic := 'U';
          F_AWADDR_HADDR0                         : in    std_logic_vector(31 downto 0) := (others => 'U');
          F_AWBURST_HTRANS0                       : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_AWID_HSEL0                            : in    std_logic_vector(3 downto 0) := (others => 'U');
          F_AWLEN_HBURST0                         : in    std_logic_vector(3 downto 0) := (others => 'U');
          F_AWLOCK_HMASTLOCK0                     : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_AWSIZE_HSIZE0                         : in    std_logic_vector(1 downto 0) := (others => 'U');
          F_AWVALID_HWRITE0                       : in    std_logic := 'U';
          F_BREADY                                : in    std_logic := 'U';
          F_RMW_AXI                               : in    std_logic := 'U';
          F_RREADY                                : in    std_logic := 'U';
          F_WDATA_HWDATA01                        : in    std_logic_vector(63 downto 0) := (others => 'U');
          F_WID_HREADY01                          : in    std_logic_vector(3 downto 0) := (others => 'U');
          F_WLAST                                 : in    std_logic := 'U';
          F_WSTRB                                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          F_WVALID                                : in    std_logic := 'U';
          FPGA_MDDR_ARESET_N                      : in    std_logic := 'U';
          MDDR_FABRIC_PADDR                       : in    std_logic_vector(10 downto 2) := (others => 'U');
          MDDR_FABRIC_PENABLE                     : in    std_logic := 'U';
          MDDR_FABRIC_PSEL                        : in    std_logic := 'U';
          MDDR_FABRIC_PWDATA                      : in    std_logic_vector(15 downto 0) := (others => 'U');
          MDDR_FABRIC_PWRITE                      : in    std_logic := 'U';
          PRESET_N                                : in    std_logic := 'U';
          CAN_RXBUS_USBA_DATA1_MGPIO3A_IN         : in    std_logic := 'U';
          CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN        : in    std_logic := 'U';
          CAN_TXBUS_USBA_DATA0_MGPIO2A_IN         : in    std_logic := 'U';
          DM_IN                                   : in    std_logic_vector(2 downto 0) := (others => 'U');
          DRAM_DQ_IN                              : in    std_logic_vector(17 downto 0) := (others => 'U');
          DRAM_DQS_IN                             : in    std_logic_vector(2 downto 0) := (others => 'U');
          DRAM_FIFO_WE_IN                         : in    std_logic_vector(1 downto 0) := (others => 'U');
          I2C0_SCL_USBC_DATA1_MGPIO31B_IN         : in    std_logic := 'U';
          I2C0_SDA_USBC_DATA0_MGPIO30B_IN         : in    std_logic := 'U';
          I2C1_SCL_USBA_DATA4_MGPIO1A_IN          : in    std_logic := 'U';
          I2C1_SDA_USBA_DATA3_MGPIO0A_IN          : in    std_logic := 'U';
          MMUART0_CTS_USBC_DATA7_MGPIO19B_IN      : in    std_logic := 'U';
          MMUART0_DCD_MGPIO22B_IN                 : in    std_logic := 'U';
          MMUART0_DSR_MGPIO20B_IN                 : in    std_logic := 'U';
          MMUART0_DTR_USBC_DATA6_MGPIO18B_IN      : in    std_logic := 'U';
          MMUART0_RI_MGPIO21B_IN                  : in    std_logic := 'U';
          MMUART0_RTS_USBC_DATA5_MGPIO17B_IN      : in    std_logic := 'U';
          MMUART0_RXD_USBC_STP_MGPIO28B_IN        : in    std_logic := 'U';
          MMUART0_SCK_USBC_NXT_MGPIO29B_IN        : in    std_logic := 'U';
          MMUART0_TXD_USBC_DIR_MGPIO27B_IN        : in    std_logic := 'U';
          MMUART1_RXD_USBC_DATA3_MGPIO26B_IN      : in    std_logic := 'U';
          MMUART1_SCK_USBC_DATA4_MGPIO25B_IN      : in    std_logic := 'U';
          MMUART1_TXD_USBC_DATA2_MGPIO24B_IN      : in    std_logic := 'U';
          RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN     : in    std_logic := 'U';
          RGMII_MDC_RMII_MDC_IN                   : in    std_logic := 'U';
          RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN      : in    std_logic := 'U';
          RGMII_RX_CLK_IN                         : in    std_logic := 'U';
          RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN  : in    std_logic := 'U';
          RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN      : in    std_logic := 'U';
          RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN      : in    std_logic := 'U';
          RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN     : in    std_logic := 'U';
          RGMII_RXD3_USBB_DATA4_IN                : in    std_logic := 'U';
          RGMII_TX_CLK_IN                         : in    std_logic := 'U';
          RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN     : in    std_logic := 'U';
          RGMII_TXD0_RMII_TXD0_USBB_DIR_IN        : in    std_logic := 'U';
          RGMII_TXD1_RMII_TXD1_USBB_STP_IN        : in    std_logic := 'U';
          RGMII_TXD2_USBB_DATA5_IN                : in    std_logic := 'U';
          RGMII_TXD3_USBB_DATA6_IN                : in    std_logic := 'U';
          SPI0_SCK_USBA_XCLK_IN                   : in    std_logic := 'U';
          SPI0_SDI_USBA_DIR_MGPIO5A_IN            : in    std_logic := 'U';
          SPI0_SDO_USBA_STP_MGPIO6A_IN            : in    std_logic := 'U';
          SPI0_SS0_USBA_NXT_MGPIO7A_IN            : in    std_logic := 'U';
          SPI0_SS1_USBA_DATA5_MGPIO8A_IN          : in    std_logic := 'U';
          SPI0_SS2_USBA_DATA6_MGPIO9A_IN          : in    std_logic := 'U';
          SPI0_SS3_USBA_DATA7_MGPIO10A_IN         : in    std_logic := 'U';
          SPI1_SCK_IN                             : in    std_logic := 'U';
          SPI1_SDI_MGPIO11A_IN                    : in    std_logic := 'U';
          SPI1_SDO_MGPIO12A_IN                    : in    std_logic := 'U';
          SPI1_SS0_MGPIO13A_IN                    : in    std_logic := 'U';
          SPI1_SS1_MGPIO14A_IN                    : in    std_logic := 'U';
          SPI1_SS2_MGPIO15A_IN                    : in    std_logic := 'U';
          SPI1_SS3_MGPIO16A_IN                    : in    std_logic := 'U';
          SPI1_SS4_MGPIO17A_IN                    : in    std_logic := 'U';
          SPI1_SS5_MGPIO18A_IN                    : in    std_logic := 'U';
          SPI1_SS6_MGPIO23A_IN                    : in    std_logic := 'U';
          SPI1_SS7_MGPIO24A_IN                    : in    std_logic := 'U';
          USBC_XCLK_IN                            : in    std_logic := 'U';
          CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT        : out   std_logic;
          CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT       : out   std_logic;
          CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT        : out   std_logic;
          DRAM_ADDR                               : out   std_logic_vector(15 downto 0);
          DRAM_BA                                 : out   std_logic_vector(2 downto 0);
          DRAM_CASN                               : out   std_logic;
          DRAM_CKE                                : out   std_logic;
          DRAM_CLK                                : out   std_logic;
          DRAM_CSN                                : out   std_logic;
          DRAM_DM_RDQS_OUT                        : out   std_logic_vector(2 downto 0);
          DRAM_DQ_OUT                             : out   std_logic_vector(17 downto 0);
          DRAM_DQS_OUT                            : out   std_logic_vector(2 downto 0);
          DRAM_FIFO_WE_OUT                        : out   std_logic_vector(1 downto 0);
          DRAM_ODT                                : out   std_logic;
          DRAM_RASN                               : out   std_logic;
          DRAM_RSTN                               : out   std_logic;
          DRAM_WEN                                : out   std_logic;
          I2C0_SCL_USBC_DATA1_MGPIO31B_OUT        : out   std_logic;
          I2C0_SDA_USBC_DATA0_MGPIO30B_OUT        : out   std_logic;
          I2C1_SCL_USBA_DATA4_MGPIO1A_OUT         : out   std_logic;
          I2C1_SDA_USBA_DATA3_MGPIO0A_OUT         : out   std_logic;
          MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT     : out   std_logic;
          MMUART0_DCD_MGPIO22B_OUT                : out   std_logic;
          MMUART0_DSR_MGPIO20B_OUT                : out   std_logic;
          MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT     : out   std_logic;
          MMUART0_RI_MGPIO21B_OUT                 : out   std_logic;
          MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT     : out   std_logic;
          MMUART0_RXD_USBC_STP_MGPIO28B_OUT       : out   std_logic;
          MMUART0_SCK_USBC_NXT_MGPIO29B_OUT       : out   std_logic;
          MMUART0_TXD_USBC_DIR_MGPIO27B_OUT       : out   std_logic;
          MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT     : out   std_logic;
          MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT     : out   std_logic;
          MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT     : out   std_logic;
          RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT    : out   std_logic;
          RGMII_MDC_RMII_MDC_OUT                  : out   std_logic;
          RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT     : out   std_logic;
          RGMII_RX_CLK_OUT                        : out   std_logic;
          RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT : out   std_logic;
          RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT     : out   std_logic;
          RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT     : out   std_logic;
          RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT    : out   std_logic;
          RGMII_RXD3_USBB_DATA4_OUT               : out   std_logic;
          RGMII_TX_CLK_OUT                        : out   std_logic;
          RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT    : out   std_logic;
          RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT       : out   std_logic;
          RGMII_TXD1_RMII_TXD1_USBB_STP_OUT       : out   std_logic;
          RGMII_TXD2_USBB_DATA5_OUT               : out   std_logic;
          RGMII_TXD3_USBB_DATA6_OUT               : out   std_logic;
          SPI0_SCK_USBA_XCLK_OUT                  : out   std_logic;
          SPI0_SDI_USBA_DIR_MGPIO5A_OUT           : out   std_logic;
          SPI0_SDO_USBA_STP_MGPIO6A_OUT           : out   std_logic;
          SPI0_SS0_USBA_NXT_MGPIO7A_OUT           : out   std_logic;
          SPI0_SS1_USBA_DATA5_MGPIO8A_OUT         : out   std_logic;
          SPI0_SS2_USBA_DATA6_MGPIO9A_OUT         : out   std_logic;
          SPI0_SS3_USBA_DATA7_MGPIO10A_OUT        : out   std_logic;
          SPI1_SCK_OUT                            : out   std_logic;
          SPI1_SDI_MGPIO11A_OUT                   : out   std_logic;
          SPI1_SDO_MGPIO12A_OUT                   : out   std_logic;
          SPI1_SS0_MGPIO13A_OUT                   : out   std_logic;
          SPI1_SS1_MGPIO14A_OUT                   : out   std_logic;
          SPI1_SS2_MGPIO15A_OUT                   : out   std_logic;
          SPI1_SS3_MGPIO16A_OUT                   : out   std_logic;
          SPI1_SS4_MGPIO17A_OUT                   : out   std_logic;
          SPI1_SS5_MGPIO18A_OUT                   : out   std_logic;
          SPI1_SS6_MGPIO23A_OUT                   : out   std_logic;
          SPI1_SS7_MGPIO24A_OUT                   : out   std_logic;
          USBC_XCLK_OUT                           : out   std_logic;
          CAN_RXBUS_USBA_DATA1_MGPIO3A_OE         : out   std_logic;
          CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE        : out   std_logic;
          CAN_TXBUS_USBA_DATA0_MGPIO2A_OE         : out   std_logic;
          DM_OE                                   : out   std_logic_vector(2 downto 0);
          DRAM_DQ_OE                              : out   std_logic_vector(17 downto 0);
          DRAM_DQS_OE                             : out   std_logic_vector(2 downto 0);
          I2C0_SCL_USBC_DATA1_MGPIO31B_OE         : out   std_logic;
          I2C0_SDA_USBC_DATA0_MGPIO30B_OE         : out   std_logic;
          I2C1_SCL_USBA_DATA4_MGPIO1A_OE          : out   std_logic;
          I2C1_SDA_USBA_DATA3_MGPIO0A_OE          : out   std_logic;
          MMUART0_CTS_USBC_DATA7_MGPIO19B_OE      : out   std_logic;
          MMUART0_DCD_MGPIO22B_OE                 : out   std_logic;
          MMUART0_DSR_MGPIO20B_OE                 : out   std_logic;
          MMUART0_DTR_USBC_DATA6_MGPIO18B_OE      : out   std_logic;
          MMUART0_RI_MGPIO21B_OE                  : out   std_logic;
          MMUART0_RTS_USBC_DATA5_MGPIO17B_OE      : out   std_logic;
          MMUART0_RXD_USBC_STP_MGPIO28B_OE        : out   std_logic;
          MMUART0_SCK_USBC_NXT_MGPIO29B_OE        : out   std_logic;
          MMUART0_TXD_USBC_DIR_MGPIO27B_OE        : out   std_logic;
          MMUART1_RXD_USBC_DATA3_MGPIO26B_OE      : out   std_logic;
          MMUART1_SCK_USBC_DATA4_MGPIO25B_OE      : out   std_logic;
          MMUART1_TXD_USBC_DATA2_MGPIO24B_OE      : out   std_logic;
          RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE     : out   std_logic;
          RGMII_MDC_RMII_MDC_OE                   : out   std_logic;
          RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE      : out   std_logic;
          RGMII_RX_CLK_OE                         : out   std_logic;
          RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE  : out   std_logic;
          RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE      : out   std_logic;
          RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE      : out   std_logic;
          RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE     : out   std_logic;
          RGMII_RXD3_USBB_DATA4_OE                : out   std_logic;
          RGMII_TX_CLK_OE                         : out   std_logic;
          RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE     : out   std_logic;
          RGMII_TXD0_RMII_TXD0_USBB_DIR_OE        : out   std_logic;
          RGMII_TXD1_RMII_TXD1_USBB_STP_OE        : out   std_logic;
          RGMII_TXD2_USBB_DATA5_OE                : out   std_logic;
          RGMII_TXD3_USBB_DATA6_OE                : out   std_logic;
          SPI0_SCK_USBA_XCLK_OE                   : out   std_logic;
          SPI0_SDI_USBA_DIR_MGPIO5A_OE            : out   std_logic;
          SPI0_SDO_USBA_STP_MGPIO6A_OE            : out   std_logic;
          SPI0_SS0_USBA_NXT_MGPIO7A_OE            : out   std_logic;
          SPI0_SS1_USBA_DATA5_MGPIO8A_OE          : out   std_logic;
          SPI0_SS2_USBA_DATA6_MGPIO9A_OE          : out   std_logic;
          SPI0_SS3_USBA_DATA7_MGPIO10A_OE         : out   std_logic;
          SPI1_SCK_OE                             : out   std_logic;
          SPI1_SDI_MGPIO11A_OE                    : out   std_logic;
          SPI1_SDO_MGPIO12A_OE                    : out   std_logic;
          SPI1_SS0_MGPIO13A_OE                    : out   std_logic;
          SPI1_SS1_MGPIO14A_OE                    : out   std_logic;
          SPI1_SS2_MGPIO15A_OE                    : out   std_logic;
          SPI1_SS3_MGPIO16A_OE                    : out   std_logic;
          SPI1_SS4_MGPIO17A_OE                    : out   std_logic;
          SPI1_SS5_MGPIO18A_OE                    : out   std_logic;
          SPI1_SS6_MGPIO23A_OE                    : out   std_logic;
          SPI1_SS7_MGPIO24A_OE                    : out   std_logic;
          USBC_XCLK_OE                            : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, GND_net_1 : std_logic;
    signal nc228, nc203, nc265, nc216, nc194, nc151, nc23, nc175, 
        nc250, nc58, nc116, nc74, nc133, nc238, nc167, nc84, nc39, 
        nc72, nc256, nc212, nc205, nc82, nc145, nc181, nc160, 
        nc57, nc349, nc156, nc280, nc125, nc211, nc73, nc107, 
        nc329, nc66, nc83, nc9, nc252, nc171, nc54, nc286, nc307, 
        nc135, nc41, nc100, nc270, nc339, nc52, nc251, nc186, 
        nc29, nc269, nc118, nc60, nc141, nc311, nc276, nc193, 
        nc214, nc298, nc282, nc240, nc45, nc53, nc121, nc176, 
        nc220, nc158, nc281, nc209, nc246, nc351, nc162, nc11, 
        nc272, nc131, nc254, nc267, nc96, nc79, nc226, nc146, 
        nc230, nc89, nc119, nc48, nc271, nc213, nc300, nc126, 
        nc195, nc188, nc242, nc15, nc308, nc236, nc102, nc304, 
        nc3, nc207, nc47, nc90, nc284, nc222, nc159, nc136, nc241, 
        nc253, nc178, nc306, nc215, nc59, nc221, nc232, nc274, 
        nc18, nc44, nc117, nc189, nc164, nc148, nc42, nc231, 
        nc191, nc255, nc283, nc341, nc317, nc290, nc17, nc2, 
        nc302, nc110, nc128, nc244, nc321, nc43, nc179, nc157, 
        nc36, nc224, nc296, nc273, nc61, nc104, nc138, nc14, 
        nc285, nc303, nc150, nc331, nc196, nc234, nc149, nc12, 
        nc219, nc30, nc243, nc187, nc65, nc7, nc292, nc129, nc275, 
        nc8, nc223, nc13, nc305, nc180, nc26, nc291, nc177, nc139, 
        nc310, nc259, nc245, nc233, nc163, nc318, nc268, nc112, 
        nc68, nc49, nc314, nc217, nc170, nc91, nc225, nc5, nc20, 
        nc198, nc147, nc350, nc316, nc67, nc289, nc294, nc152, 
        nc127, nc103, nc235, nc76, nc347, nc208, nc354, nc140, 
        nc257, nc86, nc95, nc327, nc120, nc165, nc279, nc137, 
        nc64, nc19, nc312, nc70, nc182, nc62, nc337, nc199, nc80, 
        nc130, nc287, nc98, nc293, nc249, nc114, nc56, nc105, 
        nc63, nc352, nc313, nc309, nc172, nc229, nc277, nc97, 
        nc161, nc31, nc340, nc295, nc154, nc50, nc260, nc239, 
        nc353, nc348, nc142, nc320, nc344, nc315, nc247, nc94, 
        nc197, nc328, nc122, nc266, nc35, nc324, nc4, nc227, nc92, 
        nc101, nc346, nc330, nc184, nc200, nc190, nc166, nc338, 
        nc326, nc132, nc334, nc21, nc237, nc93, nc262, nc69, 
        nc206, nc174, nc38, nc113, nc336, nc218, nc342, nc106, 
        nc261, nc25, nc1, nc322, nc299, nc37, nc202, nc144, nc153, 
        nc46, nc258, nc343, nc71, nc124, nc332, nc81, nc201, 
        nc168, nc323, nc34, nc28, nc115, nc264, nc192, nc319, 
        nc134, nc32, nc40, nc297, nc99, nc75, nc183, nc345, nc333, 
        nc288, nc85, nc27, nc108, nc325, nc16, nc155, nc51, nc301, 
        nc33, nc204, nc173, nc278, nc169, nc78, nc263, nc335, 
        nc24, nc88, nc111, nc55, nc10, nc22, nc210, nc185, nc143, 
        nc248, nc77, nc6, nc109, nc87, nc123 : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    MSS_ADLIB_INST : MSS_010

              generic map(INIT => "00" & x"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00000000F000000000000000000000000000000007FFFFFFFB000001007C33C00000000609300000003FFFFE400000000000010000000000F01C000001FEDFFC010842108421000001FE34001FF8000000400000000020051007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
         ACT_UBITS => x"FFFFFFFFFFFFFF",
         MEMORYFILE => "ENVM_init.mem", RTC_MAIN_XTL_FREQ => 0.0
        )

      port map(CAN_RXBUS_MGPIO3A_H2F_A => OPEN, 
        CAN_RXBUS_MGPIO3A_H2F_B => OPEN, CAN_TX_EBL_MGPIO4A_H2F_A
         => OPEN, CAN_TX_EBL_MGPIO4A_H2F_B => OPEN, 
        CAN_TXBUS_MGPIO2A_H2F_A => OPEN, CAN_TXBUS_MGPIO2A_H2F_B
         => OPEN, CLK_CONFIG_APB => OPEN, COMMS_INT => OPEN, 
        CONFIG_PRESET_N => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, EDAC_ERROR(7)
         => nc228, EDAC_ERROR(6) => nc203, EDAC_ERROR(5) => nc265, 
        EDAC_ERROR(4) => nc216, EDAC_ERROR(3) => nc194, 
        EDAC_ERROR(2) => nc151, EDAC_ERROR(1) => nc23, 
        EDAC_ERROR(0) => nc175, F_FM0_RDATA(31) => nc250, 
        F_FM0_RDATA(30) => nc58, F_FM0_RDATA(29) => nc116, 
        F_FM0_RDATA(28) => nc74, F_FM0_RDATA(27) => nc133, 
        F_FM0_RDATA(26) => nc238, F_FM0_RDATA(25) => nc167, 
        F_FM0_RDATA(24) => nc84, F_FM0_RDATA(23) => nc39, 
        F_FM0_RDATA(22) => nc72, F_FM0_RDATA(21) => nc256, 
        F_FM0_RDATA(20) => nc212, F_FM0_RDATA(19) => nc205, 
        F_FM0_RDATA(18) => nc82, F_FM0_RDATA(17) => nc145, 
        F_FM0_RDATA(16) => nc181, F_FM0_RDATA(15) => nc160, 
        F_FM0_RDATA(14) => nc57, F_FM0_RDATA(13) => nc349, 
        F_FM0_RDATA(12) => nc156, F_FM0_RDATA(11) => nc280, 
        F_FM0_RDATA(10) => nc125, F_FM0_RDATA(9) => nc211, 
        F_FM0_RDATA(8) => nc73, F_FM0_RDATA(7) => nc107, 
        F_FM0_RDATA(6) => nc329, F_FM0_RDATA(5) => nc66, 
        F_FM0_RDATA(4) => nc83, F_FM0_RDATA(3) => nc9, 
        F_FM0_RDATA(2) => nc252, F_FM0_RDATA(1) => nc171, 
        F_FM0_RDATA(0) => nc54, F_FM0_READYOUT => OPEN, 
        F_FM0_RESP => OPEN, F_HM0_ADDR(31) => nc286, 
        F_HM0_ADDR(30) => nc307, F_HM0_ADDR(29) => nc135, 
        F_HM0_ADDR(28) => nc41, F_HM0_ADDR(27) => nc100, 
        F_HM0_ADDR(26) => nc270, F_HM0_ADDR(25) => nc339, 
        F_HM0_ADDR(24) => nc52, F_HM0_ADDR(23) => nc251, 
        F_HM0_ADDR(22) => nc186, F_HM0_ADDR(21) => nc29, 
        F_HM0_ADDR(20) => nc269, F_HM0_ADDR(19) => nc118, 
        F_HM0_ADDR(18) => nc60, F_HM0_ADDR(17) => nc141, 
        F_HM0_ADDR(16) => nc311, F_HM0_ADDR(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), 
        F_HM0_ADDR(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), 
        F_HM0_ADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        F_HM0_ADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        F_HM0_ADDR(11) => nc276, F_HM0_ADDR(10) => nc193, 
        F_HM0_ADDR(9) => nc214, F_HM0_ADDR(8) => 
        CoreAPB3_0_APBmslave0_PADDR(8), F_HM0_ADDR(7) => 
        CoreAPB3_0_APBmslave0_PADDR(7), F_HM0_ADDR(6) => 
        CoreAPB3_0_APBmslave0_PADDR(6), F_HM0_ADDR(5) => 
        CoreAPB3_0_APBmslave0_PADDR(5), F_HM0_ADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), F_HM0_ADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), F_HM0_ADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), F_HM0_ADDR(1) => 
        CoreAPB3_0_APBmslave0_PADDR(1), F_HM0_ADDR(0) => 
        CoreAPB3_0_APBmslave0_PADDR(0), F_HM0_ENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, F_HM0_SEL => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        F_HM0_SIZE(1) => nc298, F_HM0_SIZE(0) => nc282, 
        F_HM0_TRANS1 => OPEN, F_HM0_WDATA(31) => nc240, 
        F_HM0_WDATA(30) => nc45, F_HM0_WDATA(29) => nc53, 
        F_HM0_WDATA(28) => nc121, F_HM0_WDATA(27) => nc176, 
        F_HM0_WDATA(26) => nc220, F_HM0_WDATA(25) => nc158, 
        F_HM0_WDATA(24) => nc281, F_HM0_WDATA(23) => nc209, 
        F_HM0_WDATA(22) => nc246, F_HM0_WDATA(21) => nc351, 
        F_HM0_WDATA(20) => nc162, F_HM0_WDATA(19) => nc11, 
        F_HM0_WDATA(18) => nc272, F_HM0_WDATA(17) => nc131, 
        F_HM0_WDATA(16) => nc254, F_HM0_WDATA(15) => nc267, 
        F_HM0_WDATA(14) => nc96, F_HM0_WDATA(13) => nc79, 
        F_HM0_WDATA(12) => nc226, F_HM0_WDATA(11) => nc146, 
        F_HM0_WDATA(10) => nc230, F_HM0_WDATA(9) => nc89, 
        F_HM0_WDATA(8) => nc119, F_HM0_WDATA(7) => 
        CoreAPB3_0_APBmslave0_PWDATA(7), F_HM0_WDATA(6) => 
        CoreAPB3_0_APBmslave0_PWDATA(6), F_HM0_WDATA(5) => 
        CoreAPB3_0_APBmslave0_PWDATA(5), F_HM0_WDATA(4) => 
        CoreAPB3_0_APBmslave0_PWDATA(4), F_HM0_WDATA(3) => 
        CoreAPB3_0_APBmslave0_PWDATA(3), F_HM0_WDATA(2) => 
        CoreAPB3_0_APBmslave0_PWDATA(2), F_HM0_WDATA(1) => 
        CoreAPB3_0_APBmslave0_PWDATA(1), F_HM0_WDATA(0) => 
        CoreAPB3_0_APBmslave0_PWDATA(0), F_HM0_WRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, FAB_CHRGVBUS => OPEN, 
        FAB_DISCHRGVBUS => OPEN, FAB_DMPULLDOWN => OPEN, 
        FAB_DPPULLDOWN => OPEN, FAB_DRVVBUS => OPEN, FAB_IDPULLUP
         => OPEN, FAB_OPMODE(1) => nc48, FAB_OPMODE(0) => nc271, 
        FAB_SUSPENDM => OPEN, FAB_TERMSEL => OPEN, FAB_TXVALID
         => OPEN, FAB_VCONTROL(3) => nc213, FAB_VCONTROL(2) => 
        nc300, FAB_VCONTROL(1) => nc126, FAB_VCONTROL(0) => nc195, 
        FAB_VCONTROLLOADM => OPEN, FAB_XCVRSEL(1) => nc188, 
        FAB_XCVRSEL(0) => nc242, FAB_XDATAOUT(7) => nc15, 
        FAB_XDATAOUT(6) => nc308, FAB_XDATAOUT(5) => nc236, 
        FAB_XDATAOUT(4) => nc102, FAB_XDATAOUT(3) => nc304, 
        FAB_XDATAOUT(2) => nc3, FAB_XDATAOUT(1) => nc207, 
        FAB_XDATAOUT(0) => nc47, FACC_GLMUX_SEL => OPEN, 
        FIC32_0_MASTER(1) => nc90, FIC32_0_MASTER(0) => nc284, 
        FIC32_1_MASTER(1) => nc222, FIC32_1_MASTER(0) => nc159, 
        FPGA_RESET_N => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        GTX_CLK => OPEN, H2F_INTERRUPT(15) => nc136, 
        H2F_INTERRUPT(14) => nc241, H2F_INTERRUPT(13) => nc253, 
        H2F_INTERRUPT(12) => nc178, H2F_INTERRUPT(11) => nc306, 
        H2F_INTERRUPT(10) => nc215, H2F_INTERRUPT(9) => nc59, 
        H2F_INTERRUPT(8) => nc221, H2F_INTERRUPT(7) => nc232, 
        H2F_INTERRUPT(6) => nc274, H2F_INTERRUPT(5) => nc18, 
        H2F_INTERRUPT(4) => nc44, H2F_INTERRUPT(3) => nc117, 
        H2F_INTERRUPT(2) => nc189, H2F_INTERRUPT(1) => nc164, 
        H2F_INTERRUPT(0) => nc148, H2F_NMI => OPEN, H2FCALIB => 
        OPEN, I2C0_SCL_MGPIO31B_H2F_A => OPEN, 
        I2C0_SCL_MGPIO31B_H2F_B => OPEN, I2C0_SDA_MGPIO30B_H2F_A
         => OPEN, I2C0_SDA_MGPIO30B_H2F_B => OPEN, 
        I2C1_SCL_MGPIO1A_H2F_A => OPEN, I2C1_SCL_MGPIO1A_H2F_B
         => OPEN, I2C1_SDA_MGPIO0A_H2F_A => OPEN, 
        I2C1_SDA_MGPIO0A_H2F_B => OPEN, MDCF => OPEN, MDOENF => 
        OPEN, MDOF => OPEN, MMUART0_CTS_MGPIO19B_H2F_A => OPEN, 
        MMUART0_CTS_MGPIO19B_H2F_B => OPEN, 
        MMUART0_DCD_MGPIO22B_H2F_A => OPEN, 
        MMUART0_DCD_MGPIO22B_H2F_B => OPEN, 
        MMUART0_DSR_MGPIO20B_H2F_A => OPEN, 
        MMUART0_DSR_MGPIO20B_H2F_B => OPEN, 
        MMUART0_DTR_MGPIO18B_H2F_A => OPEN, 
        MMUART0_DTR_MGPIO18B_H2F_B => OPEN, 
        MMUART0_RI_MGPIO21B_H2F_A => OPEN, 
        MMUART0_RI_MGPIO21B_H2F_B => OPEN, 
        MMUART0_RTS_MGPIO17B_H2F_A => OPEN, 
        MMUART0_RTS_MGPIO17B_H2F_B => OPEN, 
        MMUART0_RXD_MGPIO28B_H2F_A => OPEN, 
        MMUART0_RXD_MGPIO28B_H2F_B => OPEN, 
        MMUART0_SCK_MGPIO29B_H2F_A => OPEN, 
        MMUART0_SCK_MGPIO29B_H2F_B => OPEN, 
        MMUART0_TXD_MGPIO27B_H2F_A => OPEN, 
        MMUART0_TXD_MGPIO27B_H2F_B => OPEN, 
        MMUART1_DTR_MGPIO12B_H2F_A => OPEN, 
        MMUART1_RTS_MGPIO11B_H2F_A => OPEN, 
        MMUART1_RTS_MGPIO11B_H2F_B => OPEN, 
        MMUART1_RXD_MGPIO26B_H2F_A => OPEN, 
        MMUART1_RXD_MGPIO26B_H2F_B => OPEN, 
        MMUART1_SCK_MGPIO25B_H2F_A => OPEN, 
        MMUART1_SCK_MGPIO25B_H2F_B => OPEN, 
        MMUART1_TXD_MGPIO24B_H2F_A => OPEN, 
        MMUART1_TXD_MGPIO24B_H2F_B => OPEN, MPLL_LOCK => OPEN, 
        PER2_FABRIC_PADDR(15) => nc42, PER2_FABRIC_PADDR(14) => 
        nc231, PER2_FABRIC_PADDR(13) => nc191, 
        PER2_FABRIC_PADDR(12) => nc255, PER2_FABRIC_PADDR(11) => 
        nc283, PER2_FABRIC_PADDR(10) => nc341, 
        PER2_FABRIC_PADDR(9) => nc317, PER2_FABRIC_PADDR(8) => 
        nc290, PER2_FABRIC_PADDR(7) => nc17, PER2_FABRIC_PADDR(6)
         => nc2, PER2_FABRIC_PADDR(5) => nc302, 
        PER2_FABRIC_PADDR(4) => nc110, PER2_FABRIC_PADDR(3) => 
        nc128, PER2_FABRIC_PADDR(2) => nc244, PER2_FABRIC_PENABLE
         => OPEN, PER2_FABRIC_PSEL => OPEN, 
        PER2_FABRIC_PWDATA(31) => nc321, PER2_FABRIC_PWDATA(30)
         => nc43, PER2_FABRIC_PWDATA(29) => nc179, 
        PER2_FABRIC_PWDATA(28) => nc157, PER2_FABRIC_PWDATA(27)
         => nc36, PER2_FABRIC_PWDATA(26) => nc224, 
        PER2_FABRIC_PWDATA(25) => nc296, PER2_FABRIC_PWDATA(24)
         => nc273, PER2_FABRIC_PWDATA(23) => nc61, 
        PER2_FABRIC_PWDATA(22) => nc104, PER2_FABRIC_PWDATA(21)
         => nc138, PER2_FABRIC_PWDATA(20) => nc14, 
        PER2_FABRIC_PWDATA(19) => nc285, PER2_FABRIC_PWDATA(18)
         => nc303, PER2_FABRIC_PWDATA(17) => nc150, 
        PER2_FABRIC_PWDATA(16) => nc331, PER2_FABRIC_PWDATA(15)
         => nc196, PER2_FABRIC_PWDATA(14) => nc234, 
        PER2_FABRIC_PWDATA(13) => nc149, PER2_FABRIC_PWDATA(12)
         => nc12, PER2_FABRIC_PWDATA(11) => nc219, 
        PER2_FABRIC_PWDATA(10) => nc30, PER2_FABRIC_PWDATA(9) => 
        nc243, PER2_FABRIC_PWDATA(8) => nc187, 
        PER2_FABRIC_PWDATA(7) => nc65, PER2_FABRIC_PWDATA(6) => 
        nc7, PER2_FABRIC_PWDATA(5) => nc292, 
        PER2_FABRIC_PWDATA(4) => nc129, PER2_FABRIC_PWDATA(3) => 
        nc275, PER2_FABRIC_PWDATA(2) => nc8, 
        PER2_FABRIC_PWDATA(1) => nc223, PER2_FABRIC_PWDATA(0) => 
        nc13, PER2_FABRIC_PWRITE => OPEN, RTC_MATCH => OPEN, 
        SLEEPDEEP => OPEN, SLEEPHOLDACK => OPEN, SLEEPING => OPEN, 
        SMBALERT_NO0 => OPEN, SMBALERT_NO1 => OPEN, SMBSUS_NO0
         => OPEN, SMBSUS_NO1 => OPEN, SPI0_CLK_OUT => OPEN, 
        SPI0_SDI_MGPIO5A_H2F_A => OPEN, SPI0_SDI_MGPIO5A_H2F_B
         => OPEN, SPI0_SDO_MGPIO6A_H2F_A => OPEN, 
        SPI0_SDO_MGPIO6A_H2F_B => OPEN, SPI0_SS0_MGPIO7A_H2F_A
         => OPEN, SPI0_SS0_MGPIO7A_H2F_B => OPEN, 
        SPI0_SS1_MGPIO8A_H2F_A => OPEN, SPI0_SS1_MGPIO8A_H2F_B
         => OPEN, SPI0_SS2_MGPIO9A_H2F_A => OPEN, 
        SPI0_SS2_MGPIO9A_H2F_B => OPEN, SPI0_SS3_MGPIO10A_H2F_A
         => OPEN, SPI0_SS3_MGPIO10A_H2F_B => OPEN, 
        SPI0_SS4_MGPIO19A_H2F_A => OPEN, SPI0_SS5_MGPIO20A_H2F_A
         => OPEN, SPI0_SS6_MGPIO21A_H2F_A => OPEN, 
        SPI0_SS7_MGPIO22A_H2F_A => OPEN, SPI1_CLK_OUT => OPEN, 
        SPI1_SDI_MGPIO11A_H2F_A => OPEN, SPI1_SDI_MGPIO11A_H2F_B
         => OPEN, SPI1_SDO_MGPIO12A_H2F_A => OPEN, 
        SPI1_SDO_MGPIO12A_H2F_B => OPEN, SPI1_SS0_MGPIO13A_H2F_A
         => OPEN, SPI1_SS0_MGPIO13A_H2F_B => OPEN, 
        SPI1_SS1_MGPIO14A_H2F_A => OPEN, SPI1_SS1_MGPIO14A_H2F_B
         => OPEN, SPI1_SS2_MGPIO15A_H2F_A => OPEN, 
        SPI1_SS2_MGPIO15A_H2F_B => OPEN, SPI1_SS3_MGPIO16A_H2F_A
         => OPEN, SPI1_SS3_MGPIO16A_H2F_B => OPEN, 
        SPI1_SS4_MGPIO17A_H2F_A => OPEN, SPI1_SS5_MGPIO18A_H2F_A
         => OPEN, SPI1_SS6_MGPIO23A_H2F_A => OPEN, 
        SPI1_SS7_MGPIO24A_H2F_A => OPEN, TCGF(9) => nc305, 
        TCGF(8) => nc180, TCGF(7) => nc26, TCGF(6) => nc291, 
        TCGF(5) => nc177, TCGF(4) => nc139, TCGF(3) => nc310, 
        TCGF(2) => nc259, TCGF(1) => nc245, TCGF(0) => nc233, 
        TRACECLK => OPEN, TRACEDATA(3) => nc163, TRACEDATA(2) => 
        nc318, TRACEDATA(1) => nc268, TRACEDATA(0) => nc112, 
        TX_CLK => OPEN, TX_ENF => OPEN, TX_ERRF => OPEN, 
        TXCTL_EN_RIF => OPEN, TXD_RIF(3) => nc68, TXD_RIF(2) => 
        nc49, TXD_RIF(1) => nc314, TXD_RIF(0) => nc217, TXDF(7)
         => nc170, TXDF(6) => nc91, TXDF(5) => nc225, TXDF(4) => 
        nc5, TXDF(3) => nc20, TXDF(2) => nc198, TXDF(1) => nc147, 
        TXDF(0) => nc350, TXEV => OPEN, WDOGTIMEOUT => OPEN, 
        F_ARREADY_HREADYOUT1 => OPEN, F_AWREADY_HREADYOUT0 => 
        OPEN, F_BID(3) => nc316, F_BID(2) => nc67, F_BID(1) => 
        nc289, F_BID(0) => nc294, F_BRESP_HRESP0(1) => nc152, 
        F_BRESP_HRESP0(0) => nc127, F_BVALID => OPEN, 
        F_RDATA_HRDATA01(63) => nc103, F_RDATA_HRDATA01(62) => 
        nc235, F_RDATA_HRDATA01(61) => nc76, F_RDATA_HRDATA01(60)
         => nc347, F_RDATA_HRDATA01(59) => nc208, 
        F_RDATA_HRDATA01(58) => nc354, F_RDATA_HRDATA01(57) => 
        nc140, F_RDATA_HRDATA01(56) => nc257, 
        F_RDATA_HRDATA01(55) => nc86, F_RDATA_HRDATA01(54) => 
        nc95, F_RDATA_HRDATA01(53) => nc327, F_RDATA_HRDATA01(52)
         => nc120, F_RDATA_HRDATA01(51) => nc165, 
        F_RDATA_HRDATA01(50) => nc279, F_RDATA_HRDATA01(49) => 
        nc137, F_RDATA_HRDATA01(48) => nc64, F_RDATA_HRDATA01(47)
         => nc19, F_RDATA_HRDATA01(46) => nc312, 
        F_RDATA_HRDATA01(45) => nc70, F_RDATA_HRDATA01(44) => 
        nc182, F_RDATA_HRDATA01(43) => nc62, F_RDATA_HRDATA01(42)
         => nc337, F_RDATA_HRDATA01(41) => nc199, 
        F_RDATA_HRDATA01(40) => nc80, F_RDATA_HRDATA01(39) => 
        nc130, F_RDATA_HRDATA01(38) => nc287, 
        F_RDATA_HRDATA01(37) => nc98, F_RDATA_HRDATA01(36) => 
        nc293, F_RDATA_HRDATA01(35) => nc249, 
        F_RDATA_HRDATA01(34) => nc114, F_RDATA_HRDATA01(33) => 
        nc56, F_RDATA_HRDATA01(32) => nc105, F_RDATA_HRDATA01(31)
         => nc63, F_RDATA_HRDATA01(30) => nc352, 
        F_RDATA_HRDATA01(29) => nc313, F_RDATA_HRDATA01(28) => 
        nc309, F_RDATA_HRDATA01(27) => nc172, 
        F_RDATA_HRDATA01(26) => nc229, F_RDATA_HRDATA01(25) => 
        nc277, F_RDATA_HRDATA01(24) => nc97, F_RDATA_HRDATA01(23)
         => nc161, F_RDATA_HRDATA01(22) => nc31, 
        F_RDATA_HRDATA01(21) => nc340, F_RDATA_HRDATA01(20) => 
        nc295, F_RDATA_HRDATA01(19) => nc154, 
        F_RDATA_HRDATA01(18) => nc50, F_RDATA_HRDATA01(17) => 
        nc260, F_RDATA_HRDATA01(16) => nc239, 
        F_RDATA_HRDATA01(15) => nc353, F_RDATA_HRDATA01(14) => 
        nc348, F_RDATA_HRDATA01(13) => nc142, 
        F_RDATA_HRDATA01(12) => nc320, F_RDATA_HRDATA01(11) => 
        nc344, F_RDATA_HRDATA01(10) => nc315, F_RDATA_HRDATA01(9)
         => nc247, F_RDATA_HRDATA01(8) => nc94, 
        F_RDATA_HRDATA01(7) => nc197, F_RDATA_HRDATA01(6) => 
        nc328, F_RDATA_HRDATA01(5) => nc122, F_RDATA_HRDATA01(4)
         => nc266, F_RDATA_HRDATA01(3) => nc35, 
        F_RDATA_HRDATA01(2) => nc324, F_RDATA_HRDATA01(1) => nc4, 
        F_RDATA_HRDATA01(0) => nc227, F_RID(3) => nc92, F_RID(2)
         => nc101, F_RID(1) => nc346, F_RID(0) => nc330, F_RLAST
         => OPEN, F_RRESP_HRESP1(1) => nc184, F_RRESP_HRESP1(0)
         => nc200, F_RVALID => OPEN, F_WREADY => OPEN, 
        MDDR_FABRIC_PRDATA(15) => nc190, MDDR_FABRIC_PRDATA(14)
         => nc166, MDDR_FABRIC_PRDATA(13) => nc338, 
        MDDR_FABRIC_PRDATA(12) => nc326, MDDR_FABRIC_PRDATA(11)
         => nc132, MDDR_FABRIC_PRDATA(10) => nc334, 
        MDDR_FABRIC_PRDATA(9) => nc21, MDDR_FABRIC_PRDATA(8) => 
        nc237, MDDR_FABRIC_PRDATA(7) => nc93, 
        MDDR_FABRIC_PRDATA(6) => nc262, MDDR_FABRIC_PRDATA(5) => 
        nc69, MDDR_FABRIC_PRDATA(4) => nc206, 
        MDDR_FABRIC_PRDATA(3) => nc174, MDDR_FABRIC_PRDATA(2) => 
        nc38, MDDR_FABRIC_PRDATA(1) => nc113, 
        MDDR_FABRIC_PRDATA(0) => nc336, MDDR_FABRIC_PREADY => 
        OPEN, MDDR_FABRIC_PSLVERR => OPEN, CAN_RXBUS_F2H_SCP => 
        VCC_net_1, CAN_TX_EBL_F2H_SCP => VCC_net_1, 
        CAN_TXBUS_F2H_SCP => VCC_net_1, COLF => VCC_net_1, CRSF
         => VCC_net_1, F2_DMAREADY(1) => VCC_net_1, 
        F2_DMAREADY(0) => VCC_net_1, F2H_INTERRUPT(15) => 
        GND_net_1, F2H_INTERRUPT(14) => GND_net_1, 
        F2H_INTERRUPT(13) => GND_net_1, F2H_INTERRUPT(12) => 
        GND_net_1, F2H_INTERRUPT(11) => GND_net_1, 
        F2H_INTERRUPT(10) => GND_net_1, F2H_INTERRUPT(9) => 
        GND_net_1, F2H_INTERRUPT(8) => GND_net_1, 
        F2H_INTERRUPT(7) => GND_net_1, F2H_INTERRUPT(6) => 
        GND_net_1, F2H_INTERRUPT(5) => GND_net_1, 
        F2H_INTERRUPT(4) => GND_net_1, F2H_INTERRUPT(3) => 
        GND_net_1, F2H_INTERRUPT(2) => GND_net_1, 
        F2H_INTERRUPT(1) => CoreUARTapb_0_0_intr_or_2_Y, 
        F2H_INTERRUPT(0) => COREI2C_0_0_INT(0), F2HCALIB => 
        VCC_net_1, F_DMAREADY(1) => VCC_net_1, F_DMAREADY(0) => 
        VCC_net_1, F_FM0_ADDR(31) => GND_net_1, F_FM0_ADDR(30)
         => GND_net_1, F_FM0_ADDR(29) => GND_net_1, 
        F_FM0_ADDR(28) => GND_net_1, F_FM0_ADDR(27) => GND_net_1, 
        F_FM0_ADDR(26) => GND_net_1, F_FM0_ADDR(25) => GND_net_1, 
        F_FM0_ADDR(24) => GND_net_1, F_FM0_ADDR(23) => GND_net_1, 
        F_FM0_ADDR(22) => GND_net_1, F_FM0_ADDR(21) => GND_net_1, 
        F_FM0_ADDR(20) => GND_net_1, F_FM0_ADDR(19) => GND_net_1, 
        F_FM0_ADDR(18) => GND_net_1, F_FM0_ADDR(17) => GND_net_1, 
        F_FM0_ADDR(16) => GND_net_1, F_FM0_ADDR(15) => GND_net_1, 
        F_FM0_ADDR(14) => GND_net_1, F_FM0_ADDR(13) => GND_net_1, 
        F_FM0_ADDR(12) => GND_net_1, F_FM0_ADDR(11) => GND_net_1, 
        F_FM0_ADDR(10) => GND_net_1, F_FM0_ADDR(9) => GND_net_1, 
        F_FM0_ADDR(8) => GND_net_1, F_FM0_ADDR(7) => GND_net_1, 
        F_FM0_ADDR(6) => GND_net_1, F_FM0_ADDR(5) => GND_net_1, 
        F_FM0_ADDR(4) => GND_net_1, F_FM0_ADDR(3) => GND_net_1, 
        F_FM0_ADDR(2) => GND_net_1, F_FM0_ADDR(1) => GND_net_1, 
        F_FM0_ADDR(0) => GND_net_1, F_FM0_ENABLE => GND_net_1, 
        F_FM0_MASTLOCK => GND_net_1, F_FM0_READY => VCC_net_1, 
        F_FM0_SEL => GND_net_1, F_FM0_SIZE(1) => GND_net_1, 
        F_FM0_SIZE(0) => GND_net_1, F_FM0_TRANS1 => GND_net_1, 
        F_FM0_WDATA(31) => GND_net_1, F_FM0_WDATA(30) => 
        GND_net_1, F_FM0_WDATA(29) => GND_net_1, F_FM0_WDATA(28)
         => GND_net_1, F_FM0_WDATA(27) => GND_net_1, 
        F_FM0_WDATA(26) => GND_net_1, F_FM0_WDATA(25) => 
        GND_net_1, F_FM0_WDATA(24) => GND_net_1, F_FM0_WDATA(23)
         => GND_net_1, F_FM0_WDATA(22) => GND_net_1, 
        F_FM0_WDATA(21) => GND_net_1, F_FM0_WDATA(20) => 
        GND_net_1, F_FM0_WDATA(19) => GND_net_1, F_FM0_WDATA(18)
         => GND_net_1, F_FM0_WDATA(17) => GND_net_1, 
        F_FM0_WDATA(16) => GND_net_1, F_FM0_WDATA(15) => 
        GND_net_1, F_FM0_WDATA(14) => GND_net_1, F_FM0_WDATA(13)
         => GND_net_1, F_FM0_WDATA(12) => GND_net_1, 
        F_FM0_WDATA(11) => GND_net_1, F_FM0_WDATA(10) => 
        GND_net_1, F_FM0_WDATA(9) => GND_net_1, F_FM0_WDATA(8)
         => GND_net_1, F_FM0_WDATA(7) => GND_net_1, 
        F_FM0_WDATA(6) => GND_net_1, F_FM0_WDATA(5) => GND_net_1, 
        F_FM0_WDATA(4) => GND_net_1, F_FM0_WDATA(3) => GND_net_1, 
        F_FM0_WDATA(2) => GND_net_1, F_FM0_WDATA(1) => GND_net_1, 
        F_FM0_WDATA(0) => GND_net_1, F_FM0_WRITE => GND_net_1, 
        F_HM0_RDATA(31) => GND_net_1, F_HM0_RDATA(30) => 
        GND_net_1, F_HM0_RDATA(29) => GND_net_1, F_HM0_RDATA(28)
         => GND_net_1, F_HM0_RDATA(27) => GND_net_1, 
        F_HM0_RDATA(26) => GND_net_1, F_HM0_RDATA(25) => 
        GND_net_1, F_HM0_RDATA(24) => GND_net_1, F_HM0_RDATA(23)
         => GND_net_1, F_HM0_RDATA(22) => GND_net_1, 
        F_HM0_RDATA(21) => GND_net_1, F_HM0_RDATA(20) => 
        GND_net_1, F_HM0_RDATA(19) => GND_net_1, F_HM0_RDATA(18)
         => GND_net_1, F_HM0_RDATA(17) => GND_net_1, 
        F_HM0_RDATA(16) => GND_net_1, F_HM0_RDATA(15) => 
        GND_net_1, F_HM0_RDATA(14) => GND_net_1, F_HM0_RDATA(13)
         => GND_net_1, F_HM0_RDATA(12) => GND_net_1, 
        F_HM0_RDATA(11) => GND_net_1, F_HM0_RDATA(10) => 
        GND_net_1, F_HM0_RDATA(9) => GND_net_1, F_HM0_RDATA(8)
         => GND_net_1, F_HM0_RDATA(7) => N_18_i_0, F_HM0_RDATA(6)
         => N_20_i_0, F_HM0_RDATA(5) => N_425_i_0, F_HM0_RDATA(4)
         => N_24_i_0, F_HM0_RDATA(3) => N_26_i_0, F_HM0_RDATA(2)
         => N_28_i_0, F_HM0_RDATA(1) => N_30_i_0, F_HM0_RDATA(0)
         => N_32_i_0, F_HM0_READY => VCC_net_1, F_HM0_RESP => 
        GND_net_1, FAB_AVALID => VCC_net_1, FAB_HOSTDISCON => 
        VCC_net_1, FAB_IDDIG => VCC_net_1, FAB_LINESTATE(1) => 
        VCC_net_1, FAB_LINESTATE(0) => VCC_net_1, FAB_M3_RESET_N
         => VCC_net_1, FAB_PLL_LOCK => FAB_CCC_LOCK, FAB_RXACTIVE
         => VCC_net_1, FAB_RXERROR => VCC_net_1, FAB_RXVALID => 
        VCC_net_1, FAB_RXVALIDH => GND_net_1, FAB_SESSEND => 
        VCC_net_1, FAB_TXREADY => VCC_net_1, FAB_VBUSVALID => 
        VCC_net_1, FAB_VSTATUS(7) => VCC_net_1, FAB_VSTATUS(6)
         => VCC_net_1, FAB_VSTATUS(5) => VCC_net_1, 
        FAB_VSTATUS(4) => VCC_net_1, FAB_VSTATUS(3) => VCC_net_1, 
        FAB_VSTATUS(2) => VCC_net_1, FAB_VSTATUS(1) => VCC_net_1, 
        FAB_VSTATUS(0) => VCC_net_1, FAB_XDATAIN(7) => VCC_net_1, 
        FAB_XDATAIN(6) => VCC_net_1, FAB_XDATAIN(5) => VCC_net_1, 
        FAB_XDATAIN(4) => VCC_net_1, FAB_XDATAIN(3) => VCC_net_1, 
        FAB_XDATAIN(2) => VCC_net_1, FAB_XDATAIN(1) => VCC_net_1, 
        FAB_XDATAIN(0) => VCC_net_1, GTX_CLKPF => VCC_net_1, 
        I2C0_BCLK => VCC_net_1, I2C0_SCL_F2H_SCP => VCC_net_1, 
        I2C0_SDA_F2H_SCP => VCC_net_1, I2C1_BCLK => VCC_net_1, 
        I2C1_SCL_F2H_SCP => VCC_net_1, I2C1_SDA_F2H_SCP => 
        VCC_net_1, MDIF => VCC_net_1, MGPIO0A_F2H_GPIN => 
        VCC_net_1, MGPIO10A_F2H_GPIN => VCC_net_1, 
        MGPIO11A_F2H_GPIN => VCC_net_1, MGPIO11B_F2H_GPIN => 
        VCC_net_1, MGPIO12A_F2H_GPIN => VCC_net_1, 
        MGPIO13A_F2H_GPIN => VCC_net_1, MGPIO14A_F2H_GPIN => 
        VCC_net_1, MGPIO15A_F2H_GPIN => VCC_net_1, 
        MGPIO16A_F2H_GPIN => VCC_net_1, MGPIO17B_F2H_GPIN => 
        VCC_net_1, MGPIO18B_F2H_GPIN => VCC_net_1, 
        MGPIO19B_F2H_GPIN => VCC_net_1, MGPIO1A_F2H_GPIN => 
        VCC_net_1, MGPIO20B_F2H_GPIN => VCC_net_1, 
        MGPIO21B_F2H_GPIN => VCC_net_1, MGPIO22B_F2H_GPIN => 
        VCC_net_1, MGPIO24B_F2H_GPIN => VCC_net_1, 
        MGPIO25B_F2H_GPIN => VCC_net_1, MGPIO26B_F2H_GPIN => 
        VCC_net_1, MGPIO27B_F2H_GPIN => VCC_net_1, 
        MGPIO28B_F2H_GPIN => VCC_net_1, MGPIO29B_F2H_GPIN => 
        VCC_net_1, MGPIO2A_F2H_GPIN => VCC_net_1, 
        MGPIO30B_F2H_GPIN => VCC_net_1, MGPIO31B_F2H_GPIN => 
        VCC_net_1, MGPIO3A_F2H_GPIN => VCC_net_1, 
        MGPIO4A_F2H_GPIN => VCC_net_1, MGPIO5A_F2H_GPIN => 
        VCC_net_1, MGPIO6A_F2H_GPIN => VCC_net_1, 
        MGPIO7A_F2H_GPIN => VCC_net_1, MGPIO8A_F2H_GPIN => 
        VCC_net_1, MGPIO9A_F2H_GPIN => VCC_net_1, 
        MMUART0_CTS_F2H_SCP => VCC_net_1, MMUART0_DCD_F2H_SCP => 
        VCC_net_1, MMUART0_DSR_F2H_SCP => VCC_net_1, 
        MMUART0_DTR_F2H_SCP => VCC_net_1, MMUART0_RI_F2H_SCP => 
        VCC_net_1, MMUART0_RTS_F2H_SCP => VCC_net_1, 
        MMUART0_RXD_F2H_SCP => VCC_net_1, MMUART0_SCK_F2H_SCP => 
        VCC_net_1, MMUART0_TXD_F2H_SCP => VCC_net_1, 
        MMUART1_CTS_F2H_SCP => VCC_net_1, MMUART1_DCD_F2H_SCP => 
        VCC_net_1, MMUART1_DSR_F2H_SCP => VCC_net_1, 
        MMUART1_RI_F2H_SCP => VCC_net_1, MMUART1_RTS_F2H_SCP => 
        VCC_net_1, MMUART1_RXD_F2H_SCP => VCC_net_1, 
        MMUART1_SCK_F2H_SCP => VCC_net_1, MMUART1_TXD_F2H_SCP => 
        VCC_net_1, PER2_FABRIC_PRDATA(31) => GND_net_1, 
        PER2_FABRIC_PRDATA(30) => GND_net_1, 
        PER2_FABRIC_PRDATA(29) => GND_net_1, 
        PER2_FABRIC_PRDATA(28) => GND_net_1, 
        PER2_FABRIC_PRDATA(27) => GND_net_1, 
        PER2_FABRIC_PRDATA(26) => GND_net_1, 
        PER2_FABRIC_PRDATA(25) => GND_net_1, 
        PER2_FABRIC_PRDATA(24) => GND_net_1, 
        PER2_FABRIC_PRDATA(23) => GND_net_1, 
        PER2_FABRIC_PRDATA(22) => GND_net_1, 
        PER2_FABRIC_PRDATA(21) => GND_net_1, 
        PER2_FABRIC_PRDATA(20) => GND_net_1, 
        PER2_FABRIC_PRDATA(19) => GND_net_1, 
        PER2_FABRIC_PRDATA(18) => GND_net_1, 
        PER2_FABRIC_PRDATA(17) => GND_net_1, 
        PER2_FABRIC_PRDATA(16) => GND_net_1, 
        PER2_FABRIC_PRDATA(15) => GND_net_1, 
        PER2_FABRIC_PRDATA(14) => GND_net_1, 
        PER2_FABRIC_PRDATA(13) => GND_net_1, 
        PER2_FABRIC_PRDATA(12) => GND_net_1, 
        PER2_FABRIC_PRDATA(11) => GND_net_1, 
        PER2_FABRIC_PRDATA(10) => GND_net_1, 
        PER2_FABRIC_PRDATA(9) => GND_net_1, PER2_FABRIC_PRDATA(8)
         => GND_net_1, PER2_FABRIC_PRDATA(7) => GND_net_1, 
        PER2_FABRIC_PRDATA(6) => GND_net_1, PER2_FABRIC_PRDATA(5)
         => GND_net_1, PER2_FABRIC_PRDATA(4) => GND_net_1, 
        PER2_FABRIC_PRDATA(3) => GND_net_1, PER2_FABRIC_PRDATA(2)
         => GND_net_1, PER2_FABRIC_PRDATA(1) => GND_net_1, 
        PER2_FABRIC_PRDATA(0) => GND_net_1, PER2_FABRIC_PREADY
         => VCC_net_1, PER2_FABRIC_PSLVERR => GND_net_1, RCGF(9)
         => VCC_net_1, RCGF(8) => VCC_net_1, RCGF(7) => VCC_net_1, 
        RCGF(6) => VCC_net_1, RCGF(5) => VCC_net_1, RCGF(4) => 
        VCC_net_1, RCGF(3) => VCC_net_1, RCGF(2) => VCC_net_1, 
        RCGF(1) => VCC_net_1, RCGF(0) => VCC_net_1, RX_CLKPF => 
        VCC_net_1, RX_DVF => VCC_net_1, RX_ERRF => VCC_net_1, 
        RX_EV => VCC_net_1, RXDF(7) => VCC_net_1, RXDF(6) => 
        VCC_net_1, RXDF(5) => VCC_net_1, RXDF(4) => VCC_net_1, 
        RXDF(3) => VCC_net_1, RXDF(2) => VCC_net_1, RXDF(1) => 
        VCC_net_1, RXDF(0) => VCC_net_1, SLEEPHOLDREQ => 
        GND_net_1, SMBALERT_NI0 => VCC_net_1, SMBALERT_NI1 => 
        VCC_net_1, SMBSUS_NI0 => VCC_net_1, SMBSUS_NI1 => 
        VCC_net_1, SPI0_CLK_IN => VCC_net_1, SPI0_SDI_F2H_SCP => 
        VCC_net_1, SPI0_SDO_F2H_SCP => VCC_net_1, 
        SPI0_SS0_F2H_SCP => VCC_net_1, SPI0_SS1_F2H_SCP => 
        VCC_net_1, SPI0_SS2_F2H_SCP => VCC_net_1, 
        SPI0_SS3_F2H_SCP => VCC_net_1, SPI1_CLK_IN => VCC_net_1, 
        SPI1_SDI_F2H_SCP => VCC_net_1, SPI1_SDO_F2H_SCP => 
        VCC_net_1, SPI1_SS0_F2H_SCP => VCC_net_1, 
        SPI1_SS1_F2H_SCP => VCC_net_1, SPI1_SS2_F2H_SCP => 
        VCC_net_1, SPI1_SS3_F2H_SCP => VCC_net_1, TX_CLKPF => 
        VCC_net_1, USER_MSS_GPIO_RESET_N => VCC_net_1, 
        USER_MSS_RESET_N => VCC_net_1, XCLK_FAB => VCC_net_1, 
        CLK_BASE => FAB_CCC_GL0, CLK_MDDR_APB => VCC_net_1, 
        F_ARADDR_HADDR1(31) => VCC_net_1, F_ARADDR_HADDR1(30) => 
        VCC_net_1, F_ARADDR_HADDR1(29) => VCC_net_1, 
        F_ARADDR_HADDR1(28) => VCC_net_1, F_ARADDR_HADDR1(27) => 
        VCC_net_1, F_ARADDR_HADDR1(26) => VCC_net_1, 
        F_ARADDR_HADDR1(25) => VCC_net_1, F_ARADDR_HADDR1(24) => 
        VCC_net_1, F_ARADDR_HADDR1(23) => VCC_net_1, 
        F_ARADDR_HADDR1(22) => VCC_net_1, F_ARADDR_HADDR1(21) => 
        VCC_net_1, F_ARADDR_HADDR1(20) => VCC_net_1, 
        F_ARADDR_HADDR1(19) => VCC_net_1, F_ARADDR_HADDR1(18) => 
        VCC_net_1, F_ARADDR_HADDR1(17) => VCC_net_1, 
        F_ARADDR_HADDR1(16) => VCC_net_1, F_ARADDR_HADDR1(15) => 
        VCC_net_1, F_ARADDR_HADDR1(14) => VCC_net_1, 
        F_ARADDR_HADDR1(13) => VCC_net_1, F_ARADDR_HADDR1(12) => 
        VCC_net_1, F_ARADDR_HADDR1(11) => VCC_net_1, 
        F_ARADDR_HADDR1(10) => VCC_net_1, F_ARADDR_HADDR1(9) => 
        VCC_net_1, F_ARADDR_HADDR1(8) => VCC_net_1, 
        F_ARADDR_HADDR1(7) => VCC_net_1, F_ARADDR_HADDR1(6) => 
        VCC_net_1, F_ARADDR_HADDR1(5) => VCC_net_1, 
        F_ARADDR_HADDR1(4) => VCC_net_1, F_ARADDR_HADDR1(3) => 
        VCC_net_1, F_ARADDR_HADDR1(2) => VCC_net_1, 
        F_ARADDR_HADDR1(1) => VCC_net_1, F_ARADDR_HADDR1(0) => 
        VCC_net_1, F_ARBURST_HTRANS1(1) => GND_net_1, 
        F_ARBURST_HTRANS1(0) => GND_net_1, F_ARID_HSEL1(3) => 
        GND_net_1, F_ARID_HSEL1(2) => GND_net_1, F_ARID_HSEL1(1)
         => GND_net_1, F_ARID_HSEL1(0) => GND_net_1, 
        F_ARLEN_HBURST1(3) => GND_net_1, F_ARLEN_HBURST1(2) => 
        GND_net_1, F_ARLEN_HBURST1(1) => GND_net_1, 
        F_ARLEN_HBURST1(0) => GND_net_1, F_ARLOCK_HMASTLOCK1(1)
         => GND_net_1, F_ARLOCK_HMASTLOCK1(0) => GND_net_1, 
        F_ARSIZE_HSIZE1(1) => GND_net_1, F_ARSIZE_HSIZE1(0) => 
        GND_net_1, F_ARVALID_HWRITE1 => GND_net_1, 
        F_AWADDR_HADDR0(31) => VCC_net_1, F_AWADDR_HADDR0(30) => 
        VCC_net_1, F_AWADDR_HADDR0(29) => VCC_net_1, 
        F_AWADDR_HADDR0(28) => VCC_net_1, F_AWADDR_HADDR0(27) => 
        VCC_net_1, F_AWADDR_HADDR0(26) => VCC_net_1, 
        F_AWADDR_HADDR0(25) => VCC_net_1, F_AWADDR_HADDR0(24) => 
        VCC_net_1, F_AWADDR_HADDR0(23) => VCC_net_1, 
        F_AWADDR_HADDR0(22) => VCC_net_1, F_AWADDR_HADDR0(21) => 
        VCC_net_1, F_AWADDR_HADDR0(20) => VCC_net_1, 
        F_AWADDR_HADDR0(19) => VCC_net_1, F_AWADDR_HADDR0(18) => 
        VCC_net_1, F_AWADDR_HADDR0(17) => VCC_net_1, 
        F_AWADDR_HADDR0(16) => VCC_net_1, F_AWADDR_HADDR0(15) => 
        VCC_net_1, F_AWADDR_HADDR0(14) => VCC_net_1, 
        F_AWADDR_HADDR0(13) => VCC_net_1, F_AWADDR_HADDR0(12) => 
        VCC_net_1, F_AWADDR_HADDR0(11) => VCC_net_1, 
        F_AWADDR_HADDR0(10) => VCC_net_1, F_AWADDR_HADDR0(9) => 
        VCC_net_1, F_AWADDR_HADDR0(8) => VCC_net_1, 
        F_AWADDR_HADDR0(7) => VCC_net_1, F_AWADDR_HADDR0(6) => 
        VCC_net_1, F_AWADDR_HADDR0(5) => VCC_net_1, 
        F_AWADDR_HADDR0(4) => VCC_net_1, F_AWADDR_HADDR0(3) => 
        VCC_net_1, F_AWADDR_HADDR0(2) => VCC_net_1, 
        F_AWADDR_HADDR0(1) => VCC_net_1, F_AWADDR_HADDR0(0) => 
        VCC_net_1, F_AWBURST_HTRANS0(1) => GND_net_1, 
        F_AWBURST_HTRANS0(0) => GND_net_1, F_AWID_HSEL0(3) => 
        GND_net_1, F_AWID_HSEL0(2) => GND_net_1, F_AWID_HSEL0(1)
         => GND_net_1, F_AWID_HSEL0(0) => GND_net_1, 
        F_AWLEN_HBURST0(3) => GND_net_1, F_AWLEN_HBURST0(2) => 
        GND_net_1, F_AWLEN_HBURST0(1) => GND_net_1, 
        F_AWLEN_HBURST0(0) => GND_net_1, F_AWLOCK_HMASTLOCK0(1)
         => GND_net_1, F_AWLOCK_HMASTLOCK0(0) => GND_net_1, 
        F_AWSIZE_HSIZE0(1) => GND_net_1, F_AWSIZE_HSIZE0(0) => 
        GND_net_1, F_AWVALID_HWRITE0 => GND_net_1, F_BREADY => 
        GND_net_1, F_RMW_AXI => GND_net_1, F_RREADY => GND_net_1, 
        F_WDATA_HWDATA01(63) => VCC_net_1, F_WDATA_HWDATA01(62)
         => VCC_net_1, F_WDATA_HWDATA01(61) => VCC_net_1, 
        F_WDATA_HWDATA01(60) => VCC_net_1, F_WDATA_HWDATA01(59)
         => VCC_net_1, F_WDATA_HWDATA01(58) => VCC_net_1, 
        F_WDATA_HWDATA01(57) => VCC_net_1, F_WDATA_HWDATA01(56)
         => VCC_net_1, F_WDATA_HWDATA01(55) => VCC_net_1, 
        F_WDATA_HWDATA01(54) => VCC_net_1, F_WDATA_HWDATA01(53)
         => VCC_net_1, F_WDATA_HWDATA01(52) => VCC_net_1, 
        F_WDATA_HWDATA01(51) => VCC_net_1, F_WDATA_HWDATA01(50)
         => VCC_net_1, F_WDATA_HWDATA01(49) => VCC_net_1, 
        F_WDATA_HWDATA01(48) => VCC_net_1, F_WDATA_HWDATA01(47)
         => VCC_net_1, F_WDATA_HWDATA01(46) => VCC_net_1, 
        F_WDATA_HWDATA01(45) => VCC_net_1, F_WDATA_HWDATA01(44)
         => VCC_net_1, F_WDATA_HWDATA01(43) => VCC_net_1, 
        F_WDATA_HWDATA01(42) => VCC_net_1, F_WDATA_HWDATA01(41)
         => VCC_net_1, F_WDATA_HWDATA01(40) => VCC_net_1, 
        F_WDATA_HWDATA01(39) => VCC_net_1, F_WDATA_HWDATA01(38)
         => VCC_net_1, F_WDATA_HWDATA01(37) => VCC_net_1, 
        F_WDATA_HWDATA01(36) => VCC_net_1, F_WDATA_HWDATA01(35)
         => VCC_net_1, F_WDATA_HWDATA01(34) => VCC_net_1, 
        F_WDATA_HWDATA01(33) => VCC_net_1, F_WDATA_HWDATA01(32)
         => VCC_net_1, F_WDATA_HWDATA01(31) => VCC_net_1, 
        F_WDATA_HWDATA01(30) => VCC_net_1, F_WDATA_HWDATA01(29)
         => VCC_net_1, F_WDATA_HWDATA01(28) => VCC_net_1, 
        F_WDATA_HWDATA01(27) => VCC_net_1, F_WDATA_HWDATA01(26)
         => VCC_net_1, F_WDATA_HWDATA01(25) => VCC_net_1, 
        F_WDATA_HWDATA01(24) => VCC_net_1, F_WDATA_HWDATA01(23)
         => VCC_net_1, F_WDATA_HWDATA01(22) => VCC_net_1, 
        F_WDATA_HWDATA01(21) => VCC_net_1, F_WDATA_HWDATA01(20)
         => VCC_net_1, F_WDATA_HWDATA01(19) => VCC_net_1, 
        F_WDATA_HWDATA01(18) => VCC_net_1, F_WDATA_HWDATA01(17)
         => VCC_net_1, F_WDATA_HWDATA01(16) => VCC_net_1, 
        F_WDATA_HWDATA01(15) => VCC_net_1, F_WDATA_HWDATA01(14)
         => VCC_net_1, F_WDATA_HWDATA01(13) => VCC_net_1, 
        F_WDATA_HWDATA01(12) => VCC_net_1, F_WDATA_HWDATA01(11)
         => VCC_net_1, F_WDATA_HWDATA01(10) => VCC_net_1, 
        F_WDATA_HWDATA01(9) => VCC_net_1, F_WDATA_HWDATA01(8) => 
        VCC_net_1, F_WDATA_HWDATA01(7) => VCC_net_1, 
        F_WDATA_HWDATA01(6) => VCC_net_1, F_WDATA_HWDATA01(5) => 
        VCC_net_1, F_WDATA_HWDATA01(4) => VCC_net_1, 
        F_WDATA_HWDATA01(3) => VCC_net_1, F_WDATA_HWDATA01(2) => 
        VCC_net_1, F_WDATA_HWDATA01(1) => VCC_net_1, 
        F_WDATA_HWDATA01(0) => VCC_net_1, F_WID_HREADY01(3) => 
        GND_net_1, F_WID_HREADY01(2) => GND_net_1, 
        F_WID_HREADY01(1) => GND_net_1, F_WID_HREADY01(0) => 
        GND_net_1, F_WLAST => GND_net_1, F_WSTRB(7) => GND_net_1, 
        F_WSTRB(6) => GND_net_1, F_WSTRB(5) => GND_net_1, 
        F_WSTRB(4) => GND_net_1, F_WSTRB(3) => GND_net_1, 
        F_WSTRB(2) => GND_net_1, F_WSTRB(1) => GND_net_1, 
        F_WSTRB(0) => GND_net_1, F_WVALID => GND_net_1, 
        FPGA_MDDR_ARESET_N => VCC_net_1, MDDR_FABRIC_PADDR(10)
         => VCC_net_1, MDDR_FABRIC_PADDR(9) => VCC_net_1, 
        MDDR_FABRIC_PADDR(8) => VCC_net_1, MDDR_FABRIC_PADDR(7)
         => VCC_net_1, MDDR_FABRIC_PADDR(6) => VCC_net_1, 
        MDDR_FABRIC_PADDR(5) => VCC_net_1, MDDR_FABRIC_PADDR(4)
         => VCC_net_1, MDDR_FABRIC_PADDR(3) => VCC_net_1, 
        MDDR_FABRIC_PADDR(2) => VCC_net_1, MDDR_FABRIC_PENABLE
         => VCC_net_1, MDDR_FABRIC_PSEL => VCC_net_1, 
        MDDR_FABRIC_PWDATA(15) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(14) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(13) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(12) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(11) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(10) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(9) => VCC_net_1, MDDR_FABRIC_PWDATA(8)
         => VCC_net_1, MDDR_FABRIC_PWDATA(7) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(6) => VCC_net_1, MDDR_FABRIC_PWDATA(5)
         => VCC_net_1, MDDR_FABRIC_PWDATA(4) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(3) => VCC_net_1, MDDR_FABRIC_PWDATA(2)
         => VCC_net_1, MDDR_FABRIC_PWDATA(1) => VCC_net_1, 
        MDDR_FABRIC_PWDATA(0) => VCC_net_1, MDDR_FABRIC_PWRITE
         => VCC_net_1, PRESET_N => GND_net_1, 
        CAN_RXBUS_USBA_DATA1_MGPIO3A_IN => GND_net_1, 
        CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN => GND_net_1, 
        CAN_TXBUS_USBA_DATA0_MGPIO2A_IN => GND_net_1, DM_IN(2)
         => GND_net_1, DM_IN(1) => GND_net_1, DM_IN(0) => 
        GND_net_1, DRAM_DQ_IN(17) => GND_net_1, DRAM_DQ_IN(16)
         => GND_net_1, DRAM_DQ_IN(15) => GND_net_1, 
        DRAM_DQ_IN(14) => GND_net_1, DRAM_DQ_IN(13) => GND_net_1, 
        DRAM_DQ_IN(12) => GND_net_1, DRAM_DQ_IN(11) => GND_net_1, 
        DRAM_DQ_IN(10) => GND_net_1, DRAM_DQ_IN(9) => GND_net_1, 
        DRAM_DQ_IN(8) => GND_net_1, DRAM_DQ_IN(7) => GND_net_1, 
        DRAM_DQ_IN(6) => GND_net_1, DRAM_DQ_IN(5) => GND_net_1, 
        DRAM_DQ_IN(4) => GND_net_1, DRAM_DQ_IN(3) => GND_net_1, 
        DRAM_DQ_IN(2) => GND_net_1, DRAM_DQ_IN(1) => GND_net_1, 
        DRAM_DQ_IN(0) => GND_net_1, DRAM_DQS_IN(2) => GND_net_1, 
        DRAM_DQS_IN(1) => GND_net_1, DRAM_DQS_IN(0) => GND_net_1, 
        DRAM_FIFO_WE_IN(1) => GND_net_1, DRAM_FIFO_WE_IN(0) => 
        GND_net_1, I2C0_SCL_USBC_DATA1_MGPIO31B_IN => GND_net_1, 
        I2C0_SDA_USBC_DATA0_MGPIO30B_IN => GND_net_1, 
        I2C1_SCL_USBA_DATA4_MGPIO1A_IN => GND_net_1, 
        I2C1_SDA_USBA_DATA3_MGPIO0A_IN => GND_net_1, 
        MMUART0_CTS_USBC_DATA7_MGPIO19B_IN => GND_net_1, 
        MMUART0_DCD_MGPIO22B_IN => GND_net_1, 
        MMUART0_DSR_MGPIO20B_IN => GND_net_1, 
        MMUART0_DTR_USBC_DATA6_MGPIO18B_IN => GND_net_1, 
        MMUART0_RI_MGPIO21B_IN => GND_net_1, 
        MMUART0_RTS_USBC_DATA5_MGPIO17B_IN => GND_net_1, 
        MMUART0_RXD_USBC_STP_MGPIO28B_IN => GND_net_1, 
        MMUART0_SCK_USBC_NXT_MGPIO29B_IN => GND_net_1, 
        MMUART0_TXD_USBC_DIR_MGPIO27B_IN => GND_net_1, 
        MMUART1_RXD_USBC_DATA3_MGPIO26B_IN => GND_net_1, 
        MMUART1_SCK_USBC_DATA4_MGPIO25B_IN => GND_net_1, 
        MMUART1_TXD_USBC_DATA2_MGPIO24B_IN => GND_net_1, 
        RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN => GND_net_1, 
        RGMII_MDC_RMII_MDC_IN => GND_net_1, 
        RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN => GND_net_1, 
        RGMII_RX_CLK_IN => GND_net_1, 
        RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN => GND_net_1, 
        RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN => GND_net_1, 
        RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN => GND_net_1, 
        RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN => GND_net_1, 
        RGMII_RXD3_USBB_DATA4_IN => GND_net_1, RGMII_TX_CLK_IN
         => GND_net_1, RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN => 
        GND_net_1, RGMII_TXD0_RMII_TXD0_USBB_DIR_IN => GND_net_1, 
        RGMII_TXD1_RMII_TXD1_USBB_STP_IN => GND_net_1, 
        RGMII_TXD2_USBB_DATA5_IN => GND_net_1, 
        RGMII_TXD3_USBB_DATA6_IN => GND_net_1, 
        SPI0_SCK_USBA_XCLK_IN => GND_net_1, 
        SPI0_SDI_USBA_DIR_MGPIO5A_IN => GND_net_1, 
        SPI0_SDO_USBA_STP_MGPIO6A_IN => GND_net_1, 
        SPI0_SS0_USBA_NXT_MGPIO7A_IN => GND_net_1, 
        SPI0_SS1_USBA_DATA5_MGPIO8A_IN => GND_net_1, 
        SPI0_SS2_USBA_DATA6_MGPIO9A_IN => GND_net_1, 
        SPI0_SS3_USBA_DATA7_MGPIO10A_IN => GND_net_1, SPI1_SCK_IN
         => GND_net_1, SPI1_SDI_MGPIO11A_IN => GND_net_1, 
        SPI1_SDO_MGPIO12A_IN => GND_net_1, SPI1_SS0_MGPIO13A_IN
         => GND_net_1, SPI1_SS1_MGPIO14A_IN => GND_net_1, 
        SPI1_SS2_MGPIO15A_IN => GND_net_1, SPI1_SS3_MGPIO16A_IN
         => GND_net_1, SPI1_SS4_MGPIO17A_IN => GND_net_1, 
        SPI1_SS5_MGPIO18A_IN => GND_net_1, SPI1_SS6_MGPIO23A_IN
         => GND_net_1, SPI1_SS7_MGPIO24A_IN => GND_net_1, 
        USBC_XCLK_IN => GND_net_1, 
        CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT => OPEN, 
        CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT => OPEN, 
        CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT => OPEN, DRAM_ADDR(15)
         => nc218, DRAM_ADDR(14) => nc342, DRAM_ADDR(13) => nc106, 
        DRAM_ADDR(12) => nc261, DRAM_ADDR(11) => nc25, 
        DRAM_ADDR(10) => nc1, DRAM_ADDR(9) => nc322, DRAM_ADDR(8)
         => nc299, DRAM_ADDR(7) => nc37, DRAM_ADDR(6) => nc202, 
        DRAM_ADDR(5) => nc144, DRAM_ADDR(4) => nc153, 
        DRAM_ADDR(3) => nc46, DRAM_ADDR(2) => nc258, DRAM_ADDR(1)
         => nc343, DRAM_ADDR(0) => nc71, DRAM_BA(2) => nc124, 
        DRAM_BA(1) => nc332, DRAM_BA(0) => nc81, DRAM_CASN => 
        OPEN, DRAM_CKE => OPEN, DRAM_CLK => OPEN, DRAM_CSN => 
        OPEN, DRAM_DM_RDQS_OUT(2) => nc201, DRAM_DM_RDQS_OUT(1)
         => nc168, DRAM_DM_RDQS_OUT(0) => nc323, DRAM_DQ_OUT(17)
         => nc34, DRAM_DQ_OUT(16) => nc28, DRAM_DQ_OUT(15) => 
        nc115, DRAM_DQ_OUT(14) => nc264, DRAM_DQ_OUT(13) => nc192, 
        DRAM_DQ_OUT(12) => nc319, DRAM_DQ_OUT(11) => nc134, 
        DRAM_DQ_OUT(10) => nc32, DRAM_DQ_OUT(9) => nc40, 
        DRAM_DQ_OUT(8) => nc297, DRAM_DQ_OUT(7) => nc99, 
        DRAM_DQ_OUT(6) => nc75, DRAM_DQ_OUT(5) => nc183, 
        DRAM_DQ_OUT(4) => nc345, DRAM_DQ_OUT(3) => nc333, 
        DRAM_DQ_OUT(2) => nc288, DRAM_DQ_OUT(1) => nc85, 
        DRAM_DQ_OUT(0) => nc27, DRAM_DQS_OUT(2) => nc108, 
        DRAM_DQS_OUT(1) => nc325, DRAM_DQS_OUT(0) => nc16, 
        DRAM_FIFO_WE_OUT(1) => nc155, DRAM_FIFO_WE_OUT(0) => nc51, 
        DRAM_ODT => OPEN, DRAM_RASN => OPEN, DRAM_RSTN => OPEN, 
        DRAM_WEN => OPEN, I2C0_SCL_USBC_DATA1_MGPIO31B_OUT => 
        OPEN, I2C0_SDA_USBC_DATA0_MGPIO30B_OUT => OPEN, 
        I2C1_SCL_USBA_DATA4_MGPIO1A_OUT => OPEN, 
        I2C1_SDA_USBA_DATA3_MGPIO0A_OUT => OPEN, 
        MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT => OPEN, 
        MMUART0_DCD_MGPIO22B_OUT => OPEN, 
        MMUART0_DSR_MGPIO20B_OUT => OPEN, 
        MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT => OPEN, 
        MMUART0_RI_MGPIO21B_OUT => OPEN, 
        MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT => OPEN, 
        MMUART0_RXD_USBC_STP_MGPIO28B_OUT => OPEN, 
        MMUART0_SCK_USBC_NXT_MGPIO29B_OUT => OPEN, 
        MMUART0_TXD_USBC_DIR_MGPIO27B_OUT => OPEN, 
        MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT => OPEN, 
        MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT => OPEN, 
        MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT => OPEN, 
        RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT => OPEN, 
        RGMII_MDC_RMII_MDC_OUT => OPEN, 
        RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT => OPEN, 
        RGMII_RX_CLK_OUT => OPEN, 
        RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT => OPEN, 
        RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT => OPEN, 
        RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT => OPEN, 
        RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT => OPEN, 
        RGMII_RXD3_USBB_DATA4_OUT => OPEN, RGMII_TX_CLK_OUT => 
        OPEN, RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT => OPEN, 
        RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT => OPEN, 
        RGMII_TXD1_RMII_TXD1_USBB_STP_OUT => OPEN, 
        RGMII_TXD2_USBB_DATA5_OUT => OPEN, 
        RGMII_TXD3_USBB_DATA6_OUT => OPEN, SPI0_SCK_USBA_XCLK_OUT
         => OPEN, SPI0_SDI_USBA_DIR_MGPIO5A_OUT => OPEN, 
        SPI0_SDO_USBA_STP_MGPIO6A_OUT => OPEN, 
        SPI0_SS0_USBA_NXT_MGPIO7A_OUT => OPEN, 
        SPI0_SS1_USBA_DATA5_MGPIO8A_OUT => OPEN, 
        SPI0_SS2_USBA_DATA6_MGPIO9A_OUT => OPEN, 
        SPI0_SS3_USBA_DATA7_MGPIO10A_OUT => OPEN, SPI1_SCK_OUT
         => OPEN, SPI1_SDI_MGPIO11A_OUT => OPEN, 
        SPI1_SDO_MGPIO12A_OUT => OPEN, SPI1_SS0_MGPIO13A_OUT => 
        OPEN, SPI1_SS1_MGPIO14A_OUT => OPEN, 
        SPI1_SS2_MGPIO15A_OUT => OPEN, SPI1_SS3_MGPIO16A_OUT => 
        OPEN, SPI1_SS4_MGPIO17A_OUT => OPEN, 
        SPI1_SS5_MGPIO18A_OUT => OPEN, SPI1_SS6_MGPIO23A_OUT => 
        OPEN, SPI1_SS7_MGPIO24A_OUT => OPEN, USBC_XCLK_OUT => 
        OPEN, CAN_RXBUS_USBA_DATA1_MGPIO3A_OE => OPEN, 
        CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE => OPEN, 
        CAN_TXBUS_USBA_DATA0_MGPIO2A_OE => OPEN, DM_OE(2) => 
        nc301, DM_OE(1) => nc33, DM_OE(0) => nc204, 
        DRAM_DQ_OE(17) => nc173, DRAM_DQ_OE(16) => nc278, 
        DRAM_DQ_OE(15) => nc169, DRAM_DQ_OE(14) => nc78, 
        DRAM_DQ_OE(13) => nc263, DRAM_DQ_OE(12) => nc335, 
        DRAM_DQ_OE(11) => nc24, DRAM_DQ_OE(10) => nc88, 
        DRAM_DQ_OE(9) => nc111, DRAM_DQ_OE(8) => nc55, 
        DRAM_DQ_OE(7) => nc10, DRAM_DQ_OE(6) => nc22, 
        DRAM_DQ_OE(5) => nc210, DRAM_DQ_OE(4) => nc185, 
        DRAM_DQ_OE(3) => nc143, DRAM_DQ_OE(2) => nc248, 
        DRAM_DQ_OE(1) => nc77, DRAM_DQ_OE(0) => nc6, 
        DRAM_DQS_OE(2) => nc109, DRAM_DQS_OE(1) => nc87, 
        DRAM_DQS_OE(0) => nc123, I2C0_SCL_USBC_DATA1_MGPIO31B_OE
         => OPEN, I2C0_SDA_USBC_DATA0_MGPIO30B_OE => OPEN, 
        I2C1_SCL_USBA_DATA4_MGPIO1A_OE => OPEN, 
        I2C1_SDA_USBA_DATA3_MGPIO0A_OE => OPEN, 
        MMUART0_CTS_USBC_DATA7_MGPIO19B_OE => OPEN, 
        MMUART0_DCD_MGPIO22B_OE => OPEN, MMUART0_DSR_MGPIO20B_OE
         => OPEN, MMUART0_DTR_USBC_DATA6_MGPIO18B_OE => OPEN, 
        MMUART0_RI_MGPIO21B_OE => OPEN, 
        MMUART0_RTS_USBC_DATA5_MGPIO17B_OE => OPEN, 
        MMUART0_RXD_USBC_STP_MGPIO28B_OE => OPEN, 
        MMUART0_SCK_USBC_NXT_MGPIO29B_OE => OPEN, 
        MMUART0_TXD_USBC_DIR_MGPIO27B_OE => OPEN, 
        MMUART1_RXD_USBC_DATA3_MGPIO26B_OE => OPEN, 
        MMUART1_SCK_USBC_DATA4_MGPIO25B_OE => OPEN, 
        MMUART1_TXD_USBC_DATA2_MGPIO24B_OE => OPEN, 
        RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE => OPEN, 
        RGMII_MDC_RMII_MDC_OE => OPEN, 
        RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE => OPEN, 
        RGMII_RX_CLK_OE => OPEN, 
        RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE => OPEN, 
        RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE => OPEN, 
        RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE => OPEN, 
        RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE => OPEN, 
        RGMII_RXD3_USBB_DATA4_OE => OPEN, RGMII_TX_CLK_OE => OPEN, 
        RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE => OPEN, 
        RGMII_TXD0_RMII_TXD0_USBB_DIR_OE => OPEN, 
        RGMII_TXD1_RMII_TXD1_USBB_STP_OE => OPEN, 
        RGMII_TXD2_USBB_DATA5_OE => OPEN, 
        RGMII_TXD3_USBB_DATA6_OE => OPEN, SPI0_SCK_USBA_XCLK_OE
         => OPEN, SPI0_SDI_USBA_DIR_MGPIO5A_OE => OPEN, 
        SPI0_SDO_USBA_STP_MGPIO6A_OE => OPEN, 
        SPI0_SS0_USBA_NXT_MGPIO7A_OE => OPEN, 
        SPI0_SS1_USBA_DATA5_MGPIO8A_OE => OPEN, 
        SPI0_SS2_USBA_DATA6_MGPIO9A_OE => OPEN, 
        SPI0_SS3_USBA_DATA7_MGPIO10A_OE => OPEN, SPI1_SCK_OE => 
        OPEN, SPI1_SDI_MGPIO11A_OE => OPEN, SPI1_SDO_MGPIO12A_OE
         => OPEN, SPI1_SS0_MGPIO13A_OE => OPEN, 
        SPI1_SS1_MGPIO14A_OE => OPEN, SPI1_SS2_MGPIO15A_OE => 
        OPEN, SPI1_SS3_MGPIO16A_OE => OPEN, SPI1_SS4_MGPIO17A_OE
         => OPEN, SPI1_SS5_MGPIO18A_OE => OPEN, 
        SPI1_SS6_MGPIO23A_OE => OPEN, SPI1_SS7_MGPIO24A_OE => 
        OPEN, USBC_XCLK_OE => OPEN);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_Tx_async is

    port( tx_hold_reg                 : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(3 downto 2);
          TX_c                        : out   std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          xmit_pulse                  : in    std_logic;
          CoreUARTapb_0_0_TXRDY       : out   std_logic;
          baud_clock                  : in    std_logic;
          xmit_clock                  : in    std_logic;
          un5_psel_0_a2_1             : in    std_logic;
          N_902                       : in    std_logic;
          un1_csn                     : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_Tx_async;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_Tx_async is 

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
        \xmit_bit_sel[3]_net_1\, N_110_i_0, 
        \CoreUARTapb_0_0_TXRDY\, un1_csn_i_0, 
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
        tx_xhdl2_1_7_bm, tx_xhdl2_1, N_111, N_118, N_141
         : std_logic;

begin 

    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;

    \xmit_sel.tx_xhdl2_1_7_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_am_1_1, D => \xmit_bit_sel[1]_net_1\, Y
         => tx_xhdl2_1_7_am);
    
    txrdy_int : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        txrdy_int_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \CoreUARTapb_0_0_TXRDY\);
    
    \xmit_state_ns_i_a3_1[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \xmit_bit_sel[3]_net_1\, B => 
        \xmit_bit_sel[2]_net_1\, C => N_111, Y => N_141);
    
    \xmit_state[3]\ : SLE
      port map(D => \xmit_state_ns[2]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_hold_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => \xmit_state_ns[5]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_am_1_1);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_hold_reg(4), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
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
      generic map(INIT => x"D1C0")

      port map(A => \xmit_state[4]_net_1\, B => 
        \xmit_state[0]_net_1\, C => xmit_pulse, D => 
        \CoreUARTapb_0_0_TXRDY\, Y => N_118);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \xmit_cnt.xmit_bit_sel_3_i_o4[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, Y => N_111);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_hold_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    txrdy_int_1_sqmuxa_i : CFG3
      generic map(INIT => x"EA")

      port map(A => un1_csn, B => \xmit_state[3]_net_1\, C => 
        xmit_pulse, Y => txrdy_int_1_sqmuxa_i_0);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
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
      port map(D => N_96_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[2]_net_1\);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_110_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_i_0, CLK => FAB_CCC_GL0, EN => 
        N_122_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => TX_c);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_108_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_hold_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_hold_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    \xmit_state_RNI7TMV[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[3]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_113_i_0);
    
    \xmit_bit_sel_RNO[2]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \xmit_state[2]_net_1\, B => N_111, C => 
        \xmit_bit_sel[2]_net_1\, Y => N_108_i_0);
    
    \xmit_state_ns_a3[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \CoreUARTapb_0_0_TXRDY\, B => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[1]\);
    
    \xmit_state_ns[5]\ : CFG4
      generic map(INIT => x"B830")

      port map(A => N_141, B => xmit_pulse, C => 
        \xmit_state[0]_net_1\, D => \xmit_state[2]_net_1\, Y => 
        \xmit_state_ns[5]_net_1\);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_hold_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_106_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_bm_1_1);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \xmit_state_RNO[2]\ : CFG4
      generic map(INIT => x"F7C0")

      port map(A => N_141, B => xmit_pulse, C => 
        \xmit_state[3]_net_1\, D => \xmit_state[2]_net_1\, Y => 
        N_96_i_0);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_hold_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    txrdy_int_RNO : CFG4
      generic map(INIT => x"FFEF")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => un5_psel_0_a2_1, D
         => N_902, Y => un1_csn_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_ns\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \xmit_bit_sel[2]_net_1\, B => tx_xhdl2_1_7_bm, 
        C => tx_xhdl2_1_7_am, Y => tx_xhdl2_1);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_hold_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_113_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[4]_net_1\);
    
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

entity mss_top_sb_CoreUARTapb_0_0_Clock_gen is

    port( xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_Clock_gen;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_Clock_gen is 

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

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal xmit_clock_net_1, VCC_net_1, un7_baud_clock_int, 
        \baud_clock\, GND_net_1, \xmit_cntr[0]_net_1\, N_599_i, 
        \xmit_cntr[1]_net_1\, N_607_i_i_0, \xmit_cntr[2]_net_1\, 
        N_613_i_i_0, \xmit_cntr[3]_net_1\, N_639_i_i_0, baud_cntr, 
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
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNI2T7H_Y, 
        un2_baud_cntr_1, un2_baud_cntr_7, un2_baud_cntr_8, 
        \baud_cntr_cry[0]\, \baud_cntr_cry[1]\, 
        \baud_cntr_cry[2]\, \baud_cntr_cry[3]\, 
        \baud_cntr_cry[4]\, \baud_cntr_cry[5]\, 
        \baud_cntr_cry[6]\, \baud_cntr_cry[7]\, 
        \baud_cntr_cry[8]\, \baud_cntr_cry[9]\, 
        \baud_cntr_cry[10]\, \baud_cntr_cry[11]\, N_621
         : std_logic;

begin 

    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

    \baud_cntr_RNIBJ2J4[5]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_s[7]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[7]_net_1\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNI2T7H\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_1, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNI2T7H_Y, FCO
         => \baud_cntr_cry_cy[0]\);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_s[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[0]_net_1\);
    
    \baud_cntr_RNIIFNK6[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_s[9]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => N_639_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[3]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_607_i_i\ : CFG2
      generic map(INIT => x"9")

      port map(A => N_621, B => \xmit_cntr[1]_net_1\, Y => 
        N_607_i_i_0);
    
    \baud_cntr_RNIITOT[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \baud_cntr_cry_cy[0]\, 
        S => \baud_cntr_s[0]\, Y => OPEN, FCO => 
        \baud_cntr_cry[0]\);
    
    \baud_cntr_RNI45RU5[7]\ : ARI1
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
    
    \baud_cntr_RNIM5A73[3]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_RNIGDCO8[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
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
      port map(D => \baud_cntr_s[5]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[5]_net_1\);
    
    \baud_cntr[3]\ : SLE
      port map(D => \baud_cntr_s[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \baud_cntr_RNIO3G18[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
    \baud_cntr_RNI0C6T3[4]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
    \baud_cntr_RNI1RJA7[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_s[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[9]_net_1\, B => 
        \baud_cntr[8]_net_1\, C => \baud_cntr[7]_net_1\, D => 
        \baud_cntr[6]_net_1\, Y => un2_baud_cntr_8);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x2[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_599_i);
    
    \make_xmit_clock.xmit_cntr_3_1.N_639_i_i\ : CFG4
      generic map(INIT => x"D2F0")

      port map(A => \xmit_cntr[1]_net_1\, B => N_621, C => 
        \xmit_cntr[3]_net_1\, D => \xmit_cntr[2]_net_1\, Y => 
        N_639_i_i_0);
    
    \baud_cntr[10]\ : SLE
      port map(D => \baud_cntr_s[10]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[10]_net_1\);
    
    \baud_cntr[11]\ : SLE
      port map(D => \baud_cntr_s[11]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[11]_net_1\);
    
    \baud_cntr[6]\ : SLE
      port map(D => \baud_cntr_s[6]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[6]_net_1\);
    
    \baud_cntr[4]\ : SLE
      port map(D => \baud_cntr_s[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[4]_net_1\);
    
    \baud_cntr_RNINRU85[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => N_613_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \baud_cntr_RNID0EH2[2]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_613_i_i\ : CFG3
      generic map(INIT => x"D2")

      port map(A => \xmit_cntr[1]_net_1\, B => N_621, C => 
        \xmit_cntr[2]_net_1\, Y => N_613_i_i_0);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_s[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
    \make_xmit_clock.un7_baud_clock_int_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un7_baud_clock_int);
    
    \xmit_clock\ : SLE
      port map(D => un7_baud_clock_int, CLK => FAB_CCC_GL0, EN
         => \baud_clock\, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        xmit_clock_net_1);
    
    baud_clock_int : SLE
      port map(D => baud_cntr, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_clock\);
    
    \xmit_cntr[1]\ : SLE
      port map(D => N_607_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[1]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_621);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_s[12]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[12]_net_1\);
    
    \baud_cntr_RNI5SHR1[1]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNI2T7H_Y, C
         => \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \xmit_pulse\ : CFG2
      generic map(INIT => x"8")

      port map(A => \baud_clock\, B => xmit_clock_net_1, Y => 
        xmit_pulse);
    
    \xmit_cntr[0]\ : SLE
      port map(D => N_599_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[0]_net_1\);
    
    \baud_cntr[8]\ : SLE
      port map(D => \baud_cntr_s[8]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[8]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_Rx_async is

    port( data_out                      : out   std_logic_vector(7 downto 0);
          MSS_READY                     : in    std_logic;
          FAB_CCC_GL0                   : in    std_logic;
          baud_clock                    : in    std_logic;
          receive_full                  : out   std_logic;
          un1_temp_xhdl10_i_0           : in    std_logic;
          stop_strobe                   : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR   : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW      : out   std_logic;
          RX_c                          : in    std_logic;
          un1_temp_xhdl10_i_i_a2_0_a2_3 : in    std_logic;
          N_241_1                       : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_Rx_async;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_Rx_async is 

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

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
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

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \rx_state[1]_net_1\, VCC_net_1, 
        \rx_state_ns_i_i_0[1]_net_1\, GND_net_1, 
        \rx_state[0]_net_1\, \rx_state_ns[0]\, 
        \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        \un1_samples8_1_0_0_0\, \rx_shift[1]_net_1\, 
        \rx_shift_12[1]\, \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_21_i_0, \receive_full\, N_40, 
        \receive_count[0]_net_1\, N_513_i_0, 
        \receive_count[1]_net_1\, N_512_i_0, 
        \receive_count[2]_net_1\, N_25_i_0, 
        \receive_count[3]_net_1\, N_23_i_0, \overflow_int\, 
        overflow_int_3, rx_byte_xhdl5_1_sqmuxa, 
        \framing_error_int\, framing_error_int_0_sqmuxa, 
        framing_error_int_2_sqmuxa, N_42, N_44, 
        \samples[0]_net_1\, \samples[1]_net_1\, 
        \samples[2]_net_1\, \rx_bit_cnt[0]_net_1\, N_37_i_0, 
        \rx_bit_cnt[1]_net_1\, N_514_i_0, \rx_bit_cnt[2]_net_1\, 
        N_33_i_0, \rx_bit_cnt[3]_net_1\, N_31_i_0, N_751, N_608, 
        N_538, N_729, \framing_error_int_0_sqmuxa_0_a2_0_a2_2\, 
        N_629, N_758, N_579, N_884, N_872, N_616, N_624
         : std_logic;

begin 

    receive_full <= \receive_full\;

    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(0));
    
    overflow_int : SLE
      port map(D => overflow_int_3, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \overflow_int\);
    
    \samples[0]\ : SLE
      port map(D => \samples[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[0]_net_1\);
    
    \rx_shift[2]\ : SLE
      port map(D => \rx_shift_12[2]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(6));
    
    \rcv_cnt.receive_count_3_i_0_a2[0]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[2]_net_1\, C => N_538, D => 
        \receive_count[3]_net_1\, Y => N_758);
    
    \rx_state_ns_0_0_0_o2[0]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => N_629);
    
    \receive_count[1]\ : SLE
      port map(D => N_512_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_21_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[7]_net_1\);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[0]_net_1\);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[1]_net_1\, Y => 
        \rx_shift_12[0]\);
    
    framing_error_i : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => N_42, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_FRAMING_ERR);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_23_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_33_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    un1_samples8_1_0_0_0_a2 : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => baud_clock, Y => N_751);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_514_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    framing_error_int_0_sqmuxa_0_a2_0_a2_2 : CFG3
      generic map(INIT => x"08")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => \framing_error_int_0_sqmuxa_0_a2_0_a2_2\);
    
    \rcv_cnt.receive_count_3_i_0_a2_0[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \receive_count[0]_net_1\, B => N_538, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_884);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_616, B => \rx_bit_cnt[0]_net_1\, C => N_751, 
        Y => N_37_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => N_729, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_25_i_0);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    overflow_xhdl1_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"8F88")

      port map(A => baud_clock, B => \overflow_int\, C => N_241_1, 
        D => un1_temp_xhdl10_i_i_a2_0_a2_3, Y => N_44);
    
    \rx_bit_cnt_RNO[2]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_624, B => \rx_bit_cnt[2]_net_1\, C => N_751, 
        Y => N_33_i_0);
    
    \receive_shift.rx_bit_cnt_4_i_0_o2[1]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => \rx_bit_cnt[0]_net_1\, B => N_616, C => 
        \rx_bit_cnt[1]_net_1\, Y => N_624);
    
    \receive_count[2]\ : SLE
      port map(D => N_25_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[2]_net_1\);
    
    stop_strobe_i : SLE
      port map(D => framing_error_int_2_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => stop_strobe);
    
    rx_byte_xhdl5_1_sqmuxa_0_a2_0_a2 : CFG3
      generic map(INIT => x"08")

      port map(A => baud_clock, B => N_872, C => \receive_full\, 
        Y => rx_byte_xhdl5_1_sqmuxa);
    
    \receive_shift.rx_shift_12[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[3]_net_1\, Y => 
        \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[6]_net_1\, Y => 
        \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => \rx_state_ns_i_i_0[1]_net_1\, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => N_579, Y => N_21_i_0);
    
    un1_samples8_1_0_0_0_o2 : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => N_608, C => 
        \receive_count[3]_net_1\, Y => N_616);
    
    \receive_count_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \receive_count[0]_net_1\, B => N_729, C => 
        \receive_count[1]_net_1\, Y => N_512_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[4]_net_1\);
    
    \rcv_sm.overflow_int_3_0_a2_1_a2\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_872, B => \receive_full\, Y => 
        overflow_int_3);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[2]_net_1\, Y => 
        \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => N_608, B => \receive_count[3]_net_1\, C => 
        N_729, D => N_884, Y => N_23_i_0);
    
    un1_samples8_1_0_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => N_751, D => N_608, Y => \un1_samples8_1_0_0_0\);
    
    receive_full_int : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => N_40, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_full\);
    
    \receive_count_RNO[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_729, B => \receive_count[0]_net_1\, C => 
        N_758, Y => N_513_i_0);
    
    \rx_state_ns_i_i_0[1]\ : CFG4
      generic map(INIT => x"FC74")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[1]_net_1\, C => N_872, D => N_608, Y => 
        \rx_state_ns_i_i_0[1]_net_1\);
    
    \rx_state_ns_i_a3_0_0_a2_0_a2[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \receive_count[3]_net_1\, B => N_608, C => 
        \rx_state[1]_net_1\, Y => framing_error_int_2_sqmuxa);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[6]_net_1\);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[1]_net_1\);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[3]_net_1\);
    
    framing_error_int : SLE
      port map(D => framing_error_int_0_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \framing_error_int\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(2));
    
    \rx_state_ns_i_i_0_a2_1[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_629, B => \rx_state[0]_net_1\, Y => N_872);
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \samples[2]\ : SLE
      port map(D => RX_c, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[7]_net_1\, Y => 
        \rx_shift_12[6]\);
    
    framing_error_int_0_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \framing_error_int_0_sqmuxa_0_a2_0_a2_2\, B
         => N_579, C => \rx_state[1]_net_1\, D => 
        \receive_count[3]_net_1\, Y => framing_error_int_0_sqmuxa);
    
    \receive_count[0]\ : SLE
      port map(D => N_513_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(3));
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[5]_net_1\, Y => 
        \rx_shift_12[4]\);
    
    \rx_filtered.m3_0_o2_i_o2\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => N_579);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_538, B => \rx_shift[4]_net_1\, Y => 
        \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[5]_net_1\);
    
    \rx_state_ns_0_0_0[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, C => N_884, D => N_629, Y => 
        \rx_state_ns[0]\);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_37_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \receive_shift.rx_shift_12_i_0_a2[7]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        Y => N_538);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(1));
    
    un1_receive_full_int_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"F222")

      port map(A => un1_temp_xhdl10_i_i_a2_0_a2_3, B => N_241_1, 
        C => baud_clock, D => N_872, Y => N_40);
    
    un1_framing_error_i4_i_0_0 : CFG4
      generic map(INIT => x"8F88")

      port map(A => baud_clock, B => \framing_error_int\, C => 
        N_241_1, D => un1_temp_xhdl10_i_i_a2_0_a2_3, Y => N_42);
    
    \rx_bit_cnt_RNO[3]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => N_751, D => N_624, Y => 
        N_31_i_0);
    
    \rx_state_ns_i_i_0_o2_0[1]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_608);
    
    \rcv_cnt.receive_count_3_i_0_a2[3]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => N_538, Y => N_729);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_31_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => N_751, D => N_616, Y => 
        N_514_i_0);
    
    overflow_xhdl1 : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => N_44, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_OVERFLOW);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12);
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          un5_psel_0_a2_1                             : in    std_logic;
          N_902                                       : in    std_logic;
          N_241_1                                     : in    std_logic;
          TX_c                                        : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          RX_c                                        : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_COREUART;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_COREUART is 

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

  component mss_top_sb_CoreUARTapb_0_0_Tx_async
    port( tx_hold_reg                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(3 downto 2) := (others => 'U');
          TX_c                        : out   std_logic;
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          xmit_pulse                  : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY       : out   std_logic;
          baud_clock                  : in    std_logic := 'U';
          xmit_clock                  : in    std_logic := 'U';
          un5_psel_0_a2_1             : in    std_logic := 'U';
          N_902                       : in    std_logic := 'U';
          un1_csn                     : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
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

  component mss_top_sb_CoreUARTapb_0_0_Clock_gen
    port( xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_Rx_async
    port( data_out                      : out   std_logic_vector(7 downto 0);
          MSS_READY                     : in    std_logic := 'U';
          FAB_CCC_GL0                   : in    std_logic := 'U';
          baud_clock                    : in    std_logic := 'U';
          receive_full                  : out   std_logic;
          un1_temp_xhdl10_i_0           : in    std_logic := 'U';
          stop_strobe                   : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR   : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW      : out   std_logic;
          RX_c                          : in    std_logic := 'U';
          un1_temp_xhdl10_i_i_a2_0_a2_3 : in    std_logic := 'U';
          N_241_1                       : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, receive_full, un1_rx_fifo, GND_net_1, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        \un1_temp_xhdl10_i_i_a2_0_a2_0\, stop_strobe, 
        \un1_temp_xhdl10_i_i_a2_0_a2_3\, un1_temp_xhdl10_i_0, 
        xmit_clock, baud_clock, xmit_pulse : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_Tx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Tx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Clock_gen
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Clock_gen(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Rx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Rx_async(DEF_ARCH);
begin 


    un1_temp_xhdl10_i : CFG2
      generic map(INIT => x"B")

      port map(A => N_241_1, B => \un1_temp_xhdl10_i_i_a2_0_a2_3\, 
        Y => un1_temp_xhdl10_i_0);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \RXRDY_NEW.un1_rx_fifo\ : CFG2
      generic map(INIT => x"D")

      port map(A => receive_full, B => stop_strobe, Y => 
        un1_rx_fifo);
    
    make_TX : mss_top_sb_CoreUARTapb_0_0_Tx_async
      port map(tx_hold_reg(7) => \tx_hold_reg[7]_net_1\, 
        tx_hold_reg(6) => \tx_hold_reg[6]_net_1\, tx_hold_reg(5)
         => \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, CoreAPB3_0_APBmslave0_PADDR(3)
         => CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), TX_c => TX_c, MSS_READY
         => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, xmit_pulse => 
        xmit_pulse, CoreUARTapb_0_0_TXRDY => 
        CoreUARTapb_0_0_TXRDY, baud_clock => baud_clock, 
        xmit_clock => xmit_clock, un5_psel_0_a2_1 => 
        un5_psel_0_a2_1, N_902 => N_902, un1_csn => un1_csn);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_hold_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    un1_temp_xhdl10_i_i_a2_0_a2_3 : CFG4
      generic map(INIT => x"0800")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        \un1_temp_xhdl10_i_i_a2_0_a2_0\, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \un1_temp_xhdl10_i_i_a2_0_a2_3\);
    
    un1_temp_xhdl10_i_i_a2_0_a2_0 : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \un1_temp_xhdl10_i_i_a2_0_a2_0\);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    \reg_write.un1_csn_0_a3\ : CFG4
      generic map(INIT => x"0010")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => un5_psel_0_a2_1, D
         => N_902, Y => un1_csn);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_hold_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[4]_net_1\);
    
    make_mss_top_sb_CoreUARTapb_0_0_Clock_gen : 
        mss_top_sb_CoreUARTapb_0_0_Clock_gen
      port map(xmit_clock => xmit_clock, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => baud_clock, 
        xmit_pulse => xmit_pulse);
    
    make_RX : mss_top_sb_CoreUARTapb_0_0_Rx_async
      port map(data_out(7) => data_out(7), data_out(6) => 
        data_out(6), data_out(5) => data_out(5), data_out(4) => 
        data_out(4), data_out(3) => data_out(3), data_out(2) => 
        data_out(2), data_out(1) => data_out(1), data_out(0) => 
        data_out(0), MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, baud_clock => baud_clock, receive_full => 
        receive_full, un1_temp_xhdl10_i_0 => un1_temp_xhdl10_i_0, 
        stop_strobe => stop_strobe, CoreUARTapb_0_0_FRAMING_ERR
         => CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_OVERFLOW
         => CoreUARTapb_0_0_OVERFLOW, RX_c => RX_c, 
        un1_temp_xhdl10_i_i_a2_0_a2_3 => 
        \un1_temp_xhdl10_i_i_a2_0_a2_3\, N_241_1 => N_241_1);
    
    rxrdy_xhdl4 : SLE
      port map(D => receive_full, CLK => FAB_CCC_GL0, EN => 
        un1_rx_fifo, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_RXRDY);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_CoreUARTapb is

    port( CoreAPB3_0_APBmslave1_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          N_902                                       : in    std_logic;
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_CoreUARTapb;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_CoreUARTapb is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12) := (others => 'U');
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          un5_psel_0_a2_1                             : in    std_logic := 'U';
          N_902                                       : in    std_logic := 'U';
          N_241_1                                     : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          RX_c                                        : in    std_logic := 'U'
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, N_241_i_0, 
        GND_net_1, \nxtprdata_xhdl7_1[1]\, \nxtprdata_xhdl7_1[2]\, 
        \nxtprdata_xhdl7_1[3]\, \nxtprdata_xhdl7_1[4]\, 
        \nxtprdata_xhdl7_1[5]\, \nxtprdata_xhdl7_1[6]\, 
        \nxtprdata_xhdl7_1[7]\, \controlReg2[0]_net_1\, un13_psel, 
        \controlReg2[1]_net_1\, \controlReg2[2]_net_1\, 
        \controlReg2[3]_net_1\, \controlReg2[4]_net_1\, 
        \controlReg2[5]_net_1\, \controlReg2[6]_net_1\, 
        \controlReg2[7]_net_1\, \controlReg1[0]_net_1\, un5_psel, 
        \controlReg1[1]_net_1\, \controlReg1[2]_net_1\, 
        \controlReg1[3]_net_1\, \controlReg1[4]_net_1\, 
        \controlReg1[5]_net_1\, \controlReg1[6]_net_1\, 
        \controlReg1[7]_net_1\, \nxtprdata_xhdl7_1_5_1[2]\, 
        \data_out[2]\, \nxtprdata_xhdl7_1_5_1[7]\, \data_out[7]\, 
        \nxtprdata_xhdl7_1_5_1[6]\, \data_out[6]\, 
        \nxtprdata_xhdl7_1_5_1[5]\, \data_out[5]\, N_560, 
        \nxtprdata_xhdl7_1_5_ns_1[4]\, 
        \CoreUARTapb_0_0_FRAMING_ERR\, N_559, 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, \CoreUARTapb_0_0_OVERFLOW\, 
        N_557, \nxtprdata_xhdl7_1_5_ns_1[1]\, 
        \CoreUARTapb_0_0_RXRDY\, N_556, 
        \nxtprdata_xhdl7_1_5_ns_1[0]\, \CoreUARTapb_0_0_TXRDY\, 
        \data_out[0]\, \data_out[1]\, \data_out[3]\, 
        \data_out[4]\, \un1_nxtprdata_xhdl722_i_a2_i_1\, 
        un5_psel_0_a2_1, N_241_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_0_0_COREUART(DEF_ARCH);
begin 

    CoreUARTapb_0_0_FRAMING_ERR <= \CoreUARTapb_0_0_FRAMING_ERR\;
    CoreUARTapb_0_0_OVERFLOW <= \CoreUARTapb_0_0_OVERFLOW\;
    CoreUARTapb_0_0_RXRDY <= \CoreUARTapb_0_0_RXRDY\;
    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;

    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[1]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_0_0_RXRDY\, B => 
        \controlReg1[1]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[5]\ : CFG4
      generic map(INIT => x"530F")

      port map(A => \controlReg2[5]_net_1\, B => \data_out[5]\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[5]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[3]\, B => \controlReg2[3]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_559);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[4]_net_1\);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[4]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(4));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[0]\ : CFG4
      generic map(INIT => x"4073")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => N_556, D => 
        \nxtprdata_xhdl7_1_5_ns_1[0]\, Y => 
        \nxtprdata_xhdl7_1[0]\);
    
    \p_CtrlReg1Seq.un5_psel_0_a2_1\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PWRITE, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        un5_psel_0_a2_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[7]\ : CFG4
      generic map(INIT => x"530F")

      port map(A => \controlReg2[7]_net_1\, B => \data_out[7]\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[7]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[3]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(3));
    
    \controlReg2[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[6]_net_1\);
    
    \controlReg1[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[3]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[1]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[1]\, B => \controlReg2[1]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_557);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[4]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[4]\, B => \controlReg2[4]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_560);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[2]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[2]\, C => \controlReg1[2]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[2]\);
    
    \controlReg1[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[6]_net_1\);
    
    \controlReg2[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[3]_net_1\);
    
    \controlReg1[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[2]_net_1\);
    
    un1_nxtprdata_xhdl722_i_a2_i_1_0 : CFG4
      generic map(INIT => x"FF8F")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PENABLE, Y => 
        \un1_nxtprdata_xhdl722_i_a2_i_1\);
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[4]_net_1\);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(5));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[7]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[7]\, C => \controlReg1[7]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[7]\);
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(7));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[3]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_0_0_OVERFLOW\, B => 
        \controlReg1[3]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[3]\);
    
    \controlReg2[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[2]\ : CFG4
      generic map(INIT => x"530F")

      port map(A => \controlReg2[2]_net_1\, B => \data_out[2]\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[2]\);
    
    \controlReg2[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[5]_net_1\);
    
    \controlReg2[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[2]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[4]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_0_0_FRAMING_ERR\, B => 
        \controlReg1[4]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[4]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[1]\ : CFG4
      generic map(INIT => x"4073")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => N_557, D => 
        \nxtprdata_xhdl7_1_5_ns_1[1]\, Y => 
        \nxtprdata_xhdl7_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[6]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[6]\, C => \controlReg1[6]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[6]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[0]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[0]\, B => \controlReg2[0]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_556);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[5]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[5]\, C => \controlReg1[5]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[5]\);
    
    \iPRDATA[0]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[0]\, CLK => FAB_CCC_GL0, 
        EN => N_241_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave1_PRDATA(0));
    
    uUART : mss_top_sb_CoreUARTapb_0_0_COREUART
      port map(CoreAPB3_0_APBmslave0_PWDATA(7) => 
        CoreAPB3_0_APBmslave0_PWDATA(7), 
        CoreAPB3_0_APBmslave0_PWDATA(6) => 
        CoreAPB3_0_APBmslave0_PWDATA(6), 
        CoreAPB3_0_APBmslave0_PWDATA(5) => 
        CoreAPB3_0_APBmslave0_PWDATA(5), 
        CoreAPB3_0_APBmslave0_PWDATA(4) => 
        CoreAPB3_0_APBmslave0_PWDATA(4), 
        CoreAPB3_0_APBmslave0_PWDATA(3) => 
        CoreAPB3_0_APBmslave0_PWDATA(3), 
        CoreAPB3_0_APBmslave0_PWDATA(2) => 
        CoreAPB3_0_APBmslave0_PWDATA(2), 
        CoreAPB3_0_APBmslave0_PWDATA(1) => 
        CoreAPB3_0_APBmslave0_PWDATA(1), 
        CoreAPB3_0_APBmslave0_PWDATA(0) => 
        CoreAPB3_0_APBmslave0_PWDATA(0), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        data_out(7) => \data_out[7]\, data_out(6) => 
        \data_out[6]\, data_out(5) => \data_out[5]\, data_out(4)
         => \data_out[4]\, data_out(3) => \data_out[3]\, 
        data_out(2) => \data_out[2]\, data_out(1) => 
        \data_out[1]\, data_out(0) => \data_out[0]\, 
        CoreUARTapb_0_0_RXRDY => \CoreUARTapb_0_0_RXRDY\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, un5_psel_0_a2_1 => 
        un5_psel_0_a2_1, N_902 => N_902, N_241_1 => N_241_1, TX_c
         => TX_c, CoreUARTapb_0_0_TXRDY => 
        \CoreUARTapb_0_0_TXRDY\, CoreUARTapb_0_0_FRAMING_ERR => 
        \CoreUARTapb_0_0_FRAMING_ERR\, CoreUARTapb_0_0_OVERFLOW
         => \CoreUARTapb_0_0_OVERFLOW\, RX_c => RX_c);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[4]\ : CFG4
      generic map(INIT => x"4073")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => N_560, D => 
        \nxtprdata_xhdl7_1_5_ns_1[4]\, Y => 
        \nxtprdata_xhdl7_1[4]\);
    
    \p_CtrlReg2Seq.un13_psel_0_a3\ : CFG4
      generic map(INIT => x"0080")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => un5_psel_0_a2_1, D
         => N_902, Y => un13_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[6]\ : CFG4
      generic map(INIT => x"530F")

      port map(A => \controlReg2[6]_net_1\, B => \data_out[6]\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[6]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    un1_nxtprdata_xhdl722_i_a2_i_1 : CFG2
      generic map(INIT => x"E")

      port map(A => N_902, B => CoreAPB3_0_APBmslave0_PWRITE, Y
         => N_241_1);
    
    un1_nxtprdata_xhdl722_i_a2_i_1_0_RNID90F : CFG2
      generic map(INIT => x"1")

      port map(A => N_241_1, B => 
        \un1_nxtprdata_xhdl722_i_a2_i_1\, Y => N_241_i_0);
    
    \controlReg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[3]\ : CFG4
      generic map(INIT => x"4073")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => N_559, D => 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, Y => 
        \nxtprdata_xhdl7_1[3]\);
    
    \controlReg1[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[0]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_0_0_TXRDY\, B => 
        \controlReg1[0]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[0]\);
    
    \p_CtrlReg1Seq.un5_psel_0_a3\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => un5_psel_0_a2_1, D
         => N_902, Y => un5_psel);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb is

    port( COREI2C_0_0_SDA_IO : inout std_logic := 'Z';
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          DEVRST_N           : in    std_logic;
          TX_c               : out   std_logic;
          RX_c               : in    std_logic
        );

end mss_top_sb;

architecture DEF_ARCH of mss_top_sb is 

  component mss_top_sb_CCC_0_FCCC
    port( FAB_CCC_GL0                                        : out   std_logic;
          FAB_CCC_LOCK                                       : out   std_logic;
          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic := 'U'
        );
  end component;

  component CoreResetP
    port( MSS_READY                                 : out   std_logic;
          FAB_CCC_GL0                               : in    std_logic := 'U';
          POWER_ON_RESET_N                          : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic := 'U'
        );
  end component;

  component COREI2C
    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(3 downto 2) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          N_902                                       : in    std_logic := 'U';
          N_431_i                                     : in    std_logic := 'U';
          N_428                                       : in    std_logic := 'U'
        );
  end component;

  component SYSRESET
    port( POWER_ON_RESET_N : out   std_logic;
          DEVRST_N         : in    std_logic := 'U'
        );
  end component;

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_FABOSC_0_OSC
    port( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );
  end component;

  component BIBUF
    generic (IOSTD:string := "");

    port( PAD : inout   std_logic;
          D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CoreAPB3
    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(15 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0) := (others => 'U');
          sersta                                      : in    std_logic_vector(4 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0) := (others => 'U');
          serdat                                      : in    std_logic_vector(7 downto 0) := (others => 'U');
          sercon_7                                    : in    std_logic := 'U';
          sercon_2                                    : in    std_logic := 'U';
          sercon_0                                    : in    std_logic := 'U';
          sercon_1                                    : in    std_logic := 'U';
          sercon_6                                    : in    std_logic := 'U';
          sercon_5                                    : in    std_logic := 'U';
          sercon_4                                    : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx : in    std_logic := 'U';
          N_902                                       : out   std_logic;
          N_28_i_0                                    : out   std_logic;
          N_431_i                                     : out   std_logic;
          N_428                                       : out   std_logic;
          N_18_i_0                                    : out   std_logic;
          N_24_i_0                                    : out   std_logic;
          N_26_i_0                                    : out   std_logic;
          N_30_i_0                                    : out   std_logic;
          N_32_i_0                                    : out   std_logic;
          N_20_i_0                                    : out   std_logic;
          N_425_i_0                                   : out   std_logic
        );
  end component;

  component mss_top_sb_MSS
    port( CoreAPB3_0_APBmslave0_PADDR                 : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : in    std_logic_vector(0 to 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N   : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F        : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                 : in    std_logic := 'U';
          N_32_i_0                                    : in    std_logic := 'U';
          N_30_i_0                                    : in    std_logic := 'U';
          N_28_i_0                                    : in    std_logic := 'U';
          N_26_i_0                                    : in    std_logic := 'U';
          N_24_i_0                                    : in    std_logic := 'U';
          N_425_i_0                                   : in    std_logic := 'U';
          N_20_i_0                                    : in    std_logic := 'U';
          N_18_i_0                                    : in    std_logic := 'U';
          FAB_CCC_LOCK                                : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave1_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(12 to 12) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          N_902                                       : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic := 'U'
        );
  end component;

    signal BIBUF_COREI2C_0_0_SDA_IO_Y, GND_net_1, 
        \COREI2C_0_0_SDAO_i[0]\, BIBUF_COREI2C_0_0_SCL_IO_Y, 
        \COREI2C_0_0_SCLO_i[0]\, POWER_ON_RESET_N, 
        CoreUARTapb_0_0_intr_or_2_Y, CoreUARTapb_0_0_intr_or_1_Y, 
        CoreUARTapb_0_0_intr_or_0_Y, CoreUARTapb_0_0_RXRDY, 
        CoreUARTapb_0_0_TXRDY, CoreUARTapb_0_0_FRAMING_ERR, 
        CoreUARTapb_0_0_OVERFLOW, FAB_CCC_GL0, FAB_CCC_LOCK, 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, \sersta[0]\, 
        \sersta[1]\, \sersta[2]\, \sersta[3]\, \sersta[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, \sercon[7]\, 
        \sercon[2]\, \sercon[0]\, \sercon[1]\, \sercon[6]\, 
        \sercon[5]\, \sercon[4]\, \COREI2C_0_0_INT[0]\, 
        \serdat[0]\, \serdat[1]\, \serdat[2]\, \serdat[3]\, 
        \serdat[4]\, \serdat[5]\, \serdat[6]\, \serdat[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_902, 
        N_28_i_0, N_431_i, N_428, N_18_i_0, N_24_i_0, N_26_i_0, 
        N_30_i_0, N_32_i_0, N_20_i_0, N_425_i_0, 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, MSS_READY, 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, VCC_net_1
         : std_logic;

    for all : mss_top_sb_CCC_0_FCCC
	Use entity work.mss_top_sb_CCC_0_FCCC(DEF_ARCH);
    for all : CoreResetP
	Use entity work.CoreResetP(DEF_ARCH);
    for all : COREI2C
	Use entity work.COREI2C(DEF_ARCH);
    for all : mss_top_sb_FABOSC_0_OSC
	Use entity work.mss_top_sb_FABOSC_0_OSC(DEF_ARCH);
    for all : CoreAPB3
	Use entity work.CoreAPB3(DEF_ARCH);
    for all : mss_top_sb_MSS
	Use entity work.mss_top_sb_MSS(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
	Use entity work.mss_top_sb_CoreUARTapb_0_0_CoreUARTapb(DEF_ARCH);
begin 


    CCC_0 : mss_top_sb_CCC_0_FCCC
      port map(FAB_CCC_GL0 => FAB_CCC_GL0, FAB_CCC_LOCK => 
        FAB_CCC_LOCK, 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC => 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    CORERESETP_0 : CoreResetP
      port map(MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        POWER_ON_RESET_N => POWER_ON_RESET_N, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N);
    
    COREI2C_0_0 : COREI2C
      port map(COREI2C_0_0_SDAO_i(0) => \COREI2C_0_0_SDAO_i[0]\, 
        COREI2C_0_0_SCLO_i(0) => \COREI2C_0_0_SCLO_i[0]\, 
        serdat(7) => \serdat[7]\, serdat(6) => \serdat[6]\, 
        serdat(5) => \serdat[5]\, serdat(4) => \serdat[4]\, 
        serdat(3) => \serdat[3]\, serdat(2) => \serdat[2]\, 
        serdat(1) => \serdat[1]\, serdat(0) => \serdat[0]\, 
        COREI2C_0_0_INT(0) => \COREI2C_0_0_INT[0]\, sersta(4) => 
        \sersta[4]\, sersta(3) => \sersta[3]\, sersta(2) => 
        \sersta[2]\, sersta(1) => \sersta[1]\, sersta(0) => 
        \sersta[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        CoreAPB3_0_APBmslave0_PWDATA(7) => 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, 
        CoreAPB3_0_APBmslave0_PWDATA(6) => 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        CoreAPB3_0_APBmslave0_PWDATA(5) => 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        CoreAPB3_0_APBmslave0_PWDATA(4) => 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        CoreAPB3_0_APBmslave0_PWDATA(3) => 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        CoreAPB3_0_APBmslave0_PWDATA(2) => 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        CoreAPB3_0_APBmslave0_PWDATA(1) => 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        CoreAPB3_0_APBmslave0_PWDATA(0) => 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, sercon_6 => 
        \sercon[6]\, sercon_0 => \sercon[0]\, sercon_1 => 
        \sercon[1]\, sercon_2 => \sercon[2]\, sercon_4 => 
        \sercon[4]\, sercon_5 => \sercon[5]\, sercon_7 => 
        \sercon[7]\, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, BIBUF_COREI2C_0_0_SDA_IO_Y
         => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        BIBUF_COREI2C_0_0_SCL_IO_Y => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        N_902 => N_902, N_431_i => N_431_i, N_428 => N_428);
    
    SYSRESET_POR : SYSRESET
      port map(POWER_ON_RESET_N => POWER_ON_RESET_N, DEVRST_N => 
        DEVRST_N);
    
    CoreUARTapb_0_0_intr_or_2 : OR3
      port map(A => CoreUARTapb_0_0_intr_or_1_Y, B => 
        CoreUARTapb_0_0_intr_or_0_Y, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_2_Y);
    
    CoreUARTapb_0_0_intr_or_0 : OR3
      port map(A => CoreUARTapb_0_0_FRAMING_ERR, B => 
        CoreUARTapb_0_0_OVERFLOW, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    FABOSC_0 : mss_top_sb_FABOSC_0_OSC
      port map(FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
         => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    BIBUF_COREI2C_0_0_SDA_IO : BIBUF
      port map(PAD => COREI2C_0_0_SDA_IO, D => GND_net_1, E => 
        \COREI2C_0_0_SDAO_i[0]\, Y => BIBUF_COREI2C_0_0_SDA_IO_Y);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    CoreUARTapb_0_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_0_0_RXRDY, B => 
        CoreUARTapb_0_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_1_Y);
    
    CoreAPB3_0 : CoreAPB3
      port map(mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15)
         => \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PADDR(8) => 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, 
        CoreAPB3_0_APBmslave0_PADDR(7) => 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        CoreAPB3_0_APBmslave0_PADDR(6) => 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        CoreAPB3_0_APBmslave0_PADDR(5) => 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        CoreAPB3_0_APBmslave0_PADDR(1) => 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        CoreAPB3_0_APBmslave0_PADDR(0) => 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, sersta(4) => 
        \sersta[4]\, sersta(3) => \sersta[3]\, sersta(2) => 
        \sersta[2]\, sersta(1) => \sersta[1]\, sersta(0) => 
        \sersta[0]\, CoreAPB3_0_APBmslave1_PRDATA(7) => 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, 
        CoreAPB3_0_APBmslave1_PRDATA(6) => 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        CoreAPB3_0_APBmslave1_PRDATA(5) => 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        CoreAPB3_0_APBmslave1_PRDATA(4) => 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        CoreAPB3_0_APBmslave1_PRDATA(3) => 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        CoreAPB3_0_APBmslave1_PRDATA(2) => 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        CoreAPB3_0_APBmslave1_PRDATA(1) => 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        CoreAPB3_0_APBmslave1_PRDATA(0) => 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, COREI2C_0_0_INT(0) => 
        \COREI2C_0_0_INT[0]\, serdat(7) => \serdat[7]\, serdat(6)
         => \serdat[6]\, serdat(5) => \serdat[5]\, serdat(4) => 
        \serdat[4]\, serdat(3) => \serdat[3]\, serdat(2) => 
        \serdat[2]\, serdat(1) => \serdat[1]\, serdat(0) => 
        \serdat[0]\, sercon_7 => \sercon[7]\, sercon_2 => 
        \sercon[2]\, sercon_0 => \sercon[0]\, sercon_1 => 
        \sercon[1]\, sercon_6 => \sercon[6]\, sercon_5 => 
        \sercon[5]\, sercon_4 => \sercon[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_902 => 
        N_902, N_28_i_0 => N_28_i_0, N_431_i => N_431_i, N_428
         => N_428, N_18_i_0 => N_18_i_0, N_24_i_0 => N_24_i_0, 
        N_26_i_0 => N_26_i_0, N_30_i_0 => N_30_i_0, N_32_i_0 => 
        N_32_i_0, N_20_i_0 => N_20_i_0, N_425_i_0 => N_425_i_0);
    
    mss_top_sb_MSS_0 : mss_top_sb_MSS
      port map(CoreAPB3_0_APBmslave0_PADDR(8) => 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, 
        CoreAPB3_0_APBmslave0_PADDR(7) => 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        CoreAPB3_0_APBmslave0_PADDR(6) => 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        CoreAPB3_0_APBmslave0_PADDR(5) => 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        CoreAPB3_0_APBmslave0_PADDR(1) => 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        CoreAPB3_0_APBmslave0_PADDR(0) => 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PWDATA(7) => 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, 
        CoreAPB3_0_APBmslave0_PWDATA(6) => 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        CoreAPB3_0_APBmslave0_PWDATA(5) => 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        CoreAPB3_0_APBmslave0_PWDATA(4) => 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        CoreAPB3_0_APBmslave0_PWDATA(3) => 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        CoreAPB3_0_APBmslave0_PWDATA(2) => 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        CoreAPB3_0_APBmslave0_PWDATA(1) => 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        CoreAPB3_0_APBmslave0_PWDATA(0) => 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, COREI2C_0_0_INT(0) => 
        \COREI2C_0_0_INT[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        CoreUARTapb_0_0_intr_or_2_Y => 
        CoreUARTapb_0_0_intr_or_2_Y, N_32_i_0 => N_32_i_0, 
        N_30_i_0 => N_30_i_0, N_28_i_0 => N_28_i_0, N_26_i_0 => 
        N_26_i_0, N_24_i_0 => N_24_i_0, N_425_i_0 => N_425_i_0, 
        N_20_i_0 => N_20_i_0, N_18_i_0 => N_18_i_0, FAB_CCC_LOCK
         => FAB_CCC_LOCK, FAB_CCC_GL0 => FAB_CCC_GL0);
    
    CoreUARTapb_0_0 : mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
      port map(CoreAPB3_0_APBmslave1_PRDATA(7) => 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, 
        CoreAPB3_0_APBmslave1_PRDATA(6) => 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        CoreAPB3_0_APBmslave1_PRDATA(5) => 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        CoreAPB3_0_APBmslave1_PRDATA(4) => 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        CoreAPB3_0_APBmslave1_PRDATA(3) => 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        CoreAPB3_0_APBmslave1_PRDATA(2) => 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        CoreAPB3_0_APBmslave1_PRDATA(1) => 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        CoreAPB3_0_APBmslave1_PRDATA(0) => 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        CoreAPB3_0_APBmslave0_PWDATA(7) => 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, 
        CoreAPB3_0_APBmslave0_PWDATA(6) => 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        CoreAPB3_0_APBmslave0_PWDATA(5) => 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        CoreAPB3_0_APBmslave0_PWDATA(4) => 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        CoreAPB3_0_APBmslave0_PWDATA(3) => 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        CoreAPB3_0_APBmslave0_PWDATA(2) => 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        CoreAPB3_0_APBmslave0_PWDATA(1) => 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        CoreAPB3_0_APBmslave0_PWDATA(0) => 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_OVERFLOW => 
        CoreUARTapb_0_0_OVERFLOW, CoreUARTapb_0_0_RXRDY => 
        CoreUARTapb_0_0_RXRDY, CoreUARTapb_0_0_TXRDY => 
        CoreUARTapb_0_0_TXRDY, CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, N_902 => N_902, TX_c => 
        TX_c, RX_c => RX_c);
    
    BIBUF_COREI2C_0_0_SCL_IO : BIBUF
      port map(PAD => COREI2C_0_0_SCL_IO, D => GND_net_1, E => 
        \COREI2C_0_0_SCLO_i[0]\, Y => BIBUF_COREI2C_0_0_SCL_IO_Y);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top is

    port( DEVRST_N           : in    std_logic;
          RX                 : in    std_logic;
          TX                 : out   std_logic;
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          COREI2C_0_0_SDA_IO : inout std_logic := 'Z'
        );

end mss_top;

architecture DEF_ARCH of mss_top is 

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

  component mss_top_sb
    port( COREI2C_0_0_SDA_IO : inout   std_logic;
          COREI2C_0_0_SCL_IO : inout   std_logic;
          DEVRST_N           : in    std_logic := 'U';
          TX_c               : out   std_logic;
          RX_c               : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, GND_net_1, RX_c, TX_c : std_logic;

    for all : mss_top_sb
	Use entity work.mss_top_sb(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    RX_ibuf : INBUF
      port map(PAD => RX, Y => RX_c);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    TX_obuf : OUTBUF
      port map(D => TX_c, PAD => TX);
    
    mss_top_sb_0 : mss_top_sb
      port map(COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO, 
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO, DEVRST_N => 
        DEVRST_N, TX_c => TX_c, RX_c => RX_c);
    

end DEF_ARCH; 
