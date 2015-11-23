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
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic;
          POWER_ON_RESET_N                          : in    std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic
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
        \FIC_2_APB_M_PRESET_N_clk_base\, 
        \FIC_2_APB_M_PRESET_N_q1\, \MSS_HPMS_READY_int_3\, 
        \POWER_ON_RESET_N_q1\, \RESET_N_M2F_q1\ : std_logic;

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
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          PRDATA_0_a2_9_0                             : in    std_logic_vector(4 to 4);
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
          N_515                                       : in    std_logic;
          N_535                                       : out   std_logic;
          un3_prdata_2                                : out   std_logic;
          N_530                                       : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          N_653                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          un6_prdatalt2_i                             : in    std_logic;
          N_536                                       : out   std_logic;
          N_541                                       : out   std_logic;
          N_518                                       : in    std_logic;
          N_523                                       : in    std_logic;
          N_514                                       : in    std_logic
        );

end COREI2CREAL;

architecture DEF_ARCH of COREI2CREAL is 

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
        \fsmsta[0]_net_1\, GND_net_1, \fsmsta_8_0_iv_i_0[0]\, 
        un1_ens1_pre_1_sqmuxa_i_0, VCC_net_1, \fsmsta[1]_net_1\, 
        \fsmsta_8[1]\, \fsmsta[2]_net_1\, N_1266_i_0, 
        \fsmsta[3]_net_1\, \fsmsta_8_0_iv_i_0[3]\, 
        \fsmsta[4]_net_1\, \fsmsta_8[4]\, \ack\, ack_7, 
        \sercon_6\, N_1273, SDAO_int_1_sqmuxa_i_0, 
        \serdat[0]_net_1\, \serdat_9[0]\, un1_N_12_mux_i_0, 
        \serdat[1]_net_1\, \serdat_9[1]\, \serdat[2]_net_1\, 
        \serdat_9[2]\, \serdat[3]_net_1\, \serdat_9[3]\, 
        \serdat[4]_net_1\, \serdat_9[4]\, \serdat[5]_net_1\, 
        \serdat_9[5]\, \serdat[6]_net_1\, \serdat_9[6]\, 
        \serdat[7]_net_1\, \serdat_9[7]\, \bsd7\, bsd7_8, 
        \bsd7_tmp\, bsd7_tmp_6, \adrcomp\, \un1_adrcomp5\, 
        adrcomp_2_sqmuxa_i_0, \ack_bit\, \ack_bit_1_sqmuxa\, 
        \PCLKint\, PCLKint_3, un1_pclkint4_i_0, \busfree\, 
        un105_fsmdet, \adrcompen\, \adrcompen_0_sqmuxa\, 
        adrcompen_2_sqmuxa_i_0, \SCLSCL\, \fsmmod[1]_net_1\, 
        SCLSCL_1_sqmuxa_i_0, \SDAInt\, \SDAI_ff_reg[0]_net_1\, 
        \un1_rtn_4\, \SCLI_ff_reg[0]_net_1\, \un1_rtn_3\, 
        \nedetect\, \nedetect_0_sqmuxa\, rtn_1_i_0, \pedetect\, 
        \pedetect_0_sqmuxa\, rtn_1, \starto_en\, un8_busfree, 
        starto_en_1_sqmuxa_i_0, \SCLI_ff_reg[2]_net_1\, 
        \SCLI_ff_reg_3[2]\, \SDAI_ff_reg_4[0]\, 
        \SDAI_ff_reg[1]_net_1\, \SDAI_ff_reg_4[1]\, 
        \SDAI_ff_reg[2]_net_1\, \SDAI_ff_reg_4[2]\, 
        \indelay[1]_net_1\, \indelay_4[1]\, \indelay[2]_net_1\, 
        \indelay_4[2]\, \indelay[3]_net_1\, \indelay_4[3]\, 
        \PCLK_count2[0]_net_1\, \PCLK_count2_3[0]_net_1\, 
        \PCLK_count2[1]_net_1\, \PCLK_count2_3[1]_net_1\, 
        \SCLI_ff_reg_3[0]\, \SCLI_ff_reg[1]_net_1\, 
        \SCLI_ff_reg_3[1]\, un5_penable, \sercon_2\, 
        \COREI2C_0_0_INT[0]\, \sercon_9[3]\, \sercon_4\, 
        \sercon_9[4]\, \sercon_5\, \indelay[0]_net_1\, 
        \indelay_4[0]\, \sersta_32[4]\, \framesync[0]_net_1\, 
        \framesync_7[0]\, \framesync[1]_net_1\, \framesync_7[1]\, 
        \framesync[2]_net_1\, \framesync_7[2]\, 
        \framesync[3]_net_1\, \framesync_7[3]\, 
        \PCLK_count1[0]_net_1\, \PCLK_count1_10[0]\, 
        \PCLK_count1[1]_net_1\, N_217_i_0, \PCLK_count1[2]_net_1\, 
        N_216_i_0, \PCLK_count1[3]_net_1\, N_5_i_0, 
        \sersta_32[0]\, \sersta_32[1]\, \sersta_32[2]\, 
        \sersta_32[3]\, \fsmsync[5]_net_1\, N_952_i_0, 
        \fsmsync[4]_net_1\, N_954_i_0, \fsmsync[3]_net_1\, 
        N_956_i_0, \fsmsync[2]_net_1\, N_958_i_0, 
        \fsmsync[1]_net_1\, N_960_i_0, \fsmdet[6]_net_1\, 
        \fsmdet[5]_net_1\, N_916_i_0, \fsmdet[4]_net_1\, 
        N_918_i_0, N_920_i_0, \fsmdet[2]_net_1\, N_922_i_0, 
        \fsmdet[1]_net_1\, N_924_i_0, \fsmdet[0]_net_1\, 
        N_926_i_0, \fsmmod[6]_net_1\, \fsmmod_ns[0]\, 
        \fsmmod[5]_net_1\, \fsmmod_ns[1]\, \fsmmod[4]_net_1\, 
        N_1011_i_0, \fsmmod[3]_net_1\, \fsmmod_ns[3]\, 
        \fsmmod[2]_net_1\, N_1014_i_0, \fsmmod_ns[5]\, 
        \fsmmod[0]_net_1\, N_1017_i_0, \fsmsync[7]_net_1\, 
        \fsmsync_ns[0]\, \fsmsync[6]_net_1\, N_950_i_0, 
        un149_ens1_i_0, \PCLK_count1_ov\, PCLK_count1_ov_9, 
        \PCLKint_ff\, PCLKint_ff_2, \PCLK_count2_ov\, 
        \PCLK_count2_ov_0_sqmuxa\, un57_fsmsta_4_1, 
        un7_counter_rst, \fsmsta_cnst_m_0[4]\, \un2_fsmsta_4\, 
        un136_framesync, \fsmsta_8_1_iv_2_1[4]\, 
        \fsmsta_8_1_iv_2[4]\, \un2_fsmsta_1\, \un2_fsmsta_2\, 
        un30_fsmsta, \un2_fsmsta_8\, \fsmsta_8_0_iv_3_1[0]\, 
        \fsmsta_8_0_iv_3[0]\, \fsmsta_8_0_iv_2_1[1]\, 
        \fsmsta_8_0_iv_2[1]\, \un2_fsmsta_9\, \un2_fsmsta_7\, 
        un70_ens1, un97_ens1_1, un16_ens1_1, un97_ens1, 
        un105_fsmdet_1, un60_ens1, \fsmsta_nxt_cnst_i_1[2]_net_1\, 
        N_1086, N_1103, N_1083, un20_sdao_int, N_822, N_32, 
        \sersta_32_1[0]\, \sersta_32_1[4]\, un6_fsmsta_2, 
        \un7_fsmsta_1\, \un7_fsmsta\, un56_fsmsta_0, 
        un57_fsmsta_4, \fsmsta_nxt_cnst_i_0_1[0]_net_1\, 
        \fsmsta_nxt_cnst_i_0[0]_net_1\, serDAT_m5_e_5, 
        bsd7_tmp_6_ns_1_1, un57_fsmsta, bsd7_tmp_6_ns_1, \N_535\, 
        bsd7_tmp_6_bm, bsd7_8_m_am, bsd7_8_m_bm, un105_ens1, 
        un70_fsmsta, CO0, \fsmmod_ns_0_a4_0_3_0[3]_net_1\, N_1026, 
        N_1020, \fsmmod_ns_0_a4_0_3[3]_net_1\, N_1053, 
        bsd7_tmp_6_m0_a0_0, \serDAT_m5_e_5_0\, un7_counter_rst_0, 
        \fsmmod_ns_i_o3_0[4]_net_1\, \fsmmod_ns_i_a4_0[2]\, 
        \un3_prdata_2\, \N_530\, un1_fsmmod, bsd7_1_sqmuxa_2_0, 
        \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, N_986_3, 
        un60_ens1_0_tz, N_979, N_1025, N_986_1, N_11, un10_sclscl, 
        N_1217_2, un34_si_int_2, un36_si_int_2, un57_ens1, 
        SDAO_int_7_0_340_1, SDAO_int_7_0_340_a5_0, 
        un105_ens1_0_a2_0_0, \un1_m2_e_1\, ack_m5_e_3, ack_m5_e_2, 
        \SDAO_int_1_sqmuxa_3\, un141_ens1_2, un27_adrcompen_6, 
        un27_adrcompen_5, \fsmsta_nxt_cnst_i_a6_0[0]\, 
        \sercon_8_1[4]\, un15_fsmsta_0, un27_si_int_0, 
        un21_fsmsta_0, \fsmsta_cnst_i_o4_5[0]_net_1\, 
        \fsmsta_cnst_i_o4_4[0]_net_1\, N_994, N_971, un33_fsmsta, 
        \fsmmod_nxt_0_sqmuxa\, un76_ens1, un24_fsmsta_3, 
        \fsmsta_cnst_m_2[4]\, un18_fsmsta_0, un105_ens1_0_a2_0_2, 
        framesync_7_sm0, un7_counter_rst_4_tz, bsd7_sn_N_4_tz, 
        N_992, N_965, N_1216, N_21, N_1023, un16_fsmmod, N_15, 
        N_30_mux, \SDAO_int_1_sqmuxa_4\, \fsmmod_ns_i_0[2]_net_1\, 
        \fsmsta_nxt_cnst_0_0[4]_net_1\, un7_counter_rst_3, 
        \sercon_8_2[4]\, un135_ens1_1_0, un5_penable_0_a2_1_out, 
        N_985, N_986, un1_fsmsta, un25_si_int, N_1032, 
        un15_fsmsta, un18_fsmsta, \un63_fsmsta_tz\, N_966, N_976, 
        un29_framesync, un22_si_int, N_1033, N_1088, un30_fsmmod, 
        N_1092, i4_mux_4, \fsmsta_nxt_cnst_i_m_0[3]\, 
        bsd7_tmp_6_m0_a0_3, ack_m5_e_6, \SDAO_int_1_sqmuxa_6\, 
        un19_framesync_1, un19_framesync_0, un21_fsmdet_2, 
        un21_fsmdet_1, un21_fsmdet_0, un27_adrcompen_8, 
        \fsmsync_ns_i_0[3]_net_1\, N_993, un135_ens1, N_1101, 
        un81_ens1, N_1108, \N_536\, un2_fsmsta_2_0, N_1099, 
        un111_fsmdet, N_1049, N_964, CO1, N_978, i4_mux_2, N_1109, 
        N_1037, un30_adrcompen, un54_fsmdet, un25_fsmsta_1, 
        N_1112, \fsmsta_nxt_cnst_m_0[1]\, 
        \fsmsta_nxt_cnst_i_1[0]_net_1\, 
        \fsmsta_nxt_cnst_0_2[4]_net_1\, 
        \fsmsta_cnst_i_a4_0[0]_net_1\, \fsmsta_3_sqmuxa_0\, 
        \fsmsync_ns_0_1[0]_net_1\, un115_fsmdet, N_1041, 
        un133_framesync, un1_N_9_mux, framesync_7_e2, CO1_0, 
        un78_fsmdet, fsmsta_0_sqmuxa_1, \un1_serdat_2_sqmuxa_1_0\, 
        un25_fsmsta, fsmsta_8_0_iv_0_0_312_i_1_tz_tz, CO2, N_1031, 
        \ack_bit_1_sqmuxa_1\, \fsmsta_8_0_iv_0[0]\, 
        un2_fsmsta_12_s7_2, \adrcomp_2_sqmuxa_0\, N_1040, N_1048, 
        N_1289, bsd7_tmp_6_sn_m6_1, serdat_0_sqmuxa_sn, 
        un92_fsmsta, bsd7_0_m0, N_1071_m, \framesync_0_sqmuxa\, 
        un23_fsmdet, N_1267, \fsmsta_8_0_iv_1[0]\, 
        fsmsta_8_0_iv_0_0_312_i_1, \fsmsta_nxt_60_i_m[3]\, 
        \fsmsta_cnst_m[1]\, \un1_serdat36\, serdat_0_sqmuxa, 
        \fsmsta_nxt_9_i_m[3]\, un20_sdao_int_m, SDAO_int_m, 
        \framesync_7_m0[3]\, N_1290, \fsmsta_8_0_iv_2[3]\, 
        \fsmsta_8_0_iv_2[0]\, fsmsta_8_0_iv_0_0_312_i_0, 
        un2_fsmsta_12_s7, un25_fsmsta_RNI65A81, 
        \framesync_7_m2[3]\, N_1123, N_1126, \fsmsta_8_0_iv_4[0]\, 
        \fsmsta_nxt_cnst_m[1]\, \fsmsta_nxt_cnst_i_m[3]\, 
        \un1_serdat_2_sqmuxa_1\, N_1079_m : std_logic;

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
    N_535 <= \N_535\;
    un3_prdata_2 <= \un3_prdata_2\;
    N_530 <= \N_530\;
    N_536 <= \N_536\;

    \fsmsta_nxt_cnst_i_a2_2[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un34_si_int_2);
    
    \un2_framesync_1_1.CO2\ : CFG2
      generic map(INIT => x"8")

      port map(A => CO1_0, B => \framesync[2]_net_1\, Y => CO2);
    
    \FSMMOD_SYNC_PROC.un115_fsmdet\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \sercon_6\, B => un111_fsmdet, C => 
        \fsmdet[1]_net_1\, Y => un115_fsmdet);
    
    \sercon[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_1);
    
    \fsmsync_ns_i_a3_0[6]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \fsmsync[2]_net_1\, B => \fsmsync[1]_net_1\, 
        C => N_965, D => un70_fsmsta, Y => N_993);
    
    \fsmsta_nxt_cnst_i_1[2]\ : CFG4
      generic map(INIT => x"0A0B")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => un30_fsmsta, D => un20_sdao_int, Y => 
        \fsmsta_nxt_cnst_i_1[2]_net_1\);
    
    \fsmsync_ns_i_o3_0[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_966, B => \SCLInt\, Y => N_978);
    
    \fsmmod_ns_0_o3_1[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => N_1025);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_0[3]\ : CFG4
      generic map(INIT => x"0222")

      port map(A => \un2_fsmsta_8\, B => un136_framesync, C => 
        \ack\, D => \SDAInt\, Y => \fsmsta_nxt_9_i_m[3]\);
    
    \fsmdet[1]\ : SLE
      port map(D => N_924_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[1]_net_1\);
    
    \fsmsta_nxt_cnst_i_a6_2[0]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, C
         => un30_fsmsta, D => \fsmsta[3]_net_1\, Y => N_1099);
    
    \serSTA_WRITE_PROC.sersta_32[4]\ : CFG4
      generic map(INIT => x"3BFB")

      port map(A => \fsmsta[4]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => \sersta_32_1[4]\, D => \fsmsta[2]_net_1\, Y => 
        \sersta_32[4]\);
    
    \fsmsta_nxt_cnst_i_a2_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_1088, B => \ack\, Y => N_1112);
    
    \serSTA_WRITE_PROC.un34_si_int_1\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[4]_net_1\, Y
         => un36_si_int_2);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_RNI65A81\ : CFG4
      generic map(INIT => x"EEEC")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmdet[3]_net_1\, 
        C => un25_fsmsta, D => un57_fsmsta, Y => 
        un25_fsmsta_RNI65A81);
    
    SDAInt : SLE
      port map(D => \SDAI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_4\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SDAInt\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet\ : CFG2
      generic map(INIT => x"4")

      port map(A => un30_fsmmod, B => un105_fsmdet_1, Y => 
        un54_fsmdet);
    
    un1_serdat36 : CFG4
      generic map(INIT => x"0013")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmdet[3]_net_1\, 
        C => un25_fsmsta, D => un57_fsmsta, Y => \un1_serdat36\);
    
    starto_en : SLE
      port map(D => un8_busfree, CLK => FAB_CCC_GL0, EN => 
        starto_en_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \starto_en\);
    
    \serSTA_WRITE_PROC.un27_si_int_2\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1217_2);
    
    \serdat[4]\ : SLE
      port map(D => \serdat_9[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[4]_net_1\);
    
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
      port map(D => \pedetect_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => rtn_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \pedetect\);
    
    \fsmmod_ns_i_a3[2]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \sercon_5\, B => \PCLKint_ff\, C => \PCLKint\, 
        D => N_1020, Y => N_1053);
    
    \fsmmod[4]\ : SLE
      port map(D => N_1011_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[4]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns\ : CFG4
      generic map(INIT => x"3022")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        \fsmdet[3]_net_1\, C => bsd7_tmp_6_bm, D => 
        bsd7_tmp_6_ns_1, Y => bsd7_tmp_6);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns\ : CFG3
      generic map(INIT => x"CA")

      port map(A => bsd7_8_m_am, B => bsd7_8_m_bm, C => 
        un105_ens1, Y => bsd7_8);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un2_fsmsta_2_0, B => un25_fsmsta_1, C => 
        un18_fsmsta, D => \un7_fsmsta\, Y => un25_fsmsta);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_4[0]\ : CFG4
      generic map(INIT => x"F0F2")

      port map(A => \un2_fsmsta_9\, B => \SDAInt\, C => 
        \fsmsta_8_0_iv_2[0]\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_4[0]\);
    
    \fsmmod_ns_0_a4_0[1]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmmod[6]_net_1\, B => \SDAInt\, C => N_1032, 
        D => un115_fsmdet, Y => N_1040);
    
    un2_fsmsta_7 : CFG2
      generic map(INIT => x"8")

      port map(A => \un7_fsmsta\, B => un30_fsmsta, Y => 
        \un2_fsmsta_7\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_1\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[1]_net_1\, Y
         => un105_fsmdet_1);
    
    \STARTO_EN_WRITE_PROC.un8_busfree\ : CFG3
      generic map(INIT => x"20")

      port map(A => \SCLInt\, B => \fsmmod[1]_net_1\, C => 
        \busfree\, Y => un8_busfree);
    
    \serSTA_WRITE_PROC.sersta_32[2]\ : CFG4
      generic map(INIT => x"2F7F")

      port map(A => N_32, B => i4_mux_2, C => 
        \COREI2C_0_0_INT[0]\, D => N_15, Y => \sersta_32[2]\);
    
    \SDAO_INT_WRITE_PROC.un50_fsmsta_1\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => un56_fsmsta_0);
    
    \fsmmod_ns_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_1037, B => N_1031, C => \fsmmod[1]_net_1\, 
        D => un10_sclscl, Y => \fsmmod_ns[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_1[0]\ : CFG4
      generic map(INIT => x"3679")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_822, D => \fsmsta[2]_net_1\, Y => \sersta_32_1[0]\);
    
    \INDELAY_WRITE_PROC.indelay_4[1]\ : CFG4
      generic map(INIT => x"6090")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => \fsmsync[4]_net_1\, D => N_971, Y => \indelay_4[1]\);
    
    \INDELAY_WRITE_PROC.indelay_4[3]\ : CFG4
      generic map(INIT => x"60A0")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \fsmsync[4]_net_1\, D => CO1, Y => \indelay_4[3]\);
    
    ack : SLE
      port map(D => ack_7, CLK => FAB_CCC_GL0, EN => \sercon_6\, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \ack\);
    
    \fsmsta[3]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[3]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un29_framesync\ : CFG2
      generic map(INIT => x"7")

      port map(A => N_1020, B => \sercon_5\, Y => un29_framesync);
    
    \SDAO_INT_WRITE_PROC.un12_fsmsta_0\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, Y => un18_fsmsta_0);
    
    \serdat[2]\ : SLE
      port map(D => \serdat_9[2]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[2]_net_1\);
    
    \fsmsta_nxt_cnst_0_a6_1[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1088, B => \ack\, Y => N_1109);
    
    \FRAMESYNC_WRITE_PROC.framesync_7s2\ : CFG2
      generic map(INIT => x"E")

      port map(A => un105_fsmdet_1, B => bsd7_1_sqmuxa_2_0, Y => 
        framesync_7_sm0);
    
    \serCON_WRITE_PROC.un5_penable_0_a2\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \N_535\, B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_523, D => un5_penable_0_a2_1_out, Y => un5_penable);
    
    \ADRCOMP_WRITE_PROC.un23_fsmdet\ : CFG4
      generic map(INIT => x"F0E0")

      port map(A => un21_fsmdet_2, B => un21_fsmdet_1, C => 
        \COREI2C_0_0_INT[0]\, D => un21_fsmdet_0, Y => 
        un23_fsmdet);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m24\ : CFG4
      generic map(INIT => x"7FFE")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        i4_mux_4);
    
    \fsmsync_ns_0_o3_0[0]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => N_1025, B => N_986_1, C => N_986_3, Y => 
        N_966);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_1\ : CFG4
      generic map(INIT => x"7FFF")

      port map(A => serDAT_m5_e_5, B => bsd7_tmp_6_ns_1_1, C => 
        un57_fsmsta, D => N_515, Y => bsd7_tmp_6_ns_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0[0]\ : CFG4
      generic map(INIT => x"F888")

      port map(A => un133_framesync, B => 
        \fsmsta_cnst_i_a4_0[0]_net_1\, C => \fsmmod[5]_net_1\, D
         => \fsmdet[3]_net_1\, Y => \fsmsta_8_0_iv_0[0]\);
    
    \SDAO_INT_WRITE_PROC.un15_fsmsta_0\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, Y => un15_fsmsta_0);
    
    \fsmsync_ns_i_o3[5]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_1025, B => \fsmsync[5]_net_1\, Y => N_965);
    
    \FSMSTA_SYNC_PROC.un30_fsmmod\ : CFG4
      generic map(INIT => x"7333")

      port map(A => \PCLKint\, B => \fsmsta_cnst_m_2[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => un30_fsmmod);
    
    SDAO_int_RNO : CFG4
      generic map(INIT => x"DCCC")

      port map(A => un1_fsmmod, B => SDAO_int_7_0_340_1, C => 
        SDAO_int_7_0_340_a5_0, D => N_1290, Y => N_1273);
    
    \PCLK_count1_RNO[2]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \PCLK_count1[1]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => \PCLK_count1[0]_net_1\, D
         => un7_counter_rst, Y => N_216_i_0);
    
    un2_fsmsta_9 : CFG2
      generic map(INIT => x"8")

      port map(A => un57_fsmsta_4, B => un30_fsmsta, Y => 
        \un2_fsmsta_9\);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        Y => \SDAI_ff_reg_4[0]\);
    
    SDAO_int_1_sqmuxa_4 : CFG4
      generic map(INIT => x"0002")

      port map(A => \sercon_6\, B => un1_fsmmod, C => 
        \fsmmod[3]_net_1\, D => \fsmmod[5]_net_1\, Y => 
        \SDAO_int_1_sqmuxa_4\);
    
    \fsmsync_ns_i_a3_0[2]\ : CFG4
      generic map(INIT => x"0111")

      port map(A => \fsmsync[7]_net_1\, B => \fsmsync[6]_net_1\, 
        C => N_1025, D => \fsmsync[5]_net_1\, Y => N_985);
    
    \fsmsta_nxt_cnst_i_a2_0_0[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => \fsmsta_nxt_cnst_i_a2_0[0]_net_1\);
    
    \FSMMOD_SYNC_PROC.un111_fsmdet\ : CFG3
      generic map(INIT => x"80")

      port map(A => \pedetect\, B => un30_fsmsta, C => un1_fsmsta, 
        Y => un111_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_2_RNO[4]\ : CFG4
      generic map(INIT => x"CCC8")

      port map(A => \ack\, B => \fsmsta_cnst_m_2[4]\, C => 
        un105_fsmdet_1, D => un30_fsmmod, Y => 
        \fsmsta_cnst_m_0[4]\);
    
    \serCON_WRITE_PROC.sercon_9[3]\ : CFG4
      generic map(INIT => x"AFAC")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        \COREI2C_0_0_INT[0]\, C => un5_penable, D => un97_ens1, Y
         => \sercon_9[3]\);
    
    \fsmmod[3]\ : SLE
      port map(D => \fsmmod_ns[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[3]_net_1\);
    
    \fsmmod_RNIT2G6[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[0]_net_1\, Y
         => \fsmmod_ns_i_a4_0[2]\);
    
    un1_rtn_4 : CFG3
      generic map(INIT => x"81")

      port map(A => \SDAI_ff_reg[2]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, C => \SDAI_ff_reg[0]_net_1\, Y
         => \un1_rtn_4\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_2[3]\ : CFG3
      generic map(INIT => x"4C")

      port map(A => un34_si_int_2, B => N_1088, C => 
        \fsmsta[3]_net_1\, Y => \fsmsta_nxt_cnst_i_m_0[3]\);
    
    \serdat[7]\ : SLE
      port map(D => \serdat_9[7]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[7]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m18\ : CFG4
      generic map(INIT => x"BD21")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        i4_mux_2);
    
    \sercon[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_2\);
    
    \fsmmod_ns_i_a4[2]\ : CFG4
      generic map(INIT => x"00A8")

      port map(A => \fsmmod_ns_i_a4_0[2]\, B => \sercon_4\, C => 
        N_1053, D => N_1033, Y => N_1041);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_2\ : CFG4
      generic map(INIT => x"0002")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        CoreAPB3_0_APBmslave0_PADDR(0), D => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => un105_ens1_0_a2_0_2);
    
    un2_fsmsta_8 : CFG2
      generic map(INIT => x"4")

      port map(A => N_1020, B => un30_fsmsta, Y => \un2_fsmsta_8\);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, C
         => un6_fsmsta_2, D => \fsmsta[2]_net_1\, Y => un1_fsmsta);
    
    \fsmmod_RNIPVGK[0]\ : CFG3
      generic map(INIT => x"37")

      port map(A => \fsmmod[5]_net_1\, B => \fsmdet[3]_net_1\, C
         => \fsmmod[0]_net_1\, Y => \fsmsta_cnst_m_2[4]\);
    
    \serCON_WRITE_PROC.sercon_8_2[4]\ : CFG4
      generic map(INIT => x"8CCC")

      port map(A => \PCLKint\, B => \sercon_8_1[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => 
        \sercon_8_2[4]\);
    
    \un2_framesync_1_1.CO1\ : CFG2
      generic map(INIT => x"8")

      port map(A => CO0, B => \framesync[1]_net_1\, Y => CO1_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \serCON_WRITE_PROC.un76_ens1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[0]_net_1\, D => 
        \framesync[1]_net_1\, Y => un76_ens1);
    
    SCLSCL : SLE
      port map(D => \fsmmod[1]_net_1\, CLK => FAB_CCC_GL0, EN => 
        SCLSCL_1_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLSCL\);
    
    \fsmsta_nxt_cnst_i_1[0]\ : CFG4
      generic map(INIT => x"FFB0")

      port map(A => \fsmsta[3]_net_1\, B => un30_fsmsta, C => 
        \fsmsta_nxt_cnst_i_a6_0[0]\, D => 
        \fsmsta_nxt_cnst_i_0[0]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_1[0]_net_1\);
    
    \serCON_WRITE_PROC.un60_ens1\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un60_ens1_0_tz, B => \framesync[3]_net_1\, C
         => un30_fsmsta, D => un57_ens1, Y => un60_ens1);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_a4_0\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_1216);
    
    \serDAT_WRITE_PROC.serdat_9[1]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[0]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(1), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[1]\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_4_1\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => un57_fsmsta_4_1);
    
    busfree_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \fsmdet[3]_net_1\, Y => \fsmdet_i_0[3]\);
    
    \SCLI_ff_reg[0]\ : SLE
      port map(D => \SCLI_ff_reg_3[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[0]_net_1\);
    
    \fsmsync_ns_i_o3_0[3]\ : CFG2
      generic map(INIT => x"B")

      port map(A => \sercon_4\, B => \fsmsync[2]_net_1\, Y => 
        N_979);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_1\ : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        PRDATA_0_a2_9_0(4), C => N_515, D => 
        un5_penable_0_a2_1_out, Y => N_541);
    
    \fsmsync_RNO[6]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsync[7]_net_1\, B => \SCLInt\, C => N_986, 
        Y => N_950_i_0);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO_0\ : CFG3
      generic map(INIT => x"32")

      port map(A => \COREI2C_0_0_INT[0]\, B => bsd7_1_sqmuxa_2_0, 
        C => \nedetect\, Y => bsd7_sn_N_4_tz);
    
    un2_fsmsta_4 : CFG3
      generic map(INIT => x"80")

      port map(A => \un63_fsmsta_tz\, B => 
        \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, C => un30_fsmsta, Y
         => \un2_fsmsta_4\);
    
    \fsmmod_ns_i_a4[6]\ : CFG3
      generic map(INIT => x"31")

      port map(A => \fsmmod[3]_net_1\, B => \fsmmod[0]_net_1\, C
         => N_1023, Y => N_1049);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_RNI90UK\ : CFG2
      generic map(INIT => x"8")

      port map(A => un57_fsmsta, B => \COREI2C_0_0_INT[0]\, Y => 
        serdat_0_sqmuxa_sn);
    
    \FSMSTA_SYNC_PROC.un78_fsmdet_RNI1VVH\ : CFG4
      generic map(INIT => x"FC54")

      port map(A => \fsmsta_3_sqmuxa_0\, B => un136_framesync, C
         => \pedetect\, D => un78_fsmdet, Y => 
        un1_ens1_pre_1_sqmuxa_i_0);
    
    \serCON_WRITE_PROC.un97_ens1\ : CFG4
      generic map(INIT => x"CC08")

      port map(A => un70_ens1, B => \sercon_6\, C => un97_ens1_1, 
        D => un16_ens1_1, Y => un97_ens1);
    
    SDAO_int_1_sqmuxa_i : CFG4
      generic map(INIT => x"777F")

      port map(A => \SDAO_int_1_sqmuxa_6\, B => un25_fsmsta, C
         => un30_fsmsta, D => un33_fsmsta, Y => 
        SDAO_int_1_sqmuxa_i_0);
    
    \fsmsta_nxt_cnst_i_0_1[0]\ : CFG4
      generic map(INIT => x"5400")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_0_1[0]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_0\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => un24_fsmsta_3, D => un21_fsmsta_0, Y => 
        un2_fsmsta_2_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_RNO_0[1]\ : CFG4
      generic map(INIT => x"80A0")

      port map(A => \fsmsta_cnst_m_2[4]\, B => \adrcomp\, C => 
        un136_framesync, D => fsmsta_0_sqmuxa_1, Y => 
        \fsmsta_cnst_m[1]\);
    
    PCLKint_RNO : CFG2
      generic map(INIT => x"E")

      port map(A => un7_counter_rst, B => \PCLK_count2_ov\, Y => 
        un1_pclkint4_i_0);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst_3\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsync[2]_net_1\, B => \fsmdet[1]_net_1\, C
         => un7_counter_rst_0, D => \fsmdet[3]_net_1\, Y => 
        un7_counter_rst_3);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[2]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => CO1_0, B => framesync_7_e2, C => 
        \framesync[2]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \framesync_7[2]\);
    
    serDAT_m5_e_5_0 : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \serDAT_m5_e_5_0\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3_1[0]\ : CFG4
      generic map(INIT => x"445F")

      port map(A => \SDAInt\, B => \sercon_2\, C => 
        \un2_fsmsta_8\, D => \un2_fsmsta_4\, Y => 
        \fsmsta_8_0_iv_3_1[0]\);
    
    SDAO_int_RNIVKBB : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SDAO[0]\, Y => 
        COREI2C_0_0_SDAO_i(0));
    
    SCLO_int_RNO : CFG4
      generic map(INIT => x"5777")

      port map(A => \sercon_6\, B => un141_ens1_2, C => 
        bsd7_1_sqmuxa_2_0, D => un135_ens1, Y => un149_ens1_i_0);
    
    \PCLK_count2[0]\ : SLE
      port map(D => \PCLK_count2_3[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[0]_net_1\);
    
    \sersta[0]\ : SLE
      port map(D => \sersta_32[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(0));
    
    \PCLK_count1[3]\ : SLE
      port map(D => N_5_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[3]_net_1\);
    
    \indelay[2]\ : SLE
      port map(D => \indelay_4[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[2]_net_1\);
    
    \fsmsync[2]\ : SLE
      port map(D => N_958_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[2]_net_1\);
    
    un63_fsmsta_tz : CFG3
      generic map(INIT => x"C8")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => \un63_fsmsta_tz\);
    
    \fsmdet_RNO[5]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[5]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_916_i_0);
    
    \fsmsta_nxt_cnst_0_a6_0_0[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_822);
    
    \framesync[3]\ : SLE
      port map(D => \framesync_7[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[3]_net_1\);
    
    \CLKINT_WRITE_PROC.PCLKint_ff_2\ : CFG2
      generic map(INIT => x"E")

      port map(A => un7_counter_rst, B => \PCLKint\, Y => 
        PCLKint_ff_2);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        Y => \SCLI_ff_reg_3[0]\);
    
    \CLKINT_WRITE_PROC.PCLKint_3\ : CFG2
      generic map(INIT => x"B")

      port map(A => un7_counter_rst, B => \PCLKint\, Y => 
        PCLKint_3);
    
    \INDELAY_WRITE_PROC.indelay_4[2]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \indelay[2]_net_1\, B => \fsmsync[4]_net_1\, 
        C => CO1, Y => \indelay_4[2]\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[0]\ : CFG4
      generic map(INIT => x"6F60")

      port map(A => \framesync[0]_net_1\, B => \nedetect\, C => 
        framesync_7_e2, D => \framesync_7_m2[3]\, Y => 
        \framesync_7[0]\);
    
    \serDAT_WRITE_PROC.ack_7_u_RNO\ : CFG2
      generic map(INIT => x"8")

      port map(A => un92_fsmsta, B => \COREI2C_0_0_INT[0]\, Y => 
        serdat_0_sqmuxa);
    
    PCLK_count1_ov : SLE
      port map(D => PCLK_count1_ov_9, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1_ov\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[3]\ : CFG4
      generic map(INIT => x"EEFE")

      port map(A => N_1071_m, B => \fsmsta_nxt_60_i_m[3]\, C => 
        \un2_fsmsta_9\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_2[3]\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_bm_RNO\ : CFG2
      generic map(INIT => x"B")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        un57_fsmsta, Y => bsd7_0_m0);
    
    \indelay[1]\ : SLE
      port map(D => \indelay_4[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[1]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m14\ : CFG3
      generic map(INIT => x"27")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_15);
    
    \serdat[0]\ : SLE
      port map(D => \serdat_9[0]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_RNO[1]\ : CFG4
      generic map(INIT => x"D000")

      port map(A => N_1088, B => \fsmsta[1]_net_1\, C => 
        un2_fsmsta_12_s7, D => \fsmsta_nxt_cnst_m_0[1]\, Y => 
        \fsmsta_nxt_cnst_m[1]\);
    
    \framesync[2]\ : SLE
      port map(D => \framesync_7[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[2]_net_1\);
    
    ack_bit_1_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \COREI2C_0_0_INT[0]\, B => \sercon_6\, C => 
        un25_fsmsta, Y => \ack_bit_1_sqmuxa_1\);
    
    \fsmmod_ns_0_a4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1032, B => \fsmmod[6]_net_1\, Y => N_1037);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un105_ens1_0_a2_0_0, B => un105_ens1_0_a2_0_2, 
        C => PRDATA_0_a2_9_0(4), D => N_515, Y => \N_536\);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_2_0\ : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_530\);
    
    \fsmsta_RNO_2[2]\ : CFG3
      generic map(INIT => x"73")

      port map(A => un60_ens1, B => un54_fsmdet, C => \adrcomp\, 
        Y => fsmsta_8_0_iv_0_0_312_i_1_tz_tz);
    
    \fsmsta_cnst_i_a4_0[0]\ : CFG4
      generic map(INIT => x"000E")

      port map(A => \fsmsta_cnst_i_o4_4[0]_net_1\, B => 
        \fsmsta_cnst_i_o4_5[0]_net_1\, C => un105_fsmdet_1, D => 
        un30_fsmmod, Y => \fsmsta_cnst_i_a4_0[0]_net_1\);
    
    SDAO_int_RNO_2 : CFG4
      generic map(INIT => x"7F40")

      port map(A => \ack_bit\, B => un33_fsmsta, C => un25_fsmsta, 
        D => N_1289, Y => N_1290);
    
    \FSMSTA_SYNC_PROC.un136_framesync_RNI7SVC3\ : CFG3
      generic map(INIT => x"02")

      port map(A => un2_fsmsta_12_s7_2, B => N_1267, C => 
        un136_framesync, Y => un2_fsmsta_12_s7);
    
    adrcomp_2_sqmuxa_i : CFG3
      generic map(INIT => x"FD")

      port map(A => \adrcomp_2_sqmuxa_0\, B => un23_fsmdet, C => 
        un105_fsmdet_1, Y => adrcomp_2_sqmuxa_i_0);
    
    framesync_0_sqmuxa : CFG4
      generic map(INIT => x"AAA8")

      port map(A => un70_fsmsta, B => un19_framesync_0, C => 
        un22_si_int, D => un19_framesync_1, Y => 
        \framesync_0_sqmuxa\);
    
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
    
    \serDAT_WRITE_PROC.ack_7_u\ : CFG4
      generic map(INIT => x"FFAC")

      port map(A => \SDAInt\, B => \ack\, C => 
        \un1_serdat_2_sqmuxa_1\, D => serdat_0_sqmuxa, Y => ack_7);
    
    \fsmsync[7]\ : SLE
      port map(D => \fsmsync_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[7]_net_1\);
    
    \indelay[0]\ : SLE
      port map(D => \indelay_4[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[0]_net_1\);
    
    \fsmmod_ns_i_o3_0[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => un70_fsmsta, B => \COREI2C_0_0_INT[0]\, Y => 
        N_1033);
    
    \fsmdet[0]\ : SLE
      port map(D => N_926_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[0]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un30_adrcompen\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \fsmmod[6]_net_1\, B => \fsmmod[1]_net_1\, C
         => un1_fsmsta, Y => un30_adrcompen);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[0]\ : CFG4
      generic map(INIT => x"CCC8")

      port map(A => N_1086, B => un2_fsmsta_12_s7, C => N_1099, D
         => \fsmsta_nxt_cnst_i_1[0]_net_1\, Y => N_1079_m);
    
    \serCON_WRITE_PROC.un81_ens1\ : CFG4
      generic map(INIT => x"A080")

      port map(A => \adrcomp\, B => un76_ens1, C => 
        un105_fsmdet_1, D => un70_fsmsta, Y => un81_ens1);
    
    \sercon[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_7);
    
    ack_bit : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \ack_bit_1_sqmuxa\, ALn => MSS_READY, 
        ADn => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \ack_bit\);
    
    \fsmsta[2]\ : SLE
      port map(D => N_1266_i_0, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
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
    
    \FRAMESYNC_WRITE_PROC.framesync_7_m0[0]\ : CFG4
      generic map(INIT => x"00EF")

      port map(A => \sercon_4\, B => \COREI2C_0_0_INT[0]\, C => 
        un29_framesync, D => \framesync_0_sqmuxa\, Y => 
        \framesync_7_m0[3]\);
    
    \framesync[1]\ : SLE
      port map(D => \framesync_7[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[1]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32[1]\ : CFG4
      generic map(INIT => x"72FF")

      port map(A => \fsmsta[4]_net_1\, B => N_30_mux, C => 
        \fsmsta[0]_net_1\, D => \COREI2C_0_0_INT[0]\, Y => 
        \sersta_32[1]\);
    
    \serDAT_WRITE_PROC.serdat_9[0]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \ack\, B => CoreAPB3_0_APBmslave0_PWDATA(0), 
        C => \N_535\, D => \N_536\, Y => \serdat_9[0]\);
    
    \sercon[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_0);
    
    \fsmsync[1]\ : SLE
      port map(D => N_960_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[1]_net_1\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_0_a2[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un7_counter_rst, B => \PCLK_count1[0]_net_1\, 
        Y => \PCLK_count1_10[0]\);
    
    \serDAT_WRITE_PROC.serdat_9[4]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[3]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(4), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[4]\);
    
    \fsmmod[0]\ : SLE
      port map(D => N_1017_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[0]_net_1\);
    
    \fsmmod[6]\ : SLE
      port map(D => \fsmmod_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[6]_net_1\);
    
    \sercon[4]\ : SLE
      port map(D => \sercon_9[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sercon_4\);
    
    \FSMSYNC_SYNC_PROC.un139_ens1_0\ : CFG2
      generic map(INIT => x"2")

      port map(A => \COREI2C_0_0_INT[0]\, B => \SCLInt\, Y => 
        bsd7_1_sqmuxa_2_0);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un105_ens1_0_a2_0_2, B => un105_ens1_0_a2_0_0, 
        C => N_523, D => \N_535\, Y => un105_ens1);
    
    \SDAO_INT_WRITE_PROC.un15_fsmsta\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[3]_net_1\, B => un15_fsmsta_0, C => 
        \fsmsta[1]_net_1\, Y => un15_fsmsta);
    
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
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_2\ : CFG2
      generic map(INIT => x"E")

      port map(A => un22_si_int, B => un1_fsmsta, Y => 
        un21_fsmdet_2);
    
    \sersta[3]\ : SLE
      port map(D => \sersta_32[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(3));
    
    \FRAMESYNC_WRITE_PROC.framesync_7[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \framesync_7_m0[3]\, B => framesync_7_sm0, Y
         => \framesync_7_m2[3]\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1\ : CFG3
      generic map(INIT => x"F8")

      port map(A => un36_si_int_2, B => un34_si_int_2, C => 
        un135_ens1_1_0, Y => un135_ens1);
    
    un1_serdat_2_sqmuxa_1_0_RNO_1 : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(8), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        ack_m5_e_2);
    
    \fsmsync[6]\ : SLE
      port map(D => N_950_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[6]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am\ : CFG4
      generic map(INIT => x"FD08")

      port map(A => un92_fsmsta, B => N_1123, C => bsd7_sn_N_4_tz, 
        D => N_1126, Y => bsd7_8_m_am);
    
    \SDAI_ff_reg[2]\ : SLE
      port map(D => \SDAI_ff_reg_4[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[2]_net_1\);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_2_RNIG2AP\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => un105_ens1_0_a2_0_2, 
        D => \serDAT_m5_e_5_0\, Y => serDAT_m5_e_5);
    
    \PCLK_count1[0]\ : SLE
      port map(D => \PCLK_count1_10[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[0]_net_1\);
    
    \fsmsta_nxt_cnst_0_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[2]_net_1\, C
         => un20_sdao_int, Y => N_1092);
    
    \CLK_COUNTER1_PROC.PCLK_count1_ov_9\ : CFG4
      generic map(INIT => x"1000")

      port map(A => N_11, B => un7_counter_rst, C => 
        \PCLK_count1[3]_net_1\, D => \PCLK_count1[2]_net_1\, Y
         => PCLK_count1_ov_9);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst_0\ : 
        CFG2
      generic map(INIT => x"E")

      port map(A => \fsmsync[3]_net_1\, B => \fsmsync[6]_net_1\, 
        Y => un7_counter_rst_0);
    
    \fsmsync_ns_i_a3_1[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \SDAInt\, Y => N_994);
    
    \fsmsta[0]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[0]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m16\ : CFG2
      generic map(INIT => x"6")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_32);
    
    \serdat[3]\ : SLE
      port map(D => \serdat_9[3]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[3]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[6]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[5]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(6), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[6]\);
    
    \serSTA_WRITE_PROC.un22_si_int\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, B => 
        \fsmsta[2]_net_1\, C => un34_si_int_2, Y => un22_si_int);
    
    nedetect : SLE
      port map(D => \nedetect_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => rtn_1_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \nedetect\);
    
    \fsmmod_ns_0_a4_0_3[3]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \fsmmod_ns_0_a4_0_3_0[3]_net_1\, B => N_1026, 
        C => un70_fsmsta, D => N_1020, Y => 
        \fsmmod_ns_0_a4_0_3[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => un15_fsmsta, D => un18_fsmsta_0, Y => un25_fsmsta_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO[3]\ : CFG4
      generic map(INIT => x"3F2A")

      port map(A => un105_fsmdet_1, B => \adrcomp\, C => 
        fsmsta_0_sqmuxa_1, D => un30_fsmmod, Y => N_1071_m);
    
    adrcompen_2_sqmuxa_i : CFG4
      generic map(INIT => x"FFEA")

      port map(A => un16_fsmmod, B => un30_fsmsta, C => 
        \nedetect\, D => \fsmdet[3]_net_1\, Y => 
        adrcompen_2_sqmuxa_i_0);
    
    un1_serdat_2_sqmuxa_1_0_RNO : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(6), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        ack_m5_e_3);
    
    \serCON_WRITE_PROC.un16_fsmmod\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \sercon_4\, B => \fsmmod[1]_net_1\, C => 
        \fsmmod[6]_net_1\, Y => un16_fsmmod);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[1]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => CO0, B => framesync_7_e2, C => 
        \framesync[1]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \framesync_7[1]\);
    
    \serCON_WRITE_PROC.sercon_9[4]\ : CFG4
      generic map(INIT => x"F044")

      port map(A => un16_fsmmod, B => \sercon_8_2[4]\, C => 
        CoreAPB3_0_APBmslave0_PWDATA(4), D => un5_penable, Y => 
        \sercon_9[4]\);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta_2\ : CFG2
      generic map(INIT => x"4")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, Y => un57_ens1);
    
    \SDAO_INT_WRITE_PROC.un24_fsmsta_3\ : CFG4
      generic map(INIT => x"0040")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        un24_fsmsta_3);
    
    \fsmsync_ns_i_a3[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmsync[1]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, Y => N_992);
    
    \fsmsync_ns_i_o3[3]\ : CFG4
      generic map(INIT => x"3175")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[4]_net_1\, 
        C => N_1025, D => N_971, Y => N_964);
    
    starto_en_1_sqmuxa_i : CFG2
      generic map(INIT => x"7")

      port map(A => un8_busfree, B => N_1025, Y => 
        starto_en_1_sqmuxa_i_0);
    
    \FSMSTA_SYNC_PROC.un133_framesync\ : CFG4
      generic map(INIT => x"2000")

      port map(A => un30_fsmsta, B => un1_fsmsta, C => \pedetect\, 
        D => un1_fsmmod, Y => un133_framesync);
    
    \fsmsync_ns_i_a3_1[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \fsmmod[3]_net_1\, B => \fsmmod[2]_net_1\, C
         => N_986_3, D => N_986_1, Y => N_986);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_0[3]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \un2_fsmsta_4\, B => un136_framesync, C => 
        \sercon_2\, D => \SDAInt\, Y => \fsmsta_nxt_60_i_m[3]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_RNO_2[1]\ : CFG4
      generic map(INIT => x"0F0B")

      port map(A => un30_fsmsta, B => \fsmsta[3]_net_1\, C => 
        N_1101, D => N_1092, Y => \fsmsta_nxt_cnst_m_0[1]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[3]\ : CFG3
      generic map(INIT => x"40")

      port map(A => un136_framesync, B => un20_sdao_int, C => 
        \un2_fsmsta_7\, Y => un20_sdao_int_m);
    
    \serDAT_WRITE_PROC.un92_fsmsta\ : CFG2
      generic map(INIT => x"2")

      port map(A => un57_fsmsta, B => \fsmdet[3]_net_1\, Y => 
        un92_fsmsta);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_bm\ : CFG4
      generic map(INIT => x"0EEE")

      port map(A => bsd7_tmp_6_sn_m6_1, B => \bsd7_tmp\, C => 
        bsd7_tmp_6_m0_a0_3, D => serDAT_m5_e_5, Y => 
        bsd7_tmp_6_bm);
    
    \INDELAY_WRITE_PROC.indelay_4[0]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \indelay[0]_net_1\, B => \fsmsync[4]_net_1\, 
        C => N_971, Y => \indelay_4[0]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_2[4]\ : CFG4
      generic map(INIT => x"ACAF")

      port map(A => \fsmsta_cnst_m_0[4]\, B => \un2_fsmsta_4\, C
         => un136_framesync, D => \fsmsta_8_1_iv_2_1[4]\, Y => 
        \fsmsta_8_1_iv_2[4]\);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync_1\ : CFG4
      generic map(INIT => x"CECC")

      port map(A => un34_si_int_2, B => un25_si_int, C => 
        \fsmsta[3]_net_1\, D => un36_si_int_2, Y => 
        un19_framesync_1);
    
    \APB_read.APB_read.un3_prdata_1_i_o3\ : CFG2
      generic map(INIT => x"7")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_653);
    
    adrcompen_0_sqmuxa : CFG2
      generic map(INIT => x"4")

      port map(A => un16_fsmmod, B => \fsmdet[3]_net_1\, Y => 
        \adrcompen_0_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[0]\ : CFG4
      generic map(INIT => x"F0F8")

      port map(A => \un2_fsmsta_1\, B => un30_fsmsta, C => 
        \fsmsta_8_0_iv_1[0]\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_2[0]\);
    
    \fsmsta[1]\ : SLE
      port map(D => \fsmsta_8[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[1]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_bm_RNO\ : CFG3
      generic map(INIT => x"40")

      port map(A => \COREI2C_0_0_INT[0]\, B => un57_fsmsta, C => 
        \nedetect\, Y => bsd7_tmp_6_sn_m6_1);
    
    \FSMSTA_SYNC_PROC.un136_framesync\ : CFG3
      generic map(INIT => x"FE")

      port map(A => un105_fsmdet_1, B => un30_fsmmod, C => 
        un133_framesync, Y => un136_framesync);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_1[1]\ : CFG4
      generic map(INIT => x"1555")

      port map(A => \un2_fsmsta_9\, B => \un2_fsmsta_7\, C => 
        \COREI2C_0_0_SDAO[0]\, D => \SDAInt\, Y => 
        \fsmsta_8_0_iv_2_1[1]\);
    
    \framesync[0]\ : SLE
      port map(D => \framesync_7[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[0]_net_1\);
    
    \un2_framesync_1_1.CO0\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        \framesync[0]_net_1\, Y => CO0);
    
    bsd7_tmp : SLE
      port map(D => bsd7_tmp_6, CLK => FAB_CCC_GL0, EN => 
        \sercon_6\, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \bsd7_tmp\);
    
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
    
    \serdat[6]\ : SLE
      port map(D => \serdat_9[6]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[6]_net_1\);
    
    \fsmdet_RNO[0]\ : CFG4
      generic map(INIT => x"E0A0")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_926_i_0);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_0\ : CFG4
      generic map(INIT => x"1090")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => un36_si_int_2, D => \fsmsta[3]_net_1\, Y => 
        un21_fsmdet_0);
    
    \fsmmod_RNO[2]\ : CFG4
      generic map(INIT => x"0C0D")

      port map(A => \fsmmod_ns_i_o3_0[4]_net_1\, B => 
        \fsmmod[2]_net_1\, C => N_1031, D => N_1033, Y => 
        N_1014_i_0);
    
    \fsmmod_ns_0_o3_0[3]\ : CFG3
      generic map(INIT => x"B7")

      port map(A => \PCLKint\, B => \SCLInt\, C => \PCLKint_ff\, 
        Y => N_1023);
    
    un7_fsmsta : CFG4
      generic map(INIT => x"C800")

      port map(A => un6_fsmsta_2, B => \un7_fsmsta_1\, C => 
        \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        \un7_fsmsta\);
    
    \serDAT_WRITE_PROC.serdat_9[3]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[2]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(3), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[3]\);
    
    bsd7 : SLE
      port map(D => bsd7_8, CLK => FAB_CCC_GL0, EN => \sercon_6\, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \bsd7\);
    
    PCLKint : SLE
      port map(D => PCLKint_3, CLK => FAB_CCC_GL0, EN => 
        un1_pclkint4_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint\);
    
    \PCLK_count1[1]\ : SLE
      port map(D => N_217_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[1]_net_1\);
    
    \serdat[5]\ : SLE
      port map(D => \serdat_9[5]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[5]_net_1\);
    
    SDAO_int_1_sqmuxa_6 : CFG4
      generic map(INIT => x"7000")

      port map(A => \nedetect\, B => un57_ens1, C => 
        \SDAO_int_1_sqmuxa_3\, D => \SDAO_int_1_sqmuxa_4\, Y => 
        \SDAO_int_1_sqmuxa_6\);
    
    \fsmsync_ns_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_986, B => \fsmsync_ns_0_1[0]_net_1\, C => 
        \fsmsync[3]_net_1\, D => \SCLInt\, Y => \fsmsync_ns[0]\);
    
    fsmsta_3_sqmuxa_0 : CFG4
      generic map(INIT => x"AB00")

      port map(A => \COREI2C_0_0_INT[0]\, B => un76_ens1, C => 
        un70_fsmsta, D => un54_fsmdet, Y => \fsmsta_3_sqmuxa_0\);
    
    \serDAT_WRITE_PROC.serdat_9[7]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[6]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(7), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[7]\);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta_2\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un6_fsmsta_2);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1_RNII2V61\ : CFG4
      generic map(INIT => x"CCC8")

      port map(A => un18_fsmsta, B => un30_fsmsta, C => 
        \un2_fsmsta_2\, D => un25_fsmsta_1, Y => N_1267);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_2_1\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => \un3_prdata_2\);
    
    \fsmsync_RNO[4]\ : CFG4
      generic map(INIT => x"0013")

      port map(A => N_979, B => \fsmsync_ns_i_0[3]_net_1\, C => 
        N_964, D => N_986, Y => N_954_i_0);
    
    fsmmod_nxt_0_sqmuxa : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmmod[2]_net_1\, B => \SCLInt\, C => N_1025, 
        Y => \fsmmod_nxt_0_sqmuxa\);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync_0\ : CFG4
      generic map(INIT => x"2080")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1217_2, D => \fsmsta[2]_net_1\, Y => 
        un19_framesync_0);
    
    \SDAI_ff_reg[0]\ : SLE
      port map(D => \SDAI_ff_reg_4[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[0]_net_1\);
    
    \fsmsync_RNO[5]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmsync[7]_net_1\, B => N_985, C => N_986, D
         => N_978, Y => N_952_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_1[3]\ : CFG4
      generic map(INIT => x"7000")

      port map(A => N_1092, B => \fsmsta[3]_net_1\, C => 
        un2_fsmsta_12_s7, D => \fsmsta_nxt_cnst_i_m_0[3]\, Y => 
        \fsmsta_nxt_cnst_i_m[3]\);
    
    adrcomp : SLE
      port map(D => \un1_adrcomp5\, CLK => FAB_CCC_GL0, EN => 
        adrcomp_2_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \adrcomp\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_1_1\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \COREI2C_0_0_INT[0]\, B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(8), D => \N_535\, Y => 
        bsd7_tmp_6_ns_1_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_2_1[4]\ : CFG4
      generic map(INIT => x"13FF")

      port map(A => \un2_fsmsta_1\, B => \un2_fsmsta_2\, C => 
        \COREI2C_0_0_SDAO[0]\, D => un30_fsmsta, Y => 
        \fsmsta_8_1_iv_2_1[4]\);
    
    pedetect_RNI19AO3 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => \sercon_6\, B => \pedetect\, C => un1_N_9_mux, 
        D => un25_fsmsta_RNI65A81, Y => un1_N_12_mux_i_0);
    
    SCLO_int_RNI96C8 : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SCLO[0]\, Y => 
        COREI2C_0_0_SCLO_i(0));
    
    \fsmsta_nxt_cnst_i_a6_0[1]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => un30_fsmsta, D => un20_sdao_int, Y => N_1101);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_5\ : CFG4
      generic map(INIT => x"0040")

      port map(A => \serdat[2]_net_1\, B => \sercon_2\, C => 
        \adrcompen\, D => \serdat[3]_net_1\, Y => 
        un27_adrcompen_5);
    
    adrcompen : SLE
      port map(D => \adrcompen_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => adrcompen_2_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcompen\);
    
    \fsmsync_ns_i_0[3]\ : CFG4
      generic map(INIT => x"0E0A")

      port map(A => \COREI2C_0_0_INT[0]\, B => un70_fsmsta, C => 
        \fsmsync[4]_net_1\, D => \sercon_4\, Y => 
        \fsmsync_ns_i_0[3]_net_1\);
    
    \indelay[3]\ : SLE
      port map(D => \indelay_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[3]_net_1\);
    
    un7_fsmsta_1 : CFG4
      generic map(INIT => x"0703")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        \un7_fsmsta_1\);
    
    \SDAI_ff_reg[1]\ : SLE
      port map(D => \SDAI_ff_reg_4[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[1]_net_1\);
    
    un2_fsmsta_1 : CFG4
      generic map(INIT => x"F9F0")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => un15_fsmsta, D => un18_fsmsta_0, Y => \un2_fsmsta_1\);
    
    PCLK_count2_ov_0_sqmuxa : CFG4
      generic map(INIT => x"0080")

      port map(A => \PCLK_count2[1]_net_1\, B => 
        \PCLK_count2[0]_net_1\, C => \PCLK_count1_ov\, D => 
        un7_counter_rst, Y => \PCLK_count2_ov_0_sqmuxa\);
    
    \fsmdet[6]\ : SLE
      port map(D => SCLInt_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[6]_net_1\);
    
    \fsmmod_ns_0_o4[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => un115_fsmdet, B => \fsmmod_nxt_0_sqmuxa\, Y
         => N_1031);
    
    \serCON_WRITE_PROC.un60_ens1_0_tz\ : CFG2
      generic map(INIT => x"E")

      port map(A => \framesync[0]_net_1\, B => 
        \framesync[1]_net_1\, Y => un60_ens1_0_tz);
    
    \serCON_WRITE_PROC.un16_ens1_1\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \fsmmod_nxt_0_sqmuxa\, B => un81_ens1, C => 
        \fsmsta_cnst_m_2[4]\, Y => un16_ens1_1);
    
    \fsmsync_ns_i_o3[4]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_971, B => \fsmsync[4]_net_1\, Y => N_976);
    
    \fsmmod_ns_0[1]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => \fsmmod[5]_net_1\, B => \nedetect\, C => 
        un115_fsmdet, D => N_1040, Y => \fsmmod_ns[1]\);
    
    \PCLK_count1_RNO[1]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \PCLK_count1[1]_net_1\, B => 
        \PCLK_count1[0]_net_1\, C => un7_counter_rst, Y => 
        N_217_i_0);
    
    \fsmsta_nxt_cnst_i_a6[2]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, Y => N_1103);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_1\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => un25_si_int, D => un27_si_int_0, Y => un21_fsmdet_1);
    
    ack_bit_1_sqmuxa : CFG4
      generic map(INIT => x"1000")

      port map(A => un57_fsmsta, B => \fsmdet[3]_net_1\, C => 
        un5_penable, D => \ack_bit_1_sqmuxa_1\, Y => 
        \ack_bit_1_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.un133_framesync_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \adrcomp\, B => \adrcompen\, Y => un1_fsmmod);
    
    pedetect_0_sqmuxa : CFG4
      generic map(INIT => x"2000")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \pedetect_0_sqmuxa\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta\ : CFG4
      generic map(INIT => x"F8FF")

      port map(A => \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, B => 
        \un63_fsmsta_tz\, C => un57_fsmsta_4, D => N_1020, Y => 
        un57_fsmsta);
    
    adrcomp_2_sqmuxa_0 : CFG4
      generic map(INIT => x"1333")

      port map(A => un33_fsmsta, B => un16_fsmmod, C => 
        un30_adrcompen, D => un27_adrcompen_8, Y => 
        \adrcomp_2_sqmuxa_0\);
    
    \fsmsync_ns_0_a3_2_1[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[0]_net_1\, Y
         => N_986_1);
    
    \sersta[4]\ : SLE
      port map(D => \sersta_32[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(4));
    
    SCLInt : SLE
      port map(D => \SCLI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_3\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLInt\);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_0\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        un105_ens1_0_a2_0_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => un20_sdao_int_m, B => \fsmsta_nxt_9_i_m[3]\, 
        C => \fsmsta_8_0_iv_2[3]\, D => \fsmsta_nxt_cnst_i_m[3]\, 
        Y => \fsmsta_8_0_iv_i_0[3]\);
    
    \fsmmod_RNO[0]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => \nedetect\, B => \fsmmod[3]_net_1\, C => 
        un115_fsmdet, D => N_1049, Y => N_1017_i_0);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m20\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_21);
    
    \serCON_WRITE_PROC.un97_ens1_1\ : CFG4
      generic map(INIT => x"135F")

      port map(A => un105_fsmdet_1, B => \pedetect\, C => 
        un60_ens1, D => un30_fsmsta, Y => un97_ens1_1);
    
    un1_m2_e_1 : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(8), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \un1_m2_e_1\);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta\ : CFG3
      generic map(INIT => x"80")

      port map(A => \framesync[0]_net_1\, B => un57_ens1, C => 
        \framesync[1]_net_1\, Y => un33_fsmsta);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[1]_net_1\, Y
         => \SDAI_ff_reg_4[2]\);
    
    PCLK_count2_ov : SLE
      port map(D => \PCLK_count2_ov_0_sqmuxa\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2_ov\);
    
    \serSTA_WRITE_PROC.sersta_32_1[4]\ : CFG4
      generic map(INIT => x"0180")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        \sersta_32_1[4]\);
    
    \fsmsync_RNO[2]\ : CFG4
      generic map(INIT => x"008C")

      port map(A => \fsmsync[2]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_965, D => N_986, Y => N_958_i_0);
    
    \fsmsta_RNO_1[2]\ : CFG4
      generic map(INIT => x"7000")

      port map(A => un133_framesync, B => 
        \fsmsta_cnst_i_a4_0[0]_net_1\, C => 
        fsmsta_8_0_iv_0_0_312_i_1_tz_tz, D => un136_framesync, Y
         => fsmsta_8_0_iv_0_0_312_i_1);
    
    \sercon[3]\ : SLE
      port map(D => \sercon_9[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_INT[0]\);
    
    \PCLK_count1_RNO[3]\ : CFG4
      generic map(INIT => x"2130")

      port map(A => N_11, B => un7_counter_rst, C => 
        \PCLK_count1[3]_net_1\, D => \PCLK_count1[2]_net_1\, Y
         => N_5_i_0);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet\ : CFG4
      generic map(INIT => x"FFEF")

      port map(A => un16_fsmmod, B => \fsmmod_nxt_0_sqmuxa\, C
         => \sercon_6\, D => un105_fsmdet_1, Y => un105_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[1]\ : CFG4
      generic map(INIT => x"004F")

      port map(A => \ack\, B => \un2_fsmsta_8\, C => 
        \fsmsta_8_0_iv_2_1[1]\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_2[1]\);
    
    \fsmmod[5]\ : SLE
      port map(D => \fsmmod_ns[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[5]_net_1\);
    
    un1_serdat_2_sqmuxa_1 : CFG4
      generic map(INIT => x"8C88")

      port map(A => \un1_serdat36\, B => 
        \un1_serdat_2_sqmuxa_1_0\, C => \COREI2C_0_0_INT[0]\, D
         => un92_fsmsta, Y => \un1_serdat_2_sqmuxa_1\);
    
    \fsmsta_nxt_cnst_0_a6_0[4]\ : CFG4
      generic map(INIT => x"040C")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[4]_net_1\, C
         => un30_fsmsta, D => un20_sdao_int, Y => N_1108);
    
    \fsmmod_ns_0_o3[3]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        N_1020);
    
    SDAO_int_RNO_1 : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmmod_ns_i_a4_0[2]\, B => \fsmmod[2]_net_1\, 
        Y => SDAO_int_7_0_340_a5_0);
    
    \fsmsync_ns_i_o3_0[4]\ : CFG4
      generic map(INIT => x"FBFF")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        N_971);
    
    \fsmdet[5]\ : SLE
      port map(D => N_916_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[5]_net_1\);
    
    \fsmmod[1]\ : SLE
      port map(D => \fsmmod_ns[5]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[1]_net_1\);
    
    \fsmdet_RNO[4]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[4]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_918_i_0);
    
    \fsmdet_RNO[1]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[4]_net_1\, B => \fsmdet[2]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_924_i_0);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_m0_a0_3\ : CFG4
      generic map(INIT => x"4000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(8), B => 
        bsd7_tmp_6_m0_a0_0, C => \N_535\, D => N_515, Y => 
        bsd7_tmp_6_m0_a0_3);
    
    \fsmmod_ns_0_a4_0_3_0[3]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmmod[4]_net_1\, B => \PCLKint_ff\, C => 
        \PCLKint\, Y => \fsmmod_ns_0_a4_0_3_0[3]_net_1\);
    
    \fsmsync[4]\ : SLE
      port map(D => N_954_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[4]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_8\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \serdat[4]_net_1\, B => \nedetect\, C => 
        un27_adrcompen_6, D => un27_adrcompen_5, Y => 
        un27_adrcompen_8);
    
    \serDAT_WRITE_PROC.bsd7_8_m_bm\ : CFG4
      generic map(INIT => x"4450")

      port map(A => \fsmdet[3]_net_1\, B => \bsd7\, C => 
        bsd7_0_m0, D => serdat_0_sqmuxa_sn, Y => bsd7_8_m_bm);
    
    SCLSCL_1_sqmuxa_i : CFG2
      generic map(INIT => x"D")

      port map(A => \fsmmod[1]_net_1\, B => \pedetect\, Y => 
        SCLSCL_1_sqmuxa_i_0);
    
    \sercon[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_5\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[0]\ : CFG4
      generic map(INIT => x"008F")

      port map(A => \ack\, B => \un2_fsmsta_8\, C => 
        \fsmsta_8_0_iv_3_1[0]\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_3[0]\);
    
    \fsmsta_nxt_cnst_i_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => un30_fsmsta, B => un1_fsmmod, Y => N_1088);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst\ : CFG4
      generic map(INIT => x"EFEE")

      port map(A => un16_fsmmod, B => un7_counter_rst_3, C => 
        \SCLInt\, D => un7_counter_rst_4_tz, Y => un7_counter_rst);
    
    \serDAT_WRITE_PROC.serdat_9[5]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[4]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(5), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[5]\);
    
    nedetect_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1_i_0);
    
    \fsmsta_nxt_cnst_0_2[4]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => un34_si_int_2, B => 
        \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, C => 
        \fsmsta_nxt_cnst_0_0[4]_net_1\, D => N_1108, Y => 
        \fsmsta_nxt_cnst_0_2[4]_net_1\);
    
    \serCON_WRITE_PROC.sercon_8_1[4]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmdet[1]_net_1\, B => \sercon_4\, C => 
        \sercon_6\, Y => \sercon_8_1[4]\);
    
    \fsmmod_ns_0_o3_2[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \sercon_4\, B => \COREI2C_0_0_INT[0]\, C => 
        \sercon_5\, Y => N_1026);
    
    \serCON_WRITE_PROC.un70_ens1\ : CFG3
      generic map(INIT => x"F1")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[6]_net_1\, C
         => \adrcomp\, Y => un70_ens1);
    
    \SDAO_INT_WRITE_PROC.un18_fsmsta\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[2]_net_1\, B => un18_fsmsta_0, C => 
        \fsmsta[1]_net_1\, Y => un18_fsmsta);
    
    \SDAO_INT_WRITE_PROC.un70_fsmsta\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[0]_net_1\, D => 
        \framesync[1]_net_1\, Y => un70_fsmsta);
    
    \fsmmod_RNO[4]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmmod_ns_i_0[2]_net_1\, B => N_1041, C => 
        un115_fsmdet, Y => N_1011_i_0);
    
    \PCLK_count2_3[1]\ : CFG4
      generic map(INIT => x"006A")

      port map(A => \PCLK_count2[1]_net_1\, B => 
        \PCLK_count2[0]_net_1\, C => \PCLK_count1_ov\, D => 
        un7_counter_rst, Y => \PCLK_count2_3[1]_net_1\);
    
    \SCLI_ff_reg[2]\ : SLE
      port map(D => \SCLI_ff_reg_3[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[2]_net_1\);
    
    \fsmsync_RNO[3]\ : CFG4
      generic map(INIT => x"0405")

      port map(A => \SCLInt\, B => \fsmsync[3]_net_1\, C => N_986, 
        D => N_976, Y => N_956_i_0);
    
    \fsmsync[3]\ : SLE
      port map(D => N_956_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un30_fsmsta\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[0]_net_1\, D => 
        \framesync[1]_net_1\, Y => un30_fsmsta);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_m0_a0_0\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(7), B => 
        \bsd7_tmp\, Y => bsd7_tmp_6_m0_a0_0);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_1_s\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \un3_prdata_2\, B => un6_prdatalt2_i, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => 
        un5_penable_0_a2_1_out);
    
    \PCLK_count2[1]\ : SLE
      port map(D => \PCLK_count2_3[1]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[1]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un21_fsmsta_0\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, Y => un21_fsmsta_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[0]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => \fsmsta_8_0_iv_0[0]\, B => fsmsta_0_sqmuxa_1, 
        C => \adrcomp\, Y => \fsmsta_8_0_iv_1[0]\);
    
    SDAO_int_RNO_3 : CFG4
      generic map(INIT => x"CFEF")

      port map(A => \framesync[3]_net_1\, B => \bsd7\, C => 
        un57_fsmsta, D => un70_fsmsta, Y => N_1289);
    
    busfree : SLE
      port map(D => \fsmdet_i_0[3]\, CLK => FAB_CCC_GL0, EN => 
        un105_fsmdet, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \busfree\);
    
    \PCLK_count1[2]\ : SLE
      port map(D => N_216_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[2]_net_1\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2[2]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1[1]_net_1\, Y => N_11);
    
    \sercon[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_6\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta_8_0_iv_4[0]\, B => 
        \fsmsta_8_0_iv_3[0]\, C => N_1079_m, Y => 
        \fsmsta_8_0_iv_i_0[0]\);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0_2_RNIPHTS1\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \un1_m2_e_1\, B => un105_ens1_0_a2_0_2, C => 
        \N_535\, D => N_518, Y => un1_N_9_mux);
    
    SDAO_int : SLE
      port map(D => N_1273, CLK => FAB_CCC_GL0, EN => 
        SDAO_int_1_sqmuxa_i_0, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \COREI2C_0_0_SDAO[0]\);
    
    un1_serdat_2_sqmuxa_1_0_RNO_0 : CFG4
      generic map(INIT => x"8000")

      port map(A => \un3_prdata_2\, B => \N_530\, C => ack_m5_e_2, 
        D => \N_535\, Y => ack_m5_e_6);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_e2\ : CFG4
      generic map(INIT => x"0013")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        un30_fsmsta, D => framesync_7_sm0, Y => framesync_7_e2);
    
    un1_adrcomp5 : CFG3
      generic map(INIT => x"01")

      port map(A => un16_fsmmod, B => un23_fsmdet, C => 
        un105_fsmdet_1, Y => \un1_adrcomp5\);
    
    \fsmsta_nxt_cnst_i_a6_0_1[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un34_si_int_2, B => \fsmsta[2]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_a6_0[0]\);
    
    \fsmsta_nxt_cnst_0_0[4]\ : CFG4
      generic map(INIT => x"EEEA")

      port map(A => N_1103, B => N_822, C => \fsmsta[0]_net_1\, D
         => \fsmsta[2]_net_1\, Y => 
        \fsmsta_nxt_cnst_0_0[4]_net_1\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet_RNIKB831\ : CFG4
      generic map(INIT => x"5400")

      port map(A => \COREI2C_0_0_INT[0]\, B => un76_ens1, C => 
        un70_fsmsta, D => un54_fsmdet, Y => fsmsta_0_sqmuxa_1);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[0]_net_1\, Y
         => \SDAI_ff_reg_4[1]\);
    
    \fsmsta_RNO[2]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => N_1083, B => un2_fsmsta_12_s7, C => 
        fsmsta_8_0_iv_0_0_312_i_0, D => fsmsta_8_0_iv_0_0_312_i_1, 
        Y => N_1266_i_0);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => \N_535\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO\ : CFG4
      generic map(INIT => x"CCCA")

      port map(A => \bsd7\, B => \bsd7_tmp\, C => 
        serdat_0_sqmuxa_sn, D => \fsmdet[3]_net_1\, Y => N_1123);
    
    \fsmmod_ns_i_a4_1_0[2]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[4]_net_1\, Y
         => N_986_3);
    
    \fsmmod_ns_0_a4_0[5]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \fsmmod[6]_net_1\, B => \SDAInt\, C => N_1032, 
        D => un115_fsmdet, Y => N_1048);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst_4_tz\ : 
        CFG4
      generic map(INIT => x"B3A0")

      port map(A => \fsmmod[2]_net_1\, B => \fsmmod[1]_net_1\, C
         => \COREI2C_0_0_SCLO[0]\, D => \busfree\, Y => 
        un7_counter_rst_4_tz);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_6\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \serdat[6]_net_1\, B => \serdat[5]_net_1\, C
         => \serdat[1]_net_1\, D => \serdat[0]_net_1\, Y => 
        un27_adrcompen_6);
    
    \fsmmod_ns_i_o3_0[4]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \sercon_4\, B => \fsmmod[4]_net_1\, Y => 
        \fsmmod_ns_i_o3_0[4]_net_1\);
    
    \FSMSTA_SYNC_PROC.un78_fsmdet\ : CFG2
      generic map(INIT => x"8")

      port map(A => un60_ens1, B => un70_ens1, Y => un78_fsmdet);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO_1\ : CFG4
      generic map(INIT => x"00FB")

      port map(A => \COREI2C_0_0_INT[0]\, B => un57_fsmsta, C => 
        \serdat[7]_net_1\, D => \fsmdet[3]_net_1\, Y => N_1126);
    
    \fsmmod_ns_0[3]\ : CFG4
      generic map(INIT => x"3222")

      port map(A => \fsmmod_ns_0_a4_0_3[3]_net_1\, B => 
        un115_fsmdet, C => \fsmmod[3]_net_1\, D => N_1023, Y => 
        \fsmmod_ns[3]\);
    
    \fsmdet_RNO[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \SCLInt\, Y => SCLInt_i_0);
    
    \serSTA_WRITE_PROC.sersta_32[3]\ : CFG4
      generic map(INIT => x"DF8F")

      port map(A => N_32, B => i4_mux_4, C => 
        \COREI2C_0_0_INT[0]\, D => N_21, Y => \sersta_32[3]\);
    
    \serSTA_WRITE_PROC.sersta_32[0]\ : CFG4
      generic map(INIT => x"DF75")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_822, C => N_32, 
        D => \sersta_32_1[0]\, Y => \sersta_32[0]\);
    
    \serdat[1]\ : SLE
      port map(D => \serdat_9[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_N_12_mux_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \serdat[1]_net_1\);
    
    SDAO_int_1_sqmuxa_3 : CFG4
      generic map(INIT => x"0031")

      port map(A => \fsmmod[6]_net_1\, B => \fsmmod[0]_net_1\, C
         => \adrcomp\, D => \fsmmod[2]_net_1\, Y => 
        \SDAO_int_1_sqmuxa_3\);
    
    \fsmsta_nxt_cnst_i[2]\ : CFG4
      generic map(INIT => x"FFCE")

      port map(A => \fsmsta_nxt_cnst_i_1[2]_net_1\, B => N_1086, 
        C => \fsmsta[2]_net_1\, D => N_1103, Y => N_1083);
    
    \PCLK_count2_3[0]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \PCLK_count2[0]_net_1\, B => \PCLK_count1_ov\, 
        C => un7_counter_rst, Y => \PCLK_count2_3[0]_net_1\);
    
    un1_serdat_2_sqmuxa_1_0 : CFG4
      generic map(INIT => x"2AAA")

      port map(A => \pedetect\, B => N_514, C => ack_m5_e_3, D
         => ack_m5_e_6, Y => \un1_serdat_2_sqmuxa_1_0\);
    
    \FSMSTA_COMB_PROC.un20_sdao_int\ : CFG2
      generic map(INIT => x"4")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, Y => 
        un20_sdao_int);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[1]_net_1\, Y
         => \SCLI_ff_reg_3[2]\);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[1]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[0]_net_1\, Y
         => \SCLI_ff_reg_3[1]\);
    
    \fsmsta_cnst_i_o4_4[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[5]_net_1\, B => \serdat[4]_net_1\, C
         => \serdat[3]_net_1\, D => \serdat[0]_net_1\, Y => 
        \fsmsta_cnst_i_o4_4[0]_net_1\);
    
    un2_fsmsta_7_RNIOCEU1 : CFG4
      generic map(INIT => x"0001")

      port map(A => \un2_fsmsta_8\, B => \un2_fsmsta_4\, C => 
        \un2_fsmsta_7\, D => \un2_fsmsta_9\, Y => 
        un2_fsmsta_12_s7_2);
    
    \or_br.rtn_1\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1);
    
    \fsmmod_ns_0_o3[0]\ : CFG3
      generic map(INIT => x"FB")

      port map(A => N_1026, B => \starto_en\, C => N_1025, Y => 
        N_1032);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv[1]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsta_8_0_iv_2[1]\, B => 
        \fsmsta_nxt_cnst_m[1]\, C => \fsmsta_cnst_m[1]\, D => 
        SDAO_int_m, Y => \fsmsta_8[1]\);
    
    \fsmdet_RNO[3]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[5]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_920_i_0);
    
    \serSTA_WRITE_PROC.un27_si_int_0\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, Y => un27_si_int_0);
    
    \fsmsync_RNO[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_992, B => N_994, C => N_993, D => N_986, Y
         => N_960_i_0);
    
    \serSTA_WRITE_PROC.un25_si_int\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, D => 
        \fsmsta[2]_net_1\, Y => un25_si_int);
    
    \fsmsta_cnst_i_o4_5[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[6]_net_1\, B => \serdat[2]_net_1\, C
         => \serdat[1]_net_1\, D => \ack\, Y => 
        \fsmsta_cnst_i_o4_5[0]_net_1\);
    
    \fsmmod_ns_0[5]\ : CFG4
      generic map(INIT => x"CCDC")

      port map(A => un115_fsmdet, B => N_1048, C => 
        \fsmmod[1]_net_1\, D => un10_sclscl, Y => \fsmmod_ns[5]\);
    
    \fsmsync[5]\ : SLE
      port map(D => N_952_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[5]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m10\ : CFG4
      generic map(INIT => x"3938")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        N_30_mux);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[3]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => \framesync[3]_net_1\, B => framesync_7_e2, C
         => CO2, D => \framesync_7_m2[3]\, Y => \framesync_7[3]\);
    
    \fsmsync_ns_0_1[0]\ : CFG4
      generic map(INIT => x"8A0A")

      port map(A => \SCLInt\, B => \fsmsync[7]_net_1\, C => N_976, 
        D => N_966, Y => \fsmsync_ns_0_1[0]_net_1\);
    
    un2_fsmsta_2 : CFG3
      generic map(INIT => x"CE")

      port map(A => un24_fsmsta_3, B => un2_fsmsta_2_0, C => 
        \fsmsta[4]_net_1\, Y => \un2_fsmsta_2\);
    
    \serDAT_WRITE_PROC.serdat_9[2]\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \serdat[1]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(2), C => \N_535\, D => 
        \N_536\, Y => \serdat_9[2]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_RNO_1[1]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \COREI2C_0_0_SDAO[0]\, B => un30_fsmsta, C
         => \un2_fsmsta_2\, D => un136_framesync, Y => SDAO_int_m);
    
    \FSMSYNC_SYNC_PROC.un141_ens1_2\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \fsmsync[6]_net_1\, D => \fsmsync[1]_net_1\, Y => 
        un141_ens1_2);
    
    \fsmmod_ns_i_0[2]\ : CFG4
      generic map(INIT => x"0313")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[4]_net_1\, C
         => \nedetect\, D => \fsmmod[5]_net_1\, Y => 
        \fsmmod_ns_i_0[2]_net_1\);
    
    \fsmsta_RNO_0[2]\ : CFG4
      generic map(INIT => x"0F02")

      port map(A => \un2_fsmsta_8\, B => \ack\, C => 
        un136_framesync, D => N_1267, Y => 
        fsmsta_8_0_iv_0_0_312_i_0);
    
    \fsmsta_nxt_cnst_i_0[0]\ : CFG4
      generic map(INIT => x"5051")

      port map(A => \fsmsta[0]_net_1\, B => un20_sdao_int, C => 
        \fsmsta_nxt_cnst_i_0_1[0]_net_1\, D => un30_fsmsta, Y => 
        \fsmsta_nxt_cnst_i_0[0]_net_1\);
    
    \FSMMOD_COMB_PROC.un10_sclscl\ : CFG2
      generic map(INIT => x"8")

      port map(A => \pedetect\, B => \SCLSCL\, Y => un10_sclscl);
    
    \indelay_RNIE61F[1]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => N_971, Y => CO1);
    
    \sersta[2]\ : SLE
      port map(D => \sersta_32[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(2));
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv[4]\ : CFG4
      generic map(INIT => x"EEEA")

      port map(A => \fsmsta_8_1_iv_2[4]\, B => un2_fsmsta_12_s7, 
        C => N_1109, D => \fsmsta_nxt_cnst_0_2[4]_net_1\, Y => 
        \fsmsta_8[4]\);
    
    \fsmsta_nxt_cnst_i_o6[0]\ : CFG4
      generic map(INIT => x"CCCE")

      port map(A => \fsmsta_nxt_cnst_i_a2_0[0]_net_1\, B => 
        N_1112, C => \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y
         => N_1086);
    
    un1_rtn_3 : CFG3
      generic map(INIT => x"81")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => \un1_rtn_3\);
    
    SDAO_int_RNO_0 : CFG4
      generic map(INIT => x"F7F3")

      port map(A => \adrcomp\, B => \sercon_6\, C => 
        \fsmmod[3]_net_1\, D => \fsmmod[6]_net_1\, Y => 
        SDAO_int_7_0_340_1);
    
    nedetect_0_sqmuxa : CFG4
      generic map(INIT => x"0004")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \nedetect_0_sqmuxa\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_0\ : CFG4
      generic map(INIT => x"FF8C")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => N_1216, Y => un135_ens1_1_0);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_4\ : CFG4
      generic map(INIT => x"A820")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => un57_fsmsta_4_1, D => un56_fsmsta_0, Y => 
        un57_fsmsta_4);
    

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
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          PRDATA_0_a2_9_0                             : in    std_logic_vector(4 to 4);
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
          N_515                                       : in    std_logic;
          N_535                                       : out   std_logic;
          un3_prdata_2                                : out   std_logic;
          N_530                                       : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          N_653                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          un6_prdatalt2_i                             : in    std_logic;
          N_536                                       : out   std_logic;
          N_541                                       : out   std_logic;
          N_518                                       : in    std_logic;
          N_523                                       : in    std_logic;
          N_514                                       : in    std_logic
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
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          PRDATA_0_a2_9_0                             : in    std_logic_vector(4 to 4) := (others => 'U');
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
          N_515                                       : in    std_logic := 'U';
          N_535                                       : out   std_logic;
          un3_prdata_2                                : out   std_logic;
          N_530                                       : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          N_653                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          un6_prdatalt2_i                             : in    std_logic := 'U';
          N_536                                       : out   std_logic;
          N_541                                       : out   std_logic;
          N_518                                       : in    std_logic := 'U';
          N_523                                       : in    std_logic := 'U';
          N_514                                       : in    std_logic := 'U'
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
        sersta(0), CoreAPB3_0_APBmslave0_PADDR(8) => 
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
        CoreAPB3_0_APBmslave0_PADDR(0), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        PRDATA_0_a2_9_0(4) => PRDATA_0_a2_9_0(4), 
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
         => FAB_CCC_GL0, N_515 => N_515, N_535 => N_535, 
        un3_prdata_2 => un3_prdata_2, N_530 => N_530, 
        BIBUF_COREI2C_0_0_SDA_IO_Y => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        N_653 => N_653, CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, BIBUF_COREI2C_0_0_SCL_IO_Y
         => BIBUF_COREI2C_0_0_SCL_IO_Y, un6_prdatalt2_i => 
        un6_prdatalt2_i, N_536 => N_536, N_541 => N_541, N_518
         => N_518, N_523 => N_523, N_514 => N_514);
    

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

entity pwm_gen is

    port( period_cnt      : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg : in    std_logic_vector(128 downto 1);
          pwm_enable_reg  : in    std_logic_vector(4 downto 1);
          pwm_out_4_c     : out   std_logic;
          MSS_READY       : in    std_logic;
          FAB_CCC_GL0     : in    std_logic;
          pwm_out_3_c     : out   std_logic;
          pwm_out_2_c     : out   std_logic;
          pwm_out_1_c     : out   std_logic;
          N_257           : out   std_logic;
          N_150           : out   std_logic;
          N_154           : in    std_logic
        );

end pwm_gen;

architecture DEF_ARCH of pwm_gen is 

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
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

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

    signal \pwm_out_4_c\, VCC_net_1, N_327_i_0, N_21, GND_net_1, 
        \pwm_out_3_c\, N_336_i_0, \un1_pwm_enable_reg_1_i_0[0]\, 
        \pwm_out_2_c\, N_295_i_1, 
        \un1_pwm_enable_reg_2_0_i[0]_net_1\, \pwm_out_1_c\, 
        N_354_i_0, \un1_pwm_enable_reg_3_i_0[0]\, 
        \un107_pwm_enable_reg_0_data_tmp[0]\, 
        \un107_pwm_enable_reg_0_data_tmp[1]\, 
        \un107_pwm_enable_reg_0_data_tmp[2]\, 
        \un107_pwm_enable_reg_0_data_tmp[3]\, 
        \un107_pwm_enable_reg_0_data_tmp[4]\, 
        \un107_pwm_enable_reg_0_data_tmp[5]\, 
        \un107_pwm_enable_reg_0_data_tmp[6]\, 
        \un107_pwm_enable_reg_0_data_tmp[7]\, 
        \un107_pwm_enable_reg_0_data_tmp[8]\, 
        \un107_pwm_enable_reg_0_data_tmp[9]\, 
        \un107_pwm_enable_reg_0_data_tmp[10]\, 
        \un107_pwm_enable_reg_0_data_tmp[11]\, 
        \un107_pwm_enable_reg_0_data_tmp[12]\, 
        \un107_pwm_enable_reg_0_data_tmp[13]\, 
        \un107_pwm_enable_reg_0_data_tmp[14]\, 
        un107_pwm_enable_reg, \un69_pwm_enable_reg_0_data_tmp[0]\, 
        \un69_pwm_enable_reg_0_data_tmp[1]\, 
        \un69_pwm_enable_reg_0_data_tmp[2]\, 
        \un69_pwm_enable_reg_0_data_tmp[3]\, 
        \un69_pwm_enable_reg_0_data_tmp[4]\, 
        \un69_pwm_enable_reg_0_data_tmp[5]\, 
        \un69_pwm_enable_reg_0_data_tmp[6]\, 
        \un69_pwm_enable_reg_0_data_tmp[7]\, 
        \un69_pwm_enable_reg_0_data_tmp[8]\, 
        \un69_pwm_enable_reg_0_data_tmp[9]\, 
        \un69_pwm_enable_reg_0_data_tmp[10]\, 
        \un69_pwm_enable_reg_0_data_tmp[11]\, 
        \un69_pwm_enable_reg_0_data_tmp[12]\, 
        \un69_pwm_enable_reg_0_data_tmp[13]\, 
        \un69_pwm_enable_reg_0_data_tmp[14]\, un69_pwm_enable_reg, 
        \un31_pwm_enable_reg_0_data_tmp[0]\, 
        \un31_pwm_enable_reg_0_data_tmp[1]\, 
        \un31_pwm_enable_reg_0_data_tmp[2]\, 
        \un31_pwm_enable_reg_0_data_tmp[3]\, 
        \un31_pwm_enable_reg_0_data_tmp[4]\, 
        \un31_pwm_enable_reg_0_data_tmp[5]\, 
        \un31_pwm_enable_reg_0_data_tmp[6]\, 
        \un31_pwm_enable_reg_0_data_tmp[7]\, 
        \un31_pwm_enable_reg_0_data_tmp[8]\, 
        \un31_pwm_enable_reg_0_data_tmp[9]\, 
        \un31_pwm_enable_reg_0_data_tmp[10]\, 
        \un31_pwm_enable_reg_0_data_tmp[11]\, 
        \un31_pwm_enable_reg_0_data_tmp[12]\, 
        \un31_pwm_enable_reg_0_data_tmp[13]\, 
        \un31_pwm_enable_reg_0_data_tmp[14]\, un31_pwm_enable_reg, 
        \un145_pwm_enable_reg_0_data_tmp[0]\, 
        \un145_pwm_enable_reg_0_data_tmp[1]\, 
        \un145_pwm_enable_reg_0_data_tmp[2]\, 
        \un145_pwm_enable_reg_0_data_tmp[3]\, 
        \un145_pwm_enable_reg_0_data_tmp[4]\, 
        \un145_pwm_enable_reg_0_data_tmp[5]\, 
        \un145_pwm_enable_reg_0_data_tmp[6]\, 
        \un145_pwm_enable_reg_0_data_tmp[7]\, 
        \un145_pwm_enable_reg_0_data_tmp[8]\, 
        \un145_pwm_enable_reg_0_data_tmp[9]\, 
        \un145_pwm_enable_reg_0_data_tmp[10]\, 
        \un145_pwm_enable_reg_0_data_tmp[11]\, 
        \un145_pwm_enable_reg_0_data_tmp[12]\, 
        \un145_pwm_enable_reg_0_data_tmp[13]\, 
        \un145_pwm_enable_reg_0_data_tmp[14]\, 
        un145_pwm_enable_reg, \N_257\, 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_8, 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_7, 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_6, 
        PWM_int_17_f0_27_i_i_i_a2_0_23, 
        PWM_int_17_f0_27_i_i_i_a2_0_22, 
        PWM_int_17_f0_27_i_i_i_a2_0_21, 
        PWM_int_17_f0_27_i_i_i_a2_0_20, 
        PWM_int_17_f0_27_i_i_i_a2_0_19, 
        PWM_int_17_f0_27_i_i_i_a2_0_18, 
        PWM_int_17_f0_27_i_i_i_a2_0_17, 
        PWM_int_17_f0_27_i_i_i_a2_0_16, 
        PWM_int_7_f0_37_i_0_a2_0_23, PWM_int_7_f0_37_i_0_a2_0_22, 
        PWM_int_7_f0_37_i_0_a2_0_21, PWM_int_7_f0_37_i_0_a2_0_20, 
        PWM_int_7_f0_37_i_0_a2_0_19, PWM_int_7_f0_37_i_0_a2_0_18, 
        PWM_int_7_f0_37_i_0_a2_0_17, PWM_int_7_f0_37_i_0_a2_0_16, 
        PWM_int_27_f0_17_i_0_a3_0_23, 
        PWM_int_27_f0_17_i_0_a3_0_22, 
        PWM_int_27_f0_17_i_0_a3_0_21, 
        PWM_int_27_f0_17_i_0_a3_0_20, 
        PWM_int_27_f0_17_i_0_a3_0_19, 
        PWM_int_27_f0_17_i_0_a3_0_18, 
        PWM_int_27_f0_17_i_0_a3_0_17, 
        PWM_int_27_f0_17_i_0_a3_0_16, PWM_int_37_f0_7_i_0_a3_0_23, 
        PWM_int_37_f0_7_i_0_a3_0_22, PWM_int_37_f0_7_i_0_a3_0_21, 
        PWM_int_37_f0_7_i_0_a3_0_20, PWM_int_37_f0_7_i_0_a3_0_19, 
        PWM_int_37_f0_7_i_0_a3_0_18, PWM_int_37_f0_7_i_0_a3_0_17, 
        PWM_int_37_f0_7_i_0_a3_0_16, 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_11, 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_10, 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_9, 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_8, 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_11, 
        PWM_int_17_f0_27_i_i_i_a2_0_29, 
        PWM_int_17_f0_27_i_i_i_a2_0_28, 
        PWM_int_7_f0_37_i_0_a2_0_29, PWM_int_7_f0_37_i_0_a2_0_28, 
        PWM_int_27_f0_17_i_0_a3_0_29, 
        PWM_int_27_f0_17_i_0_a3_0_28, PWM_int_37_f0_7_i_0_a3_0_29, 
        PWM_int_37_f0_7_i_0_a3_0_28, \N_150\, 
        un14_pwm_enable_reg_NE, N_360, N_513, N_669, N_671, N_512, 
        N_359, N_670, N_668 : std_logic;

begin 

    pwm_out_4_c <= \pwm_out_4_c\;
    pwm_out_3_c <= \pwm_out_3_c\;
    pwm_out_2_c <= \pwm_out_2_c\;
    pwm_out_1_c <= \pwm_out_1_c\;
    N_257 <= \N_257\;
    N_150 <= \N_150\;

    \PWM_int_RNO_8[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(60), B => pwm_negedge_reg(59), 
        C => pwm_negedge_reg(34), D => pwm_negedge_reg(33), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_18);
    
    \PWM_int_RNO_5[4]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(128), B => 
        pwm_negedge_reg(107), C => PWM_int_37_f0_7_i_0_a3_0_23, D
         => PWM_int_37_f0_7_i_0_a3_0_16, Y => 
        PWM_int_37_f0_7_i_0_a3_0_28);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(56), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(55), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[11]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(104), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(103), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_5[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(52), B => pwm_negedge_reg(51), 
        C => PWM_int_17_f0_27_i_i_i_a2_0_23, D => 
        PWM_int_17_f0_27_i_i_i_a2_0_16, Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_28);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(68), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(67), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(38), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(37), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(64), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(63), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un69_pwm_enable_reg);
    
    \PWM_int_RNO_10[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(78), B => pwm_negedge_reg(77), 
        C => pwm_negedge_reg(74), D => pwm_negedge_reg(73), Y => 
        PWM_int_27_f0_17_i_0_a3_0_17);
    
    \PWM_int_RNO_10[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(116), B => 
        pwm_negedge_reg(115), C => pwm_negedge_reg(114), D => 
        pwm_negedge_reg(113), Y => PWM_int_37_f0_7_i_0_a3_0_23);
    
    \PWM_int_RNO_1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_i_i_a2_0_22, B => 
        PWM_int_17_f0_27_i_i_i_a2_0_21, C => 
        PWM_int_17_f0_27_i_i_i_a2_0_29, D => 
        PWM_int_17_f0_27_i_i_i_a2_0_28, Y => N_513);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(76), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(75), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(108), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(107), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(122), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(121), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(116), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(115), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[9]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(6), B => period_cnt(4), C => 
        period_cnt(5), D => pwm_negedge_reg(5), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(66), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(65), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un107_pwm_enable_reg_0_data_tmp[0]\);
    
    \PWM_int_RNO_8[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(124), B => 
        pwm_negedge_reg(120), C => pwm_negedge_reg(118), D => 
        pwm_negedge_reg(108), Y => PWM_int_37_f0_7_i_0_a3_0_18);
    
    \PWM_int_RNO_1[3]\ : CFG3
      generic map(INIT => x"8A")

      port map(A => \pwm_out_3_c\, B => un14_pwm_enable_reg_NE, C
         => N_154, Y => N_668);
    
    \PWM_int_RNO_11[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(87), B => pwm_negedge_reg(85), 
        C => pwm_negedge_reg(82), D => pwm_negedge_reg(81), Y => 
        PWM_int_27_f0_17_i_0_a3_0_23);
    
    \PWM_int[2]\ : SLE
      port map(D => N_295_i_1, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_2_0_i[0]_net_1\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \pwm_out_2_c\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(26), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(25), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(24), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(23), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[11]\);
    
    \PWM_int_RNO[1]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_359, C => 
        pwm_enable_reg(1), D => N_360, Y => N_354_i_0);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(82), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(81), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[8]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_11, B
         => \N_150\, C => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_7, D => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_6, Y => 
        un14_pwm_enable_reg_NE);
    
    \PWM_int_RNO[4]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_670, C => 
        pwm_enable_reg(4), D => N_671, Y => N_327_i_0);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(110), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(109), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(40), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(39), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[3]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_14_o2_11\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(27), B => period_cnt(22), C => 
        period_cnt(21), D => period_cnt(20), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_11);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_8\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(13), B => period_cnt(12), C => 
        period_cnt(9), D => period_cnt(8), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_8);
    
    \PWM_int_RNO_7[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(72), B => pwm_negedge_reg(71), 
        C => pwm_negedge_reg(70), D => pwm_negedge_reg(69), Y => 
        PWM_int_27_f0_17_i_0_a3_0_20);
    
    \PWM_int[3]\ : SLE
      port map(D => N_336_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_1_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_3_c\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_11\ : 
        CFG4
      generic map(INIT => x"FFFD")

      port map(A => \N_257\, B => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_8, C => 
        period_cnt(11), D => period_cnt(10), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_11);
    
    \PWM_int_RNO_8[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(92), B => pwm_negedge_reg(91), 
        C => pwm_negedge_reg(80), D => pwm_negedge_reg(79), Y => 
        PWM_int_27_f0_17_i_0_a3_0_19);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_14_o2\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un14_pwm_enable_reg_NE_i_i_o2_14_o2_9, B => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_11, C => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_8, D => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_10, Y => \N_150\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(30), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(29), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[14]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(42), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(41), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(14), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(13), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_3[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(90), B => pwm_negedge_reg(89), 
        C => pwm_negedge_reg(84), D => pwm_negedge_reg(83), Y => 
        PWM_int_27_f0_17_i_0_a3_0_22);
    
    \un1_pwm_enable_reg_i_0[0]\ : CFG4
      generic map(INIT => x"B3F3")

      port map(A => un145_pwm_enable_reg, B => pwm_enable_reg(4), 
        C => N_154, D => un14_pwm_enable_reg_NE, Y => N_21);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(86), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(85), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[10]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(118), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(117), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[10]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(16), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(15), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[7]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(28), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(27), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(34), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(33), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un69_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(126), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(125), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_9[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(40), B => pwm_negedge_reg(39), 
        C => pwm_negedge_reg(38), D => pwm_negedge_reg(35), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_17);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(112), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(111), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[7]\);
    
    \PWM_int_RNO_12[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(65), B => \pwm_out_3_c\, C
         => pwm_negedge_reg(66), Y => 
        PWM_int_27_f0_17_i_0_a3_0_16);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(20), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(19), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[9]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_int_RNO_0[1]\ : CFG4
      generic map(INIT => x"B3F3")

      port map(A => un31_pwm_enable_reg, B => pwm_enable_reg(1), 
        C => N_154, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_3_i_0[0]\);
    
    \PWM_int_RNO_4[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(95), B => pwm_negedge_reg(94), 
        C => pwm_negedge_reg(93), D => pwm_negedge_reg(67), Y => 
        PWM_int_27_f0_17_i_0_a3_0_21);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_14_o2_9\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(31), B => period_cnt(30), C => 
        period_cnt(29), D => period_cnt(25), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_9);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(18), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(17), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[8]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(54), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(53), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[10]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(32), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(31), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un31_pwm_enable_reg);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(100), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(99), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_14_o2_8\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(28), B => period_cnt(24), C => 
        period_cnt(23), D => period_cnt(18), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_8);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(106), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(105), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(124), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(123), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(80), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(79), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[7]\);
    
    \PWM_int[4]\ : SLE
      port map(D => N_327_i_0, CLK => FAB_CCC_GL0, EN => N_21, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \pwm_out_4_c\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(48), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(47), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[7]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(22), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(21), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[10]\);
    
    \PWM_int_RNO_12[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(9), B => \pwm_out_1_c\, C => 
        pwm_negedge_reg(10), Y => PWM_int_7_f0_37_i_0_a2_0_16);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(98), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(97), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un145_pwm_enable_reg_0_data_tmp[0]\);
    
    \PWM_int_RNO_6[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(20), B => pwm_negedge_reg(19), 
        C => PWM_int_7_f0_37_i_0_a2_0_23, D => 
        PWM_int_7_f0_37_i_0_a2_0_16, Y => 
        PWM_int_7_f0_37_i_0_a2_0_28);
    
    \PWM_int_RNO_9[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(112), B => 
        pwm_negedge_reg(111), C => pwm_negedge_reg(104), D => 
        pwm_negedge_reg(99), Y => PWM_int_37_f0_7_i_0_a3_0_17);
    
    \PWM_int_RNO_6[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(110), B => 
        pwm_negedge_reg(103), C => pwm_negedge_reg(102), D => 
        pwm_negedge_reg(100), Y => PWM_int_37_f0_7_i_0_a3_0_20);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(88), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(87), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[11]\);
    
    \PWM_int_RNO_1[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_154, B => \pwm_out_1_c\, Y => N_359);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(4), B => period_cnt(2), C => 
        period_cnt(3), D => pwm_negedge_reg(3), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[1]\);
    
    \PWM_int_RNO_9[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(88), B => pwm_negedge_reg(86), 
        C => pwm_negedge_reg(76), D => pwm_negedge_reg(68), Y => 
        PWM_int_27_f0_17_i_0_a3_0_18);
    
    \PWM_int_RNO_7[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(63), B => pwm_negedge_reg(56), 
        C => pwm_negedge_reg(54), D => pwm_negedge_reg(45), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_19);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(12), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(11), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[5]\);
    
    \PWM_int_RNO_8[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(16), B => pwm_negedge_reg(15), 
        C => pwm_negedge_reg(5), D => pwm_negedge_reg(4), Y => 
        PWM_int_7_f0_37_i_0_a2_0_19);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(74), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(73), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_9[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(31), B => pwm_negedge_reg(8), 
        C => pwm_negedge_reg(7), D => pwm_negedge_reg(6), Y => 
        PWM_int_7_f0_37_i_0_a2_0_18);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(60), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(59), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[13]\);
    
    \PWM_int_RNO_4[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_37_f0_7_i_0_a3_0_20, B => 
        PWM_int_37_f0_7_i_0_a3_0_19, C => 
        PWM_int_37_f0_7_i_0_a3_0_18, D => 
        PWM_int_37_f0_7_i_0_a3_0_17, Y => 
        PWM_int_37_f0_7_i_0_a3_0_29);
    
    \PWM_int_RNO_4[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(32), B => pwm_negedge_reg(25), 
        C => pwm_negedge_reg(3), D => pwm_negedge_reg(2), Y => 
        PWM_int_7_f0_37_i_0_a2_0_21);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(52), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(51), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[9]\);
    
    \PWM_int_RNO_3[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(55), B => pwm_negedge_reg(53), 
        C => pwm_negedge_reg(47), D => pwm_negedge_reg(36), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_21);
    
    \PWM_int_RNO_0[3]\ : CFG4
      generic map(INIT => x"B3F3")

      port map(A => un107_pwm_enable_reg, B => pwm_enable_reg(3), 
        C => N_154, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_1_i_0[0]\);
    
    \PWM_int_RNO_11[4]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(97), B => \pwm_out_4_c\, C
         => pwm_negedge_reg(98), Y => PWM_int_37_f0_7_i_0_a3_0_16);
    
    \PWM_int_RNO_10[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(24), B => pwm_negedge_reg(14), 
        C => pwm_negedge_reg(13), D => pwm_negedge_reg(12), Y => 
        PWM_int_7_f0_37_i_0_a2_0_17);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(114), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(113), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[8]\);
    
    \PWM_int_RNO_6[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(46), B => pwm_negedge_reg(44), 
        C => pwm_negedge_reg(42), D => pwm_negedge_reg(41), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_20);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(70), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(69), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(96), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(95), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un107_pwm_enable_reg);
    
    \PWM_int_RNO_2[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(64), B => pwm_negedge_reg(58), 
        C => pwm_negedge_reg(57), D => pwm_negedge_reg(43), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_22);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(120), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(119), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[11]\);
    
    \PWM_int_RNO_5[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a2_0_20, B => 
        PWM_int_7_f0_37_i_0_a2_0_19, C => 
        PWM_int_7_f0_37_i_0_a2_0_18, D => 
        PWM_int_7_f0_37_i_0_a2_0_17, Y => 
        PWM_int_7_f0_37_i_0_a2_0_29);
    
    \PWM_int_RNO[3]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_668, C => 
        pwm_enable_reg(3), D => N_669, Y => N_336_i_0);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(8), B => period_cnt(6), C => 
        period_cnt(7), D => pwm_negedge_reg(7), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO[2]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_512, C => 
        pwm_enable_reg(2), D => N_513, Y => N_295_i_1);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(102), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(101), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[2]\);
    
    \PWM_int_RNO_1[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_37_f0_7_i_0_a3_0_22, B => 
        PWM_int_37_f0_7_i_0_a3_0_21, C => 
        PWM_int_37_f0_7_i_0_a3_0_29, D => 
        PWM_int_37_f0_7_i_0_a3_0_28, Y => N_671);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(36), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(35), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[1]\);
    
    \PWM_int_RNO_2[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a2_0_22, B => 
        PWM_int_7_f0_37_i_0_a2_0_21, C => 
        PWM_int_7_f0_37_i_0_a2_0_29, D => 
        PWM_int_7_f0_37_i_0_a2_0_28, Y => N_360);
    
    \PWM_int_RNO_0[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_154, B => \pwm_out_2_c\, Y => N_512);
    
    \PWM_int_RNO_4[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_i_i_a2_0_20, B => 
        PWM_int_17_f0_27_i_i_i_a2_0_19, C => 
        PWM_int_17_f0_27_i_i_i_a2_0_18, D => 
        PWM_int_17_f0_27_i_i_i_a2_0_17, Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_29);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(94), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(93), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[14]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_5_0_o2_i_a3\ : 
        CFG2
      generic map(INIT => x"1")

      port map(A => period_cnt(3), B => period_cnt(4), Y => 
        \N_257\);
    
    \PWM_int_RNO_5[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_27_f0_17_i_0_a3_0_20, B => 
        PWM_int_27_f0_17_i_0_a3_0_19, C => 
        PWM_int_27_f0_17_i_0_a3_0_18, D => 
        PWM_int_27_f0_17_i_0_a3_0_17, Y => 
        PWM_int_27_f0_17_i_0_a3_0_29);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_14_o2_10\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(26), B => period_cnt(19), C => 
        period_cnt(17), D => period_cnt(16), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_14_o2_10);
    
    \PWM_int[1]\ : SLE
      port map(D => N_354_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_3_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_1_c\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(90), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(89), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(62), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(61), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_10[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(62), B => pwm_negedge_reg(61), 
        C => pwm_negedge_reg(50), D => pwm_negedge_reg(49), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_23);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(10), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(9), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_7\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(14), B => period_cnt(7), C => 
        period_cnt(6), D => period_cnt(5), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_7);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(58), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(57), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[12]\);
    
    \PWM_int_RNO_6[3]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(96), B => pwm_negedge_reg(75), 
        C => PWM_int_27_f0_17_i_0_a3_0_23, D => 
        PWM_int_27_f0_17_i_0_a3_0_16, Y => 
        PWM_int_27_f0_17_i_0_a3_0_28);
    
    \PWM_int_RNO_0[4]\ : CFG3
      generic map(INIT => x"8A")

      port map(A => \pwm_out_4_c\, B => un14_pwm_enable_reg_NE, C
         => N_154, Y => N_670);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(44), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(43), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(2), B => period_cnt(0), C => 
        period_cnt(1), D => pwm_negedge_reg(1), FCI => VCC_net_1, 
        S => OPEN, Y => OPEN, FCO => 
        \un31_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(72), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(71), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[3]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(128), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(127), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un145_pwm_enable_reg);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(84), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(83), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[9]\);
    
    \PWM_int_RNO_2[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_27_f0_17_i_0_a3_0_22, B => 
        PWM_int_27_f0_17_i_0_a3_0_21, C => 
        PWM_int_27_f0_17_i_0_a3_0_29, D => 
        PWM_int_27_f0_17_i_0_a3_0_28, Y => N_669);
    
    \PWM_int_RNO_11[2]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(37), B => \pwm_out_2_c\, C
         => pwm_negedge_reg(48), Y => 
        PWM_int_17_f0_27_i_i_i_a2_0_16);
    
    \PWM_int_RNO_7[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(28), B => pwm_negedge_reg(27), 
        C => pwm_negedge_reg(22), D => pwm_negedge_reg(1), Y => 
        PWM_int_7_f0_37_i_0_a2_0_20);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(92), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(91), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[13]\);
    
    \PWM_int_RNO_3[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(29), B => pwm_negedge_reg(26), 
        C => pwm_negedge_reg(23), D => pwm_negedge_reg(11), Y => 
        PWM_int_7_f0_37_i_0_a2_0_22);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(50), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(49), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[8]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_6\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(15), B => period_cnt(2), C => 
        period_cnt(1), D => period_cnt(0), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_0_o2_0_o3_6);
    
    \PWM_int_RNO_2[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(122), B => 
        pwm_negedge_reg(121), C => pwm_negedge_reg(119), D => 
        pwm_negedge_reg(117), Y => PWM_int_37_f0_7_i_0_a3_0_22);
    
    \PWM_int_RNO_7[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(123), B => 
        pwm_negedge_reg(106), C => pwm_negedge_reg(105), D => 
        pwm_negedge_reg(101), Y => PWM_int_37_f0_7_i_0_a3_0_19);
    
    \un1_pwm_enable_reg_2_0_i[0]\ : CFG4
      generic map(INIT => x"B3F3")

      port map(A => un69_pwm_enable_reg, B => pwm_enable_reg(2), 
        C => N_154, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_2_0_i[0]_net_1\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(78), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(77), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(46), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(45), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_11[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(30), B => pwm_negedge_reg(21), 
        C => pwm_negedge_reg(18), D => pwm_negedge_reg(17), Y => 
        PWM_int_7_f0_37_i_0_a2_0_23);
    
    \PWM_int_RNO_3[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(127), B => 
        pwm_negedge_reg(126), C => pwm_negedge_reg(125), D => 
        pwm_negedge_reg(109), Y => PWM_int_37_f0_7_i_0_a3_0_21);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity reg_if is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13);
          PRDATA_0_a2_13_0                            : in    std_logic_vector(0 to 0);
          PRDATA_0_a2_5_1                             : in    std_logic_vector(0 to 0);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          sync_update                                 : out   std_logic;
          N_654                                       : out   std_logic;
          N_344                                       : out   std_logic;
          un97_psel_4                                 : out   std_logic;
          N_297                                       : out   std_logic;
          un59_psel_4                                 : out   std_logic;
          N_522                                       : out   std_logic;
          N_530                                       : in    std_logic;
          psh_enable_reg1_1_sqmuxa_0_a2_0_0           : out   std_logic;
          N_535                                       : in    std_logic;
          N_653                                       : in    std_logic;
          psh_negedge_reg_1_sqmuxa_0_a2_0_out         : out   std_logic;
          un59_psel                                   : out   std_logic;
          PRDATA_0_a2_10_out                          : in    std_logic;
          N_515                                       : in    std_logic;
          N_662                                       : out   std_logic;
          N_527                                       : out   std_logic;
          N_518                                       : in    std_logic;
          PRDATA_0_a2_3_out                           : in    std_logic
        );

end reg_if;

architecture DEF_ARCH of reg_if is 

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

    signal VCC_net_1, psh_negedge_reg_1_sqmuxa, GND_net_1, 
        psh_negedge_reg_1_sqmuxa_1, psh_negedge_reg_1_sqmuxa_2, 
        psh_negedge_reg_1_sqmuxa_3, sync_update_0_sqmuxa, 
        psh_enable_reg1_1_sqmuxa, \un97_psel_4\, \N_297\, 
        \un59_psel_4\, psh_enable_reg1_1_sqmuxa_0_a2_0_0_net_1, 
        sync_update_0_sqmuxa_0_a2_0, 
        \psh_negedge_reg_1_sqmuxa_0_a2_0_out\ : std_logic;

begin 

    un97_psel_4 <= \un97_psel_4\;
    N_297 <= \N_297\;
    un59_psel_4 <= \un59_psel_4\;
    psh_enable_reg1_1_sqmuxa_0_a2_0_0 <= 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0_net_1;
    psh_negedge_reg_1_sqmuxa_0_a2_0_out <= 
        \psh_negedge_reg_1_sqmuxa_0_a2_0_out\;

    \psh_negedge_reg[110]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(110));
    
    \psh_negedge_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(4));
    
    \psh_negedge_reg[99]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(99));
    
    \psh_negedge_reg[124]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(124));
    
    \psh_negedge_reg[126]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(126));
    
    \psh_negedge_reg[95]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(95));
    
    \psh_negedge_reg[123]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(123));
    
    \psh_negedge_reg[79]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(79));
    
    \psh_negedge_reg[66]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(66));
    
    \psh_negedge_reg[39]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(39));
    
    \psh_negedge_reg[82]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(82));
    
    \psh_negedge_reg[80]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(80));
    
    \psh_negedge_reg[48]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(48));
    
    \psh_negedge_reg[8]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(8));
    
    \psh_negedge_reg[29]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(29));
    
    \psh_negedge_reg[111]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(111));
    
    \psh_negedge_reg[75]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(75));
    
    \psh_negedge_reg[61]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(61));
    
    \psh_negedge_reg[35]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(35));
    
    \psh_negedge_reg[19]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(19));
    
    \psh_enable_reg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_enable_reg1_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_enable_reg(4));
    
    \G1.2.un59_psel_4_0_a3\ : CFG4
      generic map(INIT => x"0800")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un59_psel_4\);
    
    \psh_negedge_reg[25]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(25));
    
    \psh_negedge_reg[120]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(120));
    
    \psh_negedge_reg[15]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(15));
    
    \psh_negedge_reg[119]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(119));
    
    \psh_negedge_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(3));
    
    \G1.2.un59_psel_0_a2\ : CFG4
      generic map(INIT => x"0002")

      port map(A => PRDATA_0_a2_13_0(0), B => N_653, C => 
        CoreAPB3_0_APBmslave0_PADDR(7), D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => un59_psel);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \psh_negedge_reg[96]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(96));
    
    \psh_negedge_reg[121]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(121));
    
    \psh_negedge_reg[108]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(108));
    
    \psh_negedge_reg[52]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(52));
    
    \psh_negedge_reg[50]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(50));
    
    PRDATA_generated_sn_N_7_mux_i_i_o2 : CFG2
      generic map(INIT => x"E")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => N_344);
    
    \psh_negedge_reg[63]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(63));
    
    \psh_negedge_reg[91]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(91));
    
    \psh_negedge_reg[89]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(89));
    
    \psh_negedge_reg[76]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(76));
    
    \psh_negedge_reg[85]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(85));
    
    \psh_negedge_reg[36]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(36));
    
    psh_enable_reg1_1_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => PRDATA_0_a2_10_out, B => N_535, C => N_515, D
         => psh_enable_reg1_1_sqmuxa_0_a2_0_0_net_1, Y => 
        psh_enable_reg1_1_sqmuxa);
    
    \psh_negedge_reg[67]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(67));
    
    \psh_negedge_reg[26]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(26));
    
    \psh_negedge_reg[71]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(71));
    
    \psh_negedge_reg[31]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(31));
    
    \psh_negedge_reg[105]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(105));
    
    \psh_negedge_reg[16]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(16));
    
    \psh_negedge_reg[21]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(21));
    
    \psh_negedge_reg[64]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(64));
    
    \psh_enable_reg1_1_sqmuxa_0_a2_0_0\ : CFG4
      generic map(INIT => x"0400")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_530, C
         => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0_net_1);
    
    \psh_negedge_reg[112]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(112));
    
    \psh_negedge_reg[107]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(107));
    
    \psh_negedge_reg[42]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(42));
    
    \psh_negedge_reg[40]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(40));
    
    \psh_negedge_reg[11]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(11));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    psh_negedge_reg_1_sqmuxa_3_0_a2_0 : CFG3
      generic map(INIT => x"02")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => N_522);
    
    \psh_negedge_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(2));
    
    \psh_negedge_reg[93]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(93));
    
    \psh_negedge_reg[59]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(59));
    
    psh_negedge_reg_1_sqmuxa_2_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        \un59_psel_4\, C => N_535, D => N_518, Y => 
        psh_negedge_reg_1_sqmuxa_2);
    
    \psh_negedge_reg[104]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(104));
    
    \psh_negedge_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(5));
    
    \psh_negedge_reg[106]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(106));
    
    psh_enable_reg1_1_sqmuxa_0_a2_0 : CFG3
      generic map(INIT => x"80")

      port map(A => PRDATA_0_a2_10_out, B => N_515, C => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0_net_1, Y => N_662);
    
    \psh_negedge_reg[68]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(68));
    
    \psh_negedge_reg[55]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(55));
    
    \psh_negedge_reg[103]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(103));
    
    \psh_negedge_reg[97]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(97));
    
    \sync_update\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => sync_update_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => sync_update);
    
    \psh_negedge_reg[73]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(73));
    
    \psh_negedge_reg[86]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(86));
    
    \psh_negedge_reg[33]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(33));
    
    \psh_negedge_reg[122]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(122));
    
    \psh_negedge_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(7));
    
    \psh_negedge_reg[23]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(23));
    
    \G1.4.un97_psel_4_0_a3\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un97_psel_4\);
    
    \psh_negedge_reg[94]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(94));
    
    \psh_negedge_reg[81]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(81));
    
    \psh_negedge_reg[77]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(77));
    
    \psh_negedge_reg[13]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(13));
    
    \psh_negedge_reg[100]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(100));
    
    \psh_negedge_reg[37]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(37));
    
    psh_negedge_reg_1_sqmuxa_0_a2_0_s : CFG4
      generic map(INIT => x"0200")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_653, C
         => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \psh_negedge_reg_1_sqmuxa_0_a2_0_out\);
    
    \psh_negedge_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(1));
    
    \psh_negedge_reg[49]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(49));
    
    \psh_negedge_reg[27]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(27));
    
    \psh_negedge_reg[74]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(74));
    
    \psh_negedge_reg[17]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(17));
    
    psh_negedge_reg_1_sqmuxa_0_a2_0 : CFG4
      generic map(INIT => x"8000")

      port map(A => \un97_psel_4\, B => N_515, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        PRDATA_0_a2_10_out, Y => N_527);
    
    \psh_negedge_reg[34]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(34));
    
    \psh_negedge_reg[45]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(45));
    
    \psh_negedge_reg[24]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(24));
    
    \psh_negedge_reg[98]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(98));
    
    \psh_negedge_reg[14]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(14));
    
    \psh_negedge_reg[101]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(101));
    
    \psh_negedge_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(6));
    
    \psh_negedge_reg[56]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(56));
    
    sync_update_0_sqmuxa_0_a2_0_0 : CFG4
      generic map(INIT => x"8000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(7), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        CoreAPB3_0_APBmslave0_PADDR(6), D => N_535, Y => 
        sync_update_0_sqmuxa_0_a2_0);
    
    \psh_negedge_reg[78]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(78));
    
    \psh_negedge_reg[83]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(83));
    
    \psh_negedge_reg[51]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(51));
    
    \psh_negedge_reg[38]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(38));
    
    \psh_negedge_reg[109]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(109));
    
    psh_negedge_reg_1_sqmuxa_1_0_a2 : CFG4
      generic map(INIT => x"0080")

      port map(A => N_535, B => N_518, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        \N_297\, Y => psh_negedge_reg_1_sqmuxa_1);
    
    \psh_negedge_reg[28]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(28));
    
    \psh_negedge_reg[18]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(18));
    
    \psh_negedge_reg[87]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(87));
    
    \psh_enable_reg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_enable_reg1_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_enable_reg(1));
    
    \psh_negedge_reg[62]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(62));
    
    \psh_negedge_reg[60]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(60));
    
    \psh_enable_reg1[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_enable_reg1_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_enable_reg(3));
    
    \psh_enable_reg1[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_enable_reg1_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_enable_reg(2));
    
    \psh_negedge_reg[84]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(84));
    
    \psh_negedge_reg[46]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(46));
    
    \psh_negedge_reg[118]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(118));
    
    \psh_negedge_reg[41]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(41));
    
    \psh_negedge_reg[9]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(9));
    
    \psh_negedge_reg[53]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(53));
    
    psh_negedge_reg_1_sqmuxa_3_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => N_535, B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_518, D => PRDATA_0_a2_3_out, Y => 
        psh_negedge_reg_1_sqmuxa_3);
    
    \psh_negedge_reg[88]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(88));
    
    \psh_negedge_reg[57]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(57));
    
    \psh_negedge_reg[115]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(115));
    
    \psh_negedge_reg[102]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(102));
    
    PRDATA_generated_sn_m3_0_o2 : CFG4
      generic map(INIT => x"FFDF")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \N_297\);
    
    \psh_negedge_reg[92]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(92));
    
    \psh_negedge_reg[90]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(90));
    
    \psh_negedge_reg[117]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(117));
    
    \psh_negedge_reg[128]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(128));
    
    \psh_negedge_reg[69]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(69));
    
    \psh_negedge_reg[54]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(54));
    
    \psh_negedge_reg[65]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(65));
    
    \psh_negedge_reg[72]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(72));
    
    \psh_negedge_reg[70]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(70));
    
    \psh_negedge_reg[43]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(43));
    
    \psh_negedge_reg[32]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(32));
    
    \psh_negedge_reg[30]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(30));
    
    psh_negedge_reg_1_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => PRDATA_0_a2_10_out, B => N_535, C => N_515, D
         => \psh_negedge_reg_1_sqmuxa_0_a2_0_out\, Y => 
        psh_negedge_reg_1_sqmuxa);
    
    \psh_negedge_reg[114]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(114));
    
    \psh_negedge_reg[116]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(116));
    
    \psh_negedge_reg[22]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(22));
    
    \psh_negedge_reg[20]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(20));
    
    PRDATA_generated_sn_N_7_mux_i_i_o2_1_i_a3 : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_654);
    
    \psh_negedge_reg[113]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(113));
    
    \psh_negedge_reg[12]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(12));
    
    \psh_negedge_reg[10]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(10));
    
    \psh_negedge_reg[47]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(47));
    
    \psh_negedge_reg[125]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(125));
    
    sync_update_0_sqmuxa_0_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => sync_update_0_sqmuxa_0_a2_0, B => 
        PRDATA_0_a2_5_1(0), Y => sync_update_0_sqmuxa);
    
    \psh_negedge_reg[58]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(58));
    
    \psh_negedge_reg[127]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(127));
    
    \psh_negedge_reg[44]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(44));
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity timebase is

    port( period_cnt  : out   std_logic_vector(31 downto 0);
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          N_154       : out   std_logic;
          N_257       : in    std_logic;
          N_150       : in    std_logic
        );

end timebase;

architecture DEF_ARCH of timebase is 

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \period_cnt[0]\, VCC_net_1, \period_cnt_int_lm[0]\, 
        N_143_i_0, GND_net_1, \period_cnt[1]\, 
        \period_cnt_int_lm[1]\, \period_cnt[2]\, 
        \period_cnt_int_lm[2]\, \period_cnt[3]\, 
        \period_cnt_int_lm[3]\, \period_cnt[4]\, 
        \period_cnt_int_lm[4]\, \period_cnt[5]\, 
        \period_cnt_int_lm[5]\, \period_cnt[6]\, 
        \period_cnt_int_lm[6]\, \period_cnt[7]\, 
        \period_cnt_int_lm[7]\, \period_cnt[8]\, 
        \period_cnt_int_lm[8]\, \period_cnt[9]\, 
        \period_cnt_int_lm[9]\, \period_cnt[10]\, 
        \period_cnt_int_lm[10]\, \period_cnt[11]\, 
        \period_cnt_int_lm[11]\, \period_cnt[12]\, 
        \period_cnt_int_lm[12]\, \period_cnt[13]\, 
        \period_cnt_int_lm[13]\, \period_cnt[14]\, 
        \period_cnt_int_lm[14]\, \period_cnt[15]\, 
        \period_cnt_int_lm[15]\, \period_cnt[16]\, 
        \period_cnt_int_lm[16]\, \period_cnt[17]\, 
        \period_cnt_int_lm[17]\, \period_cnt[18]\, 
        \period_cnt_int_lm[18]\, \period_cnt[19]\, 
        \period_cnt_int_lm[19]\, \period_cnt[20]\, 
        \period_cnt_int_lm[20]\, \period_cnt[21]\, 
        \period_cnt_int_lm[21]\, \period_cnt[22]\, 
        \period_cnt_int_lm[22]\, \period_cnt[23]\, 
        \period_cnt_int_lm[23]\, \period_cnt[24]\, 
        \period_cnt_int_lm[24]\, \period_cnt[25]\, 
        \period_cnt_int_lm[25]\, \period_cnt[26]\, 
        \period_cnt_int_lm[26]\, \period_cnt[27]\, 
        \period_cnt_int_lm[27]\, \period_cnt[28]\, 
        \period_cnt_int_lm[28]\, \period_cnt[29]\, 
        \period_cnt_int_lm[29]\, \period_cnt[30]\, 
        \period_cnt_int_lm[30]\, \period_cnt[31]\, 
        \period_cnt_int_lm[31]\, \prescale_cnt[0]_net_1\, 
        \prescale_cnt_lm[0]\, \prescale_cnt[1]_net_1\, 
        \prescale_cnt_lm[1]\, \prescale_cnt[2]_net_1\, 
        \prescale_cnt_lm[2]\, \prescale_cnt[3]_net_1\, 
        \prescale_cnt_lm[3]\, \prescale_cnt[4]_net_1\, 
        \prescale_cnt_lm[4]\, \prescale_cnt[5]_net_1\, 
        \prescale_cnt_lm[5]\, \prescale_cnt[6]_net_1\, 
        \prescale_cnt_lm[6]\, \prescale_cnt[7]_net_1\, 
        \prescale_cnt_lm[7]\, \prescale_cnt[8]_net_1\, 
        \prescale_cnt_lm[8]\, \prescale_cnt[9]_net_1\, 
        \prescale_cnt_lm[9]\, \prescale_cnt[10]_net_1\, 
        \prescale_cnt_lm[10]\, \prescale_cnt[11]_net_1\, 
        \prescale_cnt_lm[11]\, \prescale_cnt[12]_net_1\, 
        \prescale_cnt_lm[12]\, \prescale_cnt[13]_net_1\, 
        \prescale_cnt_lm[13]\, \prescale_cnt[14]_net_1\, 
        \prescale_cnt_lm[14]\, \prescale_cnt[15]_net_1\, 
        \prescale_cnt_lm[15]\, \prescale_cnt[16]_net_1\, 
        \prescale_cnt_lm[16]\, \prescale_cnt[17]_net_1\, 
        \prescale_cnt_lm[17]\, \prescale_cnt[18]_net_1\, 
        \prescale_cnt_lm[18]\, \prescale_cnt[19]_net_1\, 
        \prescale_cnt_lm[19]\, \prescale_cnt[20]_net_1\, 
        \prescale_cnt_lm[20]\, \prescale_cnt[21]_net_1\, 
        \prescale_cnt_lm[21]\, \prescale_cnt[22]_net_1\, 
        \prescale_cnt_lm[22]\, \prescale_cnt[23]_net_1\, 
        \prescale_cnt_lm[23]\, \prescale_cnt[24]_net_1\, 
        \prescale_cnt_lm[24]\, \prescale_cnt[25]_net_1\, 
        \prescale_cnt_lm[25]\, \prescale_cnt[26]_net_1\, 
        \prescale_cnt_lm[26]\, \prescale_cnt[27]_net_1\, 
        \prescale_cnt_lm[27]\, \prescale_cnt[28]_net_1\, 
        \prescale_cnt_lm[28]\, \prescale_cnt[29]_net_1\, 
        \prescale_cnt_lm[29]\, \prescale_cnt[30]_net_1\, 
        \prescale_cnt_lm[30]\, \prescale_cnt[31]_net_1\, 
        \prescale_cnt_lm[31]\, \prescale_cnt_cry_1_0_FCO[30]\, 
        \prescale_cnt_cry_3_0_FCO[30]\, 
        \prescale_cnt_cry_5_0_FCO[30]\, 
        \prescale_cnt_cry_7_0_FCO[30]\, 
        \prescale_cnt_cry_9_FCO[30]\, 
        \prescale_cnt_cry_11_FCO[30]\, 
        \prescale_cnt_cry[25]_net_1\, \prescale_cnt_s[25]\, 
        \prescale_cnt_cry[26]_net_1\, \prescale_cnt_s[26]\, 
        \prescale_cnt_cry[27]_net_1\, \prescale_cnt_s[27]\, 
        \prescale_cnt_cry[28]_net_1\, \prescale_cnt_s[28]\, 
        \prescale_cnt_cry[29]_net_1\, \prescale_cnt_s[29]\, 
        \prescale_cnt_s[31]_net_1\, \prescale_cnt_cry[30]_net_1\, 
        \prescale_cnt_s[30]\, \period_cnt_int_cry_1_0_FCO[30]\, 
        \period_cnt_int_cry_3_0_FCO[30]\, 
        \period_cnt_int_cry_5_0_FCO[30]\, 
        \period_cnt_int_cry_7_0_FCO[30]\, 
        \period_cnt_int_cry_9_FCO[30]\, 
        \period_cnt_int_cry_11_FCO[30]\, 
        \period_cnt_int_cry[25]_net_1\, \period_cnt_int_s[25]\, 
        \period_cnt_int_cry[26]_net_1\, \period_cnt_int_s[26]\, 
        \period_cnt_int_cry[27]_net_1\, \period_cnt_int_s[27]\, 
        \period_cnt_int_cry[28]_net_1\, \period_cnt_int_s[28]\, 
        \period_cnt_int_cry[29]_net_1\, \period_cnt_int_s[29]\, 
        \period_cnt_int_s[31]_net_1\, 
        \period_cnt_int_cry[30]_net_1\, \period_cnt_int_s[30]\, 
        \period_cnt_int_cry_1_FCO[15]\, 
        \period_cnt_int_cry_3_FCO[15]\, 
        \period_cnt_int_cry[9]_net_1\, \period_cnt_int_s[9]\, 
        \period_cnt_int_cry[10]_net_1\, \period_cnt_int_s[10]\, 
        \period_cnt_int_cry[11]_net_1\, \period_cnt_int_s[11]\, 
        \period_cnt_int_cry[12]_net_1\, \period_cnt_int_s[12]\, 
        \period_cnt_int_cry[13]_net_1\, \period_cnt_int_s[13]\, 
        \period_cnt_int_cry[14]_net_1\, \period_cnt_int_s[14]\, 
        \period_cnt_int_s[16]_net_1\, 
        \period_cnt_int_cry[15]_net_1\, \period_cnt_int_s[15]\, 
        \prescale_cnt_cry_1_FCO[15]\, 
        \prescale_cnt_cry_3_FCO[15]\, \prescale_cnt_cry[9]_net_1\, 
        \prescale_cnt_s[9]\, \prescale_cnt_cry[10]_net_1\, 
        \prescale_cnt_s[10]\, \prescale_cnt_cry[11]_net_1\, 
        \prescale_cnt_s[11]\, \prescale_cnt_cry[12]_net_1\, 
        \prescale_cnt_s[12]\, \prescale_cnt_cry[13]_net_1\, 
        \prescale_cnt_s[13]\, \prescale_cnt_cry[14]_net_1\, 
        \prescale_cnt_s[14]\, \prescale_cnt_s[16]_net_1\, 
        \prescale_cnt_cry[15]_net_1\, \prescale_cnt_s[15]\, 
        \prescale_cnt_cry_1_FCO[30]\, 
        \prescale_cnt_cry_3_FCO[30]\, 
        \prescale_cnt_cry_5_FCO[30]\, 
        \prescale_cnt_cry_7_FCO[30]\, 
        \prescale_cnt_cry[17]_net_1\, \prescale_cnt_s[17]\, 
        \prescale_cnt_cry[18]_net_1\, \prescale_cnt_s[18]\, 
        \prescale_cnt_cry[19]_net_1\, \prescale_cnt_s[19]\, 
        \prescale_cnt_cry[20]_net_1\, \prescale_cnt_s[20]\, 
        \prescale_cnt_cry[21]_net_1\, \prescale_cnt_s[21]\, 
        \prescale_cnt_cry[22]_net_1\, \prescale_cnt_s[22]\, 
        \prescale_cnt_s[24]_net_1\, \prescale_cnt_cry[23]_net_1\, 
        \prescale_cnt_s[23]\, \period_cnt_int_cry_1_FCO[30]\, 
        \period_cnt_int_cry_3_FCO[30]\, 
        \period_cnt_int_cry_5_FCO[30]\, 
        \period_cnt_int_cry_7_FCO[30]\, 
        \period_cnt_int_cry[17]_net_1\, \period_cnt_int_s[17]\, 
        \period_cnt_int_cry[18]_net_1\, \period_cnt_int_s[18]\, 
        \period_cnt_int_cry[19]_net_1\, \period_cnt_int_s[19]\, 
        \period_cnt_int_cry[20]_net_1\, \period_cnt_int_s[20]\, 
        \period_cnt_int_cry[21]_net_1\, \period_cnt_int_s[21]\, 
        \period_cnt_int_cry[22]_net_1\, \period_cnt_int_s[22]\, 
        \period_cnt_int_s[24]_net_1\, 
        \period_cnt_int_cry[23]_net_1\, \period_cnt_int_s[23]\, 
        prescale_cnt_s_106_FCO, \prescale_cnt_cry[1]_net_1\, 
        \prescale_cnt_s[1]\, \prescale_cnt_cry[2]_net_1\, 
        \prescale_cnt_s[2]\, \prescale_cnt_cry[3]_net_1\, 
        \prescale_cnt_s[3]\, \prescale_cnt_cry[4]_net_1\, 
        \prescale_cnt_s[4]\, \prescale_cnt_cry[5]_net_1\, 
        \prescale_cnt_s[5]\, \prescale_cnt_cry[6]_net_1\, 
        \prescale_cnt_s[6]\, \prescale_cnt_s[8]_net_1\, 
        \prescale_cnt_cry[7]_net_1\, \prescale_cnt_s[7]\, 
        period_cnt_int_s_107_FCO, \period_cnt_int_cry[1]_net_1\, 
        \period_cnt_int_s[1]\, \period_cnt_int_cry[2]_net_1\, 
        \period_cnt_int_s[2]\, \period_cnt_int_cry[3]_net_1\, 
        \period_cnt_int_s[3]\, \period_cnt_int_cry[4]_net_1\, 
        \period_cnt_int_s[4]\, \period_cnt_int_cry[5]_net_1\, 
        \period_cnt_int_s[5]\, \period_cnt_int_cry[6]_net_1\, 
        \period_cnt_int_s[6]\, \period_cnt_int_s[8]_net_1\, 
        \period_cnt_int_cry[7]_net_1\, \period_cnt_int_s[7]\, 
        \N_154\, \period_cnt_int7_i_0_a3_1\, N_724_5, 
        period_cnt_intlde_i_o2_22, period_cnt_intlde_i_o2_21, 
        period_cnt_intlde_i_o2_20, period_cnt_intlde_i_o2_19, 
        period_cnt_intlde_i_o2_18, period_cnt_intlde_i_o2_17, 
        period_cnt_intlde_i_o2_16, \period_cnt_int7_i_0_o3_2\, 
        period_cnt_intlde_i_o2_23, N_155, 
        period_cnt_intlde_i_o2_28, N_804 : std_logic;

begin 

    period_cnt(31) <= \period_cnt[31]\;
    period_cnt(30) <= \period_cnt[30]\;
    period_cnt(29) <= \period_cnt[29]\;
    period_cnt(28) <= \period_cnt[28]\;
    period_cnt(27) <= \period_cnt[27]\;
    period_cnt(26) <= \period_cnt[26]\;
    period_cnt(25) <= \period_cnt[25]\;
    period_cnt(24) <= \period_cnt[24]\;
    period_cnt(23) <= \period_cnt[23]\;
    period_cnt(22) <= \period_cnt[22]\;
    period_cnt(21) <= \period_cnt[21]\;
    period_cnt(20) <= \period_cnt[20]\;
    period_cnt(19) <= \period_cnt[19]\;
    period_cnt(18) <= \period_cnt[18]\;
    period_cnt(17) <= \period_cnt[17]\;
    period_cnt(16) <= \period_cnt[16]\;
    period_cnt(15) <= \period_cnt[15]\;
    period_cnt(14) <= \period_cnt[14]\;
    period_cnt(13) <= \period_cnt[13]\;
    period_cnt(12) <= \period_cnt[12]\;
    period_cnt(11) <= \period_cnt[11]\;
    period_cnt(10) <= \period_cnt[10]\;
    period_cnt(9) <= \period_cnt[9]\;
    period_cnt(8) <= \period_cnt[8]\;
    period_cnt(7) <= \period_cnt[7]\;
    period_cnt(6) <= \period_cnt[6]\;
    period_cnt(5) <= \period_cnt[5]\;
    period_cnt(4) <= \period_cnt[4]\;
    period_cnt(3) <= \period_cnt[3]\;
    period_cnt(2) <= \period_cnt[2]\;
    period_cnt(1) <= \period_cnt[1]\;
    period_cnt(0) <= \period_cnt[0]\;
    N_154 <= \N_154\;

    \period_cnt_int_lm_0[5]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[5]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[5]\);
    
    \period_cnt_int[2]\ : SLE
      port map(D => \period_cnt_int_lm[2]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[2]\);
    
    \prescale_cnt_cry_1_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => 
        \prescale_cnt[0]_net_1\, S => OPEN, Y => OPEN, FCO => 
        \prescale_cnt_cry_1_0_FCO[30]\);
    
    \prescale_cnt[27]\ : SLE
      port map(D => \prescale_cnt_lm[27]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[27]_net_1\);
    
    \period_cnt_int[20]\ : SLE
      port map(D => \period_cnt_int_lm[20]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[20]\);
    
    \prescale_cnt_lm_0[18]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[18]\, Y => 
        \prescale_cnt_lm[18]\);
    
    \period_cnt_int_lm_0[14]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[14]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[14]\);
    
    \prescale_cnt_lm_0[27]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[27]\, Y => 
        \prescale_cnt_lm[27]\);
    
    \prescale_cnt_RNIJJ021[30]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[30]_net_1\, B => 
        \prescale_cnt[4]_net_1\, C => \prescale_cnt[3]_net_1\, D
         => \prescale_cnt[1]_net_1\, Y => 
        period_cnt_intlde_i_o2_16);
    
    \prescale_cnt_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[27]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[26]_net_1\, S => \prescale_cnt_s[27]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[27]_net_1\);
    
    prescale_cnt_s_106 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[0]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => 
        OPEN, Y => OPEN, FCO => prescale_cnt_s_106_FCO);
    
    \prescale_cnt_lm_0[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[3]\, Y => 
        \prescale_cnt_lm[3]\);
    
    \period_cnt_int_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[13]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[12]_net_1\, S => 
        \period_cnt_int_s[13]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[13]_net_1\);
    
    \prescale_cnt_lm_0[14]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[14]\, Y => 
        \prescale_cnt_lm[14]\);
    
    \period_cnt_int_cry_3_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[8]\, B => \period_cnt[5]\, C => 
        \period_cnt[6]\, D => \period_cnt[7]\, FCI => 
        \period_cnt_int_cry_1_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_3_0_FCO[30]\);
    
    \period_cnt_int_cry[17]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[17]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry_7_FCO[30]\, S => 
        \period_cnt_int_s[17]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[17]_net_1\);
    
    \prescale_cnt_cry[11]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[11]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[10]_net_1\, S => \prescale_cnt_s[11]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[11]_net_1\);
    
    \prescale_cnt_RNII7U11[25]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[27]_net_1\, B => 
        \prescale_cnt[25]_net_1\, C => \prescale_cnt[24]_net_1\, 
        D => \prescale_cnt[22]_net_1\, Y => 
        period_cnt_intlde_i_o2_22);
    
    \prescale_cnt[30]\ : SLE
      port map(D => \prescale_cnt_lm[30]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[30]_net_1\);
    
    \period_cnt_int_cry[14]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[14]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[13]_net_1\, S => 
        \period_cnt_int_s[14]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[14]_net_1\);
    
    \prescale_cnt_lm_0[23]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[23]\, Y => 
        \prescale_cnt_lm[23]\);
    
    \prescale_cnt[0]\ : SLE
      port map(D => \prescale_cnt_lm[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[0]_net_1\);
    
    \period_cnt_int_s[24]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[24]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[23]_net_1\, S => 
        \period_cnt_int_s[24]_net_1\, Y => OPEN, FCO => OPEN);
    
    \period_cnt_int_s[8]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[8]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[7]_net_1\, S => 
        \period_cnt_int_s[8]_net_1\, Y => OPEN, FCO => OPEN);
    
    period_cnt_int7_i_0_a3_5 : CFG4
      generic map(INIT => x"0001")

      port map(A => \period_cnt[12]\, B => \period_cnt[11]\, C
         => \period_cnt[10]\, D => N_150, Y => N_724_5);
    
    \prescale_cnt_cry[12]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[12]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[11]_net_1\, S => \prescale_cnt_s[12]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[12]_net_1\);
    
    \period_cnt_int_cry[10]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[10]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[9]_net_1\, S => 
        \period_cnt_int_s[10]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[10]_net_1\);
    
    \period_cnt_int[28]\ : SLE
      port map(D => \period_cnt_int_lm[28]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[28]\);
    
    \period_cnt_int[10]\ : SLE
      port map(D => \period_cnt_int_lm[10]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[10]\);
    
    \period_cnt_int_lm_0[28]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[28]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[28]\);
    
    \period_cnt_int_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[7]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[6]_net_1\, S => \period_cnt_int_s[7]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[7]_net_1\);
    
    \period_cnt_int_lm_0[16]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[16]_net_1\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[16]\);
    
    \prescale_cnt_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[4]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[3]_net_1\, S => \prescale_cnt_s[4]\, Y
         => OPEN, FCO => \prescale_cnt_cry[4]_net_1\);
    
    \period_cnt_int[0]\ : SLE
      port map(D => \period_cnt_int_lm[0]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[0]\);
    
    \prescale_cnt_cry[14]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[14]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[13]_net_1\, S => \prescale_cnt_s[14]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[14]_net_1\);
    
    \prescale_cnt[22]\ : SLE
      port map(D => \prescale_cnt_lm[22]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[22]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \prescale_cnt[11]\ : SLE
      port map(D => \prescale_cnt_lm[11]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[11]_net_1\);
    
    \prescale_cnt[3]\ : SLE
      port map(D => \prescale_cnt_lm[3]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[3]_net_1\);
    
    \prescale_cnt_cry_7[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[16]_net_1\, B => 
        \prescale_cnt[13]_net_1\, C => \prescale_cnt[14]_net_1\, 
        D => \prescale_cnt[15]_net_1\, FCI => 
        \prescale_cnt_cry_5_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_7_FCO[30]\);
    
    \prescale_cnt_cry[19]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[19]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[18]_net_1\, S => \prescale_cnt_s[19]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[19]_net_1\);
    
    \period_cnt_int[18]\ : SLE
      port map(D => \period_cnt_int_lm[18]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[18]\);
    
    \period_cnt_int_lm_0[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[4]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[4]\);
    
    \period_cnt_int_cry_11[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[24]\, B => \period_cnt[21]\, C
         => \period_cnt[22]\, D => \period_cnt[23]\, FCI => 
        \period_cnt_int_cry_9_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_11_FCO[30]\);
    
    \prescale_cnt_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[13]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[12]_net_1\, S => \prescale_cnt_s[13]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[13]_net_1\);
    
    \prescale_cnt[28]\ : SLE
      port map(D => \prescale_cnt_lm[28]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[28]_net_1\);
    
    \period_cnt_int[23]\ : SLE
      port map(D => \period_cnt_int_lm[23]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[23]\);
    
    \period_cnt_int_lm_0[7]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[7]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[7]\);
    
    \period_cnt_int_lm_0[9]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[9]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[9]\);
    
    \prescale_cnt_cry_11[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[24]_net_1\, B => 
        \prescale_cnt[21]_net_1\, C => \prescale_cnt[22]_net_1\, 
        D => \prescale_cnt[23]_net_1\, FCI => 
        \prescale_cnt_cry_9_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_11_FCO[30]\);
    
    \period_cnt_int_cry[9]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[9]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry_3_FCO[15]\, S => 
        \period_cnt_int_s[9]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[9]_net_1\);
    
    \prescale_cnt_s[8]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[8]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[7]_net_1\, S => 
        \prescale_cnt_s[8]_net_1\, Y => OPEN, FCO => OPEN);
    
    \prescale_cnt[26]\ : SLE
      port map(D => \prescale_cnt_lm[26]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[26]_net_1\);
    
    \period_cnt_int_lm_0[29]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[29]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[29]\);
    
    \period_cnt_int_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[6]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[5]_net_1\, S => \period_cnt_int_s[6]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[6]_net_1\);
    
    \period_cnt_int[25]\ : SLE
      port map(D => \period_cnt_int_lm[25]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[25]\);
    
    \prescale_cnt_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[6]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[5]_net_1\, S => \prescale_cnt_s[6]\, Y
         => OPEN, FCO => \prescale_cnt_cry[6]_net_1\);
    
    \period_cnt_int_lm_0[8]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[8]_net_1\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[8]\);
    
    \prescale_cnt_lm_0[28]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[28]\, Y => 
        \prescale_cnt_lm[28]\);
    
    \prescale_cnt_s[16]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[16]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[15]_net_1\, S => 
        \prescale_cnt_s[16]_net_1\, Y => OPEN, FCO => OPEN);
    
    \prescale_cnt_s[24]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[24]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[23]_net_1\, S => 
        \prescale_cnt_s[24]_net_1\, Y => OPEN, FCO => OPEN);
    
    \prescale_cnt_cry[30]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[30]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[29]_net_1\, S => \prescale_cnt_s[30]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[30]_net_1\);
    
    \prescale_cnt_lm_0[11]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[11]\, Y => 
        \prescale_cnt_lm[11]\);
    
    \prescale_cnt_lm_0[24]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[24]_net_1\, Y
         => \prescale_cnt_lm[24]\);
    
    \prescale_cnt[6]\ : SLE
      port map(D => \prescale_cnt_lm[6]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[6]_net_1\);
    
    \period_cnt_int_cry_1_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[4]\, B => \period_cnt[1]\, C => 
        \period_cnt[2]\, D => \period_cnt[3]\, FCI => 
        \period_cnt[0]\, S => OPEN, Y => OPEN, FCO => 
        \period_cnt_int_cry_1_0_FCO[30]\);
    
    period_cnt_int7_i_0_o3_2 : CFG3
      generic map(INIT => x"7F")

      port map(A => \period_cnt[9]\, B => \period_cnt[8]\, C => 
        \period_cnt[5]\, Y => \period_cnt_int7_i_0_o3_2\);
    
    \prescale_cnt_lm_0[31]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[31]_net_1\, Y
         => \prescale_cnt_lm[31]\);
    
    \prescale_cnt_lm_0[12]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[12]\, Y => 
        \prescale_cnt_lm[12]\);
    
    \period_cnt_int_cry[18]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[18]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[17]_net_1\, S => 
        \period_cnt_int_s[18]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[18]_net_1\);
    
    \period_cnt_int[13]\ : SLE
      port map(D => \period_cnt_int_lm[13]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[13]\);
    
    \prescale_cnt[14]\ : SLE
      port map(D => \prescale_cnt_lm[14]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[14]_net_1\);
    
    \period_cnt_int[24]\ : SLE
      port map(D => \period_cnt_int_lm[24]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[24]\);
    
    \prescale_cnt[5]\ : SLE
      port map(D => \prescale_cnt_lm[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[5]_net_1\);
    
    \period_cnt_int_lm_0[18]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[18]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[18]\);
    
    \prescale_cnt[31]\ : SLE
      port map(D => \prescale_cnt_lm[31]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[31]_net_1\);
    
    \prescale_cnt_cry[15]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[15]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[14]_net_1\, S => \prescale_cnt_s[15]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[15]_net_1\);
    
    \period_cnt_int[15]\ : SLE
      port map(D => \period_cnt_int_lm[15]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[15]\);
    
    \period_cnt_int[22]\ : SLE
      port map(D => \period_cnt_int_lm[22]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[22]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \period_cnt_int_cry_5_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[12]\, B => \period_cnt[9]\, C => 
        \period_cnt[10]\, D => \period_cnt[11]\, FCI => 
        \period_cnt_int_cry_3_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_5_0_FCO[30]\);
    
    \period_cnt_int[9]\ : SLE
      port map(D => \period_cnt_int_lm[9]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[9]\);
    
    \prescale_cnt[29]\ : SLE
      port map(D => \prescale_cnt_lm[29]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[29]_net_1\);
    
    \period_cnt_int_lm_0[22]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[22]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[22]\);
    
    \period_cnt_int_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[4]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[3]_net_1\, S => \period_cnt_int_s[4]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[4]_net_1\);
    
    \period_cnt_int_cry[25]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[25]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry_11_FCO[30]\, S => 
        \period_cnt_int_s[25]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[25]_net_1\);
    
    \period_cnt_int_cry[11]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[11]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[10]_net_1\, S => 
        \period_cnt_int_s[11]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[11]_net_1\);
    
    \prescale_cnt_cry[21]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[21]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[20]_net_1\, S => \prescale_cnt_s[21]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[21]_net_1\);
    
    \prescale_cnt[25]\ : SLE
      port map(D => \prescale_cnt_lm[25]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[25]_net_1\);
    
    \period_cnt_int_cry[12]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[12]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[11]_net_1\, S => 
        \period_cnt_int_s[12]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[12]_net_1\);
    
    \period_cnt_int_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[29]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[28]_net_1\, S => 
        \period_cnt_int_s[29]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[29]_net_1\);
    
    \period_cnt_int_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[1]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        period_cnt_int_s_107_FCO, S => \period_cnt_int_s[1]\, Y
         => OPEN, FCO => \period_cnt_int_cry[1]_net_1\);
    
    \prescale_cnt_cry_5_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[12]_net_1\, B => 
        \prescale_cnt[9]_net_1\, C => \prescale_cnt[10]_net_1\, D
         => \prescale_cnt[11]_net_1\, FCI => 
        \prescale_cnt_cry_3_0_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_5_0_FCO[30]\);
    
    \period_cnt_int[14]\ : SLE
      port map(D => \period_cnt_int_lm[14]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[14]\);
    
    \period_cnt_int_cry[26]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[26]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[25]_net_1\, S => 
        \period_cnt_int_s[26]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[26]_net_1\);
    
    \prescale_cnt_cry[22]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[22]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[21]_net_1\, S => \prescale_cnt_s[22]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[22]_net_1\);
    
    \prescale_cnt[20]\ : SLE
      port map(D => \prescale_cnt_lm[20]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[20]_net_1\);
    
    \period_cnt_int[26]\ : SLE
      port map(D => \period_cnt_int_lm[26]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[26]\);
    
    \prescale_cnt_lm_0[19]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[19]\, Y => 
        \prescale_cnt_lm[19]\);
    
    \period_cnt_int[12]\ : SLE
      port map(D => \period_cnt_int_lm[12]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[12]\);
    
    \period_cnt_int_lm_0[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[3]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[3]\);
    
    \period_cnt_int_lm_0[23]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[23]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[23]\);
    
    \period_cnt_int_lm_0[19]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[19]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[19]\);
    
    \prescale_cnt_lm_0[10]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[10]\, Y => 
        \prescale_cnt_lm[10]\);
    
    \period_cnt_int[1]\ : SLE
      port map(D => \period_cnt_int_lm[1]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[1]\);
    
    \prescale_cnt_lm_0[30]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[30]\, Y => 
        \prescale_cnt_lm[30]\);
    
    \period_cnt_int_lm_0[25]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[25]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[25]\);
    
    \period_cnt_int_lm_0[0]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \period_cnt[0]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[0]\);
    
    \prescale_cnt_lm_0[21]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[21]\, Y => 
        \prescale_cnt_lm[21]\);
    
    \prescale_cnt_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[29]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[28]_net_1\, S => \prescale_cnt_s[29]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[29]_net_1\);
    
    \period_cnt_int_lm_0[20]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[20]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[20]\);
    
    \prescale_cnt_lm_0[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[2]\, Y => 
        \prescale_cnt_lm[2]\);
    
    \prescale_cnt[9]\ : SLE
      port map(D => \prescale_cnt_lm[9]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[9]_net_1\);
    
    \period_cnt_int[3]\ : SLE
      port map(D => \period_cnt_int_lm[3]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[3]\);
    
    \prescale_cnt_cry[23]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[23]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[22]_net_1\, S => \prescale_cnt_s[23]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[23]_net_1\);
    
    \prescale_cnt_cry_9[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[20]_net_1\, B => 
        \prescale_cnt[17]_net_1\, C => \prescale_cnt[18]_net_1\, 
        D => \prescale_cnt[19]_net_1\, FCI => 
        \prescale_cnt_cry_7_0_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_9_FCO[30]\);
    
    \period_cnt_int[16]\ : SLE
      port map(D => \period_cnt_int_lm[16]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[16]\);
    
    \period_cnt_int[31]\ : SLE
      port map(D => \period_cnt_int_lm[31]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[31]\);
    
    \prescale_cnt_lm_0[22]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[22]\, Y => 
        \prescale_cnt_lm[22]\);
    
    \prescale_cnt_cry[10]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[10]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[9]_net_1\, S => \prescale_cnt_s[10]\, Y
         => OPEN, FCO => \prescale_cnt_cry[10]_net_1\);
    
    \prescale_cnt[13]\ : SLE
      port map(D => \prescale_cnt_lm[13]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[13]_net_1\);
    
    \prescale_cnt_lm_0[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[7]\, Y => 
        \prescale_cnt_lm[7]\);
    
    \period_cnt_int_lm_0[12]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[12]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[12]\);
    
    \period_cnt_int_cry_5[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[12]\, B => \period_cnt[9]\, C => 
        \period_cnt[10]\, D => \period_cnt[11]\, FCI => 
        \period_cnt_int_cry_3_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_5_FCO[30]\);
    
    \prescale_cnt_lm_0[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[1]\, Y => 
        \prescale_cnt_lm[1]\);
    
    \prescale_cnt_RNI3UGR1[2]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[7]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => period_cnt_intlde_i_o2_16, Y => 
        period_cnt_intlde_i_o2_23);
    
    \prescale_cnt_lm_0[15]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[15]\, Y => 
        \prescale_cnt_lm[15]\);
    
    \period_cnt_int_lm_0[27]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[27]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[27]\);
    
    \period_cnt_int_cry_3[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[8]\, B => \period_cnt[5]\, C => 
        \period_cnt[6]\, D => \period_cnt[7]\, FCI => 
        \period_cnt_int_cry_1_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_3_FCO[30]\);
    
    \period_cnt_int_cry[23]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[23]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[22]_net_1\, S => 
        \period_cnt_int_s[23]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[23]_net_1\);
    
    \prescale_cnt_lm_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \N_154\, B => \prescale_cnt[0]_net_1\, Y => 
        \prescale_cnt_lm[0]\);
    
    \period_cnt_int_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[27]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[26]_net_1\, S => 
        \period_cnt_int_s[27]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[27]_net_1\);
    
    period_cnt_int7_i_0_a3_1 : CFG4
      generic map(INIT => x"0100")

      port map(A => \period_cnt[15]\, B => \period_cnt[14]\, C
         => \period_cnt[13]\, D => N_155, Y => 
        \period_cnt_int7_i_0_a3_1\);
    
    \prescale_cnt[17]\ : SLE
      port map(D => \prescale_cnt_lm[17]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[17]_net_1\);
    
    \period_cnt_int_lm_0[21]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[21]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[21]\);
    
    \prescale_cnt_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[5]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[4]_net_1\, S => \prescale_cnt_s[5]\, Y
         => OPEN, FCO => \prescale_cnt_cry[5]_net_1\);
    
    \prescale_cnt_RNICUK74[17]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_intlde_i_o2_21, B => 
        period_cnt_intlde_i_o2_22, C => period_cnt_intlde_i_o2_19, 
        D => period_cnt_intlde_i_o2_20, Y => 
        period_cnt_intlde_i_o2_28);
    
    \prescale_cnt_cry[25]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[25]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry_11_FCO[30]\, S => \prescale_cnt_s[25]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[25]_net_1\);
    
    \prescale_cnt_cry[18]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[18]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[17]_net_1\, S => \prescale_cnt_s[18]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[18]_net_1\);
    
    \period_cnt_int_cry[20]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[20]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[19]_net_1\, S => 
        \period_cnt_int_s[20]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[20]_net_1\);
    
    \period_cnt_int_lm_0[13]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[13]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[13]\);
    
    \period_cnt_int[5]\ : SLE
      port map(D => \period_cnt_int_lm[5]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[5]\);
    
    \prescale_cnt[1]\ : SLE
      port map(D => \prescale_cnt_lm[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[1]_net_1\);
    
    \period_cnt_int_cry_1[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[4]\, B => \period_cnt[1]\, C => 
        \period_cnt[2]\, D => \period_cnt[3]\, FCI => 
        \period_cnt[0]\, S => OPEN, Y => OPEN, FCO => 
        \period_cnt_int_cry_1_FCO[15]\);
    
    \prescale_cnt_lm_0[29]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[29]\, Y => 
        \prescale_cnt_lm[29]\);
    
    \prescale_cnt_RNIBVS11[18]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[23]_net_1\, B => 
        \prescale_cnt[21]_net_1\, C => \prescale_cnt[20]_net_1\, 
        D => \prescale_cnt[18]_net_1\, Y => 
        period_cnt_intlde_i_o2_19);
    
    \prescale_cnt_lm_0[20]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[20]\, Y => 
        \prescale_cnt_lm[20]\);
    
    \prescale_cnt[21]\ : SLE
      port map(D => \prescale_cnt_lm[21]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[21]_net_1\);
    
    \period_cnt_int_lm_0[15]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[15]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[15]\);
    
    \period_cnt_int[30]\ : SLE
      port map(D => \period_cnt_int_lm[30]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[30]\);
    
    \prescale_cnt_lm_0[16]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[16]_net_1\, Y
         => \prescale_cnt_lm[16]\);
    
    \prescale_cnt_lm_0[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[4]\, Y => 
        \prescale_cnt_lm[4]\);
    
    \prescale_cnt_cry[26]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[26]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[25]_net_1\, S => \prescale_cnt_s[26]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[26]_net_1\);
    
    \prescale_cnt_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[7]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[6]_net_1\, S => \prescale_cnt_s[7]\, Y
         => OPEN, FCO => \prescale_cnt_cry[7]_net_1\);
    
    \period_cnt_int_lm_0[1]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[1]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[1]\);
    
    \prescale_cnt_cry_1[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => 
        \prescale_cnt[0]_net_1\, S => OPEN, Y => OPEN, FCO => 
        \prescale_cnt_cry_1_FCO[15]\);
    
    \period_cnt_int[4]\ : SLE
      port map(D => \period_cnt_int_lm[4]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[4]\);
    
    \period_cnt_int[8]\ : SLE
      port map(D => \period_cnt_int_lm[8]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[8]\);
    
    \period_cnt_int[6]\ : SLE
      port map(D => \period_cnt_int_lm[6]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[6]\);
    
    \prescale_cnt_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[1]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        prescale_cnt_s_106_FCO, S => \prescale_cnt_s[1]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[1]_net_1\);
    
    \period_cnt_int_lm_0[6]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[6]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[6]\);
    
    \period_cnt_int_lm_0[10]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[10]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[10]\);
    
    \prescale_cnt_lm_0[9]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[9]\, Y => 
        \prescale_cnt_lm[9]\);
    
    \prescale_cnt_s[31]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[31]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[30]_net_1\, S => 
        \prescale_cnt_s[31]_net_1\, Y => OPEN, FCO => OPEN);
    
    \prescale_cnt_cry_7_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[16]_net_1\, B => 
        \prescale_cnt[13]_net_1\, C => \prescale_cnt[14]_net_1\, 
        D => \prescale_cnt[15]_net_1\, FCI => 
        \prescale_cnt_cry_5_0_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_7_0_FCO[30]\);
    
    \prescale_cnt[12]\ : SLE
      port map(D => \prescale_cnt_lm[12]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[12]_net_1\);
    
    \period_cnt_int_s[16]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[16]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[15]_net_1\, S => 
        \period_cnt_int_s[16]_net_1\, Y => OPEN, FCO => OPEN);
    
    \period_cnt_int_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[5]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[4]_net_1\, S => \period_cnt_int_s[5]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[5]_net_1\);
    
    \period_cnt_int_cry_3[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[8]\, B => \period_cnt[5]\, C => 
        \period_cnt[6]\, D => \period_cnt[7]\, FCI => 
        \period_cnt_int_cry_1_FCO[15]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_3_FCO[15]\);
    
    \prescale_cnt_lm_0[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[6]\, Y => 
        \prescale_cnt_lm[6]\);
    
    \prescale_cnt_RNIM7Q11[17]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[19]_net_1\, B => 
        \prescale_cnt[17]_net_1\, C => \prescale_cnt[16]_net_1\, 
        D => \prescale_cnt[14]_net_1\, Y => 
        period_cnt_intlde_i_o2_20);
    
    \period_cnt_int[27]\ : SLE
      port map(D => \period_cnt_int_lm[27]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[27]\);
    
    \period_cnt_int_lm_0[17]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[17]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[17]\);
    
    \period_cnt_int[29]\ : SLE
      port map(D => \period_cnt_int_lm[29]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[29]\);
    
    period_cnt_int_s_107 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[0]\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => period_cnt_int_s_107_FCO);
    
    \prescale_cnt_lm_0[25]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[25]\, Y => 
        \prescale_cnt_lm[25]\);
    
    \prescale_cnt[4]\ : SLE
      port map(D => \prescale_cnt_lm[4]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[4]_net_1\);
    
    \prescale_cnt[24]\ : SLE
      port map(D => \prescale_cnt_lm[24]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[24]_net_1\);
    
    \prescale_cnt[18]\ : SLE
      port map(D => \prescale_cnt_lm[18]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[18]_net_1\);
    
    \prescale_cnt_cry[17]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[17]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry_7_FCO[30]\, S => \prescale_cnt_s[17]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[17]_net_1\);
    
    \prescale_cnt_cry[9]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[9]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry_3_FCO[15]\, S => \prescale_cnt_s[9]\, Y
         => OPEN, FCO => \prescale_cnt_cry[9]_net_1\);
    
    \prescale_cnt_RNI10V11[11]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[11]_net_1\, B => 
        \prescale_cnt[9]_net_1\, C => \prescale_cnt[8]_net_1\, D
         => \prescale_cnt[6]_net_1\, Y => 
        period_cnt_intlde_i_o2_18);
    
    \period_cnt_int_lm_0[11]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[11]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[11]\);
    
    \prescale_cnt[16]\ : SLE
      port map(D => \prescale_cnt_lm[16]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[16]_net_1\);
    
    \period_cnt_int_cry_9[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[20]\, B => \period_cnt[17]\, C
         => \period_cnt[18]\, D => \period_cnt[19]\, FCI => 
        \period_cnt_int_cry_7_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_9_FCO[30]\);
    
    \prescale_cnt_cry_3[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[8]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[6]_net_1\, D
         => \prescale_cnt[7]_net_1\, FCI => 
        \prescale_cnt_cry_1_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_3_FCO[30]\);
    
    \period_cnt_int_lm_0[30]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[30]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[30]\);
    
    \period_cnt_int_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[28]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[27]_net_1\, S => 
        \period_cnt_int_s[28]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[28]_net_1\);
    
    \prescale_cnt_cry[20]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[20]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[19]_net_1\, S => \prescale_cnt_s[20]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[20]_net_1\);
    
    \prescale_cnt_RNIMJU68[10]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_intlde_i_o2_18, B => 
        period_cnt_intlde_i_o2_17, C => period_cnt_intlde_i_o2_23, 
        D => period_cnt_intlde_i_o2_28, Y => N_804);
    
    period_cnt_int7_i_0_o3 : CFG4
      generic map(INIT => x"FFF7")

      port map(A => \period_cnt[6]\, B => \period_cnt[7]\, C => 
        \period_cnt_int7_i_0_o3_2\, D => N_257, Y => N_155);
    
    \period_cnt_int_s[31]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[31]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[30]_net_1\, S => 
        \period_cnt_int_s[31]_net_1\, Y => OPEN, FCO => OPEN);
    
    \prescale_cnt_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[2]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[1]_net_1\, S => \prescale_cnt_s[2]\, Y
         => OPEN, FCO => \prescale_cnt_cry[2]_net_1\);
    
    \period_cnt_int[17]\ : SLE
      port map(D => \period_cnt_int_lm[17]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[17]\);
    
    \prescale_cnt_lm_0[17]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[17]\, Y => 
        \prescale_cnt_lm[17]\);
    
    \prescale_cnt_cry_3_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[8]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[6]_net_1\, D
         => \prescale_cnt[7]_net_1\, FCI => 
        \prescale_cnt_cry_1_0_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_3_0_FCO[30]\);
    
    \period_cnt_int[19]\ : SLE
      port map(D => \period_cnt_int_lm[19]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[19]\);
    
    period_cnt_int7_i_0_a3_1_RNI0GQMG : CFG4
      generic map(INIT => x"70F0")

      port map(A => \period_cnt_int7_i_0_a3_1\, B => N_804, C => 
        \N_154\, D => N_724_5, Y => N_143_i_0);
    
    \prescale_cnt_cry_1[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => 
        \prescale_cnt[0]_net_1\, S => OPEN, Y => OPEN, FCO => 
        \prescale_cnt_cry_1_FCO[30]\);
    
    \period_cnt_int_lm_0[24]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[24]_net_1\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[24]\);
    
    \period_cnt_int_cry[21]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[21]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[20]_net_1\, S => 
        \period_cnt_int_s[21]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[21]_net_1\);
    
    \prescale_cnt_cry_5[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[12]_net_1\, B => 
        \prescale_cnt[9]_net_1\, C => \prescale_cnt[10]_net_1\, D
         => \prescale_cnt[11]_net_1\, FCI => 
        \prescale_cnt_cry_3_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_5_FCO[30]\);
    
    \prescale_cnt[8]\ : SLE
      port map(D => \prescale_cnt_lm[8]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[8]_net_1\);
    
    \prescale_cnt_lm_0[8]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[8]_net_1\, Y
         => \prescale_cnt_lm[8]\);
    
    \prescale_cnt[2]\ : SLE
      port map(D => \prescale_cnt_lm[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[2]_net_1\);
    
    \period_cnt_int_cry[15]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[15]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[14]_net_1\, S => 
        \period_cnt_int_s[15]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[15]_net_1\);
    
    \prescale_cnt_lm_0[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[5]\, Y => 
        \prescale_cnt_lm[5]\);
    
    \period_cnt_int_cry[22]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[22]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[21]_net_1\, S => 
        \period_cnt_int_s[22]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[22]_net_1\);
    
    \prescale_cnt_lm_0[26]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[26]\, Y => 
        \prescale_cnt_lm[26]\);
    
    \prescale_cnt_cry_3[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[8]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[6]_net_1\, D
         => \prescale_cnt[7]_net_1\, FCI => 
        \prescale_cnt_cry_1_FCO[15]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_3_FCO[15]\);
    
    \prescale_cnt_RNIPFV11[26]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[31]_net_1\, B => 
        \prescale_cnt[29]_net_1\, C => \prescale_cnt[28]_net_1\, 
        D => \prescale_cnt[26]_net_1\, Y => 
        period_cnt_intlde_i_o2_21);
    
    \period_cnt_int_cry[30]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[30]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[29]_net_1\, S => 
        \period_cnt_int_s[30]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[30]_net_1\);
    
    \period_cnt_int_cry[19]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[19]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[18]_net_1\, S => 
        \period_cnt_int_s[19]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[19]_net_1\);
    
    \prescale_cnt[7]\ : SLE
      port map(D => \prescale_cnt_lm[7]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[7]_net_1\);
    
    \period_cnt_int_cry_1[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[4]\, B => \period_cnt[1]\, C => 
        \period_cnt[2]\, D => \period_cnt[3]\, FCI => 
        \period_cnt[0]\, S => OPEN, Y => OPEN, FCO => 
        \period_cnt_int_cry_1_FCO[30]\);
    
    \prescale_cnt_lm_0[13]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_154\, B => \prescale_cnt_s[13]\, Y => 
        \prescale_cnt_lm[13]\);
    
    \prescale_cnt[19]\ : SLE
      port map(D => \prescale_cnt_lm[19]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[19]_net_1\);
    
    \period_cnt_int_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[2]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[1]_net_1\, S => \period_cnt_int_s[2]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[2]_net_1\);
    
    \period_cnt_int[21]\ : SLE
      port map(D => \period_cnt_int_lm[21]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[21]\);
    
    \prescale_cnt_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[28]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[27]_net_1\, S => \prescale_cnt_s[28]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[28]_net_1\);
    
    \period_cnt_int_lm_0[31]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[31]_net_1\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[31]\);
    
    \prescale_cnt_RNI6NP11[10]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[15]_net_1\, B => 
        \prescale_cnt[13]_net_1\, C => \prescale_cnt[12]_net_1\, 
        D => \prescale_cnt[10]_net_1\, Y => 
        period_cnt_intlde_i_o2_17);
    
    \prescale_cnt[15]\ : SLE
      port map(D => \prescale_cnt_lm[15]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[15]_net_1\);
    
    \period_cnt_int_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[3]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[2]_net_1\, S => \period_cnt_int_s[3]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[3]_net_1\);
    
    \period_cnt_int_cry_7[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[16]\, B => \period_cnt[13]\, C
         => \period_cnt[14]\, D => \period_cnt[15]\, FCI => 
        \period_cnt_int_cry_5_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_7_FCO[30]\);
    
    \prescale_cnt[10]\ : SLE
      port map(D => \prescale_cnt_lm[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[10]_net_1\);
    
    \period_cnt_int_lm_0[26]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[26]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[26]\);
    
    \prescale_cnt_RNICIEF8[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_804, B => \prescale_cnt[0]_net_1\, Y => 
        \N_154\);
    
    \period_cnt_int_cry_7_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[16]\, B => \period_cnt[13]\, C
         => \period_cnt[14]\, D => \period_cnt[15]\, FCI => 
        \period_cnt_int_cry_5_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_7_0_FCO[30]\);
    
    \period_cnt_int_lm_0[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \period_cnt_int_s[2]\, B => 
        \period_cnt_int7_i_0_a3_1\, C => N_724_5, Y => 
        \period_cnt_int_lm[2]\);
    
    \prescale_cnt[23]\ : SLE
      port map(D => \prescale_cnt_lm[23]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[23]_net_1\);
    
    \period_cnt_int[7]\ : SLE
      port map(D => \period_cnt_int_lm[7]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[7]\);
    
    \period_cnt_int[11]\ : SLE
      port map(D => \period_cnt_int_lm[11]\, CLK => FAB_CCC_GL0, 
        EN => N_143_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[11]\);
    
    \prescale_cnt_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[3]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[2]_net_1\, S => \prescale_cnt_s[3]\, Y
         => OPEN, FCO => \prescale_cnt_cry[3]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity corepwm is

    port( PWM_STRETCH                                 : out   std_logic_vector(3 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13);
          PRDATA_0_a2_13_0                            : in    std_logic_vector(0 to 0);
          PRDATA_0_a2_5_1                             : in    std_logic_vector(0 to 0);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          un6_prdatalt2_i                             : out   std_logic;
          N_641                                       : in    std_logic;
          N_535                                       : in    std_logic;
          sync_update                                 : out   std_logic;
          N_654                                       : out   std_logic;
          N_344                                       : out   std_logic;
          un97_psel_4                                 : out   std_logic;
          N_297                                       : out   std_logic;
          un59_psel_4                                 : out   std_logic;
          N_522                                       : out   std_logic;
          N_530                                       : in    std_logic;
          psh_enable_reg1_1_sqmuxa_0_a2_0_0           : out   std_logic;
          N_653                                       : in    std_logic;
          psh_negedge_reg_1_sqmuxa_0_a2_0_out         : out   std_logic;
          un59_psel                                   : out   std_logic;
          PRDATA_0_a2_10_out                          : in    std_logic;
          N_515                                       : in    std_logic;
          N_662                                       : out   std_logic;
          N_527                                       : out   std_logic;
          N_518                                       : in    std_logic;
          PRDATA_0_a2_3_out                           : in    std_logic;
          pwm_out_4_c                                 : out   std_logic;
          pwm_out_3_c                                 : out   std_logic;
          pwm_out_2_c                                 : out   std_logic;
          pwm_out_1_c                                 : out   std_logic
        );

end corepwm;

architecture DEF_ARCH of corepwm is 

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

  component pwm_gen
    port( period_cnt      : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg : in    std_logic_vector(128 downto 1) := (others => 'U');
          pwm_enable_reg  : in    std_logic_vector(4 downto 1) := (others => 'U');
          pwm_out_4_c     : out   std_logic;
          MSS_READY       : in    std_logic := 'U';
          FAB_CCC_GL0     : in    std_logic := 'U';
          pwm_out_3_c     : out   std_logic;
          pwm_out_2_c     : out   std_logic;
          pwm_out_1_c     : out   std_logic;
          N_257           : out   std_logic;
          N_150           : out   std_logic;
          N_154           : in    std_logic := 'U'
        );
  end component;

  component reg_if
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13) := (others => 'U');
          PRDATA_0_a2_13_0                            : in    std_logic_vector(0 to 0) := (others => 'U');
          PRDATA_0_a2_5_1                             : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          sync_update                                 : out   std_logic;
          N_654                                       : out   std_logic;
          N_344                                       : out   std_logic;
          un97_psel_4                                 : out   std_logic;
          N_297                                       : out   std_logic;
          un59_psel_4                                 : out   std_logic;
          N_522                                       : out   std_logic;
          N_530                                       : in    std_logic := 'U';
          psh_enable_reg1_1_sqmuxa_0_a2_0_0           : out   std_logic;
          N_535                                       : in    std_logic := 'U';
          N_653                                       : in    std_logic := 'U';
          psh_negedge_reg_1_sqmuxa_0_a2_0_out         : out   std_logic;
          un59_psel                                   : out   std_logic;
          PRDATA_0_a2_10_out                          : in    std_logic := 'U';
          N_515                                       : in    std_logic := 'U';
          N_662                                       : out   std_logic;
          N_527                                       : out   std_logic;
          N_518                                       : in    std_logic := 'U';
          PRDATA_0_a2_3_out                           : in    std_logic := 'U'
        );
  end component;

  component timebase
    port( period_cnt  : out   std_logic_vector(31 downto 0);
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          N_154       : out   std_logic;
          N_257       : in    std_logic := 'U';
          N_150       : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, PWM_STRETCH_0_sqmuxa, GND_net_1, 
        \pwm_negedge_reg[1]\, \pwm_negedge_reg[2]\, 
        \pwm_negedge_reg[3]\, \pwm_negedge_reg[4]\, 
        \pwm_negedge_reg[5]\, \pwm_negedge_reg[6]\, 
        \pwm_negedge_reg[7]\, \pwm_negedge_reg[8]\, 
        \pwm_negedge_reg[9]\, \pwm_negedge_reg[10]\, 
        \pwm_negedge_reg[11]\, \pwm_negedge_reg[12]\, 
        \pwm_negedge_reg[13]\, \pwm_negedge_reg[14]\, 
        \pwm_negedge_reg[15]\, \pwm_negedge_reg[16]\, 
        \pwm_negedge_reg[17]\, \pwm_negedge_reg[18]\, 
        \pwm_negedge_reg[19]\, \pwm_negedge_reg[20]\, 
        \pwm_negedge_reg[21]\, \pwm_negedge_reg[22]\, 
        \pwm_negedge_reg[23]\, \pwm_negedge_reg[24]\, 
        \pwm_negedge_reg[25]\, \pwm_negedge_reg[26]\, 
        \pwm_negedge_reg[27]\, \pwm_negedge_reg[28]\, 
        \pwm_negedge_reg[29]\, \pwm_negedge_reg[30]\, 
        \pwm_negedge_reg[31]\, \pwm_negedge_reg[32]\, 
        \pwm_negedge_reg[33]\, \pwm_negedge_reg[34]\, 
        \pwm_negedge_reg[35]\, \pwm_negedge_reg[36]\, 
        \pwm_negedge_reg[37]\, \pwm_negedge_reg[38]\, 
        \pwm_negedge_reg[39]\, \pwm_negedge_reg[40]\, 
        \pwm_negedge_reg[41]\, \pwm_negedge_reg[42]\, 
        \pwm_negedge_reg[43]\, \pwm_negedge_reg[44]\, 
        \pwm_negedge_reg[45]\, \pwm_negedge_reg[46]\, 
        \pwm_negedge_reg[47]\, \pwm_negedge_reg[48]\, 
        \pwm_negedge_reg[49]\, \pwm_negedge_reg[50]\, 
        \pwm_negedge_reg[51]\, \pwm_negedge_reg[52]\, 
        \pwm_negedge_reg[53]\, \pwm_negedge_reg[54]\, 
        \pwm_negedge_reg[55]\, \pwm_negedge_reg[56]\, 
        \pwm_negedge_reg[57]\, \pwm_negedge_reg[58]\, 
        \pwm_negedge_reg[59]\, \pwm_negedge_reg[60]\, 
        \pwm_negedge_reg[61]\, \pwm_negedge_reg[62]\, 
        \pwm_negedge_reg[63]\, \pwm_negedge_reg[64]\, 
        \pwm_negedge_reg[65]\, \pwm_negedge_reg[66]\, 
        \pwm_negedge_reg[67]\, \pwm_negedge_reg[68]\, 
        \pwm_negedge_reg[69]\, \pwm_negedge_reg[70]\, 
        \pwm_negedge_reg[71]\, \pwm_negedge_reg[72]\, 
        \pwm_negedge_reg[73]\, \pwm_negedge_reg[74]\, 
        \pwm_negedge_reg[75]\, \pwm_negedge_reg[76]\, 
        \pwm_negedge_reg[77]\, \pwm_negedge_reg[78]\, 
        \pwm_negedge_reg[79]\, \pwm_negedge_reg[80]\, 
        \pwm_negedge_reg[81]\, \pwm_negedge_reg[82]\, 
        \pwm_negedge_reg[83]\, \pwm_negedge_reg[84]\, 
        \pwm_negedge_reg[85]\, \pwm_negedge_reg[86]\, 
        \pwm_negedge_reg[87]\, \pwm_negedge_reg[88]\, 
        \pwm_negedge_reg[89]\, \pwm_negedge_reg[90]\, 
        \pwm_negedge_reg[91]\, \pwm_negedge_reg[92]\, 
        \pwm_negedge_reg[93]\, \pwm_negedge_reg[94]\, 
        \pwm_negedge_reg[95]\, \pwm_negedge_reg[96]\, 
        \pwm_negedge_reg[97]\, \pwm_negedge_reg[98]\, 
        \pwm_negedge_reg[99]\, \pwm_negedge_reg[100]\, 
        \pwm_negedge_reg[101]\, \pwm_negedge_reg[102]\, 
        \pwm_negedge_reg[103]\, \pwm_negedge_reg[104]\, 
        \pwm_negedge_reg[105]\, \pwm_negedge_reg[106]\, 
        \pwm_negedge_reg[107]\, \pwm_negedge_reg[108]\, 
        \pwm_negedge_reg[109]\, \pwm_negedge_reg[110]\, 
        \pwm_negedge_reg[111]\, \pwm_negedge_reg[112]\, 
        \pwm_negedge_reg[113]\, \pwm_negedge_reg[114]\, 
        \pwm_negedge_reg[115]\, \pwm_negedge_reg[116]\, 
        \pwm_negedge_reg[117]\, \pwm_negedge_reg[118]\, 
        \pwm_negedge_reg[119]\, \pwm_negedge_reg[120]\, 
        \pwm_negedge_reg[121]\, \pwm_negedge_reg[122]\, 
        \pwm_negedge_reg[123]\, \pwm_negedge_reg[124]\, 
        \pwm_negedge_reg[125]\, \pwm_negedge_reg[126]\, 
        \pwm_negedge_reg[127]\, \pwm_negedge_reg[128]\, 
        \pwm_enable_reg[1]\, \pwm_enable_reg[2]\, 
        \pwm_enable_reg[3]\, \pwm_enable_reg[4]\, \period_cnt[0]\, 
        \period_cnt[1]\, \period_cnt[2]\, \period_cnt[3]\, 
        \period_cnt[4]\, \period_cnt[5]\, \period_cnt[6]\, 
        \period_cnt[7]\, \period_cnt[8]\, \period_cnt[9]\, 
        \period_cnt[10]\, \period_cnt[11]\, \period_cnt[12]\, 
        \period_cnt[13]\, \period_cnt[14]\, \period_cnt[15]\, 
        \period_cnt[16]\, \period_cnt[17]\, \period_cnt[18]\, 
        \period_cnt[19]\, \period_cnt[20]\, \period_cnt[21]\, 
        \period_cnt[22]\, \period_cnt[23]\, \period_cnt[24]\, 
        \period_cnt[25]\, \period_cnt[26]\, \period_cnt[27]\, 
        \period_cnt[28]\, \period_cnt[29]\, \period_cnt[30]\, 
        \period_cnt[31]\, N_154, N_257, N_150 : std_logic;

    for all : pwm_gen
	Use entity work.pwm_gen(DEF_ARCH);
    for all : reg_if
	Use entity work.reg_if(DEF_ARCH);
    for all : timebase
	Use entity work.timebase(DEF_ARCH);
begin 

    pwm_negedge_reg(128) <= \pwm_negedge_reg[128]\;
    pwm_negedge_reg(127) <= \pwm_negedge_reg[127]\;
    pwm_negedge_reg(126) <= \pwm_negedge_reg[126]\;
    pwm_negedge_reg(125) <= \pwm_negedge_reg[125]\;
    pwm_negedge_reg(124) <= \pwm_negedge_reg[124]\;
    pwm_negedge_reg(123) <= \pwm_negedge_reg[123]\;
    pwm_negedge_reg(122) <= \pwm_negedge_reg[122]\;
    pwm_negedge_reg(121) <= \pwm_negedge_reg[121]\;
    pwm_negedge_reg(120) <= \pwm_negedge_reg[120]\;
    pwm_negedge_reg(119) <= \pwm_negedge_reg[119]\;
    pwm_negedge_reg(118) <= \pwm_negedge_reg[118]\;
    pwm_negedge_reg(117) <= \pwm_negedge_reg[117]\;
    pwm_negedge_reg(116) <= \pwm_negedge_reg[116]\;
    pwm_negedge_reg(115) <= \pwm_negedge_reg[115]\;
    pwm_negedge_reg(114) <= \pwm_negedge_reg[114]\;
    pwm_negedge_reg(113) <= \pwm_negedge_reg[113]\;
    pwm_negedge_reg(112) <= \pwm_negedge_reg[112]\;
    pwm_negedge_reg(111) <= \pwm_negedge_reg[111]\;
    pwm_negedge_reg(110) <= \pwm_negedge_reg[110]\;
    pwm_negedge_reg(109) <= \pwm_negedge_reg[109]\;
    pwm_negedge_reg(108) <= \pwm_negedge_reg[108]\;
    pwm_negedge_reg(107) <= \pwm_negedge_reg[107]\;
    pwm_negedge_reg(106) <= \pwm_negedge_reg[106]\;
    pwm_negedge_reg(105) <= \pwm_negedge_reg[105]\;
    pwm_negedge_reg(104) <= \pwm_negedge_reg[104]\;
    pwm_negedge_reg(103) <= \pwm_negedge_reg[103]\;
    pwm_negedge_reg(102) <= \pwm_negedge_reg[102]\;
    pwm_negedge_reg(101) <= \pwm_negedge_reg[101]\;
    pwm_negedge_reg(100) <= \pwm_negedge_reg[100]\;
    pwm_negedge_reg(99) <= \pwm_negedge_reg[99]\;
    pwm_negedge_reg(98) <= \pwm_negedge_reg[98]\;
    pwm_negedge_reg(97) <= \pwm_negedge_reg[97]\;
    pwm_negedge_reg(96) <= \pwm_negedge_reg[96]\;
    pwm_negedge_reg(95) <= \pwm_negedge_reg[95]\;
    pwm_negedge_reg(94) <= \pwm_negedge_reg[94]\;
    pwm_negedge_reg(93) <= \pwm_negedge_reg[93]\;
    pwm_negedge_reg(92) <= \pwm_negedge_reg[92]\;
    pwm_negedge_reg(91) <= \pwm_negedge_reg[91]\;
    pwm_negedge_reg(90) <= \pwm_negedge_reg[90]\;
    pwm_negedge_reg(89) <= \pwm_negedge_reg[89]\;
    pwm_negedge_reg(88) <= \pwm_negedge_reg[88]\;
    pwm_negedge_reg(87) <= \pwm_negedge_reg[87]\;
    pwm_negedge_reg(86) <= \pwm_negedge_reg[86]\;
    pwm_negedge_reg(85) <= \pwm_negedge_reg[85]\;
    pwm_negedge_reg(84) <= \pwm_negedge_reg[84]\;
    pwm_negedge_reg(83) <= \pwm_negedge_reg[83]\;
    pwm_negedge_reg(82) <= \pwm_negedge_reg[82]\;
    pwm_negedge_reg(81) <= \pwm_negedge_reg[81]\;
    pwm_negedge_reg(80) <= \pwm_negedge_reg[80]\;
    pwm_negedge_reg(79) <= \pwm_negedge_reg[79]\;
    pwm_negedge_reg(78) <= \pwm_negedge_reg[78]\;
    pwm_negedge_reg(77) <= \pwm_negedge_reg[77]\;
    pwm_negedge_reg(76) <= \pwm_negedge_reg[76]\;
    pwm_negedge_reg(75) <= \pwm_negedge_reg[75]\;
    pwm_negedge_reg(74) <= \pwm_negedge_reg[74]\;
    pwm_negedge_reg(73) <= \pwm_negedge_reg[73]\;
    pwm_negedge_reg(72) <= \pwm_negedge_reg[72]\;
    pwm_negedge_reg(71) <= \pwm_negedge_reg[71]\;
    pwm_negedge_reg(70) <= \pwm_negedge_reg[70]\;
    pwm_negedge_reg(69) <= \pwm_negedge_reg[69]\;
    pwm_negedge_reg(68) <= \pwm_negedge_reg[68]\;
    pwm_negedge_reg(67) <= \pwm_negedge_reg[67]\;
    pwm_negedge_reg(66) <= \pwm_negedge_reg[66]\;
    pwm_negedge_reg(65) <= \pwm_negedge_reg[65]\;
    pwm_negedge_reg(64) <= \pwm_negedge_reg[64]\;
    pwm_negedge_reg(63) <= \pwm_negedge_reg[63]\;
    pwm_negedge_reg(62) <= \pwm_negedge_reg[62]\;
    pwm_negedge_reg(61) <= \pwm_negedge_reg[61]\;
    pwm_negedge_reg(60) <= \pwm_negedge_reg[60]\;
    pwm_negedge_reg(59) <= \pwm_negedge_reg[59]\;
    pwm_negedge_reg(58) <= \pwm_negedge_reg[58]\;
    pwm_negedge_reg(57) <= \pwm_negedge_reg[57]\;
    pwm_negedge_reg(56) <= \pwm_negedge_reg[56]\;
    pwm_negedge_reg(55) <= \pwm_negedge_reg[55]\;
    pwm_negedge_reg(54) <= \pwm_negedge_reg[54]\;
    pwm_negedge_reg(53) <= \pwm_negedge_reg[53]\;
    pwm_negedge_reg(52) <= \pwm_negedge_reg[52]\;
    pwm_negedge_reg(51) <= \pwm_negedge_reg[51]\;
    pwm_negedge_reg(50) <= \pwm_negedge_reg[50]\;
    pwm_negedge_reg(49) <= \pwm_negedge_reg[49]\;
    pwm_negedge_reg(48) <= \pwm_negedge_reg[48]\;
    pwm_negedge_reg(47) <= \pwm_negedge_reg[47]\;
    pwm_negedge_reg(46) <= \pwm_negedge_reg[46]\;
    pwm_negedge_reg(45) <= \pwm_negedge_reg[45]\;
    pwm_negedge_reg(44) <= \pwm_negedge_reg[44]\;
    pwm_negedge_reg(43) <= \pwm_negedge_reg[43]\;
    pwm_negedge_reg(42) <= \pwm_negedge_reg[42]\;
    pwm_negedge_reg(41) <= \pwm_negedge_reg[41]\;
    pwm_negedge_reg(40) <= \pwm_negedge_reg[40]\;
    pwm_negedge_reg(39) <= \pwm_negedge_reg[39]\;
    pwm_negedge_reg(38) <= \pwm_negedge_reg[38]\;
    pwm_negedge_reg(37) <= \pwm_negedge_reg[37]\;
    pwm_negedge_reg(36) <= \pwm_negedge_reg[36]\;
    pwm_negedge_reg(35) <= \pwm_negedge_reg[35]\;
    pwm_negedge_reg(34) <= \pwm_negedge_reg[34]\;
    pwm_negedge_reg(33) <= \pwm_negedge_reg[33]\;
    pwm_negedge_reg(32) <= \pwm_negedge_reg[32]\;
    pwm_negedge_reg(31) <= \pwm_negedge_reg[31]\;
    pwm_negedge_reg(30) <= \pwm_negedge_reg[30]\;
    pwm_negedge_reg(29) <= \pwm_negedge_reg[29]\;
    pwm_negedge_reg(28) <= \pwm_negedge_reg[28]\;
    pwm_negedge_reg(27) <= \pwm_negedge_reg[27]\;
    pwm_negedge_reg(26) <= \pwm_negedge_reg[26]\;
    pwm_negedge_reg(25) <= \pwm_negedge_reg[25]\;
    pwm_negedge_reg(24) <= \pwm_negedge_reg[24]\;
    pwm_negedge_reg(23) <= \pwm_negedge_reg[23]\;
    pwm_negedge_reg(22) <= \pwm_negedge_reg[22]\;
    pwm_negedge_reg(21) <= \pwm_negedge_reg[21]\;
    pwm_negedge_reg(20) <= \pwm_negedge_reg[20]\;
    pwm_negedge_reg(19) <= \pwm_negedge_reg[19]\;
    pwm_negedge_reg(18) <= \pwm_negedge_reg[18]\;
    pwm_negedge_reg(17) <= \pwm_negedge_reg[17]\;
    pwm_negedge_reg(16) <= \pwm_negedge_reg[16]\;
    pwm_negedge_reg(15) <= \pwm_negedge_reg[15]\;
    pwm_negedge_reg(14) <= \pwm_negedge_reg[14]\;
    pwm_negedge_reg(13) <= \pwm_negedge_reg[13]\;
    pwm_negedge_reg(12) <= \pwm_negedge_reg[12]\;
    pwm_negedge_reg(11) <= \pwm_negedge_reg[11]\;
    pwm_negedge_reg(10) <= \pwm_negedge_reg[10]\;
    pwm_negedge_reg(9) <= \pwm_negedge_reg[9]\;
    pwm_negedge_reg(8) <= \pwm_negedge_reg[8]\;
    pwm_negedge_reg(7) <= \pwm_negedge_reg[7]\;
    pwm_negedge_reg(6) <= \pwm_negedge_reg[6]\;
    pwm_negedge_reg(5) <= \pwm_negedge_reg[5]\;
    pwm_negedge_reg(4) <= \pwm_negedge_reg[4]\;
    pwm_negedge_reg(3) <= \pwm_negedge_reg[3]\;
    pwm_negedge_reg(2) <= \pwm_negedge_reg[2]\;
    pwm_negedge_reg(1) <= \pwm_negedge_reg[1]\;
    pwm_enable_reg(4) <= \pwm_enable_reg[4]\;
    pwm_enable_reg(3) <= \pwm_enable_reg[3]\;
    pwm_enable_reg(2) <= \pwm_enable_reg[2]\;
    pwm_enable_reg(1) <= \pwm_enable_reg[1]\;

    \PWM_STRETCH[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(1));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PWM_STRETCH[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(0));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    PWM_STRETCH_0_sqmuxa_0_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => N_641, B => N_535, Y => PWM_STRETCH_0_sqmuxa);
    
    \PWM_STRETCH[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(2));
    
    \xhdl63.pwm_gen_inst\ : pwm_gen
      port map(period_cnt(31) => \period_cnt[31]\, period_cnt(30)
         => \period_cnt[30]\, period_cnt(29) => \period_cnt[29]\, 
        period_cnt(28) => \period_cnt[28]\, period_cnt(27) => 
        \period_cnt[27]\, period_cnt(26) => \period_cnt[26]\, 
        period_cnt(25) => \period_cnt[25]\, period_cnt(24) => 
        \period_cnt[24]\, period_cnt(23) => \period_cnt[23]\, 
        period_cnt(22) => \period_cnt[22]\, period_cnt(21) => 
        \period_cnt[21]\, period_cnt(20) => \period_cnt[20]\, 
        period_cnt(19) => \period_cnt[19]\, period_cnt(18) => 
        \period_cnt[18]\, period_cnt(17) => \period_cnt[17]\, 
        period_cnt(16) => \period_cnt[16]\, period_cnt(15) => 
        \period_cnt[15]\, period_cnt(14) => \period_cnt[14]\, 
        period_cnt(13) => \period_cnt[13]\, period_cnt(12) => 
        \period_cnt[12]\, period_cnt(11) => \period_cnt[11]\, 
        period_cnt(10) => \period_cnt[10]\, period_cnt(9) => 
        \period_cnt[9]\, period_cnt(8) => \period_cnt[8]\, 
        period_cnt(7) => \period_cnt[7]\, period_cnt(6) => 
        \period_cnt[6]\, period_cnt(5) => \period_cnt[5]\, 
        period_cnt(4) => \period_cnt[4]\, period_cnt(3) => 
        \period_cnt[3]\, period_cnt(2) => \period_cnt[2]\, 
        period_cnt(1) => \period_cnt[1]\, period_cnt(0) => 
        \period_cnt[0]\, pwm_negedge_reg(128) => 
        \pwm_negedge_reg[128]\, pwm_negedge_reg(127) => 
        \pwm_negedge_reg[127]\, pwm_negedge_reg(126) => 
        \pwm_negedge_reg[126]\, pwm_negedge_reg(125) => 
        \pwm_negedge_reg[125]\, pwm_negedge_reg(124) => 
        \pwm_negedge_reg[124]\, pwm_negedge_reg(123) => 
        \pwm_negedge_reg[123]\, pwm_negedge_reg(122) => 
        \pwm_negedge_reg[122]\, pwm_negedge_reg(121) => 
        \pwm_negedge_reg[121]\, pwm_negedge_reg(120) => 
        \pwm_negedge_reg[120]\, pwm_negedge_reg(119) => 
        \pwm_negedge_reg[119]\, pwm_negedge_reg(118) => 
        \pwm_negedge_reg[118]\, pwm_negedge_reg(117) => 
        \pwm_negedge_reg[117]\, pwm_negedge_reg(116) => 
        \pwm_negedge_reg[116]\, pwm_negedge_reg(115) => 
        \pwm_negedge_reg[115]\, pwm_negedge_reg(114) => 
        \pwm_negedge_reg[114]\, pwm_negedge_reg(113) => 
        \pwm_negedge_reg[113]\, pwm_negedge_reg(112) => 
        \pwm_negedge_reg[112]\, pwm_negedge_reg(111) => 
        \pwm_negedge_reg[111]\, pwm_negedge_reg(110) => 
        \pwm_negedge_reg[110]\, pwm_negedge_reg(109) => 
        \pwm_negedge_reg[109]\, pwm_negedge_reg(108) => 
        \pwm_negedge_reg[108]\, pwm_negedge_reg(107) => 
        \pwm_negedge_reg[107]\, pwm_negedge_reg(106) => 
        \pwm_negedge_reg[106]\, pwm_negedge_reg(105) => 
        \pwm_negedge_reg[105]\, pwm_negedge_reg(104) => 
        \pwm_negedge_reg[104]\, pwm_negedge_reg(103) => 
        \pwm_negedge_reg[103]\, pwm_negedge_reg(102) => 
        \pwm_negedge_reg[102]\, pwm_negedge_reg(101) => 
        \pwm_negedge_reg[101]\, pwm_negedge_reg(100) => 
        \pwm_negedge_reg[100]\, pwm_negedge_reg(99) => 
        \pwm_negedge_reg[99]\, pwm_negedge_reg(98) => 
        \pwm_negedge_reg[98]\, pwm_negedge_reg(97) => 
        \pwm_negedge_reg[97]\, pwm_negedge_reg(96) => 
        \pwm_negedge_reg[96]\, pwm_negedge_reg(95) => 
        \pwm_negedge_reg[95]\, pwm_negedge_reg(94) => 
        \pwm_negedge_reg[94]\, pwm_negedge_reg(93) => 
        \pwm_negedge_reg[93]\, pwm_negedge_reg(92) => 
        \pwm_negedge_reg[92]\, pwm_negedge_reg(91) => 
        \pwm_negedge_reg[91]\, pwm_negedge_reg(90) => 
        \pwm_negedge_reg[90]\, pwm_negedge_reg(89) => 
        \pwm_negedge_reg[89]\, pwm_negedge_reg(88) => 
        \pwm_negedge_reg[88]\, pwm_negedge_reg(87) => 
        \pwm_negedge_reg[87]\, pwm_negedge_reg(86) => 
        \pwm_negedge_reg[86]\, pwm_negedge_reg(85) => 
        \pwm_negedge_reg[85]\, pwm_negedge_reg(84) => 
        \pwm_negedge_reg[84]\, pwm_negedge_reg(83) => 
        \pwm_negedge_reg[83]\, pwm_negedge_reg(82) => 
        \pwm_negedge_reg[82]\, pwm_negedge_reg(81) => 
        \pwm_negedge_reg[81]\, pwm_negedge_reg(80) => 
        \pwm_negedge_reg[80]\, pwm_negedge_reg(79) => 
        \pwm_negedge_reg[79]\, pwm_negedge_reg(78) => 
        \pwm_negedge_reg[78]\, pwm_negedge_reg(77) => 
        \pwm_negedge_reg[77]\, pwm_negedge_reg(76) => 
        \pwm_negedge_reg[76]\, pwm_negedge_reg(75) => 
        \pwm_negedge_reg[75]\, pwm_negedge_reg(74) => 
        \pwm_negedge_reg[74]\, pwm_negedge_reg(73) => 
        \pwm_negedge_reg[73]\, pwm_negedge_reg(72) => 
        \pwm_negedge_reg[72]\, pwm_negedge_reg(71) => 
        \pwm_negedge_reg[71]\, pwm_negedge_reg(70) => 
        \pwm_negedge_reg[70]\, pwm_negedge_reg(69) => 
        \pwm_negedge_reg[69]\, pwm_negedge_reg(68) => 
        \pwm_negedge_reg[68]\, pwm_negedge_reg(67) => 
        \pwm_negedge_reg[67]\, pwm_negedge_reg(66) => 
        \pwm_negedge_reg[66]\, pwm_negedge_reg(65) => 
        \pwm_negedge_reg[65]\, pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg[58]\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg(56) => 
        \pwm_negedge_reg[56]\, pwm_negedge_reg(55) => 
        \pwm_negedge_reg[55]\, pwm_negedge_reg(54) => 
        \pwm_negedge_reg[54]\, pwm_negedge_reg(53) => 
        \pwm_negedge_reg[53]\, pwm_negedge_reg(52) => 
        \pwm_negedge_reg[52]\, pwm_negedge_reg(51) => 
        \pwm_negedge_reg[51]\, pwm_negedge_reg(50) => 
        \pwm_negedge_reg[50]\, pwm_negedge_reg(49) => 
        \pwm_negedge_reg[49]\, pwm_negedge_reg(48) => 
        \pwm_negedge_reg[48]\, pwm_negedge_reg(47) => 
        \pwm_negedge_reg[47]\, pwm_negedge_reg(46) => 
        \pwm_negedge_reg[46]\, pwm_negedge_reg(45) => 
        \pwm_negedge_reg[45]\, pwm_negedge_reg(44) => 
        \pwm_negedge_reg[44]\, pwm_negedge_reg(43) => 
        \pwm_negedge_reg[43]\, pwm_negedge_reg(42) => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg(40) => 
        \pwm_negedge_reg[40]\, pwm_negedge_reg(39) => 
        \pwm_negedge_reg[39]\, pwm_negedge_reg(38) => 
        \pwm_negedge_reg[38]\, pwm_negedge_reg(37) => 
        \pwm_negedge_reg[37]\, pwm_negedge_reg(36) => 
        \pwm_negedge_reg[36]\, pwm_negedge_reg(35) => 
        \pwm_negedge_reg[35]\, pwm_negedge_reg(34) => 
        \pwm_negedge_reg[34]\, pwm_negedge_reg(33) => 
        \pwm_negedge_reg[33]\, pwm_negedge_reg(32) => 
        \pwm_negedge_reg[32]\, pwm_negedge_reg(31) => 
        \pwm_negedge_reg[31]\, pwm_negedge_reg(30) => 
        \pwm_negedge_reg[30]\, pwm_negedge_reg(29) => 
        \pwm_negedge_reg[29]\, pwm_negedge_reg(28) => 
        \pwm_negedge_reg[28]\, pwm_negedge_reg(27) => 
        \pwm_negedge_reg[27]\, pwm_negedge_reg(26) => 
        \pwm_negedge_reg[26]\, pwm_negedge_reg(25) => 
        \pwm_negedge_reg[25]\, pwm_negedge_reg(24) => 
        \pwm_negedge_reg[24]\, pwm_negedge_reg(23) => 
        \pwm_negedge_reg[23]\, pwm_negedge_reg(22) => 
        \pwm_negedge_reg[22]\, pwm_negedge_reg(21) => 
        \pwm_negedge_reg[21]\, pwm_negedge_reg(20) => 
        \pwm_negedge_reg[20]\, pwm_negedge_reg(19) => 
        \pwm_negedge_reg[19]\, pwm_negedge_reg(18) => 
        \pwm_negedge_reg[18]\, pwm_negedge_reg(17) => 
        \pwm_negedge_reg[17]\, pwm_negedge_reg(16) => 
        \pwm_negedge_reg[16]\, pwm_negedge_reg(15) => 
        \pwm_negedge_reg[15]\, pwm_negedge_reg(14) => 
        \pwm_negedge_reg[14]\, pwm_negedge_reg(13) => 
        \pwm_negedge_reg[13]\, pwm_negedge_reg(12) => 
        \pwm_negedge_reg[12]\, pwm_negedge_reg(11) => 
        \pwm_negedge_reg[11]\, pwm_negedge_reg(10) => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg(9) => 
        \pwm_negedge_reg[9]\, pwm_negedge_reg(8) => 
        \pwm_negedge_reg[8]\, pwm_negedge_reg(7) => 
        \pwm_negedge_reg[7]\, pwm_negedge_reg(6) => 
        \pwm_negedge_reg[6]\, pwm_negedge_reg(5) => 
        \pwm_negedge_reg[5]\, pwm_negedge_reg(4) => 
        \pwm_negedge_reg[4]\, pwm_negedge_reg(3) => 
        \pwm_negedge_reg[3]\, pwm_negedge_reg(2) => 
        \pwm_negedge_reg[2]\, pwm_negedge_reg(1) => 
        \pwm_negedge_reg[1]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, pwm_out_4_c => pwm_out_4_c, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        pwm_out_3_c => pwm_out_3_c, pwm_out_2_c => pwm_out_2_c, 
        pwm_out_1_c => pwm_out_1_c, N_257 => N_257, N_150 => 
        N_150, N_154 => N_154);
    
    \xhdl58.reg_if_inst\ : reg_if
      port map(CoreAPB3_0_APBmslave0_PWDATA(31) => 
        CoreAPB3_0_APBmslave0_PWDATA(31), 
        CoreAPB3_0_APBmslave0_PWDATA(30) => 
        CoreAPB3_0_APBmslave0_PWDATA(30), 
        CoreAPB3_0_APBmslave0_PWDATA(29) => 
        CoreAPB3_0_APBmslave0_PWDATA(29), 
        CoreAPB3_0_APBmslave0_PWDATA(28) => 
        CoreAPB3_0_APBmslave0_PWDATA(28), 
        CoreAPB3_0_APBmslave0_PWDATA(27) => 
        CoreAPB3_0_APBmslave0_PWDATA(27), 
        CoreAPB3_0_APBmslave0_PWDATA(26) => 
        CoreAPB3_0_APBmslave0_PWDATA(26), 
        CoreAPB3_0_APBmslave0_PWDATA(25) => 
        CoreAPB3_0_APBmslave0_PWDATA(25), 
        CoreAPB3_0_APBmslave0_PWDATA(24) => 
        CoreAPB3_0_APBmslave0_PWDATA(24), 
        CoreAPB3_0_APBmslave0_PWDATA(23) => 
        CoreAPB3_0_APBmslave0_PWDATA(23), 
        CoreAPB3_0_APBmslave0_PWDATA(22) => 
        CoreAPB3_0_APBmslave0_PWDATA(22), 
        CoreAPB3_0_APBmslave0_PWDATA(21) => 
        CoreAPB3_0_APBmslave0_PWDATA(21), 
        CoreAPB3_0_APBmslave0_PWDATA(20) => 
        CoreAPB3_0_APBmslave0_PWDATA(20), 
        CoreAPB3_0_APBmslave0_PWDATA(19) => 
        CoreAPB3_0_APBmslave0_PWDATA(19), 
        CoreAPB3_0_APBmslave0_PWDATA(18) => 
        CoreAPB3_0_APBmslave0_PWDATA(18), 
        CoreAPB3_0_APBmslave0_PWDATA(17) => 
        CoreAPB3_0_APBmslave0_PWDATA(17), 
        CoreAPB3_0_APBmslave0_PWDATA(16) => 
        CoreAPB3_0_APBmslave0_PWDATA(16), 
        CoreAPB3_0_APBmslave0_PWDATA(15) => 
        CoreAPB3_0_APBmslave0_PWDATA(15), 
        CoreAPB3_0_APBmslave0_PWDATA(14) => 
        CoreAPB3_0_APBmslave0_PWDATA(14), 
        CoreAPB3_0_APBmslave0_PWDATA(13) => 
        CoreAPB3_0_APBmslave0_PWDATA(13), 
        CoreAPB3_0_APBmslave0_PWDATA(12) => 
        CoreAPB3_0_APBmslave0_PWDATA(12), 
        CoreAPB3_0_APBmslave0_PWDATA(11) => 
        CoreAPB3_0_APBmslave0_PWDATA(11), 
        CoreAPB3_0_APBmslave0_PWDATA(10) => 
        CoreAPB3_0_APBmslave0_PWDATA(10), 
        CoreAPB3_0_APBmslave0_PWDATA(9) => 
        CoreAPB3_0_APBmslave0_PWDATA(9), 
        CoreAPB3_0_APBmslave0_PWDATA(8) => 
        CoreAPB3_0_APBmslave0_PWDATA(8), 
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
        CoreAPB3_0_APBmslave0_PWDATA(0), pwm_negedge_reg(128) => 
        \pwm_negedge_reg[128]\, pwm_negedge_reg(127) => 
        \pwm_negedge_reg[127]\, pwm_negedge_reg(126) => 
        \pwm_negedge_reg[126]\, pwm_negedge_reg(125) => 
        \pwm_negedge_reg[125]\, pwm_negedge_reg(124) => 
        \pwm_negedge_reg[124]\, pwm_negedge_reg(123) => 
        \pwm_negedge_reg[123]\, pwm_negedge_reg(122) => 
        \pwm_negedge_reg[122]\, pwm_negedge_reg(121) => 
        \pwm_negedge_reg[121]\, pwm_negedge_reg(120) => 
        \pwm_negedge_reg[120]\, pwm_negedge_reg(119) => 
        \pwm_negedge_reg[119]\, pwm_negedge_reg(118) => 
        \pwm_negedge_reg[118]\, pwm_negedge_reg(117) => 
        \pwm_negedge_reg[117]\, pwm_negedge_reg(116) => 
        \pwm_negedge_reg[116]\, pwm_negedge_reg(115) => 
        \pwm_negedge_reg[115]\, pwm_negedge_reg(114) => 
        \pwm_negedge_reg[114]\, pwm_negedge_reg(113) => 
        \pwm_negedge_reg[113]\, pwm_negedge_reg(112) => 
        \pwm_negedge_reg[112]\, pwm_negedge_reg(111) => 
        \pwm_negedge_reg[111]\, pwm_negedge_reg(110) => 
        \pwm_negedge_reg[110]\, pwm_negedge_reg(109) => 
        \pwm_negedge_reg[109]\, pwm_negedge_reg(108) => 
        \pwm_negedge_reg[108]\, pwm_negedge_reg(107) => 
        \pwm_negedge_reg[107]\, pwm_negedge_reg(106) => 
        \pwm_negedge_reg[106]\, pwm_negedge_reg(105) => 
        \pwm_negedge_reg[105]\, pwm_negedge_reg(104) => 
        \pwm_negedge_reg[104]\, pwm_negedge_reg(103) => 
        \pwm_negedge_reg[103]\, pwm_negedge_reg(102) => 
        \pwm_negedge_reg[102]\, pwm_negedge_reg(101) => 
        \pwm_negedge_reg[101]\, pwm_negedge_reg(100) => 
        \pwm_negedge_reg[100]\, pwm_negedge_reg(99) => 
        \pwm_negedge_reg[99]\, pwm_negedge_reg(98) => 
        \pwm_negedge_reg[98]\, pwm_negedge_reg(97) => 
        \pwm_negedge_reg[97]\, pwm_negedge_reg(96) => 
        \pwm_negedge_reg[96]\, pwm_negedge_reg(95) => 
        \pwm_negedge_reg[95]\, pwm_negedge_reg(94) => 
        \pwm_negedge_reg[94]\, pwm_negedge_reg(93) => 
        \pwm_negedge_reg[93]\, pwm_negedge_reg(92) => 
        \pwm_negedge_reg[92]\, pwm_negedge_reg(91) => 
        \pwm_negedge_reg[91]\, pwm_negedge_reg(90) => 
        \pwm_negedge_reg[90]\, pwm_negedge_reg(89) => 
        \pwm_negedge_reg[89]\, pwm_negedge_reg(88) => 
        \pwm_negedge_reg[88]\, pwm_negedge_reg(87) => 
        \pwm_negedge_reg[87]\, pwm_negedge_reg(86) => 
        \pwm_negedge_reg[86]\, pwm_negedge_reg(85) => 
        \pwm_negedge_reg[85]\, pwm_negedge_reg(84) => 
        \pwm_negedge_reg[84]\, pwm_negedge_reg(83) => 
        \pwm_negedge_reg[83]\, pwm_negedge_reg(82) => 
        \pwm_negedge_reg[82]\, pwm_negedge_reg(81) => 
        \pwm_negedge_reg[81]\, pwm_negedge_reg(80) => 
        \pwm_negedge_reg[80]\, pwm_negedge_reg(79) => 
        \pwm_negedge_reg[79]\, pwm_negedge_reg(78) => 
        \pwm_negedge_reg[78]\, pwm_negedge_reg(77) => 
        \pwm_negedge_reg[77]\, pwm_negedge_reg(76) => 
        \pwm_negedge_reg[76]\, pwm_negedge_reg(75) => 
        \pwm_negedge_reg[75]\, pwm_negedge_reg(74) => 
        \pwm_negedge_reg[74]\, pwm_negedge_reg(73) => 
        \pwm_negedge_reg[73]\, pwm_negedge_reg(72) => 
        \pwm_negedge_reg[72]\, pwm_negedge_reg(71) => 
        \pwm_negedge_reg[71]\, pwm_negedge_reg(70) => 
        \pwm_negedge_reg[70]\, pwm_negedge_reg(69) => 
        \pwm_negedge_reg[69]\, pwm_negedge_reg(68) => 
        \pwm_negedge_reg[68]\, pwm_negedge_reg(67) => 
        \pwm_negedge_reg[67]\, pwm_negedge_reg(66) => 
        \pwm_negedge_reg[66]\, pwm_negedge_reg(65) => 
        \pwm_negedge_reg[65]\, pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg[58]\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg(56) => 
        \pwm_negedge_reg[56]\, pwm_negedge_reg(55) => 
        \pwm_negedge_reg[55]\, pwm_negedge_reg(54) => 
        \pwm_negedge_reg[54]\, pwm_negedge_reg(53) => 
        \pwm_negedge_reg[53]\, pwm_negedge_reg(52) => 
        \pwm_negedge_reg[52]\, pwm_negedge_reg(51) => 
        \pwm_negedge_reg[51]\, pwm_negedge_reg(50) => 
        \pwm_negedge_reg[50]\, pwm_negedge_reg(49) => 
        \pwm_negedge_reg[49]\, pwm_negedge_reg(48) => 
        \pwm_negedge_reg[48]\, pwm_negedge_reg(47) => 
        \pwm_negedge_reg[47]\, pwm_negedge_reg(46) => 
        \pwm_negedge_reg[46]\, pwm_negedge_reg(45) => 
        \pwm_negedge_reg[45]\, pwm_negedge_reg(44) => 
        \pwm_negedge_reg[44]\, pwm_negedge_reg(43) => 
        \pwm_negedge_reg[43]\, pwm_negedge_reg(42) => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg(40) => 
        \pwm_negedge_reg[40]\, pwm_negedge_reg(39) => 
        \pwm_negedge_reg[39]\, pwm_negedge_reg(38) => 
        \pwm_negedge_reg[38]\, pwm_negedge_reg(37) => 
        \pwm_negedge_reg[37]\, pwm_negedge_reg(36) => 
        \pwm_negedge_reg[36]\, pwm_negedge_reg(35) => 
        \pwm_negedge_reg[35]\, pwm_negedge_reg(34) => 
        \pwm_negedge_reg[34]\, pwm_negedge_reg(33) => 
        \pwm_negedge_reg[33]\, pwm_negedge_reg(32) => 
        \pwm_negedge_reg[32]\, pwm_negedge_reg(31) => 
        \pwm_negedge_reg[31]\, pwm_negedge_reg(30) => 
        \pwm_negedge_reg[30]\, pwm_negedge_reg(29) => 
        \pwm_negedge_reg[29]\, pwm_negedge_reg(28) => 
        \pwm_negedge_reg[28]\, pwm_negedge_reg(27) => 
        \pwm_negedge_reg[27]\, pwm_negedge_reg(26) => 
        \pwm_negedge_reg[26]\, pwm_negedge_reg(25) => 
        \pwm_negedge_reg[25]\, pwm_negedge_reg(24) => 
        \pwm_negedge_reg[24]\, pwm_negedge_reg(23) => 
        \pwm_negedge_reg[23]\, pwm_negedge_reg(22) => 
        \pwm_negedge_reg[22]\, pwm_negedge_reg(21) => 
        \pwm_negedge_reg[21]\, pwm_negedge_reg(20) => 
        \pwm_negedge_reg[20]\, pwm_negedge_reg(19) => 
        \pwm_negedge_reg[19]\, pwm_negedge_reg(18) => 
        \pwm_negedge_reg[18]\, pwm_negedge_reg(17) => 
        \pwm_negedge_reg[17]\, pwm_negedge_reg(16) => 
        \pwm_negedge_reg[16]\, pwm_negedge_reg(15) => 
        \pwm_negedge_reg[15]\, pwm_negedge_reg(14) => 
        \pwm_negedge_reg[14]\, pwm_negedge_reg(13) => 
        \pwm_negedge_reg[13]\, pwm_negedge_reg(12) => 
        \pwm_negedge_reg[12]\, pwm_negedge_reg(11) => 
        \pwm_negedge_reg[11]\, pwm_negedge_reg(10) => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg(9) => 
        \pwm_negedge_reg[9]\, pwm_negedge_reg(8) => 
        \pwm_negedge_reg[8]\, pwm_negedge_reg(7) => 
        \pwm_negedge_reg[7]\, pwm_negedge_reg(6) => 
        \pwm_negedge_reg[6]\, pwm_negedge_reg(5) => 
        \pwm_negedge_reg[5]\, pwm_negedge_reg(4) => 
        \pwm_negedge_reg[4]\, pwm_negedge_reg(3) => 
        \pwm_negedge_reg[3]\, pwm_negedge_reg(2) => 
        \pwm_negedge_reg[2]\, pwm_negedge_reg(1) => 
        \pwm_negedge_reg[1]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, CoreAPB3_0_APBmslave0_PADDR(7) => 
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        PRDATA_0_a2_13_0(0) => PRDATA_0_a2_13_0(0), 
        PRDATA_0_a2_5_1(0) => PRDATA_0_a2_5_1(0), MSS_READY => 
        MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, sync_update => 
        sync_update, N_654 => N_654, N_344 => N_344, un97_psel_4
         => un97_psel_4, N_297 => N_297, un59_psel_4 => 
        un59_psel_4, N_522 => N_522, N_530 => N_530, 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0 => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0, N_535 => N_535, N_653
         => N_653, psh_negedge_reg_1_sqmuxa_0_a2_0_out => 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out, un59_psel => 
        un59_psel, PRDATA_0_a2_10_out => PRDATA_0_a2_10_out, 
        N_515 => N_515, N_662 => N_662, N_527 => N_527, N_518 => 
        N_518, PRDATA_0_a2_3_out => PRDATA_0_a2_3_out);
    
    \PWM_STRETCH[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(3));
    
    \xhdl51.un6_prdatalt2_i_0_a2\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => un6_prdatalt2_i);
    
    \G0b.timebase_inst\ : timebase
      port map(period_cnt(31) => \period_cnt[31]\, period_cnt(30)
         => \period_cnt[30]\, period_cnt(29) => \period_cnt[29]\, 
        period_cnt(28) => \period_cnt[28]\, period_cnt(27) => 
        \period_cnt[27]\, period_cnt(26) => \period_cnt[26]\, 
        period_cnt(25) => \period_cnt[25]\, period_cnt(24) => 
        \period_cnt[24]\, period_cnt(23) => \period_cnt[23]\, 
        period_cnt(22) => \period_cnt[22]\, period_cnt(21) => 
        \period_cnt[21]\, period_cnt(20) => \period_cnt[20]\, 
        period_cnt(19) => \period_cnt[19]\, period_cnt(18) => 
        \period_cnt[18]\, period_cnt(17) => \period_cnt[17]\, 
        period_cnt(16) => \period_cnt[16]\, period_cnt(15) => 
        \period_cnt[15]\, period_cnt(14) => \period_cnt[14]\, 
        period_cnt(13) => \period_cnt[13]\, period_cnt(12) => 
        \period_cnt[12]\, period_cnt(11) => \period_cnt[11]\, 
        period_cnt(10) => \period_cnt[10]\, period_cnt(9) => 
        \period_cnt[9]\, period_cnt(8) => \period_cnt[8]\, 
        period_cnt(7) => \period_cnt[7]\, period_cnt(6) => 
        \period_cnt[6]\, period_cnt(5) => \period_cnt[5]\, 
        period_cnt(4) => \period_cnt[4]\, period_cnt(3) => 
        \period_cnt[3]\, period_cnt(2) => \period_cnt[2]\, 
        period_cnt(1) => \period_cnt[1]\, period_cnt(0) => 
        \period_cnt[0]\, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, N_154 => N_154, N_257 => N_257, N_150 => 
        N_150);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREAPB3_MUXPTOB3 is

    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : in    std_logic_vector(13 to 13);
          PRDATA_0_a2_13_0                                : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                     : in    std_logic_vector(8 downto 0);
          PRDATA_0_a2_5_1                                 : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0);
          pwm_enable_reg                                  : in    std_logic_vector(4 downto 1);
          PWM_STRETCH                                     : in    std_logic_vector(3 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                    : in    std_logic_vector(7 downto 0);
          sersta                                          : in    std_logic_vector(4 downto 0);
          serdat                                          : in    std_logic_vector(7 downto 0);
          pwm_negedge_reg                                 : in    std_logic_vector(128 downto 1);
          PRDATA_0_a2_9_0_4                               : out   std_logic;
          sercon_0                                        : in    std_logic;
          sercon_7                                        : in    std_logic;
          sercon_2                                        : in    std_logic;
          sercon_1                                        : in    std_logic;
          sercon_5                                        : in    std_logic;
          sercon_6                                        : in    std_logic;
          sercon_4                                        : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : out   std_logic;
          N_515                                           : in    std_logic;
          N_518                                           : out   std_logic;
          N_654                                           : in    std_logic;
          N_296                                           : in    std_logic;
          N_534                                           : in    std_logic;
          N_344                                           : in    std_logic;
          PRDATA_0_a2_10_out                              : out   std_logic;
          N_653                                           : in    std_logic;
          sync_update                                     : in    std_logic;
          un3_prdata_2                                    : in    std_logic;
          N_523                                           : out   std_logic;
          N_297                                           : in    std_logic;
          PRDATA_0_a2_3_out                               : out   std_logic;
          un6_prdatalt2_i                                 : in    std_logic;
          un97_psel_4                                     : in    std_logic;
          N_641                                           : out   std_logic;
          N_522                                           : in    std_logic;
          un59_psel_4                                     : in    std_logic;
          psh_enable_reg1_1_sqmuxa_0_a2_0_0               : in    std_logic;
          N_527                                           : in    std_logic;
          N_662                                           : in    std_logic;
          N_536                                           : in    std_logic;
          psh_negedge_reg_1_sqmuxa_0_a2_0_out             : in    std_logic;
          N_541                                           : in    std_logic;
          un59_psel                                       : in    std_logic;
          N_575_i_0                                       : out   std_logic;
          N_576_i_0                                       : out   std_logic;
          N_577_i_0                                       : out   std_logic;
          N_578_i_0                                       : out   std_logic;
          N_579_i_0                                       : out   std_logic;
          N_580_i_0                                       : out   std_logic;
          N_581_i_0                                       : out   std_logic;
          N_131_i_0                                       : out   std_logic;
          N_133_i_0                                       : out   std_logic;
          N_135_i_0                                       : out   std_logic;
          N_137_i_0                                       : out   std_logic;
          N_139_i_0                                       : out   std_logic
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \N_518\, N_521, \PRDATA_0_4[1]_net_1\, 
        \PRDATA_0_1[1]_net_1\, \PRDATA_0_3_1[1]_net_1\, N_520, 
        \PRDATA_0_2[1]_net_1\, N_438, \PRDATA_0_1[8]\, 
        \PRDATA_0_0[8]_net_1\, N_434, \PRDATA_0_1[9]\, 
        \PRDATA_0_0[9]_net_1\, \PRDATA_0_2_1[7]_net_1\, 
        \PRDATA_0_2[7]_net_1\, \PRDATA_0_a2_9_0_4\, 
        \PRDATA_0_a2_2_2[2]_net_1\, N_643, 
        \PRDATA_i_o3_1_0[10]_net_1\, N_583, 
        \PRDATA_0_a2_1_0[9]_net_1\, \PRDATA_0_a2_13_0[0]_net_1\, 
        \PRDATA_0_a2_10_out\, \PRDATA_0_a2_2_1[2]_net_1\, 
        \PRDATA_0_a2_0[0]_net_1\, \PRDATA_0_a2_13_0_0[0]_net_1\, 
        \PRDATA_0_a2_4_0[3]_net_1\, \PRDATA_0_a2_7_0[3]_net_1\, 
        \PRDATA_0_a2_1_0[27]_net_1\, \PRDATA_0_a2_5_0[7]_net_1\, 
        \PRDATA_0_a2_7_0[2]_net_1\, \PRDATA_0_a2_0[2]\, 
        \PRDATA_0_a2_1_0[15]_net_1\, \PRDATA_0_a2_1[0]\, 
        \PRDATA_0_a2_5_0[0]_net_1\, \N_523\, 
        \PRDATA_0_a2_5_1[0]_net_1\, \PRDATA_0_a2_3_out\, 
        \PRDATA_0_a2_9_0[0]_net_1\, \PRDATA_0_a2_5_0[4]_net_1\, 
        \PRDATA_0_a2_6_0[3]_net_1\, \PRDATA_m1_e_0_2\, \N_641\, 
        N_432, \PRDATA_0_3_tz[6]_net_1\, \PRDATA_0_3_tz[5]_net_1\, 
        N_717, N_713, N_709, N_704, N_699, N_694, N_690, N_686, 
        N_682, N_678, N_524, N_675, N_722, \PRDATA_0_0[0]_net_1\, 
        \PRDATA_0_0[2]_net_1\, \PRDATA_0_0[5]_net_1\, 
        \PRDATA_0_0[6]_net_1\, N_478, N_506, N_737, N_736, N_532, 
        N_531, N_463, N_454, \PRDATA_0_5[3]_net_1\, 
        \PRDATA_0_3[3]_net_1\, \PRDATA_0_0[3]_net_1\, 
        \PRDATA_0_4[0]_net_1\, \PRDATA_0_1[0]_net_1\, 
        \PRDATA_0_1[7]_net_1\, \PRDATA_0_4[2]_net_1\, 
        \PRDATA_0_2[2]_net_1\, \PRDATA_0_0[1]_net_1\, 
        \PRDATA_0_3_0[5]_net_1\, \PRDATA_0_1[5]_net_1\, 
        \PRDATA_0_3_0[6]_net_1\, \PRDATA_0_1[6]_net_1\, 
        \PRDATA_0_3[4]_net_1\, \PRDATA_0_0[4]_net_1\, 
        \PRDATA_0_0[15]\, \PRDATA_0_0[27]\, N_716, N_712, N_707, 
        N_702, N_697, N_693, N_689, N_685, N_681, N_677, N_495, 
        N_479, N_429, N_425, N_421, N_417, N_405, N_401, N_393, 
        N_394, N_409, N_673, N_720, N_503, N_410, N_487, 
        \PRDATA_0_4[3]_net_1\, \PRDATA_0_2[3]_net_1\, 
        \PRDATA_0_3[0]_net_1\, \PRDATA_0_4[7]_net_1\, 
        \PRDATA_0_5[2]_net_1\, \PRDATA_0_3[2]_net_1\, 
        \PRDATA_0_2[5]_net_1\, \PRDATA_0_2[6]_net_1\, 
        \PRDATA_0_2[4]_net_1\, \PRDATA_0_1[4]_net_1\, 
        \PRDATA_0_0[21]\, \PRDATA_0_0[12]\, \PRDATA_0_0[13]\, 
        \PRDATA_0_0[14]\, \PRDATA_0_0[30]\, \PRDATA_0_0[11]\, 
        \PRDATA_0_0[23]\, \PRDATA_0_0[26]\, 
        \PRDATA_i_1[17]_net_1\, \PRDATA_i_1[22]_net_1\, 
        \PRDATA_i_1[10]_net_1\, \PRDATA_i_1[16]_net_1\, 
        \PRDATA_i_1[20]_net_1\, \PRDATA_i_1[31]_net_1\, 
        \PRDATA_i_1[25]_net_1\, \PRDATA_i_1[28]_net_1\, 
        \PRDATA_i_1[29]_net_1\, \PRDATA_i_1[18]_net_1\, 
        \PRDATA_i_1[19]_net_1\, \PRDATA_i_1[24]_net_1\, 
        \PRDATA_0_7[3]_net_1\, \PRDATA_0_6[0]_net_1\, 
        \PRDATA_0_5[0]_net_1\, \PRDATA_0_6[7]_net_1\, GND_net_1, 
        VCC_net_1 : std_logic;

begin 

    PRDATA_0_a2_13_0(0) <= \PRDATA_0_a2_13_0[0]_net_1\;
    PRDATA_0_a2_5_1(0) <= \PRDATA_0_a2_5_1[0]_net_1\;
    PRDATA_0_a2_9_0_4 <= \PRDATA_0_a2_9_0_4\;
    N_518 <= \N_518\;
    PRDATA_0_a2_10_out <= \PRDATA_0_a2_10_out\;
    N_523 <= \N_523\;
    PRDATA_0_a2_3_out <= \PRDATA_0_a2_3_out\;
    N_641 <= \N_641\;

    \PRDATA_0_a2_10_RNIRB1E3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(91), B => N_401, C => N_532, 
        D => \PRDATA_0_0[26]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26);
    
    \PRDATA_i_1[17]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(50), C => 
        N_583, D => N_713, Y => \PRDATA_i_1[17]_net_1\);
    
    \PRDATA_0_a2_7_0[3]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => pwm_negedge_reg(4), 
        D => CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_0_a2_7_0[3]_net_1\);
    
    \PRDATA_0_a2_5_0[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => sync_update, D => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => 
        \PRDATA_0_a2_5_0[0]_net_1\);
    
    \PRDATA_i_a3_1[20]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(117), Y => N_699);
    
    \PRDATA_0_a2_16_RNI5VB11[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(31), C => 
        \PRDATA_0_a2_3_out\, Y => N_393);
    
    \PRDATA_0_a2_10_RNIP67N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(120), B => 
        pwm_negedge_reg(56), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[23]\);
    
    \PRDATA_0_a2_4_0[3]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(68), C => CoreAPB3_0_APBmslave0_PADDR(3), 
        D => CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_0_a2_4_0[3]_net_1\);
    
    \PRDATA_0_a2_13[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_a2_13_0_0[0]_net_1\, B => 
        \PRDATA_0_a2_13_0[0]_net_1\, C => N_515, D => 
        un6_prdatalt2_i, Y => \N_641\);
    
    \PRDATA_0_a2_16_RNI4S911[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(12), C => 
        \PRDATA_0_a2_3_out\, Y => N_429);
    
    \PRDATA_0_a2_9_0[4]\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(8), C => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \PRDATA_0_a2_9_0_4\);
    
    \PRDATA_0_6[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \PRDATA_0_3[0]_net_1\, B => 
        \PRDATA_0_4[0]_net_1\, Y => \PRDATA_0_6[0]_net_1\);
    
    \PRDATA_0_a2_1_0[9]\ : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_0_a2_1_0[9]_net_1\);
    
    PRDATA_m1_e_0_2 : CFG4
      generic map(INIT => x"0008")

      port map(A => pwm_negedge_reg(69), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_297, D => un97_psel_4, Y => \PRDATA_m1_e_0_2\);
    
    \PRDATA_i_a3_0[20]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(21), Y => N_697);
    
    \PRDATA_0_0[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA(0), B => 
        \PRDATA_0_a2_5_0[0]_net_1\, C => N_534, D => 
        \PRDATA_0_a2_5_1[0]_net_1\, Y => \PRDATA_0_0[0]_net_1\);
    
    \PRDATA_0_a2_16_RNINTKH1[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(124), 
        D => \PRDATA_0_a2_1_0[27]_net_1\, Y => \PRDATA_0_0[27]\);
    
    \PRDATA_0_3_0[5]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(102), 
        D => \PRDATA_0_3_tz[5]_net_1\, Y => 
        \PRDATA_0_3_0[5]_net_1\);
    
    \PRDATA_0_a2_10_RNI374L3[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_531, B => pwm_negedge_reg(16), C => N_410, 
        D => \PRDATA_0_0[15]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15);
    
    \PRDATA_0_0[3]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_534, B => \N_641\, C => PWM_STRETCH(3), D
         => CoreAPB3_0_APBmslave1_PRDATA(3), Y => 
        \PRDATA_0_0[3]_net_1\);
    
    \PRDATA_i_a3_2[31]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(128), Y => N_675);
    
    \PRDATA_0_a2_16_RNI5UA11[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(22), C => 
        \PRDATA_0_a2_3_out\, Y => N_409);
    
    \PRDATA_0_5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(99), B => N_527, C => N_463, 
        D => \PRDATA_0_0[2]_net_1\, Y => \PRDATA_0_5[2]_net_1\);
    
    \PRDATA_0_4[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(97), 
        D => \PRDATA_0_a2_9_0[0]_net_1\, Y => 
        \PRDATA_0_4[0]_net_1\);
    
    \PRDATA_i_1[29]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(62), C => 
        N_583, D => N_678, Y => \PRDATA_i_1[29]_net_1\);
    
    \PRDATA_0[3]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_2[3]_net_1\, B => 
        \PRDATA_0_7[3]_net_1\, C => \PRDATA_0_5[3]_net_1\, D => 
        \PRDATA_0_3[3]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3);
    
    \PRDATA_0_a2_1_0[15]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_654, C
         => pwm_negedge_reg(80), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_1_0[15]_net_1\);
    
    \PRDATA_0_1[6]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => \N_523\, B => \PRDATA_0_0[6]_net_1\, C => 
        sersta(3), D => N_643, Y => \PRDATA_0_1[6]_net_1\);
    
    \PRDATA_i_1[25]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(58), C => 
        N_583, D => N_686, Y => \PRDATA_i_1[25]_net_1\);
    
    \PRDATA_i_o3[10]\ : CFG4
      generic map(INIT => x"BFFF")

      port map(A => N_344, B => N_515, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        \PRDATA_i_o3_1_0[10]_net_1\, Y => N_583);
    
    N_577_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(93), B => N_737, C => N_681, 
        D => \PRDATA_i_1[28]_net_1\, Y => N_577_i_0);
    
    \PRDATA_0_a2_10_RNIS64N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(108), B => 
        pwm_negedge_reg(44), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[11]\);
    
    \PRDATA_0[1]\ : CFG4
      generic map(INIT => x"F8FF")

      port map(A => pwm_negedge_reg(34), B => N_521, C => 
        \PRDATA_0_4[1]_net_1\, D => \PRDATA_0_1[1]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1);
    
    \PRDATA_0_1[7]\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => psh_negedge_reg_1_sqmuxa_0_a2_0_out, B => 
        pwm_negedge_reg(104), C => N_432, D => \N_518\, Y => 
        \PRDATA_0_1[7]_net_1\);
    
    \PRDATA_0[4]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_1[4]_net_1\, B => N_479, C => 
        \PRDATA_0_3[4]_net_1\, D => \PRDATA_0_2[4]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4);
    
    \PRDATA_i_1[22]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(55), C => 
        N_583, D => N_694, Y => \PRDATA_i_1[22]_net_1\);
    
    \PRDATA_0_a2_9[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_515, B => \PRDATA_0_a2_9_0_4\, Y => \N_523\);
    
    N_131_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(84), B => N_737, C => N_702, 
        D => \PRDATA_i_1[19]_net_1\, Y => N_131_i_0);
    
    \PRDATA_0_a2_16_RNIBPJA3[0]\ : CFG4
      generic map(INIT => x"00DF")

      port map(A => pwm_negedge_reg(73), B => N_296, C => N_520, 
        D => \PRDATA_0_0[8]_net_1\, Y => \PRDATA_0_1[8]\);
    
    N_137_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(81), B => N_737, C => N_716, 
        D => \PRDATA_i_1[16]_net_1\, Y => N_137_i_0);
    
    \PRDATA_0_0[9]\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => psh_negedge_reg_1_sqmuxa_0_a2_0_out, B => 
        pwm_negedge_reg(106), C => N_432, D => \N_518\, Y => 
        \PRDATA_0_0[9]_net_1\);
    
    \PRDATA_0[2]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_2[2]_net_1\, B => 
        \PRDATA_0_4[2]_net_1\, C => \PRDATA_0_5[2]_net_1\, D => 
        \PRDATA_0_3[2]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2);
    
    \PRDATA_0_a2_16_RNI5T911[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(13), C => 
        \PRDATA_0_a2_3_out\, Y => N_425);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA_0_a2_7_0[2]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_654, C
         => pwm_negedge_reg(67), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_7_0[2]_net_1\);
    
    \PRDATA_0_0[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_534, B => \N_641\, C => PWM_STRETCH(1), D
         => CoreAPB3_0_APBmslave1_PRDATA(1), Y => 
        \PRDATA_0_0[1]_net_1\);
    
    \PRDATA_0_a2_16[0]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => un97_psel_4, B => N_515, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        \PRDATA_0_a2_10_out\, Y => N_520);
    
    \PRDATA_0_a2_4[30]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => un97_psel_4, B => \N_518\, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        N_297, Y => N_532);
    
    \PRDATA_0_a2_5_0[4]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_654, C
         => pwm_negedge_reg(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_5_0[4]_net_1\);
    
    \PRDATA_0_a2_0[0]\ : CFG3
      generic map(INIT => x"0D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        pwm_enable_reg(1), C => CoreAPB3_0_APBmslave0_PADDR(2), Y
         => \PRDATA_0_a2_0[0]_net_1\);
    
    \PRDATA_0_3[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sercon_2, B => \PRDATA_0_a2_0[2]\, C => N_520, 
        D => N_541, Y => \PRDATA_0_3[2]_net_1\);
    
    \PRDATA_0_a2_7[4]\ : CFG3
      generic map(INIT => x"20")

      port map(A => N_515, B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        \PRDATA_0_a2_9_0_4\, Y => N_524);
    
    \PRDATA_0_a2_13_0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_13_0[0]_net_1\);
    
    \PRDATA_0_0[5]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => N_432, B => CoreAPB3_0_APBmslave1_PRDATA(5), 
        C => N_534, Y => \PRDATA_0_0[5]_net_1\);
    
    \PRDATA_i_a3_1[22]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(119), Y => N_694);
    
    \PRDATA_0_a2_1[9]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \PRDATA_0_a2_1_0[9]_net_1\, B => N_296, C => 
        \PRDATA_0_a2_10_out\, D => N_515, Y => N_432);
    
    \PRDATA_0_a2_1_0[27]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_654, C
         => pwm_negedge_reg(92), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_1_0[27]_net_1\);
    
    \PRDATA_i_a3_1[19]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(116), Y => N_704);
    
    \PRDATA_0_1[1]\ : CFG4
      generic map(INIT => x"007F")

      port map(A => N_654, B => \PRDATA_0_3_1[1]_net_1\, C => 
        N_520, D => \PRDATA_0_2[1]_net_1\, Y => 
        \PRDATA_0_1[1]_net_1\);
    
    \PRDATA_i_1[16]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(49), C => 
        N_583, D => N_717, Y => \PRDATA_i_1[16]_net_1\);
    
    \PRDATA_0_a2_16_RNIA3B11[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(27), C => 
        \PRDATA_0_a2_3_out\, Y => N_401);
    
    \PRDATA_0_2[5]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => sercon_5, B => serdat(5), C => N_541, D => 
        N_536, Y => \PRDATA_0_2[5]_net_1\);
    
    N_581_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(85), B => N_737, C => N_697, 
        D => \PRDATA_i_1[20]_net_1\, Y => N_581_i_0);
    
    \PRDATA_i_a3_0[17]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(18), Y => N_712);
    
    \PRDATA_i_a3_0[22]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(23), Y => N_693);
    
    \PRDATA_0_a2_3[30]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => un97_psel_4, B => \N_518\, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        \PRDATA_0_a2_3_out\, Y => N_531);
    
    \PRDATA_0_a2[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(40), Y => N_503);
    
    \PRDATA_0_2[3]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_524, B => \PRDATA_0_0[3]_net_1\, C => 
        \PRDATA_0_a2_6_0[3]_net_1\, Y => \PRDATA_0_2[3]_net_1\);
    
    \PRDATA_i_a3_1[25]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(122), Y => N_686);
    
    \PRDATA_i_a3_0[18]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(19), Y => N_707);
    
    \PRDATA_i_a3_0[16]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(17), Y => N_716);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_0_a2_8[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => sersta(0), B => \PRDATA_0_a2_9_0_4\, C => 
        N_515, D => N_643, Y => N_478);
    
    \PRDATA_i_a3_0[25]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(26), Y => N_685);
    
    \PRDATA_0_a2_10_RNIP3RD3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(77), B => N_425, C => N_532, 
        D => \PRDATA_0_0[12]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12);
    
    \PRDATA_0_7[3]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => N_521, B => pwm_negedge_reg(36), C => 
        \PRDATA_0_4[3]_net_1\, Y => \PRDATA_0_7[3]_net_1\);
    
    \PRDATA_i_1[24]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(57), C => 
        N_583, D => N_690, Y => \PRDATA_i_1[24]_net_1\);
    
    \PRDATA_0_a2_10_RNIO70E3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(88), B => N_405, C => N_532, 
        D => \PRDATA_0_0[23]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23);
    
    \PRDATA_0_a2_10_RNI6F9L3[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_531, B => pwm_negedge_reg(28), C => N_394, 
        D => \PRDATA_0_0[27]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27);
    
    \PRDATA_0[7]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_4[7]_net_1\, B => 
        \PRDATA_0_6[7]_net_1\, C => N_506, D => 
        \PRDATA_0_2[7]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7);
    
    \PRDATA_0_a2_10_RNITSCE[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(60), Y => N_394);
    
    \PRDATA_0_0[4]\ : CFG4
      generic map(INIT => x"F888")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA(4), B => N_534, 
        C => \PRDATA_m1_e_0_2\, D => \N_518\, Y => 
        \PRDATA_0_0[4]_net_1\);
    
    \PRDATA_0_a2_10_RNIVC7N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(123), B => 
        pwm_negedge_reg(59), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[26]\);
    
    \PRDATA_0_3[4]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(101), 
        D => \PRDATA_0_a2_5_0[4]_net_1\, Y => 
        \PRDATA_0_3[4]_net_1\);
    
    N_580_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(87), B => N_737, C => N_693, 
        D => \PRDATA_i_1[22]_net_1\, Y => N_580_i_0);
    
    \PRDATA_0_3[3]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_662, B => N_536, C => pwm_enable_reg(4), D
         => serdat(3), Y => \PRDATA_0_3[3]_net_1\);
    
    N_133_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(83), B => N_737, C => N_707, 
        D => \PRDATA_i_1[18]_net_1\, Y => N_133_i_0);
    
    \PRDATA_i_a3_1[24]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(121), Y => N_690);
    
    \PRDATA_0_a2_5_0[7]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => pwm_negedge_reg(8), 
        D => CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_0_a2_5_0[7]_net_1\);
    
    N_135_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(82), B => N_737, C => N_712, 
        D => \PRDATA_i_1[17]_net_1\, Y => N_135_i_0);
    
    \PRDATA_i_a3_1[28]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(125), Y => N_682);
    
    \PRDATA_0_a2_10[0]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        un59_psel_4, C => un97_psel_4, D => \N_518\, Y => N_521);
    
    \PRDATA_0_0[2]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA(2), B => 
        \PRDATA_0_a2_2_2[2]_net_1\, C => N_534, D => \N_523\, Y
         => \PRDATA_0_0[2]_net_1\);
    
    \PRDATA_0_4[2]\ : CFG4
      generic map(INIT => x"C888")

      port map(A => \PRDATA_0_a2_7_0[2]_net_1\, B => N_520, C => 
        pwm_negedge_reg(3), D => \PRDATA_0_a2_3_out\, Y => 
        \PRDATA_0_4[2]_net_1\);
    
    \PRDATA_i_a3_0[24]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(25), Y => N_689);
    
    \PRDATA_0_a2_10_RNILVQD3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(76), B => N_429, C => N_532, 
        D => \PRDATA_0_0[11]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11);
    
    \PRDATA_0_a2_1_0[0]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \PRDATA_0_a2_0[0]_net_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => \PRDATA_0_a2_1[0]\);
    
    \PRDATA_0_5[0]\ : CFG4
      generic map(INIT => x"FFEA")

      port map(A => \PRDATA_0_1[0]_net_1\, B => N_521, C => 
        pwm_negedge_reg(33), D => \PRDATA_0_0[0]_net_1\, Y => 
        \PRDATA_0_5[0]_net_1\);
    
    \PRDATA_0_a2_10_RNIFHOP4[0]\ : CFG4
      generic map(INIT => x"ECFF")

      port map(A => pwm_negedge_reg(42), B => N_434, C => N_521, 
        D => \PRDATA_0_1[9]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9);
    
    \PRDATA_0_a2_10_RNI31BE[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(48), Y => N_410);
    
    \PRDATA_i_1[18]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(51), C => 
        N_583, D => N_709, Y => \PRDATA_i_1[18]_net_1\);
    
    \PRDATA_i_a3_0[28]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(29), Y => N_681);
    
    \PRDATA_0_2_1[7]\ : CFG4
      generic map(INIT => x"575F")

      port map(A => \PRDATA_0_a2_9_0_4\, B => sersta(4), C => 
        \PRDATA_0_a2_2_2[2]_net_1\, D => N_643, Y => 
        \PRDATA_0_2_1[7]_net_1\);
    
    \PRDATA_0_a2_3[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_641\, B => PWM_STRETCH(2), Y => N_463);
    
    \PRDATA_i_1[10]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(43), C => 
        N_583, D => N_722, Y => \PRDATA_i_1[10]_net_1\);
    
    \PRDATA_0_0[8]\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => psh_negedge_reg_1_sqmuxa_0_a2_0_out, B => 
        pwm_negedge_reg(105), C => N_432, D => \N_518\, Y => 
        \PRDATA_0_0[8]_net_1\);
    
    \PRDATA_0_2[6]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => sercon_6, B => serdat(6), C => N_541, D => 
        N_536, Y => \PRDATA_0_2[6]_net_1\);
    
    \PRDATA_0_a2_8[4]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => un3_prdata_2, B => N_654, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => N_643);
    
    \PRDATA_0_a2_16_RNI70B11[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(24), C => 
        \PRDATA_0_a2_3_out\, Y => N_405);
    
    \PRDATA_0_6[7]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \PRDATA_0_1[7]_net_1\, B => N_503, C => 
        serdat(7), D => N_536, Y => \PRDATA_0_6[7]_net_1\);
    
    \PRDATA_i_a3_3[31]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => N_297, B => un97_psel_4, C => un59_psel_4, D
         => N_344, Y => N_736);
    
    \PRDATA_0_a2_16_RNIHLIH1[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(112), 
        D => \PRDATA_0_a2_1_0[15]_net_1\, Y => \PRDATA_0_0[15]\);
    
    \PRDATA_0_a2_16_RNI7V911[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(15), C => 
        \PRDATA_0_a2_3_out\, Y => N_417);
    
    N_579_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(89), B => N_737, C => N_689, 
        D => \PRDATA_i_1[24]_net_1\, Y => N_579_i_0);
    
    \PRDATA_0_3_1[1]\ : CFG4
      generic map(INIT => x"0AC0")

      port map(A => pwm_negedge_reg(2), B => pwm_negedge_reg(66), 
        C => CoreAPB3_0_APBmslave0_PADDR(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_3_1[1]_net_1\);
    
    \PRDATA_0_a2_0_0[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_653, C
         => pwm_negedge_reg(35), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \PRDATA_0_a2_0[2]\);
    
    \PRDATA_0_4[3]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_432, B => N_478, C => 
        \PRDATA_0_a2_7_0[3]_net_1\, D => N_520, Y => 
        \PRDATA_0_4[3]_net_1\);
    
    \PRDATA_0_a2[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(38), Y => N_487);
    
    \PRDATA_0_a2_2_2[2]\ : CFG3
      generic map(INIT => x"10")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        N_653, C => \PRDATA_0_a2_2_1[2]_net_1\, Y => 
        \PRDATA_0_a2_2_2[2]_net_1\);
    
    \PRDATA_0[5]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_1[5]_net_1\, B => N_487, C => 
        \PRDATA_0_3_0[5]_net_1\, D => \PRDATA_0_2[5]_net_1\, Y
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5);
    
    \PRDATA_0_a2_6_0[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \PRDATA_0_a2_2_1[2]_net_1\, B => 
        COREI2C_0_0_INT(0), C => un6_prdatalt2_i, Y => 
        \PRDATA_0_a2_6_0[3]_net_1\);
    
    \PRDATA_0_a2_10_RNIN25N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(110), B => 
        pwm_negedge_reg(46), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[13]\);
    
    \PRDATA_0_3_tz[6]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => pwm_negedge_reg(7), B => pwm_negedge_reg(71), 
        C => N_522, D => N_296, Y => \PRDATA_0_3_tz[6]_net_1\);
    
    \PRDATA_0_a2_10_RNIP7VD3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(86), B => N_409, C => N_532, 
        D => \PRDATA_0_0[21]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21);
    
    \PRDATA_0_a2_10[9]\ : CFG3
      generic map(INIT => x"04")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => N_515, C
         => CoreAPB3_0_APBmslave0_PADDR(7), Y => \N_518\);
    
    N_139_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(75), B => N_737, C => N_720, 
        D => \PRDATA_i_1[10]_net_1\, Y => N_139_i_0);
    
    \PRDATA_i_a3_0[19]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(20), Y => N_702);
    
    \PRDATA_0_2[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sercon_1, B => serdat(1), C => N_536, D => 
        N_541, Y => \PRDATA_0_2[1]_net_1\);
    
    \PRDATA_i_a3_4[31]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_297, B => un97_psel_4, C => N_344, Y => 
        N_737);
    
    \PRDATA_0_a2_2_1[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => 
        \PRDATA_0_a2_2_1[2]_net_1\);
    
    \PRDATA_0_3[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sercon_0, B => serdat(0), C => N_536, D => 
        N_541, Y => \PRDATA_0_3[0]_net_1\);
    
    \PRDATA_0_a2_16_RNIDRJA3[0]\ : CFG4
      generic map(INIT => x"00DF")

      port map(A => pwm_negedge_reg(74), B => N_296, C => N_520, 
        D => \PRDATA_0_0[9]_net_1\, Y => \PRDATA_0_1[9]\);
    
    \PRDATA_i_1[19]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(52), C => 
        N_583, D => N_704, Y => \PRDATA_i_1[19]_net_1\);
    
    \PRDATA_0_a2_10_RNIP45N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(111), B => 
        pwm_negedge_reg(47), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[14]\);
    
    \PRDATA_0_3_0[6]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(103), 
        D => \PRDATA_0_3_tz[6]_net_1\, Y => 
        \PRDATA_0_3_0[6]_net_1\);
    
    \PRDATA_0_1[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \N_641\, B => \N_518\, C => PWM_STRETCH(0), D
         => \PRDATA_0_a2_1[0]\, Y => \PRDATA_0_1[0]_net_1\);
    
    \PRDATA_0_a2_16_RNI6U911[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_520, B => pwm_negedge_reg(14), C => 
        \PRDATA_0_a2_3_out\, Y => N_421);
    
    \PRDATA_0_3_tz[5]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => pwm_negedge_reg(6), B => pwm_negedge_reg(70), 
        C => N_522, D => N_296, Y => \PRDATA_0_3_tz[5]_net_1\);
    
    \PRDATA_i_o3_1_0[10]\ : CFG3
      generic map(INIT => x"28")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_i_o3_1_0[10]_net_1\);
    
    \PRDATA_i_a3_1[29]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(126), Y => N_678);
    
    \PRDATA_0_2[4]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => sercon_4, B => serdat(4), C => N_541, D => 
        N_536, Y => \PRDATA_0_2[4]_net_1\);
    
    \PRDATA_0_a2_3_s[30]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \PRDATA_0_a2_3_out\);
    
    \PRDATA_0_4[7]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sercon_7, B => \PRDATA_0_a2_5_0[7]_net_1\, C
         => N_520, D => N_541, Y => \PRDATA_0_4[7]_net_1\);
    
    N_578_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(90), B => N_737, C => N_685, 
        D => \PRDATA_i_1[25]_net_1\, Y => N_578_i_0);
    
    \PRDATA_0_a2_10_RNIPB3E3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(95), B => N_393, C => N_532, 
        D => \PRDATA_0_0[30]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30);
    
    \PRDATA_i_a3_2[10]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(107), Y => N_722);
    
    \PRDATA_0_a2_16_RNITETT[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => pwm_negedge_reg(9), B => N_522, C => N_520, Y
         => N_438);
    
    \PRDATA_0_2[2]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_662, B => N_536, C => pwm_enable_reg(3), D
         => serdat(2), Y => \PRDATA_0_2[2]_net_1\);
    
    \PRDATA_0_a2_9_0[0]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => N_654, C
         => pwm_negedge_reg(1), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_a2_9_0[0]_net_1\);
    
    N_576_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(94), B => N_737, C => N_677, 
        D => \PRDATA_i_1[29]_net_1\, Y => N_576_i_0);
    
    \PRDATA_i_a3_0[29]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(30), Y => N_677);
    
    \PRDATA_0_2[7]\ : CFG4
      generic map(INIT => x"B3A0")

      port map(A => N_534, B => \PRDATA_0_2_1[7]_net_1\, C => 
        CoreAPB3_0_APBmslave1_PRDATA(7), D => N_515, Y => 
        \PRDATA_0_2[7]_net_1\);
    
    \PRDATA_0_a2_10_RNIUC8N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(127), B => 
        pwm_negedge_reg(63), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[30]\);
    
    \PRDATA_0_a2_10_RNIKVRD3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(78), B => N_421, C => N_532, 
        D => \PRDATA_0_0[13]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13);
    
    \PRDATA_0_4[1]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(98), B => N_527, C => N_454, 
        D => \PRDATA_0_0[1]_net_1\, Y => \PRDATA_0_4[1]_net_1\);
    
    \PRDATA_0_a2_10_RNI42SM4[0]\ : CFG4
      generic map(INIT => x"ECFF")

      port map(A => pwm_negedge_reg(41), B => N_438, C => N_521, 
        D => \PRDATA_0_1[8]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8);
    
    \PRDATA_0_a2_5_1[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_515, B => N_297, Y => 
        \PRDATA_0_a2_5_1[0]_net_1\);
    
    \PRDATA_0_a2_13_0_0[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => 
        \PRDATA_0_a2_13_0_0[0]_net_1\);
    
    \PRDATA_i_1[28]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(61), C => 
        N_583, D => N_682, Y => \PRDATA_i_1[28]_net_1\);
    
    \PRDATA_i_a3_0[10]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(11), Y => N_720);
    
    \PRDATA_0_a2_10_RNIU84N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(109), B => 
        pwm_negedge_reg(45), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[12]\);
    
    \PRDATA_0_a2_16_RNI5RP01[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => pwm_negedge_reg(10), B => N_522, C => N_520, 
        Y => N_434);
    
    \PRDATA_0_0[6]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => N_432, B => CoreAPB3_0_APBmslave1_PRDATA(6), 
        C => N_534, Y => \PRDATA_0_0[6]_net_1\);
    
    \PRDATA_0_a2_10_s[9]\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \PRDATA_0_a2_10_out\);
    
    \PRDATA_0_5[3]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_527, B => N_520, C => pwm_negedge_reg(100), 
        D => \PRDATA_0_a2_4_0[3]_net_1\, Y => 
        \PRDATA_0_5[3]_net_1\);
    
    \PRDATA_i_1[20]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(53), C => 
        N_583, D => N_699, Y => \PRDATA_i_1[20]_net_1\);
    
    N_575_i : CFG4
      generic map(INIT => x"000B")

      port map(A => pwm_negedge_reg(96), B => N_737, C => N_673, 
        D => \PRDATA_i_1[31]_net_1\, Y => N_575_i_0);
    
    \PRDATA_0_a2_3[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_a2_10_out\, B => pwm_enable_reg(2), 
        C => psh_enable_reg1_1_sqmuxa_0_a2_0_0, D => N_515, Y => 
        N_454);
    
    \PRDATA_0_1[4]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => N_524, B => \PRDATA_0_0[4]_net_1\, C => 
        sersta(1), D => N_643, Y => \PRDATA_0_1[4]_net_1\);
    
    \PRDATA_i_a3_1[17]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(114), Y => N_713);
    
    \PRDATA_i_a3_1[18]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(115), Y => N_709);
    
    \PRDATA_0_a2[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(37), Y => N_479);
    
    \PRDATA_0_a2[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_521, B => pwm_negedge_reg(39), Y => N_495);
    
    \PRDATA_i_a3_1[16]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_344, B => un97_psel_4, C => 
        pwm_negedge_reg(113), Y => N_717);
    
    \PRDATA_0_a2_10_RNIO3SD3[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => pwm_negedge_reg(79), B => N_417, C => N_532, 
        D => \PRDATA_0_0[14]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14);
    
    \PRDATA_0[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(65), B => N_532, C => 
        \PRDATA_0_6[0]_net_1\, D => \PRDATA_0_5[0]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0);
    
    \PRDATA_0_1[5]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => \N_523\, B => \PRDATA_0_0[5]_net_1\, C => 
        sersta(2), D => N_643, Y => \PRDATA_0_1[5]_net_1\);
    
    \PRDATA_0_a2_2[7]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_520, B => pwm_negedge_reg(72), C => N_296, 
        Y => N_506);
    
    \PRDATA_0[6]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_0_1[6]_net_1\, B => N_495, C => 
        \PRDATA_0_3_0[6]_net_1\, D => \PRDATA_0_2[6]_net_1\, Y
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6);
    
    \PRDATA_i_1[31]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un59_psel, B => pwm_negedge_reg(64), C => 
        N_583, D => N_675, Y => \PRDATA_i_1[31]_net_1\);
    
    \PRDATA_0_a2_10_RNIUA6N[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => pwm_negedge_reg(118), B => 
        pwm_negedge_reg(54), C => N_527, D => N_521, Y => 
        \PRDATA_0_0[21]\);
    
    \PRDATA_i_a3_0[31]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_736, B => pwm_negedge_reg(32), Y => N_673);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreAPB3 is

    port( PRDATA_0_a2_9_0                                 : out   std_logic_vector(4 to 4);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : in    std_logic_vector(15 downto 12);
          PRDATA_0_a2_13_0                                : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                     : in    std_logic_vector(8 downto 0);
          PRDATA_0_a2_5_1                                 : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0);
          pwm_enable_reg                                  : in    std_logic_vector(4 downto 1);
          PWM_STRETCH                                     : in    std_logic_vector(3 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                    : in    std_logic_vector(7 downto 0);
          sersta                                          : in    std_logic_vector(4 downto 0);
          serdat                                          : in    std_logic_vector(7 downto 0);
          pwm_negedge_reg                                 : in    std_logic_vector(128 downto 1);
          sercon_0                                        : in    std_logic;
          sercon_7                                        : in    std_logic;
          sercon_2                                        : in    std_logic;
          sercon_1                                        : in    std_logic;
          sercon_5                                        : in    std_logic;
          sercon_6                                        : in    std_logic;
          sercon_4                                        : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx     : in    std_logic;
          N_515                                           : out   std_logic;
          N_514                                           : out   std_logic;
          N_518                                           : out   std_logic;
          N_654                                           : in    std_logic;
          N_296                                           : in    std_logic;
          N_534                                           : in    std_logic;
          N_344                                           : in    std_logic;
          PRDATA_0_a2_10_out                              : out   std_logic;
          N_653                                           : in    std_logic;
          sync_update                                     : in    std_logic;
          un3_prdata_2                                    : in    std_logic;
          N_523                                           : out   std_logic;
          N_297                                           : in    std_logic;
          PRDATA_0_a2_3_out                               : out   std_logic;
          un6_prdatalt2_i                                 : in    std_logic;
          un97_psel_4                                     : in    std_logic;
          N_641                                           : out   std_logic;
          N_522                                           : in    std_logic;
          un59_psel_4                                     : in    std_logic;
          psh_enable_reg1_1_sqmuxa_0_a2_0_0               : in    std_logic;
          N_527                                           : in    std_logic;
          N_662                                           : in    std_logic;
          N_536                                           : in    std_logic;
          psh_negedge_reg_1_sqmuxa_0_a2_0_out             : in    std_logic;
          N_541                                           : in    std_logic;
          un59_psel                                       : in    std_logic;
          N_575_i_0                                       : out   std_logic;
          N_576_i_0                                       : out   std_logic;
          N_577_i_0                                       : out   std_logic;
          N_578_i_0                                       : out   std_logic;
          N_579_i_0                                       : out   std_logic;
          N_580_i_0                                       : out   std_logic;
          N_581_i_0                                       : out   std_logic;
          N_131_i_0                                       : out   std_logic;
          N_133_i_0                                       : out   std_logic;
          N_135_i_0                                       : out   std_logic;
          N_137_i_0                                       : out   std_logic;
          N_139_i_0                                       : out   std_logic
        );

end CoreAPB3;

architecture DEF_ARCH of CoreAPB3 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component COREAPB3_MUXPTOB3
    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : in    std_logic_vector(13 to 13) := (others => 'U');
          PRDATA_0_a2_13_0                                : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                     : in    std_logic_vector(8 downto 0) := (others => 'U');
          PRDATA_0_a2_5_1                                 : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0) := (others => 'U');
          pwm_enable_reg                                  : in    std_logic_vector(4 downto 1) := (others => 'U');
          PWM_STRETCH                                     : in    std_logic_vector(3 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                    : in    std_logic_vector(7 downto 0) := (others => 'U');
          sersta                                          : in    std_logic_vector(4 downto 0) := (others => 'U');
          serdat                                          : in    std_logic_vector(7 downto 0) := (others => 'U');
          pwm_negedge_reg                                 : in    std_logic_vector(128 downto 1) := (others => 'U');
          PRDATA_0_a2_9_0_4                               : out   std_logic;
          sercon_0                                        : in    std_logic := 'U';
          sercon_7                                        : in    std_logic := 'U';
          sercon_2                                        : in    std_logic := 'U';
          sercon_1                                        : in    std_logic := 'U';
          sercon_5                                        : in    std_logic := 'U';
          sercon_6                                        : in    std_logic := 'U';
          sercon_4                                        : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : out   std_logic;
          N_515                                           : in    std_logic := 'U';
          N_518                                           : out   std_logic;
          N_654                                           : in    std_logic := 'U';
          N_296                                           : in    std_logic := 'U';
          N_534                                           : in    std_logic := 'U';
          N_344                                           : in    std_logic := 'U';
          PRDATA_0_a2_10_out                              : out   std_logic;
          N_653                                           : in    std_logic := 'U';
          sync_update                                     : in    std_logic := 'U';
          un3_prdata_2                                    : in    std_logic := 'U';
          N_523                                           : out   std_logic;
          N_297                                           : in    std_logic := 'U';
          PRDATA_0_a2_3_out                               : out   std_logic;
          un6_prdatalt2_i                                 : in    std_logic := 'U';
          un97_psel_4                                     : in    std_logic := 'U';
          N_641                                           : out   std_logic;
          N_522                                           : in    std_logic := 'U';
          un59_psel_4                                     : in    std_logic := 'U';
          psh_enable_reg1_1_sqmuxa_0_a2_0_0               : in    std_logic := 'U';
          N_527                                           : in    std_logic := 'U';
          N_662                                           : in    std_logic := 'U';
          N_536                                           : in    std_logic := 'U';
          psh_negedge_reg_1_sqmuxa_0_a2_0_out             : in    std_logic := 'U';
          N_541                                           : in    std_logic := 'U';
          un59_psel                                       : in    std_logic := 'U';
          N_575_i_0                                       : out   std_logic;
          N_576_i_0                                       : out   std_logic;
          N_577_i_0                                       : out   std_logic;
          N_578_i_0                                       : out   std_logic;
          N_579_i_0                                       : out   std_logic;
          N_580_i_0                                       : out   std_logic;
          N_581_i_0                                       : out   std_logic;
          N_131_i_0                                       : out   std_logic;
          N_133_i_0                                       : out   std_logic;
          N_135_i_0                                       : out   std_logic;
          N_137_i_0                                       : out   std_logic;
          N_139_i_0                                       : out   std_logic
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

    signal \N_515\, GND_net_1, VCC_net_1 : std_logic;

    for all : COREAPB3_MUXPTOB3
	Use entity work.COREAPB3_MUXPTOB3(DEF_ARCH);
begin 

    N_515 <= \N_515\;

    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
      port map(mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13)
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        PRDATA_0_a2_13_0(0) => PRDATA_0_a2_13_0(0), 
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
        CoreAPB3_0_APBmslave0_PADDR(0), PRDATA_0_a2_5_1(0) => 
        PRDATA_0_a2_5_1(0), COREI2C_0_0_INT(0) => 
        COREI2C_0_0_INT(0), pwm_enable_reg(4) => 
        pwm_enable_reg(4), pwm_enable_reg(3) => pwm_enable_reg(3), 
        pwm_enable_reg(2) => pwm_enable_reg(2), pwm_enable_reg(1)
         => pwm_enable_reg(1), PWM_STRETCH(3) => PWM_STRETCH(3), 
        PWM_STRETCH(2) => PWM_STRETCH(2), PWM_STRETCH(1) => 
        PWM_STRETCH(1), PWM_STRETCH(0) => PWM_STRETCH(0), 
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
        CoreAPB3_0_APBmslave1_PRDATA(0), sersta(4) => sersta(4), 
        sersta(3) => sersta(3), sersta(2) => sersta(2), sersta(1)
         => sersta(1), sersta(0) => sersta(0), serdat(7) => 
        serdat(7), serdat(6) => serdat(6), serdat(5) => serdat(5), 
        serdat(4) => serdat(4), serdat(3) => serdat(3), serdat(2)
         => serdat(2), serdat(1) => serdat(1), serdat(0) => 
        serdat(0), pwm_negedge_reg(128) => pwm_negedge_reg(128), 
        pwm_negedge_reg(127) => pwm_negedge_reg(127), 
        pwm_negedge_reg(126) => pwm_negedge_reg(126), 
        pwm_negedge_reg(125) => pwm_negedge_reg(125), 
        pwm_negedge_reg(124) => pwm_negedge_reg(124), 
        pwm_negedge_reg(123) => pwm_negedge_reg(123), 
        pwm_negedge_reg(122) => pwm_negedge_reg(122), 
        pwm_negedge_reg(121) => pwm_negedge_reg(121), 
        pwm_negedge_reg(120) => pwm_negedge_reg(120), 
        pwm_negedge_reg(119) => pwm_negedge_reg(119), 
        pwm_negedge_reg(118) => pwm_negedge_reg(118), 
        pwm_negedge_reg(117) => pwm_negedge_reg(117), 
        pwm_negedge_reg(116) => pwm_negedge_reg(116), 
        pwm_negedge_reg(115) => pwm_negedge_reg(115), 
        pwm_negedge_reg(114) => pwm_negedge_reg(114), 
        pwm_negedge_reg(113) => pwm_negedge_reg(113), 
        pwm_negedge_reg(112) => pwm_negedge_reg(112), 
        pwm_negedge_reg(111) => pwm_negedge_reg(111), 
        pwm_negedge_reg(110) => pwm_negedge_reg(110), 
        pwm_negedge_reg(109) => pwm_negedge_reg(109), 
        pwm_negedge_reg(108) => pwm_negedge_reg(108), 
        pwm_negedge_reg(107) => pwm_negedge_reg(107), 
        pwm_negedge_reg(106) => pwm_negedge_reg(106), 
        pwm_negedge_reg(105) => pwm_negedge_reg(105), 
        pwm_negedge_reg(104) => pwm_negedge_reg(104), 
        pwm_negedge_reg(103) => pwm_negedge_reg(103), 
        pwm_negedge_reg(102) => pwm_negedge_reg(102), 
        pwm_negedge_reg(101) => pwm_negedge_reg(101), 
        pwm_negedge_reg(100) => pwm_negedge_reg(100), 
        pwm_negedge_reg(99) => pwm_negedge_reg(99), 
        pwm_negedge_reg(98) => pwm_negedge_reg(98), 
        pwm_negedge_reg(97) => pwm_negedge_reg(97), 
        pwm_negedge_reg(96) => pwm_negedge_reg(96), 
        pwm_negedge_reg(95) => pwm_negedge_reg(95), 
        pwm_negedge_reg(94) => pwm_negedge_reg(94), 
        pwm_negedge_reg(93) => pwm_negedge_reg(93), 
        pwm_negedge_reg(92) => pwm_negedge_reg(92), 
        pwm_negedge_reg(91) => pwm_negedge_reg(91), 
        pwm_negedge_reg(90) => pwm_negedge_reg(90), 
        pwm_negedge_reg(89) => pwm_negedge_reg(89), 
        pwm_negedge_reg(88) => pwm_negedge_reg(88), 
        pwm_negedge_reg(87) => pwm_negedge_reg(87), 
        pwm_negedge_reg(86) => pwm_negedge_reg(86), 
        pwm_negedge_reg(85) => pwm_negedge_reg(85), 
        pwm_negedge_reg(84) => pwm_negedge_reg(84), 
        pwm_negedge_reg(83) => pwm_negedge_reg(83), 
        pwm_negedge_reg(82) => pwm_negedge_reg(82), 
        pwm_negedge_reg(81) => pwm_negedge_reg(81), 
        pwm_negedge_reg(80) => pwm_negedge_reg(80), 
        pwm_negedge_reg(79) => pwm_negedge_reg(79), 
        pwm_negedge_reg(78) => pwm_negedge_reg(78), 
        pwm_negedge_reg(77) => pwm_negedge_reg(77), 
        pwm_negedge_reg(76) => pwm_negedge_reg(76), 
        pwm_negedge_reg(75) => pwm_negedge_reg(75), 
        pwm_negedge_reg(74) => pwm_negedge_reg(74), 
        pwm_negedge_reg(73) => pwm_negedge_reg(73), 
        pwm_negedge_reg(72) => pwm_negedge_reg(72), 
        pwm_negedge_reg(71) => pwm_negedge_reg(71), 
        pwm_negedge_reg(70) => pwm_negedge_reg(70), 
        pwm_negedge_reg(69) => pwm_negedge_reg(69), 
        pwm_negedge_reg(68) => pwm_negedge_reg(68), 
        pwm_negedge_reg(67) => pwm_negedge_reg(67), 
        pwm_negedge_reg(66) => pwm_negedge_reg(66), 
        pwm_negedge_reg(65) => pwm_negedge_reg(65), 
        pwm_negedge_reg(64) => pwm_negedge_reg(64), 
        pwm_negedge_reg(63) => pwm_negedge_reg(63), 
        pwm_negedge_reg(62) => pwm_negedge_reg(62), 
        pwm_negedge_reg(61) => pwm_negedge_reg(61), 
        pwm_negedge_reg(60) => pwm_negedge_reg(60), 
        pwm_negedge_reg(59) => pwm_negedge_reg(59), 
        pwm_negedge_reg(58) => pwm_negedge_reg(58), 
        pwm_negedge_reg(57) => pwm_negedge_reg(57), 
        pwm_negedge_reg(56) => pwm_negedge_reg(56), 
        pwm_negedge_reg(55) => pwm_negedge_reg(55), 
        pwm_negedge_reg(54) => pwm_negedge_reg(54), 
        pwm_negedge_reg(53) => pwm_negedge_reg(53), 
        pwm_negedge_reg(52) => pwm_negedge_reg(52), 
        pwm_negedge_reg(51) => pwm_negedge_reg(51), 
        pwm_negedge_reg(50) => pwm_negedge_reg(50), 
        pwm_negedge_reg(49) => pwm_negedge_reg(49), 
        pwm_negedge_reg(48) => pwm_negedge_reg(48), 
        pwm_negedge_reg(47) => pwm_negedge_reg(47), 
        pwm_negedge_reg(46) => pwm_negedge_reg(46), 
        pwm_negedge_reg(45) => pwm_negedge_reg(45), 
        pwm_negedge_reg(44) => pwm_negedge_reg(44), 
        pwm_negedge_reg(43) => pwm_negedge_reg(43), 
        pwm_negedge_reg(42) => pwm_negedge_reg(42), 
        pwm_negedge_reg(41) => pwm_negedge_reg(41), 
        pwm_negedge_reg(40) => pwm_negedge_reg(40), 
        pwm_negedge_reg(39) => pwm_negedge_reg(39), 
        pwm_negedge_reg(38) => pwm_negedge_reg(38), 
        pwm_negedge_reg(37) => pwm_negedge_reg(37), 
        pwm_negedge_reg(36) => pwm_negedge_reg(36), 
        pwm_negedge_reg(35) => pwm_negedge_reg(35), 
        pwm_negedge_reg(34) => pwm_negedge_reg(34), 
        pwm_negedge_reg(33) => pwm_negedge_reg(33), 
        pwm_negedge_reg(32) => pwm_negedge_reg(32), 
        pwm_negedge_reg(31) => pwm_negedge_reg(31), 
        pwm_negedge_reg(30) => pwm_negedge_reg(30), 
        pwm_negedge_reg(29) => pwm_negedge_reg(29), 
        pwm_negedge_reg(28) => pwm_negedge_reg(28), 
        pwm_negedge_reg(27) => pwm_negedge_reg(27), 
        pwm_negedge_reg(26) => pwm_negedge_reg(26), 
        pwm_negedge_reg(25) => pwm_negedge_reg(25), 
        pwm_negedge_reg(24) => pwm_negedge_reg(24), 
        pwm_negedge_reg(23) => pwm_negedge_reg(23), 
        pwm_negedge_reg(22) => pwm_negedge_reg(22), 
        pwm_negedge_reg(21) => pwm_negedge_reg(21), 
        pwm_negedge_reg(20) => pwm_negedge_reg(20), 
        pwm_negedge_reg(19) => pwm_negedge_reg(19), 
        pwm_negedge_reg(18) => pwm_negedge_reg(18), 
        pwm_negedge_reg(17) => pwm_negedge_reg(17), 
        pwm_negedge_reg(16) => pwm_negedge_reg(16), 
        pwm_negedge_reg(15) => pwm_negedge_reg(15), 
        pwm_negedge_reg(14) => pwm_negedge_reg(14), 
        pwm_negedge_reg(13) => pwm_negedge_reg(13), 
        pwm_negedge_reg(12) => pwm_negedge_reg(12), 
        pwm_negedge_reg(11) => pwm_negedge_reg(11), 
        pwm_negedge_reg(10) => pwm_negedge_reg(10), 
        pwm_negedge_reg(9) => pwm_negedge_reg(9), 
        pwm_negedge_reg(8) => pwm_negedge_reg(8), 
        pwm_negedge_reg(7) => pwm_negedge_reg(7), 
        pwm_negedge_reg(6) => pwm_negedge_reg(6), 
        pwm_negedge_reg(5) => pwm_negedge_reg(5), 
        pwm_negedge_reg(4) => pwm_negedge_reg(4), 
        pwm_negedge_reg(3) => pwm_negedge_reg(3), 
        pwm_negedge_reg(2) => pwm_negedge_reg(2), 
        pwm_negedge_reg(1) => pwm_negedge_reg(1), 
        PRDATA_0_a2_9_0_4 => PRDATA_0_a2_9_0(4), sercon_0 => 
        sercon_0, sercon_7 => sercon_7, sercon_2 => sercon_2, 
        sercon_1 => sercon_1, sercon_5 => sercon_5, sercon_6 => 
        sercon_6, sercon_4 => sercon_4, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3 => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3, N_515 => 
        \N_515\, N_518 => N_518, N_654 => N_654, N_296 => N_296, 
        N_534 => N_534, N_344 => N_344, PRDATA_0_a2_10_out => 
        PRDATA_0_a2_10_out, N_653 => N_653, sync_update => 
        sync_update, un3_prdata_2 => un3_prdata_2, N_523 => N_523, 
        N_297 => N_297, PRDATA_0_a2_3_out => PRDATA_0_a2_3_out, 
        un6_prdatalt2_i => un6_prdatalt2_i, un97_psel_4 => 
        un97_psel_4, N_641 => N_641, N_522 => N_522, un59_psel_4
         => un59_psel_4, psh_enable_reg1_1_sqmuxa_0_a2_0_0 => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0, N_527 => N_527, N_662
         => N_662, N_536 => N_536, 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out => 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out, N_541 => N_541, 
        un59_psel => un59_psel, N_575_i_0 => N_575_i_0, N_576_i_0
         => N_576_i_0, N_577_i_0 => N_577_i_0, N_578_i_0 => 
        N_578_i_0, N_579_i_0 => N_579_i_0, N_580_i_0 => N_580_i_0, 
        N_581_i_0 => N_581_i_0, N_131_i_0 => N_131_i_0, N_133_i_0
         => N_133_i_0, N_135_i_0 => N_135_i_0, N_137_i_0 => 
        N_137_i_0, N_139_i_0 => N_139_i_0);
    
    \iPSELS_raw_0_a2_0_a2_0[2]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y
         => \N_515\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \iPSELS_raw_0_a2_0_a2_1[2]\ : CFG3
      generic map(INIT => x"02")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), Y
         => N_514);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_MSS is

    port( CoreAPB3_0_APBmslave0_PADDR                     : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                    : out   std_logic_vector(31 downto 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                   : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx     : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                    : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F            : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                     : in    std_logic;
          N_139_i_0                                       : in    std_logic;
          N_137_i_0                                       : in    std_logic;
          N_135_i_0                                       : in    std_logic;
          N_133_i_0                                       : in    std_logic;
          N_131_i_0                                       : in    std_logic;
          N_581_i_0                                       : in    std_logic;
          N_580_i_0                                       : in    std_logic;
          N_579_i_0                                       : in    std_logic;
          N_578_i_0                                       : in    std_logic;
          N_577_i_0                                       : in    std_logic;
          N_576_i_0                                       : in    std_logic;
          N_575_i_0                                       : in    std_logic;
          FAB_CCC_LOCK                                    : in    std_logic;
          FAB_CCC_GL0                                     : in    std_logic
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
        nc57, nc156, nc280, nc125, nc211, nc73, nc107, nc329, 
        nc66, nc83, nc9, nc252, nc171, nc54, nc286, nc307, nc135, 
        nc41, nc100, nc270, nc52, nc251, nc186, nc29, nc269, 
        nc118, nc60, nc141, nc311, nc276, nc193, nc214, nc298, 
        nc282, nc240, nc45, nc53, nc121, nc176, nc220, nc158, 
        nc281, nc209, nc246, nc162, nc11, nc272, nc131, nc254, 
        nc267, nc96, nc79, nc226, nc146, nc230, nc89, nc119, nc48, 
        nc271, nc213, nc300, nc126, nc195, nc188, nc242, nc15, 
        nc308, nc236, nc102, nc304, nc3, nc207, nc47, nc90, nc284, 
        nc222, nc159, nc136, nc241, nc253, nc178, nc306, nc215, 
        nc59, nc221, nc232, nc274, nc18, nc44, nc117, nc189, 
        nc164, nc148, nc42, nc231, nc191, nc255, nc283, nc317, 
        nc290, nc17, nc2, nc302, nc110, nc128, nc244, nc321, nc43, 
        nc179, nc157, nc36, nc224, nc296, nc273, nc61, nc104, 
        nc138, nc14, nc285, nc303, nc150, nc196, nc234, nc149, 
        nc12, nc219, nc30, nc243, nc187, nc65, nc7, nc292, nc129, 
        nc275, nc8, nc223, nc13, nc305, nc180, nc26, nc291, nc177, 
        nc139, nc310, nc259, nc245, nc233, nc163, nc318, nc268, 
        nc112, nc68, nc49, nc314, nc217, nc170, nc91, nc225, nc5, 
        nc20, nc198, nc147, nc316, nc67, nc289, nc294, nc152, 
        nc127, nc103, nc235, nc76, nc208, nc140, nc257, nc86, 
        nc95, nc327, nc120, nc165, nc279, nc137, nc64, nc19, 
        nc312, nc70, nc182, nc62, nc199, nc80, nc130, nc287, nc98, 
        nc293, nc249, nc114, nc56, nc105, nc63, nc313, nc309, 
        nc172, nc229, nc277, nc97, nc161, nc31, nc295, nc154, 
        nc50, nc260, nc239, nc142, nc320, nc315, nc247, nc94, 
        nc197, nc328, nc122, nc266, nc35, nc324, nc4, nc227, nc92, 
        nc101, nc330, nc184, nc200, nc190, nc166, nc326, nc132, 
        nc21, nc237, nc93, nc262, nc69, nc206, nc174, nc38, nc113, 
        nc218, nc106, nc261, nc25, nc1, nc322, nc299, nc37, nc202, 
        nc144, nc153, nc46, nc258, nc71, nc124, nc81, nc201, 
        nc168, nc323, nc34, nc28, nc115, nc264, nc192, nc319, 
        nc134, nc32, nc40, nc297, nc99, nc75, nc183, nc288, nc85, 
        nc27, nc108, nc325, nc16, nc155, nc51, nc301, nc33, nc204, 
        nc173, nc278, nc169, nc78, nc263, nc24, nc88, nc111, nc55, 
        nc10, nc22, nc210, nc185, nc143, nc248, nc77, nc6, nc109, 
        nc87, nc123 : std_logic;

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
        F_FM0_RDATA(14) => nc57, F_FM0_RDATA(13) => nc156, 
        F_FM0_RDATA(12) => nc280, F_FM0_RDATA(11) => nc125, 
        F_FM0_RDATA(10) => nc211, F_FM0_RDATA(9) => nc73, 
        F_FM0_RDATA(8) => nc107, F_FM0_RDATA(7) => nc329, 
        F_FM0_RDATA(6) => nc66, F_FM0_RDATA(5) => nc83, 
        F_FM0_RDATA(4) => nc9, F_FM0_RDATA(3) => nc252, 
        F_FM0_RDATA(2) => nc171, F_FM0_RDATA(1) => nc54, 
        F_FM0_RDATA(0) => nc286, F_FM0_READYOUT => OPEN, 
        F_FM0_RESP => OPEN, F_HM0_ADDR(31) => nc307, 
        F_HM0_ADDR(30) => nc135, F_HM0_ADDR(29) => nc41, 
        F_HM0_ADDR(28) => nc100, F_HM0_ADDR(27) => nc270, 
        F_HM0_ADDR(26) => nc52, F_HM0_ADDR(25) => nc251, 
        F_HM0_ADDR(24) => nc186, F_HM0_ADDR(23) => nc29, 
        F_HM0_ADDR(22) => nc269, F_HM0_ADDR(21) => nc118, 
        F_HM0_ADDR(20) => nc60, F_HM0_ADDR(19) => nc141, 
        F_HM0_ADDR(18) => nc311, F_HM0_ADDR(17) => nc276, 
        F_HM0_ADDR(16) => nc193, F_HM0_ADDR(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), 
        F_HM0_ADDR(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), 
        F_HM0_ADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        F_HM0_ADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        F_HM0_ADDR(11) => nc214, F_HM0_ADDR(10) => nc298, 
        F_HM0_ADDR(9) => nc282, F_HM0_ADDR(8) => 
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
        F_HM0_SIZE(1) => nc240, F_HM0_SIZE(0) => nc45, 
        F_HM0_TRANS1 => OPEN, F_HM0_WDATA(31) => 
        CoreAPB3_0_APBmslave0_PWDATA(31), F_HM0_WDATA(30) => 
        CoreAPB3_0_APBmslave0_PWDATA(30), F_HM0_WDATA(29) => 
        CoreAPB3_0_APBmslave0_PWDATA(29), F_HM0_WDATA(28) => 
        CoreAPB3_0_APBmslave0_PWDATA(28), F_HM0_WDATA(27) => 
        CoreAPB3_0_APBmslave0_PWDATA(27), F_HM0_WDATA(26) => 
        CoreAPB3_0_APBmslave0_PWDATA(26), F_HM0_WDATA(25) => 
        CoreAPB3_0_APBmslave0_PWDATA(25), F_HM0_WDATA(24) => 
        CoreAPB3_0_APBmslave0_PWDATA(24), F_HM0_WDATA(23) => 
        CoreAPB3_0_APBmslave0_PWDATA(23), F_HM0_WDATA(22) => 
        CoreAPB3_0_APBmslave0_PWDATA(22), F_HM0_WDATA(21) => 
        CoreAPB3_0_APBmslave0_PWDATA(21), F_HM0_WDATA(20) => 
        CoreAPB3_0_APBmslave0_PWDATA(20), F_HM0_WDATA(19) => 
        CoreAPB3_0_APBmslave0_PWDATA(19), F_HM0_WDATA(18) => 
        CoreAPB3_0_APBmslave0_PWDATA(18), F_HM0_WDATA(17) => 
        CoreAPB3_0_APBmslave0_PWDATA(17), F_HM0_WDATA(16) => 
        CoreAPB3_0_APBmslave0_PWDATA(16), F_HM0_WDATA(15) => 
        CoreAPB3_0_APBmslave0_PWDATA(15), F_HM0_WDATA(14) => 
        CoreAPB3_0_APBmslave0_PWDATA(14), F_HM0_WDATA(13) => 
        CoreAPB3_0_APBmslave0_PWDATA(13), F_HM0_WDATA(12) => 
        CoreAPB3_0_APBmslave0_PWDATA(12), F_HM0_WDATA(11) => 
        CoreAPB3_0_APBmslave0_PWDATA(11), F_HM0_WDATA(10) => 
        CoreAPB3_0_APBmslave0_PWDATA(10), F_HM0_WDATA(9) => 
        CoreAPB3_0_APBmslave0_PWDATA(9), F_HM0_WDATA(8) => 
        CoreAPB3_0_APBmslave0_PWDATA(8), F_HM0_WDATA(7) => 
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
         => OPEN, FAB_OPMODE(1) => nc53, FAB_OPMODE(0) => nc121, 
        FAB_SUSPENDM => OPEN, FAB_TERMSEL => OPEN, FAB_TXVALID
         => OPEN, FAB_VCONTROL(3) => nc176, FAB_VCONTROL(2) => 
        nc220, FAB_VCONTROL(1) => nc158, FAB_VCONTROL(0) => nc281, 
        FAB_VCONTROLLOADM => OPEN, FAB_XCVRSEL(1) => nc209, 
        FAB_XCVRSEL(0) => nc246, FAB_XDATAOUT(7) => nc162, 
        FAB_XDATAOUT(6) => nc11, FAB_XDATAOUT(5) => nc272, 
        FAB_XDATAOUT(4) => nc131, FAB_XDATAOUT(3) => nc254, 
        FAB_XDATAOUT(2) => nc267, FAB_XDATAOUT(1) => nc96, 
        FAB_XDATAOUT(0) => nc79, FACC_GLMUX_SEL => OPEN, 
        FIC32_0_MASTER(1) => nc226, FIC32_0_MASTER(0) => nc146, 
        FIC32_1_MASTER(1) => nc230, FIC32_1_MASTER(0) => nc89, 
        FPGA_RESET_N => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        GTX_CLK => OPEN, H2F_INTERRUPT(15) => nc119, 
        H2F_INTERRUPT(14) => nc48, H2F_INTERRUPT(13) => nc271, 
        H2F_INTERRUPT(12) => nc213, H2F_INTERRUPT(11) => nc300, 
        H2F_INTERRUPT(10) => nc126, H2F_INTERRUPT(9) => nc195, 
        H2F_INTERRUPT(8) => nc188, H2F_INTERRUPT(7) => nc242, 
        H2F_INTERRUPT(6) => nc15, H2F_INTERRUPT(5) => nc308, 
        H2F_INTERRUPT(4) => nc236, H2F_INTERRUPT(3) => nc102, 
        H2F_INTERRUPT(2) => nc304, H2F_INTERRUPT(1) => nc3, 
        H2F_INTERRUPT(0) => nc207, H2F_NMI => OPEN, H2FCALIB => 
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
        PER2_FABRIC_PADDR(15) => nc47, PER2_FABRIC_PADDR(14) => 
        nc90, PER2_FABRIC_PADDR(13) => nc284, 
        PER2_FABRIC_PADDR(12) => nc222, PER2_FABRIC_PADDR(11) => 
        nc159, PER2_FABRIC_PADDR(10) => nc136, 
        PER2_FABRIC_PADDR(9) => nc241, PER2_FABRIC_PADDR(8) => 
        nc253, PER2_FABRIC_PADDR(7) => nc178, 
        PER2_FABRIC_PADDR(6) => nc306, PER2_FABRIC_PADDR(5) => 
        nc215, PER2_FABRIC_PADDR(4) => nc59, PER2_FABRIC_PADDR(3)
         => nc221, PER2_FABRIC_PADDR(2) => nc232, 
        PER2_FABRIC_PENABLE => OPEN, PER2_FABRIC_PSEL => OPEN, 
        PER2_FABRIC_PWDATA(31) => nc274, PER2_FABRIC_PWDATA(30)
         => nc18, PER2_FABRIC_PWDATA(29) => nc44, 
        PER2_FABRIC_PWDATA(28) => nc117, PER2_FABRIC_PWDATA(27)
         => nc189, PER2_FABRIC_PWDATA(26) => nc164, 
        PER2_FABRIC_PWDATA(25) => nc148, PER2_FABRIC_PWDATA(24)
         => nc42, PER2_FABRIC_PWDATA(23) => nc231, 
        PER2_FABRIC_PWDATA(22) => nc191, PER2_FABRIC_PWDATA(21)
         => nc255, PER2_FABRIC_PWDATA(20) => nc283, 
        PER2_FABRIC_PWDATA(19) => nc317, PER2_FABRIC_PWDATA(18)
         => nc290, PER2_FABRIC_PWDATA(17) => nc17, 
        PER2_FABRIC_PWDATA(16) => nc2, PER2_FABRIC_PWDATA(15) => 
        nc302, PER2_FABRIC_PWDATA(14) => nc110, 
        PER2_FABRIC_PWDATA(13) => nc128, PER2_FABRIC_PWDATA(12)
         => nc244, PER2_FABRIC_PWDATA(11) => nc321, 
        PER2_FABRIC_PWDATA(10) => nc43, PER2_FABRIC_PWDATA(9) => 
        nc179, PER2_FABRIC_PWDATA(8) => nc157, 
        PER2_FABRIC_PWDATA(7) => nc36, PER2_FABRIC_PWDATA(6) => 
        nc224, PER2_FABRIC_PWDATA(5) => nc296, 
        PER2_FABRIC_PWDATA(4) => nc273, PER2_FABRIC_PWDATA(3) => 
        nc61, PER2_FABRIC_PWDATA(2) => nc104, 
        PER2_FABRIC_PWDATA(1) => nc138, PER2_FABRIC_PWDATA(0) => 
        nc14, PER2_FABRIC_PWRITE => OPEN, RTC_MATCH => OPEN, 
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
        SPI1_SS7_MGPIO24A_H2F_A => OPEN, TCGF(9) => nc285, 
        TCGF(8) => nc303, TCGF(7) => nc150, TCGF(6) => nc196, 
        TCGF(5) => nc234, TCGF(4) => nc149, TCGF(3) => nc12, 
        TCGF(2) => nc219, TCGF(1) => nc30, TCGF(0) => nc243, 
        TRACECLK => OPEN, TRACEDATA(3) => nc187, TRACEDATA(2) => 
        nc65, TRACEDATA(1) => nc7, TRACEDATA(0) => nc292, TX_CLK
         => OPEN, TX_ENF => OPEN, TX_ERRF => OPEN, TXCTL_EN_RIF
         => OPEN, TXD_RIF(3) => nc129, TXD_RIF(2) => nc275, 
        TXD_RIF(1) => nc8, TXD_RIF(0) => nc223, TXDF(7) => nc13, 
        TXDF(6) => nc305, TXDF(5) => nc180, TXDF(4) => nc26, 
        TXDF(3) => nc291, TXDF(2) => nc177, TXDF(1) => nc139, 
        TXDF(0) => nc310, TXEV => OPEN, WDOGTIMEOUT => OPEN, 
        F_ARREADY_HREADYOUT1 => OPEN, F_AWREADY_HREADYOUT0 => 
        OPEN, F_BID(3) => nc259, F_BID(2) => nc245, F_BID(1) => 
        nc233, F_BID(0) => nc163, F_BRESP_HRESP0(1) => nc318, 
        F_BRESP_HRESP0(0) => nc268, F_BVALID => OPEN, 
        F_RDATA_HRDATA01(63) => nc112, F_RDATA_HRDATA01(62) => 
        nc68, F_RDATA_HRDATA01(61) => nc49, F_RDATA_HRDATA01(60)
         => nc314, F_RDATA_HRDATA01(59) => nc217, 
        F_RDATA_HRDATA01(58) => nc170, F_RDATA_HRDATA01(57) => 
        nc91, F_RDATA_HRDATA01(56) => nc225, F_RDATA_HRDATA01(55)
         => nc5, F_RDATA_HRDATA01(54) => nc20, 
        F_RDATA_HRDATA01(53) => nc198, F_RDATA_HRDATA01(52) => 
        nc147, F_RDATA_HRDATA01(51) => nc316, 
        F_RDATA_HRDATA01(50) => nc67, F_RDATA_HRDATA01(49) => 
        nc289, F_RDATA_HRDATA01(48) => nc294, 
        F_RDATA_HRDATA01(47) => nc152, F_RDATA_HRDATA01(46) => 
        nc127, F_RDATA_HRDATA01(45) => nc103, 
        F_RDATA_HRDATA01(44) => nc235, F_RDATA_HRDATA01(43) => 
        nc76, F_RDATA_HRDATA01(42) => nc208, F_RDATA_HRDATA01(41)
         => nc140, F_RDATA_HRDATA01(40) => nc257, 
        F_RDATA_HRDATA01(39) => nc86, F_RDATA_HRDATA01(38) => 
        nc95, F_RDATA_HRDATA01(37) => nc327, F_RDATA_HRDATA01(36)
         => nc120, F_RDATA_HRDATA01(35) => nc165, 
        F_RDATA_HRDATA01(34) => nc279, F_RDATA_HRDATA01(33) => 
        nc137, F_RDATA_HRDATA01(32) => nc64, F_RDATA_HRDATA01(31)
         => nc19, F_RDATA_HRDATA01(30) => nc312, 
        F_RDATA_HRDATA01(29) => nc70, F_RDATA_HRDATA01(28) => 
        nc182, F_RDATA_HRDATA01(27) => nc62, F_RDATA_HRDATA01(26)
         => nc199, F_RDATA_HRDATA01(25) => nc80, 
        F_RDATA_HRDATA01(24) => nc130, F_RDATA_HRDATA01(23) => 
        nc287, F_RDATA_HRDATA01(22) => nc98, F_RDATA_HRDATA01(21)
         => nc293, F_RDATA_HRDATA01(20) => nc249, 
        F_RDATA_HRDATA01(19) => nc114, F_RDATA_HRDATA01(18) => 
        nc56, F_RDATA_HRDATA01(17) => nc105, F_RDATA_HRDATA01(16)
         => nc63, F_RDATA_HRDATA01(15) => nc313, 
        F_RDATA_HRDATA01(14) => nc309, F_RDATA_HRDATA01(13) => 
        nc172, F_RDATA_HRDATA01(12) => nc229, 
        F_RDATA_HRDATA01(11) => nc277, F_RDATA_HRDATA01(10) => 
        nc97, F_RDATA_HRDATA01(9) => nc161, F_RDATA_HRDATA01(8)
         => nc31, F_RDATA_HRDATA01(7) => nc295, 
        F_RDATA_HRDATA01(6) => nc154, F_RDATA_HRDATA01(5) => nc50, 
        F_RDATA_HRDATA01(4) => nc260, F_RDATA_HRDATA01(3) => 
        nc239, F_RDATA_HRDATA01(2) => nc142, F_RDATA_HRDATA01(1)
         => nc320, F_RDATA_HRDATA01(0) => nc315, F_RID(3) => 
        nc247, F_RID(2) => nc94, F_RID(1) => nc197, F_RID(0) => 
        nc328, F_RLAST => OPEN, F_RRESP_HRESP1(1) => nc122, 
        F_RRESP_HRESP1(0) => nc266, F_RVALID => OPEN, F_WREADY
         => OPEN, MDDR_FABRIC_PRDATA(15) => nc35, 
        MDDR_FABRIC_PRDATA(14) => nc324, MDDR_FABRIC_PRDATA(13)
         => nc4, MDDR_FABRIC_PRDATA(12) => nc227, 
        MDDR_FABRIC_PRDATA(11) => nc92, MDDR_FABRIC_PRDATA(10)
         => nc101, MDDR_FABRIC_PRDATA(9) => nc330, 
        MDDR_FABRIC_PRDATA(8) => nc184, MDDR_FABRIC_PRDATA(7) => 
        nc200, MDDR_FABRIC_PRDATA(6) => nc190, 
        MDDR_FABRIC_PRDATA(5) => nc166, MDDR_FABRIC_PRDATA(4) => 
        nc326, MDDR_FABRIC_PRDATA(3) => nc132, 
        MDDR_FABRIC_PRDATA(2) => nc21, MDDR_FABRIC_PRDATA(1) => 
        nc237, MDDR_FABRIC_PRDATA(0) => nc93, MDDR_FABRIC_PREADY
         => OPEN, MDDR_FABRIC_PSLVERR => OPEN, CAN_RXBUS_F2H_SCP
         => VCC_net_1, CAN_TX_EBL_F2H_SCP => VCC_net_1, 
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
        F_HM0_RDATA(31) => N_575_i_0, F_HM0_RDATA(30) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30, 
        F_HM0_RDATA(29) => N_576_i_0, F_HM0_RDATA(28) => 
        N_577_i_0, F_HM0_RDATA(27) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27, 
        F_HM0_RDATA(26) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26, 
        F_HM0_RDATA(25) => N_578_i_0, F_HM0_RDATA(24) => 
        N_579_i_0, F_HM0_RDATA(23) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23, 
        F_HM0_RDATA(22) => N_580_i_0, F_HM0_RDATA(21) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21, 
        F_HM0_RDATA(20) => N_581_i_0, F_HM0_RDATA(19) => 
        N_131_i_0, F_HM0_RDATA(18) => N_133_i_0, F_HM0_RDATA(17)
         => N_135_i_0, F_HM0_RDATA(16) => N_137_i_0, 
        F_HM0_RDATA(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15, 
        F_HM0_RDATA(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14, 
        F_HM0_RDATA(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13, 
        F_HM0_RDATA(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12, 
        F_HM0_RDATA(11) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11, 
        F_HM0_RDATA(10) => N_139_i_0, F_HM0_RDATA(9) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9, 
        F_HM0_RDATA(8) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8, 
        F_HM0_RDATA(7) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7, 
        F_HM0_RDATA(6) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6, 
        F_HM0_RDATA(5) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5, 
        F_HM0_RDATA(4) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4, 
        F_HM0_RDATA(3) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3, 
        F_HM0_RDATA(2) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2, 
        F_HM0_RDATA(1) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1, 
        F_HM0_RDATA(0) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0, 
        F_HM0_READY => VCC_net_1, F_HM0_RESP => GND_net_1, 
        FAB_AVALID => VCC_net_1, FAB_HOSTDISCON => VCC_net_1, 
        FAB_IDDIG => VCC_net_1, FAB_LINESTATE(1) => VCC_net_1, 
        FAB_LINESTATE(0) => VCC_net_1, FAB_M3_RESET_N => 
        VCC_net_1, FAB_PLL_LOCK => FAB_CCC_LOCK, FAB_RXACTIVE => 
        VCC_net_1, FAB_RXERROR => VCC_net_1, FAB_RXVALID => 
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
         => nc262, DRAM_ADDR(14) => nc69, DRAM_ADDR(13) => nc206, 
        DRAM_ADDR(12) => nc174, DRAM_ADDR(11) => nc38, 
        DRAM_ADDR(10) => nc113, DRAM_ADDR(9) => nc218, 
        DRAM_ADDR(8) => nc106, DRAM_ADDR(7) => nc261, 
        DRAM_ADDR(6) => nc25, DRAM_ADDR(5) => nc1, DRAM_ADDR(4)
         => nc322, DRAM_ADDR(3) => nc299, DRAM_ADDR(2) => nc37, 
        DRAM_ADDR(1) => nc202, DRAM_ADDR(0) => nc144, DRAM_BA(2)
         => nc153, DRAM_BA(1) => nc46, DRAM_BA(0) => nc258, 
        DRAM_CASN => OPEN, DRAM_CKE => OPEN, DRAM_CLK => OPEN, 
        DRAM_CSN => OPEN, DRAM_DM_RDQS_OUT(2) => nc71, 
        DRAM_DM_RDQS_OUT(1) => nc124, DRAM_DM_RDQS_OUT(0) => nc81, 
        DRAM_DQ_OUT(17) => nc201, DRAM_DQ_OUT(16) => nc168, 
        DRAM_DQ_OUT(15) => nc323, DRAM_DQ_OUT(14) => nc34, 
        DRAM_DQ_OUT(13) => nc28, DRAM_DQ_OUT(12) => nc115, 
        DRAM_DQ_OUT(11) => nc264, DRAM_DQ_OUT(10) => nc192, 
        DRAM_DQ_OUT(9) => nc319, DRAM_DQ_OUT(8) => nc134, 
        DRAM_DQ_OUT(7) => nc32, DRAM_DQ_OUT(6) => nc40, 
        DRAM_DQ_OUT(5) => nc297, DRAM_DQ_OUT(4) => nc99, 
        DRAM_DQ_OUT(3) => nc75, DRAM_DQ_OUT(2) => nc183, 
        DRAM_DQ_OUT(1) => nc288, DRAM_DQ_OUT(0) => nc85, 
        DRAM_DQS_OUT(2) => nc27, DRAM_DQS_OUT(1) => nc108, 
        DRAM_DQS_OUT(0) => nc325, DRAM_FIFO_WE_OUT(1) => nc16, 
        DRAM_FIFO_WE_OUT(0) => nc155, DRAM_ODT => OPEN, DRAM_RASN
         => OPEN, DRAM_RSTN => OPEN, DRAM_WEN => OPEN, 
        I2C0_SCL_USBC_DATA1_MGPIO31B_OUT => OPEN, 
        I2C0_SDA_USBC_DATA0_MGPIO30B_OUT => OPEN, 
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
        CAN_TXBUS_USBA_DATA0_MGPIO2A_OE => OPEN, DM_OE(2) => nc51, 
        DM_OE(1) => nc301, DM_OE(0) => nc33, DRAM_DQ_OE(17) => 
        nc204, DRAM_DQ_OE(16) => nc173, DRAM_DQ_OE(15) => nc278, 
        DRAM_DQ_OE(14) => nc169, DRAM_DQ_OE(13) => nc78, 
        DRAM_DQ_OE(12) => nc263, DRAM_DQ_OE(11) => nc24, 
        DRAM_DQ_OE(10) => nc88, DRAM_DQ_OE(9) => nc111, 
        DRAM_DQ_OE(8) => nc55, DRAM_DQ_OE(7) => nc10, 
        DRAM_DQ_OE(6) => nc22, DRAM_DQ_OE(5) => nc210, 
        DRAM_DQ_OE(4) => nc185, DRAM_DQ_OE(3) => nc143, 
        DRAM_DQ_OE(2) => nc248, DRAM_DQ_OE(1) => nc77, 
        DRAM_DQ_OE(0) => nc6, DRAM_DQS_OE(2) => nc109, 
        DRAM_DQS_OE(1) => nc87, DRAM_DQS_OE(0) => nc123, 
        I2C0_SCL_USBC_DATA1_MGPIO31B_OE => OPEN, 
        I2C0_SDA_USBC_DATA0_MGPIO30B_OE => OPEN, 
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
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(4 to 4);
          TX_c                        : out   std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          xmit_pulse                  : in    std_logic;
          CoreUARTapb_0_0_TXRDY       : out   std_logic;
          baud_clock                  : in    std_logic;
          xmit_clock                  : in    std_logic;
          N_535                       : in    std_logic;
          N_534                       : in    std_logic;
          un6_prdatalt2_i             : in    std_logic;
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
        tx_xhdl2_1_7_bm, tx_xhdl2_1, N_111, N_141, N_118
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
      generic map(INIT => x"F7FF")

      port map(A => N_535, B => N_534, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => un6_prdatalt2_i, Y
         => un1_csn_i_0);
    
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

    signal xmit_clock_net_1, VCC_net_1, un7_baud_clock_int, 
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
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNIHM7G_Y, 
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

    \baud_cntr_RNIE0CM8[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_s[7]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[7]_net_1\);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_s[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[0]_net_1\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_s[9]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => \xmit_cntr_3[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[3]_net_1\);
    
    \baud_cntr_RNI2OQS5[7]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[7]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]\, S => \baud_cntr_s[7]\, Y => OPEN, FCO
         => \baud_cntr_cry[7]\);
    
    \make_xmit_clock.un7_baud_clock_int\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un7_baud_clock_int);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[4]_net_1\, B => 
        \baud_cntr[3]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[0]_net_1\, Y => un2_baud_cntr_1);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"4BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[12]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_RNIBJDF2[2]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[12]_net_1\, B => 
        \baud_cntr[11]_net_1\, C => \baud_cntr[10]_net_1\, D => 
        \baud_cntr[9]_net_1\, Y => un2_baud_cntr_7);
    
    \baud_cntr_RNI962H4[5]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \baud_cntr[2]_net_1\, B => un2_baud_cntr_8, C
         => un2_baud_cntr_7, D => un2_baud_cntr_1, Y => baud_cntr);
    
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
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[3]\ : CFG4
      generic map(INIT => x"6AAA")

      port map(A => \xmit_cntr[3]_net_1\, B => 
        \xmit_cntr[2]_net_1\, C => \xmit_cntr[1]_net_1\, D => CO0, 
        Y => \xmit_cntr_3[3]\);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_s[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    \baud_cntr_RNILEU65[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[8]_net_1\, B => 
        \baud_cntr[7]_net_1\, C => \baud_cntr[6]_net_1\, D => 
        \baud_cntr[5]_net_1\, Y => un2_baud_cntr_8);
    
    \baud_cntr_RNI1NOS[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \baud_cntr_cry_cy[0]\, 
        S => \baud_cntr_s[0]\, Y => OPEN, FCO => 
        \baud_cntr_cry[0]\);
    
    \baud_cntr_RNIMMFV7[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
    \baud_cntr_RNIG2NI6[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \baud_cntr_RNI3FHP1[1]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNIHM7G_Y, C
         => \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \baud_cntr_RNIUU5R3[4]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNIHM7G\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[2]_net_1\, B => un2_baud_cntr_1, C
         => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNIHM7G_Y, FCO
         => \baud_cntr_cry_cy[0]\);
    
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
    
    \baud_cntr_RNIVDJ87[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => \xmit_cntr_3[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => CO0, B => \xmit_cntr[1]_net_1\, Y => 
        \xmit_cntr_3[1]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_s[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
    \baud_cntr_RNIKO953[3]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
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
    
    \make_xmit_clock.xmit_cntr_3_1.CO0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => CO0);
    
    \xmit_cntr[1]\ : SLE
      port map(D => \xmit_cntr_3[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[1]_net_1\);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_s[12]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[12]_net_1\);
    
    \xmit_pulse\ : CFG2
      generic map(INIT => x"8")

      port map(A => \baud_clock\, B => xmit_clock_net_1, Y => 
        xmit_pulse);
    
    \xmit_cntr[0]\ : SLE
      port map(D => \xmit_cntr_3[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[0]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => \xmit_cntr_3[0]\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[2]\ : CFG3
      generic map(INIT => x"6A")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[1]_net_1\, C => CO0, Y => \xmit_cntr_3[2]\);
    
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
          un1_temp_xhdl10_i_i_a2_0_a2_1 : in    std_logic;
          N_534                         : in    std_logic
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

    signal \rx_state[1]_net_1\, VCC_net_1, N_27, GND_net_1, 
        \rx_state[0]_net_1\, \rx_state_ns[0]\, 
        \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        \un1_samples8_1_0_0\, \rx_shift[1]_net_1\, 
        \rx_shift_12[1]\, \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_167_i_0, \receive_full\, 
        \un1_receive_full_int_1_sqmuxa_i_0_0\, 
        \receive_count[0]_net_1\, N_171_i_0, 
        \receive_count[1]_net_1\, N_170_i_0, 
        \receive_count[2]_net_1\, N_169_i_0, 
        \receive_count[3]_net_1\, N_168_i_0, \overflow_int\, 
        overflow_int_3, rx_byte_xhdl5_1_sqmuxa, 
        \framing_error_int\, framing_error_int_0_sqmuxa, 
        framing_error_int_2_sqmuxa, \un1_framing_error_i4_i_0_0\, 
        \overflow_xhdl1_1_sqmuxa_i_0_0\, \samples[0]_net_1\, 
        \samples[1]_net_1\, \samples[2]_net_1\, 
        \rx_bit_cnt[0]_net_1\, N_175_i_0, \rx_bit_cnt[1]_net_1\, 
        N_174_i_0, \rx_bit_cnt[2]_net_1\, N_173_i_0, 
        \rx_bit_cnt[3]_net_1\, N_172_i_0, N_203, N_180, N_208, 
        N_200, \framing_error_int_0_sqmuxa_0_a2_2\, N_189, N_201, 
        N_188, N_111, N_214, N_182, N_184 : std_logic;

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
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(6));
    
    \rcv_cnt.receive_count_3_i_a2[0]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[2]_net_1\, C => N_208, D => 
        \receive_count[3]_net_1\, Y => N_201);
    
    \rx_state_RNI1JIG[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        Y => N_208);
    
    \rcv_cnt.receive_count_3_i_a2_0[3]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => N_208, Y => N_200);
    
    \receive_count[1]\ : SLE
      port map(D => N_170_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_167_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[7]_net_1\);
    
    framing_error_int_0_sqmuxa_0_a2_2 : CFG3
      generic map(INIT => x"08")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => \framing_error_int_0_sqmuxa_0_a2_2\);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    un1_samples8_1_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => N_203, D => N_180, Y => \un1_samples8_1_0_0\);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[1]_net_1\, Y => 
        \rx_shift_12[0]\);
    
    framing_error_i : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => \un1_framing_error_i4_i_0_0\, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_0_0_FRAMING_ERR);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_168_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_173_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_174_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_182, B => \rx_bit_cnt[0]_net_1\, C => N_203, 
        Y => N_175_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => N_200, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_169_i_0);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    overflow_xhdl1_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"F888")

      port map(A => \overflow_int\, B => baud_clock, C => N_534, 
        D => un1_temp_xhdl10_i_i_a2_0_a2_1, Y => 
        \overflow_xhdl1_1_sqmuxa_i_0_0\);
    
    \rx_bit_cnt_RNO[2]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_184, B => \rx_bit_cnt[2]_net_1\, C => N_203, 
        Y => N_173_i_0);
    
    \rcv_sm.overflow_int_3_0_a2_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_189, B => \rx_state[0]_net_1\, Y => N_214);
    
    \receive_count[2]\ : SLE
      port map(D => N_169_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[2]_net_1\);
    
    stop_strobe_i : SLE
      port map(D => framing_error_int_2_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => stop_strobe);
    
    \receive_shift.rx_shift_12[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[3]_net_1\, Y => 
        \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[6]_net_1\, Y => 
        \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_27, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => N_188, Y => N_167_i_0);
    
    \receive_count_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \receive_count[0]_net_1\, B => N_200, C => 
        \receive_count[1]_net_1\, Y => N_170_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[2]_net_1\, Y => 
        \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => \receive_count[3]_net_1\, B => N_180, C => 
        N_111, D => N_200, Y => N_168_i_0);
    
    \rx_state_ns_i_a3_0_0_a2[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \receive_count[3]_net_1\, B => N_180, C => 
        \rx_state[1]_net_1\, Y => framing_error_int_2_sqmuxa);
    
    receive_full_int : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => \un1_receive_full_int_1_sqmuxa_i_0_0\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \receive_full\);
    
    \rx_filtered.m3_0_o2\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => N_188);
    
    \receive_count_RNO[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_200, B => \receive_count[0]_net_1\, C => 
        N_201, Y => N_171_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[6]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_a2[3]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => baud_clock, Y => N_203);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[1]_net_1\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a2 : CFG3
      generic map(INIT => x"08")

      port map(A => baud_clock, B => N_214, C => \receive_full\, 
        Y => rx_byte_xhdl5_1_sqmuxa);
    
    \rcv_sm.overflow_int_3_0_a2\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_214, B => \receive_full\, Y => 
        overflow_int_3);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[3]_net_1\);
    
    framing_error_int : SLE
      port map(D => framing_error_int_0_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \framing_error_int\);
    
    \rx_state_ns_0_0[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \rx_state[0]_net_1\, B => 
        \receive_count[3]_net_1\, C => N_189, D => N_111, Y => 
        \rx_state_ns[0]\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(2));
    
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

      port map(A => N_208, B => \rx_shift[7]_net_1\, Y => 
        \rx_shift_12[6]\);
    
    \receive_count[0]\ : SLE
      port map(D => N_171_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(3));
    
    framing_error_int_0_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \framing_error_int_0_sqmuxa_0_a2_2\, B => 
        N_188, C => \rx_state[1]_net_1\, D => 
        \receive_count[3]_net_1\, Y => framing_error_int_0_sqmuxa);
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[5]_net_1\, Y => 
        \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[2]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => \rx_bit_cnt[0]_net_1\, B => N_182, C => 
        \rx_bit_cnt[1]_net_1\, Y => N_184);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_208, B => \rx_shift[4]_net_1\, Y => 
        \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rcv_cnt.receive_count_3_i_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_180);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_175_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[0]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => N_180, C => 
        \receive_count[3]_net_1\, Y => N_182);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(1));
    
    \rx_state_ns_i_i[1]\ : CFG4
      generic map(INIT => x"FC74")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[1]_net_1\, C => N_214, D => N_180, Y => N_27);
    
    un1_receive_full_int_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"F888")

      port map(A => N_214, B => baud_clock, C => 
        un1_temp_xhdl10_i_i_a2_0_a2_1, D => N_534, Y => 
        \un1_receive_full_int_1_sqmuxa_i_0_0\);
    
    un1_framing_error_i4_i_0_0 : CFG4
      generic map(INIT => x"F888")

      port map(A => \framing_error_int\, B => baud_clock, C => 
        N_534, D => un1_temp_xhdl10_i_i_a2_0_a2_1, Y => 
        \un1_framing_error_i4_i_0_0\);
    
    \rx_bit_cnt_RNO[3]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => N_203, D => N_184, Y => 
        N_172_i_0);
    
    \rcv_cnt.receive_count_3_i_a2_1[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \receive_count[0]_net_1\, B => N_208, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_111);
    
    \rx_state_ns_0_0_o2[0]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => N_189);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_172_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => N_203, D => N_182, Y => 
        N_174_i_0);
    
    overflow_xhdl1 : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => \overflow_xhdl1_1_sqmuxa_i_0_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreUARTapb_0_0_OVERFLOW);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_296                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          N_654                                       : in    std_logic;
          N_514                                       : in    std_logic;
          N_534                                       : out   std_logic;
          N_535                                       : in    std_logic;
          un6_prdatalt2_i                             : in    std_logic;
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

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_Tx_async
    port( tx_hold_reg                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(4 to 4) := (others => 'U');
          TX_c                        : out   std_logic;
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          xmit_pulse                  : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY       : out   std_logic;
          baud_clock                  : in    std_logic := 'U';
          xmit_clock                  : in    std_logic := 'U';
          N_535                       : in    std_logic := 'U';
          N_534                       : in    std_logic := 'U';
          un6_prdatalt2_i             : in    std_logic := 'U';
          un1_csn                     : in    std_logic := 'U'
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
          un1_temp_xhdl10_i_i_a2_0_a2_1 : in    std_logic := 'U';
          N_534                         : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, receive_full, un1_rx_fifo, GND_net_1, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        stop_strobe, \un1_temp_xhdl10_i_i_a2_0_a2_1\, \N_534\, 
        un1_temp_xhdl10_i_0, xmit_clock, baud_clock, xmit_pulse
         : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_Tx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Tx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Clock_gen
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Clock_gen(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Rx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Rx_async(DEF_ARCH);
begin 

    N_534 <= \N_534\;

    un1_temp_xhdl10_i : CFG2
      generic map(INIT => x"7")

      port map(A => \un1_temp_xhdl10_i_i_a2_0_a2_1\, B => \N_534\, 
        Y => un1_temp_xhdl10_i_0);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \reg_write.un1_csn_0_a2\ : CFG4
      generic map(INIT => x"0800")

      port map(A => N_535, B => \N_534\, C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => un6_prdatalt2_i, Y
         => un1_csn);
    
    un1_temp_xhdl10_i_i_a2_0_a2_1 : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PWRITE, C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => N_654, Y => 
        \un1_temp_xhdl10_i_i_a2_0_a2_1\);
    
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
        \tx_hold_reg[0]_net_1\, CoreAPB3_0_APBmslave0_PADDR(4)
         => CoreAPB3_0_APBmslave0_PADDR(4), TX_c => TX_c, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        xmit_pulse => xmit_pulse, CoreUARTapb_0_0_TXRDY => 
        CoreUARTapb_0_0_TXRDY, baud_clock => baud_clock, 
        xmit_clock => xmit_clock, N_535 => N_535, N_534 => 
        \N_534\, un6_prdatalt2_i => un6_prdatalt2_i, un1_csn => 
        un1_csn);
    
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
    
    un1_temp_xhdl10_i_i_a2_0_a2_0 : CFG3
      generic map(INIT => x"40")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_514, Y => \N_534\);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    un1_temp_xhdl10_i_i_a2_0_o2 : CFG3
      generic map(INIT => x"EF")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_296);
    
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
        un1_temp_xhdl10_i_i_a2_0_a2_1 => 
        \un1_temp_xhdl10_i_i_a2_0_a2_1\, N_534 => \N_534\);
    
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
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          N_534                                       : out   std_logic;
          N_530                                       : in    std_logic;
          N_535                                       : in    std_logic;
          N_296                                       : out   std_logic;
          N_654                                       : in    std_logic;
          N_514                                       : in    std_logic;
          un6_prdatalt2_i                             : in    std_logic;
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

  component mss_top_sb_CoreUARTapb_0_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_296                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          N_654                                       : in    std_logic := 'U';
          N_514                                       : in    std_logic := 'U';
          N_534                                       : out   std_logic;
          N_535                                       : in    std_logic := 'U';
          un6_prdatalt2_i                             : in    std_logic := 'U';
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

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, 
        \un1_nxtprdata_xhdl722_i_a2_0_a2\, GND_net_1, 
        \nxtprdata_xhdl7_1[1]\, \nxtprdata_xhdl7_1[2]\, 
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
        \controlReg1[7]_net_1\, 
        \un1_nxtprdata_xhdl722_i_a2_0_a2_0\, N_538, \data_out[0]\, 
        N_820, \data_out[1]\, N_819, \data_out[3]\, N_817, 
        \data_out[4]\, N_816, \data_out[5]\, N_388, \data_out[7]\, 
        N_384, \data_out[2]\, N_375, \data_out[6]\, N_386, 
        \CoreUARTapb_0_0_FRAMING_ERR\, 
        \nxtprdata_xhdl7_1_5_0_0[4]\, \CoreUARTapb_0_0_TXRDY\, 
        \nxtprdata_xhdl7_1_5_0_0[0]\, \CoreUARTapb_0_0_RXRDY\, 
        \nxtprdata_xhdl7_1_5_0_0[1]\, \CoreUARTapb_0_0_OVERFLOW\, 
        \nxtprdata_xhdl7_1_5_0_0[3]\, \N_534\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_0_0_COREUART(DEF_ARCH);
begin 

    CoreUARTapb_0_0_FRAMING_ERR <= \CoreUARTapb_0_0_FRAMING_ERR\;
    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;
    CoreUARTapb_0_0_RXRDY <= \CoreUARTapb_0_0_RXRDY\;
    CoreUARTapb_0_0_OVERFLOW <= \CoreUARTapb_0_0_OVERFLOW\;
    N_534 <= \N_534\;

    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[3]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[3]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => 
        \nxtprdata_xhdl7_1_5_0_0[3]\, Y => \nxtprdata_xhdl7_1[3]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2[2]\ : CFG4
      generic map(INIT => x"C840")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => N_538, C
         => \data_out[2]\, D => \controlReg2[2]_net_1\, Y => 
        N_375);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_0[1]\ : CFG4
      generic map(INIT => x"5088")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => N_819, C
         => \CoreUARTapb_0_0_RXRDY\, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_0_0[1]\);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[4]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2[7]\ : CFG4
      generic map(INIT => x"C840")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => N_538, C
         => \data_out[7]\, D => \controlReg2[7]_net_1\, Y => 
        N_384);
    
    \p_CtrlReg1Seq.un5_psel_0_a2\ : CFG4
      generic map(INIT => x"2000")

      port map(A => N_530, B => CoreAPB3_0_APBmslave0_PADDR(4), C
         => \N_534\, D => N_535, Y => un5_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2[5]\ : CFG4
      generic map(INIT => x"C840")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => N_538, C
         => \data_out[5]\, D => \controlReg2[5]_net_1\, Y => 
        N_388);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[4]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(4));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[3]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(3));
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_0[3]\ : CFG4
      generic map(INIT => x"5088")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => N_817, C
         => \CoreUARTapb_0_0_OVERFLOW\, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_0_0[3]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2[6]\ : CFG4
      generic map(INIT => x"C840")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => N_538, C
         => \data_out[6]\, D => \controlReg2[6]_net_1\, Y => 
        N_386);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2_i_m2[0]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[0]\, B => \controlReg2[0]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_820);
    
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
    
    \p_CtrlReg2Seq.un13_psel_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => N_535, B => \N_534\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => N_538, Y => 
        un13_psel);
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[4]_net_1\);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(5));
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(7));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2_i_m2[1]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[1]\, B => \controlReg2[1]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_819);
    
    \controlReg2[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2_i_m2[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[3]\, B => \controlReg2[3]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_817);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[5]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[5]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => N_388, Y
         => \nxtprdata_xhdl7_1[5]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_0[0]\ : CFG4
      generic map(INIT => x"5088")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => N_820, C
         => \CoreUARTapb_0_0_TXRDY\, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_0_0[0]\);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    un1_nxtprdata_xhdl722_i_a2_0_a2 : CFG4
      generic map(INIT => x"7000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => \N_534\, D => 
        \un1_nxtprdata_xhdl722_i_a2_0_a2_0\, Y => 
        \un1_nxtprdata_xhdl722_i_a2_0_a2\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[2]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[2]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => N_375, Y
         => \nxtprdata_xhdl7_1[2]\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(2));
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[4]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[4]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => 
        \nxtprdata_xhdl7_1_5_0_0[4]\, Y => \nxtprdata_xhdl7_1[4]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[0]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[0]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => 
        \nxtprdata_xhdl7_1_5_0_0[0]\, Y => \nxtprdata_xhdl7_1[0]\);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(6));
    
    \iPRDATA[0]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[0]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(0));
    
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        data_out(7) => \data_out[7]\, data_out(6) => 
        \data_out[6]\, data_out(5) => \data_out[5]\, data_out(4)
         => \data_out[4]\, data_out(3) => \data_out[3]\, 
        data_out(2) => \data_out[2]\, data_out(1) => 
        \data_out[1]\, data_out(0) => \data_out[0]\, 
        CoreUARTapb_0_0_RXRDY => \CoreUARTapb_0_0_RXRDY\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, N_296
         => N_296, CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, N_654 => N_654, N_514 => 
        N_514, N_534 => \N_534\, N_535 => N_535, un6_prdatalt2_i
         => un6_prdatalt2_i, TX_c => TX_c, CoreUARTapb_0_0_TXRDY
         => \CoreUARTapb_0_0_TXRDY\, CoreUARTapb_0_0_FRAMING_ERR
         => \CoreUARTapb_0_0_FRAMING_ERR\, 
        CoreUARTapb_0_0_OVERFLOW => \CoreUARTapb_0_0_OVERFLOW\, 
        RX_c => RX_c);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[1]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[1]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => 
        \nxtprdata_xhdl7_1_5_0_0[1]\, Y => \nxtprdata_xhdl7_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2_i_m2[4]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[4]\, B => \controlReg2[4]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_816);
    
    un1_nxtprdata_xhdl722_i_a2_0_a2_0 : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => 
        \un1_nxtprdata_xhdl722_i_a2_0_a2_0\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_0[4]\ : CFG4
      generic map(INIT => x"5088")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => N_816, C
         => \CoreUARTapb_0_0_FRAMING_ERR\, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_0_0[4]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    \controlReg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[6]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[6]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => N_386, Y
         => \nxtprdata_xhdl7_1[6]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2_2[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_538);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[7]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[7]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => N_530, D => N_384, Y
         => \nxtprdata_xhdl7_1[7]\);
    
    \controlReg1[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb is

    port( COREI2C_0_0_SDA_IO : inout std_logic := 'Z';
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          DEVRST_N           : in    std_logic;
          pwm_out_4_c        : out   std_logic;
          pwm_out_3_c        : out   std_logic;
          pwm_out_2_c        : out   std_logic;
          pwm_out_1_c        : out   std_logic;
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
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic := 'U';
          POWER_ON_RESET_N                          : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic := 'U'
        );
  end component;

  component COREI2C
    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(8 downto 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          PRDATA_0_a2_9_0                             : in    std_logic_vector(4 to 4) := (others => 'U');
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
          N_515                                       : in    std_logic := 'U';
          N_535                                       : out   std_logic;
          un3_prdata_2                                : out   std_logic;
          N_530                                       : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          N_653                                       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          un6_prdatalt2_i                             : in    std_logic := 'U';
          N_536                                       : out   std_logic;
          N_541                                       : out   std_logic;
          N_518                                       : in    std_logic := 'U';
          N_523                                       : in    std_logic := 'U';
          N_514                                       : in    std_logic := 'U'
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

  component corepwm
    port( PWM_STRETCH                                 : out   std_logic_vector(3 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13) := (others => 'U');
          PRDATA_0_a2_13_0                            : in    std_logic_vector(0 to 0) := (others => 'U');
          PRDATA_0_a2_5_1                             : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          un6_prdatalt2_i                             : out   std_logic;
          N_641                                       : in    std_logic := 'U';
          N_535                                       : in    std_logic := 'U';
          sync_update                                 : out   std_logic;
          N_654                                       : out   std_logic;
          N_344                                       : out   std_logic;
          un97_psel_4                                 : out   std_logic;
          N_297                                       : out   std_logic;
          un59_psel_4                                 : out   std_logic;
          N_522                                       : out   std_logic;
          N_530                                       : in    std_logic := 'U';
          psh_enable_reg1_1_sqmuxa_0_a2_0_0           : out   std_logic;
          N_653                                       : in    std_logic := 'U';
          psh_negedge_reg_1_sqmuxa_0_a2_0_out         : out   std_logic;
          un59_psel                                   : out   std_logic;
          PRDATA_0_a2_10_out                          : in    std_logic := 'U';
          N_515                                       : in    std_logic := 'U';
          N_662                                       : out   std_logic;
          N_527                                       : out   std_logic;
          N_518                                       : in    std_logic := 'U';
          PRDATA_0_a2_3_out                           : in    std_logic := 'U';
          pwm_out_4_c                                 : out   std_logic;
          pwm_out_3_c                                 : out   std_logic;
          pwm_out_2_c                                 : out   std_logic;
          pwm_out_1_c                                 : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CoreAPB3
    port( PRDATA_0_a2_9_0                                 : out   std_logic_vector(4 to 4);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : in    std_logic_vector(15 downto 12) := (others => 'U');
          PRDATA_0_a2_13_0                                : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                     : in    std_logic_vector(8 downto 0) := (others => 'U');
          PRDATA_0_a2_5_1                                 : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0) := (others => 'U');
          pwm_enable_reg                                  : in    std_logic_vector(4 downto 1) := (others => 'U');
          PWM_STRETCH                                     : in    std_logic_vector(3 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                    : in    std_logic_vector(7 downto 0) := (others => 'U');
          sersta                                          : in    std_logic_vector(4 downto 0) := (others => 'U');
          serdat                                          : in    std_logic_vector(7 downto 0) := (others => 'U');
          pwm_negedge_reg                                 : in    std_logic_vector(128 downto 1) := (others => 'U');
          sercon_0                                        : in    std_logic := 'U';
          sercon_7                                        : in    std_logic := 'U';
          sercon_2                                        : in    std_logic := 'U';
          sercon_1                                        : in    std_logic := 'U';
          sercon_5                                        : in    std_logic := 'U';
          sercon_6                                        : in    std_logic := 'U';
          sercon_4                                        : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx     : in    std_logic := 'U';
          N_515                                           : out   std_logic;
          N_514                                           : out   std_logic;
          N_518                                           : out   std_logic;
          N_654                                           : in    std_logic := 'U';
          N_296                                           : in    std_logic := 'U';
          N_534                                           : in    std_logic := 'U';
          N_344                                           : in    std_logic := 'U';
          PRDATA_0_a2_10_out                              : out   std_logic;
          N_653                                           : in    std_logic := 'U';
          sync_update                                     : in    std_logic := 'U';
          un3_prdata_2                                    : in    std_logic := 'U';
          N_523                                           : out   std_logic;
          N_297                                           : in    std_logic := 'U';
          PRDATA_0_a2_3_out                               : out   std_logic;
          un6_prdatalt2_i                                 : in    std_logic := 'U';
          un97_psel_4                                     : in    std_logic := 'U';
          N_641                                           : out   std_logic;
          N_522                                           : in    std_logic := 'U';
          un59_psel_4                                     : in    std_logic := 'U';
          psh_enable_reg1_1_sqmuxa_0_a2_0_0               : in    std_logic := 'U';
          N_527                                           : in    std_logic := 'U';
          N_662                                           : in    std_logic := 'U';
          N_536                                           : in    std_logic := 'U';
          psh_negedge_reg_1_sqmuxa_0_a2_0_out             : in    std_logic := 'U';
          N_541                                           : in    std_logic := 'U';
          un59_psel                                       : in    std_logic := 'U';
          N_575_i_0                                       : out   std_logic;
          N_576_i_0                                       : out   std_logic;
          N_577_i_0                                       : out   std_logic;
          N_578_i_0                                       : out   std_logic;
          N_579_i_0                                       : out   std_logic;
          N_580_i_0                                       : out   std_logic;
          N_581_i_0                                       : out   std_logic;
          N_131_i_0                                       : out   std_logic;
          N_133_i_0                                       : out   std_logic;
          N_135_i_0                                       : out   std_logic;
          N_137_i_0                                       : out   std_logic;
          N_139_i_0                                       : out   std_logic
        );
  end component;

  component mss_top_sb_MSS
    port( CoreAPB3_0_APBmslave0_PADDR                     : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR     : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                    : out   std_logic_vector(31 downto 0);
          COREI2C_0_0_INT                                 : in    std_logic_vector(0 to 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9  : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N       : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                   : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx     : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                    : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F            : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                     : in    std_logic := 'U';
          N_139_i_0                                       : in    std_logic := 'U';
          N_137_i_0                                       : in    std_logic := 'U';
          N_135_i_0                                       : in    std_logic := 'U';
          N_133_i_0                                       : in    std_logic := 'U';
          N_131_i_0                                       : in    std_logic := 'U';
          N_581_i_0                                       : in    std_logic := 'U';
          N_580_i_0                                       : in    std_logic := 'U';
          N_579_i_0                                       : in    std_logic := 'U';
          N_578_i_0                                       : in    std_logic := 'U';
          N_577_i_0                                       : in    std_logic := 'U';
          N_576_i_0                                       : in    std_logic := 'U';
          N_575_i_0                                       : in    std_logic := 'U';
          FAB_CCC_LOCK                                    : in    std_logic := 'U';
          FAB_CCC_GL0                                     : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave1_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          N_534                                       : out   std_logic;
          N_530                                       : in    std_logic := 'U';
          N_535                                       : in    std_logic := 'U';
          N_296                                       : out   std_logic;
          N_654                                       : in    std_logic := 'U';
          N_514                                       : in    std_logic := 'U';
          un6_prdatalt2_i                             : in    std_logic := 'U';
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
        \PRDATA_0_a2_9_0[4]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        \PRDATA_0_a2_13_0[0]\, \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, \PRDATA_0_a2_5_1[0]\, 
        \COREI2C_0_0_INT[0]\, \pwm_enable_reg[1]\, 
        \pwm_enable_reg[2]\, \pwm_enable_reg[3]\, 
        \pwm_enable_reg[4]\, \PWM_STRETCH[0]\, \PWM_STRETCH[1]\, 
        \PWM_STRETCH[2]\, \PWM_STRETCH[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, \sercon[0]\, 
        \sercon[7]\, \sercon[2]\, \sercon[1]\, \sercon[5]\, 
        \sercon[6]\, \sercon[4]\, \sersta[0]\, \sersta[1]\, 
        \sersta[2]\, \sersta[3]\, \sersta[4]\, \serdat[0]\, 
        \serdat[1]\, \serdat[2]\, \serdat[3]\, \serdat[4]\, 
        \serdat[5]\, \serdat[6]\, \serdat[7]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        \pwm_negedge_reg[1]\, \pwm_negedge_reg[2]\, 
        \pwm_negedge_reg[3]\, \pwm_negedge_reg[4]\, 
        \pwm_negedge_reg[5]\, \pwm_negedge_reg[6]\, 
        \pwm_negedge_reg[7]\, \pwm_negedge_reg[8]\, 
        \pwm_negedge_reg[9]\, \pwm_negedge_reg[10]\, 
        \pwm_negedge_reg[11]\, \pwm_negedge_reg[12]\, 
        \pwm_negedge_reg[13]\, \pwm_negedge_reg[14]\, 
        \pwm_negedge_reg[15]\, \pwm_negedge_reg[16]\, 
        \pwm_negedge_reg[17]\, \pwm_negedge_reg[18]\, 
        \pwm_negedge_reg[19]\, \pwm_negedge_reg[20]\, 
        \pwm_negedge_reg[21]\, \pwm_negedge_reg[22]\, 
        \pwm_negedge_reg[23]\, \pwm_negedge_reg[24]\, 
        \pwm_negedge_reg[25]\, \pwm_negedge_reg[26]\, 
        \pwm_negedge_reg[27]\, \pwm_negedge_reg[28]\, 
        \pwm_negedge_reg[29]\, \pwm_negedge_reg[30]\, 
        \pwm_negedge_reg[31]\, \pwm_negedge_reg[32]\, 
        \pwm_negedge_reg[33]\, \pwm_negedge_reg[34]\, 
        \pwm_negedge_reg[35]\, \pwm_negedge_reg[36]\, 
        \pwm_negedge_reg[37]\, \pwm_negedge_reg[38]\, 
        \pwm_negedge_reg[39]\, \pwm_negedge_reg[40]\, 
        \pwm_negedge_reg[41]\, \pwm_negedge_reg[42]\, 
        \pwm_negedge_reg[43]\, \pwm_negedge_reg[44]\, 
        \pwm_negedge_reg[45]\, \pwm_negedge_reg[46]\, 
        \pwm_negedge_reg[47]\, \pwm_negedge_reg[48]\, 
        \pwm_negedge_reg[49]\, \pwm_negedge_reg[50]\, 
        \pwm_negedge_reg[51]\, \pwm_negedge_reg[52]\, 
        \pwm_negedge_reg[53]\, \pwm_negedge_reg[54]\, 
        \pwm_negedge_reg[55]\, \pwm_negedge_reg[56]\, 
        \pwm_negedge_reg[57]\, \pwm_negedge_reg[58]\, 
        \pwm_negedge_reg[59]\, \pwm_negedge_reg[60]\, 
        \pwm_negedge_reg[61]\, \pwm_negedge_reg[62]\, 
        \pwm_negedge_reg[63]\, \pwm_negedge_reg[64]\, 
        \pwm_negedge_reg[65]\, \pwm_negedge_reg[66]\, 
        \pwm_negedge_reg[67]\, \pwm_negedge_reg[68]\, 
        \pwm_negedge_reg[69]\, \pwm_negedge_reg[70]\, 
        \pwm_negedge_reg[71]\, \pwm_negedge_reg[72]\, 
        \pwm_negedge_reg[73]\, \pwm_negedge_reg[74]\, 
        \pwm_negedge_reg[75]\, \pwm_negedge_reg[76]\, 
        \pwm_negedge_reg[77]\, \pwm_negedge_reg[78]\, 
        \pwm_negedge_reg[79]\, \pwm_negedge_reg[80]\, 
        \pwm_negedge_reg[81]\, \pwm_negedge_reg[82]\, 
        \pwm_negedge_reg[83]\, \pwm_negedge_reg[84]\, 
        \pwm_negedge_reg[85]\, \pwm_negedge_reg[86]\, 
        \pwm_negedge_reg[87]\, \pwm_negedge_reg[88]\, 
        \pwm_negedge_reg[89]\, \pwm_negedge_reg[90]\, 
        \pwm_negedge_reg[91]\, \pwm_negedge_reg[92]\, 
        \pwm_negedge_reg[93]\, \pwm_negedge_reg[94]\, 
        \pwm_negedge_reg[95]\, \pwm_negedge_reg[96]\, 
        \pwm_negedge_reg[97]\, \pwm_negedge_reg[98]\, 
        \pwm_negedge_reg[99]\, \pwm_negedge_reg[100]\, 
        \pwm_negedge_reg[101]\, \pwm_negedge_reg[102]\, 
        \pwm_negedge_reg[103]\, \pwm_negedge_reg[104]\, 
        \pwm_negedge_reg[105]\, \pwm_negedge_reg[106]\, 
        \pwm_negedge_reg[107]\, \pwm_negedge_reg[108]\, 
        \pwm_negedge_reg[109]\, \pwm_negedge_reg[110]\, 
        \pwm_negedge_reg[111]\, \pwm_negedge_reg[112]\, 
        \pwm_negedge_reg[113]\, \pwm_negedge_reg[114]\, 
        \pwm_negedge_reg[115]\, \pwm_negedge_reg[116]\, 
        \pwm_negedge_reg[117]\, \pwm_negedge_reg[118]\, 
        \pwm_negedge_reg[119]\, \pwm_negedge_reg[120]\, 
        \pwm_negedge_reg[121]\, \pwm_negedge_reg[122]\, 
        \pwm_negedge_reg[123]\, \pwm_negedge_reg[124]\, 
        \pwm_negedge_reg[125]\, \pwm_negedge_reg[126]\, 
        \pwm_negedge_reg[127]\, \pwm_negedge_reg[128]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_515, N_514, 
        N_518, N_654, N_296, N_534, N_344, PRDATA_0_a2_10_out, 
        N_653, sync_update, un3_prdata_2, N_523, N_297, 
        PRDATA_0_a2_3_out, un6_prdatalt2_i, un97_psel_4, N_641, 
        N_522, un59_psel_4, psh_enable_reg1_1_sqmuxa_0_a2_0_0, 
        N_527, N_662, N_536, psh_negedge_reg_1_sqmuxa_0_a2_0_out, 
        N_541, un59_psel, N_575_i_0, N_576_i_0, N_577_i_0, 
        N_578_i_0, N_579_i_0, N_580_i_0, N_581_i_0, N_131_i_0, 
        N_133_i_0, N_135_i_0, N_137_i_0, N_139_i_0, 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, MSS_READY, N_535, 
        N_530, CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE, 
        \CoreAPB3_0_APBmslave0_PWDATA[8]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[9]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[10]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[11]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[12]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[13]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[14]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[15]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[16]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[17]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[18]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[19]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[20]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[21]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[22]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[23]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[24]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[25]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[26]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[27]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[28]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[29]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[30]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[31]\, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, VCC_net_1
         : std_logic;

    for all : mss_top_sb_CCC_0_FCCC
	Use entity work.mss_top_sb_CCC_0_FCCC(DEF_ARCH);
    for all : CoreResetP
	Use entity work.CoreResetP(DEF_ARCH);
    for all : COREI2C
	Use entity work.COREI2C(DEF_ARCH);
    for all : mss_top_sb_FABOSC_0_OSC
	Use entity work.mss_top_sb_FABOSC_0_OSC(DEF_ARCH);
    for all : corepwm
	Use entity work.corepwm(DEF_ARCH);
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
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, 
        POWER_ON_RESET_N => POWER_ON_RESET_N, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F);
    
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
        \sersta[0]\, CoreAPB3_0_APBmslave0_PADDR(8) => 
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        PRDATA_0_a2_9_0(4) => \PRDATA_0_a2_9_0[4]\, 
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
        FAB_CCC_GL0, N_515 => N_515, N_535 => N_535, un3_prdata_2
         => un3_prdata_2, N_530 => N_530, 
        BIBUF_COREI2C_0_0_SDA_IO_Y => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        N_653 => N_653, CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, BIBUF_COREI2C_0_0_SCL_IO_Y
         => BIBUF_COREI2C_0_0_SCL_IO_Y, un6_prdatalt2_i => 
        un6_prdatalt2_i, N_536 => N_536, N_541 => N_541, N_518
         => N_518, N_523 => N_523, N_514 => N_514);
    
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
    
    corepwm_0_0 : corepwm
      port map(PWM_STRETCH(3) => \PWM_STRETCH[3]\, PWM_STRETCH(2)
         => \PWM_STRETCH[2]\, PWM_STRETCH(1) => \PWM_STRETCH[1]\, 
        PWM_STRETCH(0) => \PWM_STRETCH[0]\, 
        CoreAPB3_0_APBmslave0_PWDATA(31) => 
        \CoreAPB3_0_APBmslave0_PWDATA[31]\, 
        CoreAPB3_0_APBmslave0_PWDATA(30) => 
        \CoreAPB3_0_APBmslave0_PWDATA[30]\, 
        CoreAPB3_0_APBmslave0_PWDATA(29) => 
        \CoreAPB3_0_APBmslave0_PWDATA[29]\, 
        CoreAPB3_0_APBmslave0_PWDATA(28) => 
        \CoreAPB3_0_APBmslave0_PWDATA[28]\, 
        CoreAPB3_0_APBmslave0_PWDATA(27) => 
        \CoreAPB3_0_APBmslave0_PWDATA[27]\, 
        CoreAPB3_0_APBmslave0_PWDATA(26) => 
        \CoreAPB3_0_APBmslave0_PWDATA[26]\, 
        CoreAPB3_0_APBmslave0_PWDATA(25) => 
        \CoreAPB3_0_APBmslave0_PWDATA[25]\, 
        CoreAPB3_0_APBmslave0_PWDATA(24) => 
        \CoreAPB3_0_APBmslave0_PWDATA[24]\, 
        CoreAPB3_0_APBmslave0_PWDATA(23) => 
        \CoreAPB3_0_APBmslave0_PWDATA[23]\, 
        CoreAPB3_0_APBmslave0_PWDATA(22) => 
        \CoreAPB3_0_APBmslave0_PWDATA[22]\, 
        CoreAPB3_0_APBmslave0_PWDATA(21) => 
        \CoreAPB3_0_APBmslave0_PWDATA[21]\, 
        CoreAPB3_0_APBmslave0_PWDATA(20) => 
        \CoreAPB3_0_APBmslave0_PWDATA[20]\, 
        CoreAPB3_0_APBmslave0_PWDATA(19) => 
        \CoreAPB3_0_APBmslave0_PWDATA[19]\, 
        CoreAPB3_0_APBmslave0_PWDATA(18) => 
        \CoreAPB3_0_APBmslave0_PWDATA[18]\, 
        CoreAPB3_0_APBmslave0_PWDATA(17) => 
        \CoreAPB3_0_APBmslave0_PWDATA[17]\, 
        CoreAPB3_0_APBmslave0_PWDATA(16) => 
        \CoreAPB3_0_APBmslave0_PWDATA[16]\, 
        CoreAPB3_0_APBmslave0_PWDATA(15) => 
        \CoreAPB3_0_APBmslave0_PWDATA[15]\, 
        CoreAPB3_0_APBmslave0_PWDATA(14) => 
        \CoreAPB3_0_APBmslave0_PWDATA[14]\, 
        CoreAPB3_0_APBmslave0_PWDATA(13) => 
        \CoreAPB3_0_APBmslave0_PWDATA[13]\, 
        CoreAPB3_0_APBmslave0_PWDATA(12) => 
        \CoreAPB3_0_APBmslave0_PWDATA[12]\, 
        CoreAPB3_0_APBmslave0_PWDATA(11) => 
        \CoreAPB3_0_APBmslave0_PWDATA[11]\, 
        CoreAPB3_0_APBmslave0_PWDATA(10) => 
        \CoreAPB3_0_APBmslave0_PWDATA[10]\, 
        CoreAPB3_0_APBmslave0_PWDATA(9) => 
        \CoreAPB3_0_APBmslave0_PWDATA[9]\, 
        CoreAPB3_0_APBmslave0_PWDATA(8) => 
        \CoreAPB3_0_APBmslave0_PWDATA[8]\, 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, pwm_negedge_reg(128)
         => \pwm_negedge_reg[128]\, pwm_negedge_reg(127) => 
        \pwm_negedge_reg[127]\, pwm_negedge_reg(126) => 
        \pwm_negedge_reg[126]\, pwm_negedge_reg(125) => 
        \pwm_negedge_reg[125]\, pwm_negedge_reg(124) => 
        \pwm_negedge_reg[124]\, pwm_negedge_reg(123) => 
        \pwm_negedge_reg[123]\, pwm_negedge_reg(122) => 
        \pwm_negedge_reg[122]\, pwm_negedge_reg(121) => 
        \pwm_negedge_reg[121]\, pwm_negedge_reg(120) => 
        \pwm_negedge_reg[120]\, pwm_negedge_reg(119) => 
        \pwm_negedge_reg[119]\, pwm_negedge_reg(118) => 
        \pwm_negedge_reg[118]\, pwm_negedge_reg(117) => 
        \pwm_negedge_reg[117]\, pwm_negedge_reg(116) => 
        \pwm_negedge_reg[116]\, pwm_negedge_reg(115) => 
        \pwm_negedge_reg[115]\, pwm_negedge_reg(114) => 
        \pwm_negedge_reg[114]\, pwm_negedge_reg(113) => 
        \pwm_negedge_reg[113]\, pwm_negedge_reg(112) => 
        \pwm_negedge_reg[112]\, pwm_negedge_reg(111) => 
        \pwm_negedge_reg[111]\, pwm_negedge_reg(110) => 
        \pwm_negedge_reg[110]\, pwm_negedge_reg(109) => 
        \pwm_negedge_reg[109]\, pwm_negedge_reg(108) => 
        \pwm_negedge_reg[108]\, pwm_negedge_reg(107) => 
        \pwm_negedge_reg[107]\, pwm_negedge_reg(106) => 
        \pwm_negedge_reg[106]\, pwm_negedge_reg(105) => 
        \pwm_negedge_reg[105]\, pwm_negedge_reg(104) => 
        \pwm_negedge_reg[104]\, pwm_negedge_reg(103) => 
        \pwm_negedge_reg[103]\, pwm_negedge_reg(102) => 
        \pwm_negedge_reg[102]\, pwm_negedge_reg(101) => 
        \pwm_negedge_reg[101]\, pwm_negedge_reg(100) => 
        \pwm_negedge_reg[100]\, pwm_negedge_reg(99) => 
        \pwm_negedge_reg[99]\, pwm_negedge_reg(98) => 
        \pwm_negedge_reg[98]\, pwm_negedge_reg(97) => 
        \pwm_negedge_reg[97]\, pwm_negedge_reg(96) => 
        \pwm_negedge_reg[96]\, pwm_negedge_reg(95) => 
        \pwm_negedge_reg[95]\, pwm_negedge_reg(94) => 
        \pwm_negedge_reg[94]\, pwm_negedge_reg(93) => 
        \pwm_negedge_reg[93]\, pwm_negedge_reg(92) => 
        \pwm_negedge_reg[92]\, pwm_negedge_reg(91) => 
        \pwm_negedge_reg[91]\, pwm_negedge_reg(90) => 
        \pwm_negedge_reg[90]\, pwm_negedge_reg(89) => 
        \pwm_negedge_reg[89]\, pwm_negedge_reg(88) => 
        \pwm_negedge_reg[88]\, pwm_negedge_reg(87) => 
        \pwm_negedge_reg[87]\, pwm_negedge_reg(86) => 
        \pwm_negedge_reg[86]\, pwm_negedge_reg(85) => 
        \pwm_negedge_reg[85]\, pwm_negedge_reg(84) => 
        \pwm_negedge_reg[84]\, pwm_negedge_reg(83) => 
        \pwm_negedge_reg[83]\, pwm_negedge_reg(82) => 
        \pwm_negedge_reg[82]\, pwm_negedge_reg(81) => 
        \pwm_negedge_reg[81]\, pwm_negedge_reg(80) => 
        \pwm_negedge_reg[80]\, pwm_negedge_reg(79) => 
        \pwm_negedge_reg[79]\, pwm_negedge_reg(78) => 
        \pwm_negedge_reg[78]\, pwm_negedge_reg(77) => 
        \pwm_negedge_reg[77]\, pwm_negedge_reg(76) => 
        \pwm_negedge_reg[76]\, pwm_negedge_reg(75) => 
        \pwm_negedge_reg[75]\, pwm_negedge_reg(74) => 
        \pwm_negedge_reg[74]\, pwm_negedge_reg(73) => 
        \pwm_negedge_reg[73]\, pwm_negedge_reg(72) => 
        \pwm_negedge_reg[72]\, pwm_negedge_reg(71) => 
        \pwm_negedge_reg[71]\, pwm_negedge_reg(70) => 
        \pwm_negedge_reg[70]\, pwm_negedge_reg(69) => 
        \pwm_negedge_reg[69]\, pwm_negedge_reg(68) => 
        \pwm_negedge_reg[68]\, pwm_negedge_reg(67) => 
        \pwm_negedge_reg[67]\, pwm_negedge_reg(66) => 
        \pwm_negedge_reg[66]\, pwm_negedge_reg(65) => 
        \pwm_negedge_reg[65]\, pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg[58]\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg(56) => 
        \pwm_negedge_reg[56]\, pwm_negedge_reg(55) => 
        \pwm_negedge_reg[55]\, pwm_negedge_reg(54) => 
        \pwm_negedge_reg[54]\, pwm_negedge_reg(53) => 
        \pwm_negedge_reg[53]\, pwm_negedge_reg(52) => 
        \pwm_negedge_reg[52]\, pwm_negedge_reg(51) => 
        \pwm_negedge_reg[51]\, pwm_negedge_reg(50) => 
        \pwm_negedge_reg[50]\, pwm_negedge_reg(49) => 
        \pwm_negedge_reg[49]\, pwm_negedge_reg(48) => 
        \pwm_negedge_reg[48]\, pwm_negedge_reg(47) => 
        \pwm_negedge_reg[47]\, pwm_negedge_reg(46) => 
        \pwm_negedge_reg[46]\, pwm_negedge_reg(45) => 
        \pwm_negedge_reg[45]\, pwm_negedge_reg(44) => 
        \pwm_negedge_reg[44]\, pwm_negedge_reg(43) => 
        \pwm_negedge_reg[43]\, pwm_negedge_reg(42) => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg(40) => 
        \pwm_negedge_reg[40]\, pwm_negedge_reg(39) => 
        \pwm_negedge_reg[39]\, pwm_negedge_reg(38) => 
        \pwm_negedge_reg[38]\, pwm_negedge_reg(37) => 
        \pwm_negedge_reg[37]\, pwm_negedge_reg(36) => 
        \pwm_negedge_reg[36]\, pwm_negedge_reg(35) => 
        \pwm_negedge_reg[35]\, pwm_negedge_reg(34) => 
        \pwm_negedge_reg[34]\, pwm_negedge_reg(33) => 
        \pwm_negedge_reg[33]\, pwm_negedge_reg(32) => 
        \pwm_negedge_reg[32]\, pwm_negedge_reg(31) => 
        \pwm_negedge_reg[31]\, pwm_negedge_reg(30) => 
        \pwm_negedge_reg[30]\, pwm_negedge_reg(29) => 
        \pwm_negedge_reg[29]\, pwm_negedge_reg(28) => 
        \pwm_negedge_reg[28]\, pwm_negedge_reg(27) => 
        \pwm_negedge_reg[27]\, pwm_negedge_reg(26) => 
        \pwm_negedge_reg[26]\, pwm_negedge_reg(25) => 
        \pwm_negedge_reg[25]\, pwm_negedge_reg(24) => 
        \pwm_negedge_reg[24]\, pwm_negedge_reg(23) => 
        \pwm_negedge_reg[23]\, pwm_negedge_reg(22) => 
        \pwm_negedge_reg[22]\, pwm_negedge_reg(21) => 
        \pwm_negedge_reg[21]\, pwm_negedge_reg(20) => 
        \pwm_negedge_reg[20]\, pwm_negedge_reg(19) => 
        \pwm_negedge_reg[19]\, pwm_negedge_reg(18) => 
        \pwm_negedge_reg[18]\, pwm_negedge_reg(17) => 
        \pwm_negedge_reg[17]\, pwm_negedge_reg(16) => 
        \pwm_negedge_reg[16]\, pwm_negedge_reg(15) => 
        \pwm_negedge_reg[15]\, pwm_negedge_reg(14) => 
        \pwm_negedge_reg[14]\, pwm_negedge_reg(13) => 
        \pwm_negedge_reg[13]\, pwm_negedge_reg(12) => 
        \pwm_negedge_reg[12]\, pwm_negedge_reg(11) => 
        \pwm_negedge_reg[11]\, pwm_negedge_reg(10) => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg(9) => 
        \pwm_negedge_reg[9]\, pwm_negedge_reg(8) => 
        \pwm_negedge_reg[8]\, pwm_negedge_reg(7) => 
        \pwm_negedge_reg[7]\, pwm_negedge_reg(6) => 
        \pwm_negedge_reg[6]\, pwm_negedge_reg(5) => 
        \pwm_negedge_reg[5]\, pwm_negedge_reg(4) => 
        \pwm_negedge_reg[4]\, pwm_negedge_reg(3) => 
        \pwm_negedge_reg[3]\, pwm_negedge_reg(2) => 
        \pwm_negedge_reg[2]\, pwm_negedge_reg(1) => 
        \pwm_negedge_reg[1]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, CoreAPB3_0_APBmslave0_PADDR(7) => 
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        PRDATA_0_a2_13_0(0) => \PRDATA_0_a2_13_0[0]\, 
        PRDATA_0_a2_5_1(0) => \PRDATA_0_a2_5_1[0]\, MSS_READY => 
        MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, un6_prdatalt2_i
         => un6_prdatalt2_i, N_641 => N_641, N_535 => N_535, 
        sync_update => sync_update, N_654 => N_654, N_344 => 
        N_344, un97_psel_4 => un97_psel_4, N_297 => N_297, 
        un59_psel_4 => un59_psel_4, N_522 => N_522, N_530 => 
        N_530, psh_enable_reg1_1_sqmuxa_0_a2_0_0 => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0, N_653 => N_653, 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out => 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out, un59_psel => 
        un59_psel, PRDATA_0_a2_10_out => PRDATA_0_a2_10_out, 
        N_515 => N_515, N_662 => N_662, N_527 => N_527, N_518 => 
        N_518, PRDATA_0_a2_3_out => PRDATA_0_a2_3_out, 
        pwm_out_4_c => pwm_out_4_c, pwm_out_3_c => pwm_out_3_c, 
        pwm_out_2_c => pwm_out_2_c, pwm_out_1_c => pwm_out_1_c);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    CoreUARTapb_0_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_0_0_RXRDY, B => 
        CoreUARTapb_0_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_1_Y);
    
    CoreAPB3_0 : CoreAPB3
      port map(PRDATA_0_a2_9_0(4) => \PRDATA_0_a2_9_0[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        PRDATA_0_a2_13_0(0) => \PRDATA_0_a2_13_0[0]\, 
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
        \CoreAPB3_0_APBmslave0_PADDR[0]\, PRDATA_0_a2_5_1(0) => 
        \PRDATA_0_a2_5_1[0]\, COREI2C_0_0_INT(0) => 
        \COREI2C_0_0_INT[0]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, PWM_STRETCH(3) => \PWM_STRETCH[3]\, 
        PWM_STRETCH(2) => \PWM_STRETCH[2]\, PWM_STRETCH(1) => 
        \PWM_STRETCH[1]\, PWM_STRETCH(0) => \PWM_STRETCH[0]\, 
        CoreAPB3_0_APBmslave1_PRDATA(7) => 
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
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, sersta(4) => 
        \sersta[4]\, sersta(3) => \sersta[3]\, sersta(2) => 
        \sersta[2]\, sersta(1) => \sersta[1]\, sersta(0) => 
        \sersta[0]\, serdat(7) => \serdat[7]\, serdat(6) => 
        \serdat[6]\, serdat(5) => \serdat[5]\, serdat(4) => 
        \serdat[4]\, serdat(3) => \serdat[3]\, serdat(2) => 
        \serdat[2]\, serdat(1) => \serdat[1]\, serdat(0) => 
        \serdat[0]\, pwm_negedge_reg(128) => 
        \pwm_negedge_reg[128]\, pwm_negedge_reg(127) => 
        \pwm_negedge_reg[127]\, pwm_negedge_reg(126) => 
        \pwm_negedge_reg[126]\, pwm_negedge_reg(125) => 
        \pwm_negedge_reg[125]\, pwm_negedge_reg(124) => 
        \pwm_negedge_reg[124]\, pwm_negedge_reg(123) => 
        \pwm_negedge_reg[123]\, pwm_negedge_reg(122) => 
        \pwm_negedge_reg[122]\, pwm_negedge_reg(121) => 
        \pwm_negedge_reg[121]\, pwm_negedge_reg(120) => 
        \pwm_negedge_reg[120]\, pwm_negedge_reg(119) => 
        \pwm_negedge_reg[119]\, pwm_negedge_reg(118) => 
        \pwm_negedge_reg[118]\, pwm_negedge_reg(117) => 
        \pwm_negedge_reg[117]\, pwm_negedge_reg(116) => 
        \pwm_negedge_reg[116]\, pwm_negedge_reg(115) => 
        \pwm_negedge_reg[115]\, pwm_negedge_reg(114) => 
        \pwm_negedge_reg[114]\, pwm_negedge_reg(113) => 
        \pwm_negedge_reg[113]\, pwm_negedge_reg(112) => 
        \pwm_negedge_reg[112]\, pwm_negedge_reg(111) => 
        \pwm_negedge_reg[111]\, pwm_negedge_reg(110) => 
        \pwm_negedge_reg[110]\, pwm_negedge_reg(109) => 
        \pwm_negedge_reg[109]\, pwm_negedge_reg(108) => 
        \pwm_negedge_reg[108]\, pwm_negedge_reg(107) => 
        \pwm_negedge_reg[107]\, pwm_negedge_reg(106) => 
        \pwm_negedge_reg[106]\, pwm_negedge_reg(105) => 
        \pwm_negedge_reg[105]\, pwm_negedge_reg(104) => 
        \pwm_negedge_reg[104]\, pwm_negedge_reg(103) => 
        \pwm_negedge_reg[103]\, pwm_negedge_reg(102) => 
        \pwm_negedge_reg[102]\, pwm_negedge_reg(101) => 
        \pwm_negedge_reg[101]\, pwm_negedge_reg(100) => 
        \pwm_negedge_reg[100]\, pwm_negedge_reg(99) => 
        \pwm_negedge_reg[99]\, pwm_negedge_reg(98) => 
        \pwm_negedge_reg[98]\, pwm_negedge_reg(97) => 
        \pwm_negedge_reg[97]\, pwm_negedge_reg(96) => 
        \pwm_negedge_reg[96]\, pwm_negedge_reg(95) => 
        \pwm_negedge_reg[95]\, pwm_negedge_reg(94) => 
        \pwm_negedge_reg[94]\, pwm_negedge_reg(93) => 
        \pwm_negedge_reg[93]\, pwm_negedge_reg(92) => 
        \pwm_negedge_reg[92]\, pwm_negedge_reg(91) => 
        \pwm_negedge_reg[91]\, pwm_negedge_reg(90) => 
        \pwm_negedge_reg[90]\, pwm_negedge_reg(89) => 
        \pwm_negedge_reg[89]\, pwm_negedge_reg(88) => 
        \pwm_negedge_reg[88]\, pwm_negedge_reg(87) => 
        \pwm_negedge_reg[87]\, pwm_negedge_reg(86) => 
        \pwm_negedge_reg[86]\, pwm_negedge_reg(85) => 
        \pwm_negedge_reg[85]\, pwm_negedge_reg(84) => 
        \pwm_negedge_reg[84]\, pwm_negedge_reg(83) => 
        \pwm_negedge_reg[83]\, pwm_negedge_reg(82) => 
        \pwm_negedge_reg[82]\, pwm_negedge_reg(81) => 
        \pwm_negedge_reg[81]\, pwm_negedge_reg(80) => 
        \pwm_negedge_reg[80]\, pwm_negedge_reg(79) => 
        \pwm_negedge_reg[79]\, pwm_negedge_reg(78) => 
        \pwm_negedge_reg[78]\, pwm_negedge_reg(77) => 
        \pwm_negedge_reg[77]\, pwm_negedge_reg(76) => 
        \pwm_negedge_reg[76]\, pwm_negedge_reg(75) => 
        \pwm_negedge_reg[75]\, pwm_negedge_reg(74) => 
        \pwm_negedge_reg[74]\, pwm_negedge_reg(73) => 
        \pwm_negedge_reg[73]\, pwm_negedge_reg(72) => 
        \pwm_negedge_reg[72]\, pwm_negedge_reg(71) => 
        \pwm_negedge_reg[71]\, pwm_negedge_reg(70) => 
        \pwm_negedge_reg[70]\, pwm_negedge_reg(69) => 
        \pwm_negedge_reg[69]\, pwm_negedge_reg(68) => 
        \pwm_negedge_reg[68]\, pwm_negedge_reg(67) => 
        \pwm_negedge_reg[67]\, pwm_negedge_reg(66) => 
        \pwm_negedge_reg[66]\, pwm_negedge_reg(65) => 
        \pwm_negedge_reg[65]\, pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg[58]\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg(56) => 
        \pwm_negedge_reg[56]\, pwm_negedge_reg(55) => 
        \pwm_negedge_reg[55]\, pwm_negedge_reg(54) => 
        \pwm_negedge_reg[54]\, pwm_negedge_reg(53) => 
        \pwm_negedge_reg[53]\, pwm_negedge_reg(52) => 
        \pwm_negedge_reg[52]\, pwm_negedge_reg(51) => 
        \pwm_negedge_reg[51]\, pwm_negedge_reg(50) => 
        \pwm_negedge_reg[50]\, pwm_negedge_reg(49) => 
        \pwm_negedge_reg[49]\, pwm_negedge_reg(48) => 
        \pwm_negedge_reg[48]\, pwm_negedge_reg(47) => 
        \pwm_negedge_reg[47]\, pwm_negedge_reg(46) => 
        \pwm_negedge_reg[46]\, pwm_negedge_reg(45) => 
        \pwm_negedge_reg[45]\, pwm_negedge_reg(44) => 
        \pwm_negedge_reg[44]\, pwm_negedge_reg(43) => 
        \pwm_negedge_reg[43]\, pwm_negedge_reg(42) => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg(40) => 
        \pwm_negedge_reg[40]\, pwm_negedge_reg(39) => 
        \pwm_negedge_reg[39]\, pwm_negedge_reg(38) => 
        \pwm_negedge_reg[38]\, pwm_negedge_reg(37) => 
        \pwm_negedge_reg[37]\, pwm_negedge_reg(36) => 
        \pwm_negedge_reg[36]\, pwm_negedge_reg(35) => 
        \pwm_negedge_reg[35]\, pwm_negedge_reg(34) => 
        \pwm_negedge_reg[34]\, pwm_negedge_reg(33) => 
        \pwm_negedge_reg[33]\, pwm_negedge_reg(32) => 
        \pwm_negedge_reg[32]\, pwm_negedge_reg(31) => 
        \pwm_negedge_reg[31]\, pwm_negedge_reg(30) => 
        \pwm_negedge_reg[30]\, pwm_negedge_reg(29) => 
        \pwm_negedge_reg[29]\, pwm_negedge_reg(28) => 
        \pwm_negedge_reg[28]\, pwm_negedge_reg(27) => 
        \pwm_negedge_reg[27]\, pwm_negedge_reg(26) => 
        \pwm_negedge_reg[26]\, pwm_negedge_reg(25) => 
        \pwm_negedge_reg[25]\, pwm_negedge_reg(24) => 
        \pwm_negedge_reg[24]\, pwm_negedge_reg(23) => 
        \pwm_negedge_reg[23]\, pwm_negedge_reg(22) => 
        \pwm_negedge_reg[22]\, pwm_negedge_reg(21) => 
        \pwm_negedge_reg[21]\, pwm_negedge_reg(20) => 
        \pwm_negedge_reg[20]\, pwm_negedge_reg(19) => 
        \pwm_negedge_reg[19]\, pwm_negedge_reg(18) => 
        \pwm_negedge_reg[18]\, pwm_negedge_reg(17) => 
        \pwm_negedge_reg[17]\, pwm_negedge_reg(16) => 
        \pwm_negedge_reg[16]\, pwm_negedge_reg(15) => 
        \pwm_negedge_reg[15]\, pwm_negedge_reg(14) => 
        \pwm_negedge_reg[14]\, pwm_negedge_reg(13) => 
        \pwm_negedge_reg[13]\, pwm_negedge_reg(12) => 
        \pwm_negedge_reg[12]\, pwm_negedge_reg(11) => 
        \pwm_negedge_reg[11]\, pwm_negedge_reg(10) => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg(9) => 
        \pwm_negedge_reg[9]\, pwm_negedge_reg(8) => 
        \pwm_negedge_reg[8]\, pwm_negedge_reg(7) => 
        \pwm_negedge_reg[7]\, pwm_negedge_reg(6) => 
        \pwm_negedge_reg[6]\, pwm_negedge_reg(5) => 
        \pwm_negedge_reg[5]\, pwm_negedge_reg(4) => 
        \pwm_negedge_reg[4]\, pwm_negedge_reg(3) => 
        \pwm_negedge_reg[3]\, pwm_negedge_reg(2) => 
        \pwm_negedge_reg[2]\, pwm_negedge_reg(1) => 
        \pwm_negedge_reg[1]\, sercon_0 => \sercon[0]\, sercon_7
         => \sercon[7]\, sercon_2 => \sercon[2]\, sercon_1 => 
        \sercon[1]\, sercon_5 => \sercon[5]\, sercon_6 => 
        \sercon[6]\, sercon_4 => \sercon[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_515 => 
        N_515, N_514 => N_514, N_518 => N_518, N_654 => N_654, 
        N_296 => N_296, N_534 => N_534, N_344 => N_344, 
        PRDATA_0_a2_10_out => PRDATA_0_a2_10_out, N_653 => N_653, 
        sync_update => sync_update, un3_prdata_2 => un3_prdata_2, 
        N_523 => N_523, N_297 => N_297, PRDATA_0_a2_3_out => 
        PRDATA_0_a2_3_out, un6_prdatalt2_i => un6_prdatalt2_i, 
        un97_psel_4 => un97_psel_4, N_641 => N_641, N_522 => 
        N_522, un59_psel_4 => un59_psel_4, 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0 => 
        psh_enable_reg1_1_sqmuxa_0_a2_0_0, N_527 => N_527, N_662
         => N_662, N_536 => N_536, 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out => 
        psh_negedge_reg_1_sqmuxa_0_a2_0_out, N_541 => N_541, 
        un59_psel => un59_psel, N_575_i_0 => N_575_i_0, N_576_i_0
         => N_576_i_0, N_577_i_0 => N_577_i_0, N_578_i_0 => 
        N_578_i_0, N_579_i_0 => N_579_i_0, N_580_i_0 => N_580_i_0, 
        N_581_i_0 => N_581_i_0, N_131_i_0 => N_131_i_0, N_133_i_0
         => N_133_i_0, N_135_i_0 => N_135_i_0, N_137_i_0 => 
        N_137_i_0, N_139_i_0 => N_139_i_0);
    
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
        CoreAPB3_0_APBmslave0_PWDATA(31) => 
        \CoreAPB3_0_APBmslave0_PWDATA[31]\, 
        CoreAPB3_0_APBmslave0_PWDATA(30) => 
        \CoreAPB3_0_APBmslave0_PWDATA[30]\, 
        CoreAPB3_0_APBmslave0_PWDATA(29) => 
        \CoreAPB3_0_APBmslave0_PWDATA[29]\, 
        CoreAPB3_0_APBmslave0_PWDATA(28) => 
        \CoreAPB3_0_APBmslave0_PWDATA[28]\, 
        CoreAPB3_0_APBmslave0_PWDATA(27) => 
        \CoreAPB3_0_APBmslave0_PWDATA[27]\, 
        CoreAPB3_0_APBmslave0_PWDATA(26) => 
        \CoreAPB3_0_APBmslave0_PWDATA[26]\, 
        CoreAPB3_0_APBmslave0_PWDATA(25) => 
        \CoreAPB3_0_APBmslave0_PWDATA[25]\, 
        CoreAPB3_0_APBmslave0_PWDATA(24) => 
        \CoreAPB3_0_APBmslave0_PWDATA[24]\, 
        CoreAPB3_0_APBmslave0_PWDATA(23) => 
        \CoreAPB3_0_APBmslave0_PWDATA[23]\, 
        CoreAPB3_0_APBmslave0_PWDATA(22) => 
        \CoreAPB3_0_APBmslave0_PWDATA[22]\, 
        CoreAPB3_0_APBmslave0_PWDATA(21) => 
        \CoreAPB3_0_APBmslave0_PWDATA[21]\, 
        CoreAPB3_0_APBmslave0_PWDATA(20) => 
        \CoreAPB3_0_APBmslave0_PWDATA[20]\, 
        CoreAPB3_0_APBmslave0_PWDATA(19) => 
        \CoreAPB3_0_APBmslave0_PWDATA[19]\, 
        CoreAPB3_0_APBmslave0_PWDATA(18) => 
        \CoreAPB3_0_APBmslave0_PWDATA[18]\, 
        CoreAPB3_0_APBmslave0_PWDATA(17) => 
        \CoreAPB3_0_APBmslave0_PWDATA[17]\, 
        CoreAPB3_0_APBmslave0_PWDATA(16) => 
        \CoreAPB3_0_APBmslave0_PWDATA[16]\, 
        CoreAPB3_0_APBmslave0_PWDATA(15) => 
        \CoreAPB3_0_APBmslave0_PWDATA[15]\, 
        CoreAPB3_0_APBmslave0_PWDATA(14) => 
        \CoreAPB3_0_APBmslave0_PWDATA[14]\, 
        CoreAPB3_0_APBmslave0_PWDATA(13) => 
        \CoreAPB3_0_APBmslave0_PWDATA[13]\, 
        CoreAPB3_0_APBmslave0_PWDATA(12) => 
        \CoreAPB3_0_APBmslave0_PWDATA[12]\, 
        CoreAPB3_0_APBmslave0_PWDATA(11) => 
        \CoreAPB3_0_APBmslave0_PWDATA[11]\, 
        CoreAPB3_0_APBmslave0_PWDATA(10) => 
        \CoreAPB3_0_APBmslave0_PWDATA[10]\, 
        CoreAPB3_0_APBmslave0_PWDATA(9) => 
        \CoreAPB3_0_APBmslave0_PWDATA[9]\, 
        CoreAPB3_0_APBmslave0_PWDATA(8) => 
        \CoreAPB3_0_APBmslave0_PWDATA[8]\, 
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_0 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_1 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_2 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_3 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_4 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_5 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_6 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_7 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_8 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_9 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_11 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_12 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_13 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_14 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_15 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_21 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_23 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_26 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_27 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA_30 => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
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
        CoreUARTapb_0_0_intr_or_2_Y, N_139_i_0 => N_139_i_0, 
        N_137_i_0 => N_137_i_0, N_135_i_0 => N_135_i_0, N_133_i_0
         => N_133_i_0, N_131_i_0 => N_131_i_0, N_581_i_0 => 
        N_581_i_0, N_580_i_0 => N_580_i_0, N_579_i_0 => N_579_i_0, 
        N_578_i_0 => N_578_i_0, N_577_i_0 => N_577_i_0, N_576_i_0
         => N_576_i_0, N_575_i_0 => N_575_i_0, FAB_CCC_LOCK => 
        FAB_CCC_LOCK, FAB_CCC_GL0 => FAB_CCC_GL0);
    
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, CoreUARTapb_0_0_FRAMING_ERR
         => CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_TXRDY
         => CoreUARTapb_0_0_TXRDY, CoreUARTapb_0_0_RXRDY => 
        CoreUARTapb_0_0_RXRDY, CoreUARTapb_0_0_OVERFLOW => 
        CoreUARTapb_0_0_OVERFLOW, N_534 => N_534, N_530 => N_530, 
        N_535 => N_535, N_296 => N_296, N_654 => N_654, N_514 => 
        N_514, un6_prdatalt2_i => un6_prdatalt2_i, TX_c => TX_c, 
        RX_c => RX_c);
    
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
          pwm_out_1          : out   std_logic;
          pwm_out_2          : out   std_logic;
          pwm_out_3          : out   std_logic;
          pwm_out_4          : out   std_logic;
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

  component OUTBUF
    generic (IOSTD:string := "");

    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb
    port( COREI2C_0_0_SDA_IO : inout   std_logic;
          COREI2C_0_0_SCL_IO : inout   std_logic;
          DEVRST_N           : in    std_logic := 'U';
          pwm_out_4_c        : out   std_logic;
          pwm_out_3_c        : out   std_logic;
          pwm_out_2_c        : out   std_logic;
          pwm_out_1_c        : out   std_logic;
          TX_c               : out   std_logic;
          RX_c               : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, GND_net_1, RX_c, TX_c, pwm_out_1_c, 
        pwm_out_2_c, pwm_out_3_c, pwm_out_4_c : std_logic;

    for all : mss_top_sb
	Use entity work.mss_top_sb(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    RX_ibuf : INBUF
      port map(PAD => RX, Y => RX_c);
    
    pwm_out_4_obuf : OUTBUF
      port map(D => pwm_out_4_c, PAD => pwm_out_4);
    
    pwm_out_2_obuf : OUTBUF
      port map(D => pwm_out_2_c, PAD => pwm_out_2);
    
    pwm_out_1_obuf : OUTBUF
      port map(D => pwm_out_1_c, PAD => pwm_out_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    TX_obuf : OUTBUF
      port map(D => TX_c, PAD => TX);
    
    pwm_out_3_obuf : OUTBUF
      port map(D => pwm_out_3_c, PAD => pwm_out_3);
    
    mss_top_sb_0 : mss_top_sb
      port map(COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO, 
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO, DEVRST_N => 
        DEVRST_N, pwm_out_4_c => pwm_out_4_c, pwm_out_3_c => 
        pwm_out_3_c, pwm_out_2_c => pwm_out_2_c, pwm_out_1_c => 
        pwm_out_1_c, TX_c => TX_c, RX_c => RX_c);
    

end DEF_ARCH; 
