-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREAPB3_MUXPTOB3 is

    port( CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(5 downto 2);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12);
          iPSELS_raw_2_0                               : in    std_logic_vector(0 to 0);
          PRDATA_regif_1_0_iv_xx                       : in    std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0);
          PRDATA_regif_1_0_iv_0                        : in    std_logic_vector(2 downto 1);
          PRDATA_generated_1_RNI9N3B1                  : in    std_logic_vector(1 to 1);
          PRDATA_generated_i_m_c                       : in    std_logic_vector(7 to 7);
          PRDATA_generated_i_m_0_1                     : in    std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                        : in    std_logic_vector(3 to 3);
          PRDATA_generated_i_m                         : in    std_logic_vector(3 to 3);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(15 downto 0);
          PRDATA_0_6                                   : in    std_logic;
          PRDATA_0_4                                   : in    std_logic;
          PRDATA_0_3                                   : in    std_logic;
          PRDATA_0_5                                   : in    std_logic;
          PRDATA_0_0                                   : in    std_logic;
          pwm_negedge_reg_48                           : in    std_logic;
          pwm_negedge_reg_32                           : in    std_logic;
          pwm_negedge_reg_0                            : in    std_logic;
          pwm_negedge_reg_47                           : in    std_logic;
          pwm_negedge_reg_31                           : in    std_logic;
          pwm_negedge_reg_16                           : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_6               : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_1               : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_3               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_1               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_4               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_5               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_6               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_11              : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_10              : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11              : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10              : in    std_logic;
          Motor_in_c_6                                 : in    std_logic;
          Motor_in_c_0                                 : in    std_logic;
          Motor_in_c_7                                 : in    std_logic;
          Motor_in_c_5                                 : in    std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          N_54                                         : in    std_logic;
          un97_psel_4                                  : in    std_logic;
          un7_pseli                                    : in    std_logic;
          N_156_0                                      : in    std_logic;
          N_259                                        : in    std_logic;
          un78_psel                                    : in    std_logic;
          PRDATA_generated_sn_m5_0                     : in    std_logic;
          prdata_typ20                                 : in    std_logic;
          un17_psel                                    : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx_2                : in    std_logic;
          N_196                                        : in    std_logic;
          PRDATA_generated_sn_N_7_mux                  : in    std_logic;
          N_199                                        : in    std_logic;
          N_198                                        : in    std_logic;
          N_197                                        : in    std_logic;
          N_119                                        : in    std_logic;
          N_109                                        : in    std_logic;
          un17_psel_0_a2_0                             : in    std_logic;
          PRDATA_m4_e_0_0                              : in    std_logic;
          N_144                                        : in    std_logic;
          N_143                                        : in    std_logic;
          N_170                                        : in    std_logic;
          N_152                                        : in    std_logic;
          PRDATA_generated_sn_N_4                      : in    std_logic;
          N_189                                        : in    std_logic;
          N_190                                        : in    std_logic;
          un7_prdata_regif                             : in    std_logic
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

    signal N_258, N_91, \PRDATA_1_am[9]_net_1\, 
        \PRDATA_1_bm[9]_net_1\, d_m8_0_0_1, d_m8_0_1, 
        \PRDATA_1_am_RNO[9]_net_1\, \PRDATA_s_0[1]\, 
        \PRDATA_am[7]_net_1\, \PRDATA_bm[7]_net_1\, 
        \PRDATA_am[6]_net_1\, \PRDATA_bm[6]_net_1\, 
        \PRDATA_s[5]_net_1\, \PRDATA_am[5]_net_1\, 
        \PRDATA_bm[5]_net_1\, \PRDATA_am[4]_net_1\, 
        \PRDATA_bm[4]_net_1\, \PRDATA_d_am[1]_net_1\, 
        \PRDATA_d_bm[1]_net_1\, \PRDATA_d_ns[1]_net_1\, 
        \PRDATA_d[0]_net_1\, PRDATA_sn_N_2, N_9, \PRDATA_m3\, 
        N_156, N_154, N_153, N_155, \PRDATA_m4\, 
        \PRDATA_1_s[2]_net_1\, \PRDATA_0_RNO[8]_net_1\, N_150, 
        N_178, PRDATA_N_10_mux, \PRDATA_1_d[2]_net_1\, N_173, 
        \PRDATA_d[3]_net_1\, \PRDATA_d[2]_net_1\, GND_net_1, 
        VCC_net_1 : std_logic;

begin 


    \PRDATA_0[5]\ : CFG4
      generic map(INIT => x"B888")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(5), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        un7_pseli, D => PRDATA_0_5, Y => N_155);
    
    \PRDATA_bm[6]\ : CFG4
      generic map(INIT => x"BAFA")

      port map(A => prdata_typ20, B => PRDATA_generated_sn_m5_0, 
        C => N_190, D => PRDATA_generated_sn_N_4, Y => 
        \PRDATA_bm[6]_net_1\);
    
    \PSELSBUS_i[0]\ : CFG4
      generic map(INIT => x"FDFF")

      port map(A => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y
         => N_258);
    
    \PSELSBUS_i_0_RNIK9QJ[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_9, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_196, D => PRDATA_generated_sn_N_7_mux, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12));
    
    \PSELSBUS_i_0_RNIMBQJ[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_9, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_198, D => PRDATA_generated_sn_N_7_mux, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14));
    
    \PRDATA_d[2]\ : CFG4
      generic map(INIT => x"AFAC")

      port map(A => N_173, B => PRDATA_regif_1_0_iv_0(2), C => 
        N_258, D => N_144, Y => \PRDATA_d[2]_net_1\);
    
    \PRDATA_am[5]\ : CFG4
      generic map(INIT => x"AC00")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_5, B => N_155, C
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => CoreAPB3_0_APBmslave3_PSELx_2, Y => 
        \PRDATA_am[5]_net_1\);
    
    \PRDATA[10]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => N_9, B => N_258, C => 
        CoreAPB3_0_APBmslave1_PRDATA_10, D => 
        CoreAPB3_0_APBmslave3_PRDATA_10, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10));
    
    \PRDATA[2]\ : CFG4
      generic map(INIT => x"FE10")

      port map(A => \PRDATA_1_s[2]_net_1\, B => N_258, C => 
        \PRDATA_1_d[2]_net_1\, D => \PRDATA_d[2]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_ns[4]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \PRDATA_s_0[1]\, B => \PRDATA_am[4]_net_1\, C
         => \PRDATA_bm[4]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4));
    
    PRDATA_m3 : CFG4
      generic map(INIT => x"04BF")

      port map(A => N_54, B => un97_psel_4, C => 
        pwm_negedge_reg_47, D => pwm_negedge_reg_31, Y => 
        \PRDATA_m3\);
    
    \PRDATA_s[7]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        iPSELS_raw_2_0(0), Y => \PRDATA_s_0[1]\);
    
    PRDATA_m7 : CFG4
      generic map(INIT => x"0010")

      port map(A => prdata_typ20, B => \PRDATA_m4\, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        N_258, Y => PRDATA_N_10_mux);
    
    \PRDATA[1]\ : CFG4
      generic map(INIT => x"FD20")

      port map(A => \PRDATA_s_0[1]\, B => 
        PRDATA_generated_sn_N_7_mux, C => 
        PRDATA_generated_1_RNI9N3B1(1), D => 
        \PRDATA_d_ns[1]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1));
    
    \PRDATA_d[3]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_3, B => N_153, C
         => N_258, D => PRDATA_sn_N_2, Y => \PRDATA_d[3]_net_1\);
    
    PRDATA_sn_m1_0_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        N_91);
    
    \PRDATA_bm[5]\ : CFG4
      generic map(INIT => x"BAFA")

      port map(A => prdata_typ20, B => PRDATA_generated_sn_m5_0, 
        C => N_189, D => PRDATA_generated_sn_N_4, Y => 
        \PRDATA_bm[5]_net_1\);
    
    \PRDATA_d_bm[1]\ : CFG4
      generic map(INIT => x"0E02")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(1), B => N_9, C
         => PRDATA_sn_N_2, D => CoreAPB3_0_APBmslave0_PRDATA_0, Y
         => \PRDATA_d_bm[1]_net_1\);
    
    \PSELSBUS_i_0_RNILAQJ[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_9, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_197, D => PRDATA_generated_sn_N_7_mux, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13));
    
    \PRDATA_0[6]\ : CFG4
      generic map(INIT => x"E222")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(6), B => N_9, C
         => un7_pseli, D => PRDATA_0_6, Y => N_156);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA_d_ns[1]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \PRDATA_d_am[1]_net_1\, B => N_258, C => 
        \PRDATA_d_bm[1]_net_1\, Y => \PRDATA_d_ns[1]_net_1\);
    
    \PRDATA_0[4]\ : CFG4
      generic map(INIT => x"E222")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(4), B => N_9, C
         => un7_pseli, D => PRDATA_0_4, Y => N_154);
    
    \PRDATA_ns[6]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \PRDATA_s_0[1]\, B => \PRDATA_am[6]_net_1\, C
         => \PRDATA_bm[6]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6));
    
    \PRDATA_1_bm[9]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => Motor_in_c_7, B => N_119, C => N_109, D => 
        un17_psel_0_a2_0, Y => \PRDATA_1_bm[9]_net_1\);
    
    \PRDATA_d[0]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_0, B => N_150, C
         => N_258, D => PRDATA_sn_N_2, Y => \PRDATA_d[0]_net_1\);
    
    \PRDATA_ns[0]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA_0, B => 
        \PRDATA_s_0[1]\, C => \PRDATA_d[0]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0));
    
    PRDATA_sn_m1_0 : CFG4
      generic map(INIT => x"BAFF")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        iPSELS_raw_2_0(0), Y => PRDATA_sn_N_2);
    
    \PSELSBUS_i_0[1]\ : CFG4
      generic map(INIT => x"FDFF")

      port map(A => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y
         => N_9);
    
    PRDATA_m4 : CFG4
      generic map(INIT => x"55C5")

      port map(A => N_156_0, B => \PRDATA_m3\, C => 
        CoreAPB3_0_APBmslave0_PADDR(5), D => N_54, Y => 
        \PRDATA_m4\);
    
    \PRDATA_0[3]\ : CFG4
      generic map(INIT => x"E222")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(3), B => N_9, C
         => un7_pseli, D => PRDATA_0_3, Y => N_153);
    
    \PRDATA[3]\ : CFG4
      generic map(INIT => x"1F10")

      port map(A => PRDATA_regif_1_0_iv_1(3), B => 
        PRDATA_generated_i_m(3), C => \PRDATA_s_0[1]\, D => 
        \PRDATA_d[3]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3));
    
    \PRDATA_am[4]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_4, B => N_154, C
         => N_258, D => PRDATA_sn_N_2, Y => \PRDATA_am[4]_net_1\);
    
    \PRDATA_2[2]\ : CFG4
      generic map(INIT => x"D800")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        CoreAPB3_0_APBmslave2_PRDATA(2), C => 
        CoreAPB3_0_APBmslave0_PRDATA_1, D => 
        CoreAPB3_0_APBmslave3_PSELx_2, Y => N_173);
    
    \PRDATA_1_am[9]\ : CFG4
      generic map(INIT => x"5044")

      port map(A => N_54, B => \PRDATA_1_am_RNO[9]_net_1\, C => 
        pwm_negedge_reg_16, D => PRDATA_m4_e_0_0, Y => 
        \PRDATA_1_am[9]_net_1\);
    
    \PRDATA_ns[7]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \PRDATA_s_0[1]\, B => \PRDATA_am[7]_net_1\, C
         => \PRDATA_bm[7]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7));
    
    \PRDATA_0[0]\ : CFG4
      generic map(INIT => x"E222")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(0), B => N_9, C
         => un7_pseli, D => PRDATA_0_0, Y => N_150);
    
    \PRDATA[9]\ : CFG4
      generic map(INIT => x"5410")

      port map(A => N_258, B => N_91, C => \PRDATA_1_am[9]_net_1\, 
        D => \PRDATA_1_bm[9]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9));
    
    \PRDATA_bm[4]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => N_170, B => N_152, C => 
        PRDATA_generated_sn_N_4, D => PRDATA_generated_sn_m5_0, Y
         => \PRDATA_bm[4]_net_1\);
    
    \PRDATA_am[7]\ : CFG4
      generic map(INIT => x"E4A0")

      port map(A => N_258, B => Motor_in_c_5, C => N_178, D => 
        un17_psel, Y => \PRDATA_am[7]_net_1\);
    
    \PRDATA_1_am_RNO_0[9]\ : CFG4
      generic map(INIT => x"77FC")

      port map(A => pwm_negedge_reg_0, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => d_m8_0_0_1);
    
    \PRDATA_1_am_RNO[9]\ : CFG4
      generic map(INIT => x"0527")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => d_m8_0_0_1, D => 
        d_m8_0_1, Y => \PRDATA_1_am_RNO[9]_net_1\);
    
    \PRDATA_0[8]\ : CFG4
      generic map(INIT => x"01F1")

      port map(A => \PRDATA_0_RNO[8]_net_1\, B => N_258, C => 
        PRDATA_N_10_mux, D => PRDATA_generated_sn_N_7_mux, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8));
    
    \PRDATA_0_RNO[8]\ : CFG4
      generic map(INIT => x"1B5F")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        Motor_in_c_6, C => prdata_typ20, D => un17_psel, Y => 
        \PRDATA_0_RNO[8]_net_1\);
    
    \PRDATA_am[6]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_6, B => N_156, C
         => N_258, D => PRDATA_sn_N_2, Y => \PRDATA_am[6]_net_1\);
    
    \PRDATA_1_s[2]\ : CFG4
      generic map(INIT => x"0200")

      port map(A => N_259, B => N_91, C => un78_psel, D => 
        PRDATA_generated_sn_m5_0, Y => \PRDATA_1_s[2]_net_1\);
    
    \PRDATA_1_am_RNO_1[9]\ : CFG4
      generic map(INIT => x"53FF")

      port map(A => pwm_negedge_reg_48, B => pwm_negedge_reg_32, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => d_m8_0_1);
    
    \PRDATA_2[7]\ : CFG4
      generic map(INIT => x"0E02")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(7), B => N_9, C
         => PRDATA_sn_N_2, D => CoreAPB3_0_APBmslave0_PRDATA_6, Y
         => N_178);
    
    \PRDATA_ns[5]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \PRDATA_s[5]_net_1\, B => 
        \PRDATA_am[5]_net_1\, C => \PRDATA_bm[5]_net_1\, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5));
    
    \PRDATA_s[5]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        iPSELS_raw_2_0(0), Y => \PRDATA_s[5]_net_1\);
    
    \PRDATA_bm[7]\ : CFG4
      generic map(INIT => x"0031")

      port map(A => PRDATA_generated_sn_N_7_mux, B => 
        PRDATA_generated_i_m_c(7), C => un7_prdata_regif, D => 
        PRDATA_generated_i_m_0_1(7), Y => \PRDATA_bm[7]_net_1\);
    
    \PSELSBUS_i_0_RNINCQJ[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_9, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_199, D => PRDATA_generated_sn_N_7_mux, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15));
    
    \PRDATA[11]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => N_9, B => N_258, C => 
        CoreAPB3_0_APBmslave1_PRDATA_11, D => 
        CoreAPB3_0_APBmslave3_PRDATA_11, Y => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11));
    
    \PRDATA_d_am[1]\ : CFG4
      generic map(INIT => x"AFAC")

      port map(A => CoreAPB3_0_APBmslave1_PRDATA_1, B => 
        PRDATA_regif_1_0_iv_0(1), C => N_9, D => N_143, Y => 
        \PRDATA_d_am[1]_net_1\);
    
    \PRDATA_1_d[2]\ : CFG4
      generic map(INIT => x"A0CC")

      port map(A => un17_psel, B => PRDATA_regif_1_0_iv_xx(2), C
         => Motor_in_c_0, D => N_91, Y => \PRDATA_1_d[2]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreAPB3 is

    port( iPSELS_raw_2_0                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(5 downto 2);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12);
          PRDATA_regif_1_0_iv_xx                       : in    std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0);
          PRDATA_regif_1_0_iv_0                        : in    std_logic_vector(2 downto 1);
          PRDATA_generated_1_RNI9N3B1                  : in    std_logic_vector(1 to 1);
          PRDATA_generated_i_m_c                       : in    std_logic_vector(7 to 7);
          PRDATA_generated_i_m_0_1                     : in    std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                        : in    std_logic_vector(3 to 3);
          PRDATA_generated_i_m                         : in    std_logic_vector(3 to 3);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(15 downto 0);
          PRDATA_0_6                                   : in    std_logic;
          PRDATA_0_4                                   : in    std_logic;
          PRDATA_0_3                                   : in    std_logic;
          PRDATA_0_5                                   : in    std_logic;
          PRDATA_0_0                                   : in    std_logic;
          pwm_negedge_reg_48                           : in    std_logic;
          pwm_negedge_reg_32                           : in    std_logic;
          pwm_negedge_reg_0                            : in    std_logic;
          pwm_negedge_reg_47                           : in    std_logic;
          pwm_negedge_reg_31                           : in    std_logic;
          pwm_negedge_reg_16                           : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_6               : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_1               : in    std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_3               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_1               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_4               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_5               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_6               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_11              : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_10              : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11              : in    std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10              : in    std_logic;
          Motor_in_c_6                                 : in    std_logic;
          Motor_in_c_0                                 : in    std_logic;
          Motor_in_c_7                                 : in    std_logic;
          Motor_in_c_5                                 : in    std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx_2                : out   std_logic;
          N_54                                         : in    std_logic;
          un97_psel_4                                  : in    std_logic;
          un7_pseli                                    : in    std_logic;
          N_156                                        : in    std_logic;
          N_259                                        : in    std_logic;
          un78_psel                                    : in    std_logic;
          PRDATA_generated_sn_m5_0                     : in    std_logic;
          prdata_typ20                                 : in    std_logic;
          un17_psel                                    : in    std_logic;
          N_196                                        : in    std_logic;
          PRDATA_generated_sn_N_7_mux                  : in    std_logic;
          N_199                                        : in    std_logic;
          N_198                                        : in    std_logic;
          N_197                                        : in    std_logic;
          N_119                                        : in    std_logic;
          N_109                                        : in    std_logic;
          un17_psel_0_a2_0                             : in    std_logic;
          PRDATA_m4_e_0_0                              : in    std_logic;
          N_144                                        : in    std_logic;
          N_143                                        : in    std_logic;
          N_170                                        : in    std_logic;
          N_152                                        : in    std_logic;
          PRDATA_generated_sn_N_4                      : in    std_logic;
          N_189                                        : in    std_logic;
          N_190                                        : in    std_logic;
          un7_prdata_regif                             : in    std_logic
        );

end CoreAPB3;

architecture DEF_ARCH of CoreAPB3 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component COREAPB3_MUXPTOB3
    port( CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(5 downto 2) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12) := (others => 'U');
          iPSELS_raw_2_0                               : in    std_logic_vector(0 to 0) := (others => 'U');
          PRDATA_regif_1_0_iv_xx                       : in    std_logic_vector(2 to 2) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_regif_1_0_iv_0                        : in    std_logic_vector(2 downto 1) := (others => 'U');
          PRDATA_generated_1_RNI9N3B1                  : in    std_logic_vector(1 to 1) := (others => 'U');
          PRDATA_generated_i_m_c                       : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_generated_i_m_0_1                     : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_regif_1_0_iv_1                        : in    std_logic_vector(3 to 3) := (others => 'U');
          PRDATA_generated_i_m                         : in    std_logic_vector(3 to 3) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(15 downto 0);
          PRDATA_0_6                                   : in    std_logic := 'U';
          PRDATA_0_4                                   : in    std_logic := 'U';
          PRDATA_0_3                                   : in    std_logic := 'U';
          PRDATA_0_5                                   : in    std_logic := 'U';
          PRDATA_0_0                                   : in    std_logic := 'U';
          pwm_negedge_reg_48                           : in    std_logic := 'U';
          pwm_negedge_reg_32                           : in    std_logic := 'U';
          pwm_negedge_reg_0                            : in    std_logic := 'U';
          pwm_negedge_reg_47                           : in    std_logic := 'U';
          pwm_negedge_reg_31                           : in    std_logic := 'U';
          pwm_negedge_reg_16                           : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_6               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_1               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_3               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_1               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_4               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_5               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_6               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_11              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_10              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_11              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_10              : in    std_logic := 'U';
          Motor_in_c_6                                 : in    std_logic := 'U';
          Motor_in_c_0                                 : in    std_logic := 'U';
          Motor_in_c_7                                 : in    std_logic := 'U';
          Motor_in_c_5                                 : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          N_54                                         : in    std_logic := 'U';
          un97_psel_4                                  : in    std_logic := 'U';
          un7_pseli                                    : in    std_logic := 'U';
          N_156_0                                      : in    std_logic := 'U';
          N_259                                        : in    std_logic := 'U';
          un78_psel                                    : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                     : in    std_logic := 'U';
          prdata_typ20                                 : in    std_logic := 'U';
          un17_psel                                    : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx_2                : in    std_logic := 'U';
          N_196                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_7_mux                  : in    std_logic := 'U';
          N_199                                        : in    std_logic := 'U';
          N_198                                        : in    std_logic := 'U';
          N_197                                        : in    std_logic := 'U';
          N_119                                        : in    std_logic := 'U';
          N_109                                        : in    std_logic := 'U';
          un17_psel_0_a2_0                             : in    std_logic := 'U';
          PRDATA_m4_e_0_0                              : in    std_logic := 'U';
          N_144                                        : in    std_logic := 'U';
          N_143                                        : in    std_logic := 'U';
          N_170                                        : in    std_logic := 'U';
          N_152                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_4                      : in    std_logic := 'U';
          N_189                                        : in    std_logic := 'U';
          N_190                                        : in    std_logic := 'U';
          un7_prdata_regif                             : in    std_logic := 'U'
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

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \iPSELS_raw_2_0[0]_net_1\, 
        \CoreAPB3_0_APBmslave3_PSELx_2\, GND_net_1, VCC_net_1
         : std_logic;

    for all : COREAPB3_MUXPTOB3
	Use entity work.COREAPB3_MUXPTOB3(DEF_ARCH);
begin 

    iPSELS_raw_2_0(0) <= \iPSELS_raw_2_0[0]_net_1\;
    CoreAPB3_0_APBmslave3_PSELx_2 <= 
        \CoreAPB3_0_APBmslave3_PSELx_2\;

    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
      port map(CoreAPB3_0_APBmslave0_PADDR(5) => 
        CoreAPB3_0_APBmslave0_PADDR(5), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        iPSELS_raw_2_0(0) => \iPSELS_raw_2_0[0]_net_1\, 
        PRDATA_regif_1_0_iv_xx(2) => PRDATA_regif_1_0_iv_xx(2), 
        CoreAPB3_0_APBmslave2_PRDATA(7) => 
        CoreAPB3_0_APBmslave2_PRDATA(7), 
        CoreAPB3_0_APBmslave2_PRDATA(6) => 
        CoreAPB3_0_APBmslave2_PRDATA(6), 
        CoreAPB3_0_APBmslave2_PRDATA(5) => 
        CoreAPB3_0_APBmslave2_PRDATA(5), 
        CoreAPB3_0_APBmslave2_PRDATA(4) => 
        CoreAPB3_0_APBmslave2_PRDATA(4), 
        CoreAPB3_0_APBmslave2_PRDATA(3) => 
        CoreAPB3_0_APBmslave2_PRDATA(3), 
        CoreAPB3_0_APBmslave2_PRDATA(2) => 
        CoreAPB3_0_APBmslave2_PRDATA(2), 
        CoreAPB3_0_APBmslave2_PRDATA(1) => 
        CoreAPB3_0_APBmslave2_PRDATA(1), 
        CoreAPB3_0_APBmslave2_PRDATA(0) => 
        CoreAPB3_0_APBmslave2_PRDATA(0), PRDATA_regif_1_0_iv_0(2)
         => PRDATA_regif_1_0_iv_0(2), PRDATA_regif_1_0_iv_0(1)
         => PRDATA_regif_1_0_iv_0(1), 
        PRDATA_generated_1_RNI9N3B1(1) => 
        PRDATA_generated_1_RNI9N3B1(1), PRDATA_generated_i_m_c(7)
         => PRDATA_generated_i_m_c(7), 
        PRDATA_generated_i_m_0_1(7) => 
        PRDATA_generated_i_m_0_1(7), PRDATA_regif_1_0_iv_1(3) => 
        PRDATA_regif_1_0_iv_1(3), PRDATA_generated_i_m(3) => 
        PRDATA_generated_i_m(3), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0), 
        PRDATA_0_6 => PRDATA_0_6, PRDATA_0_4 => PRDATA_0_4, 
        PRDATA_0_3 => PRDATA_0_3, PRDATA_0_5 => PRDATA_0_5, 
        PRDATA_0_0 => PRDATA_0_0, pwm_negedge_reg_48 => 
        pwm_negedge_reg_48, pwm_negedge_reg_32 => 
        pwm_negedge_reg_32, pwm_negedge_reg_0 => 
        pwm_negedge_reg_0, pwm_negedge_reg_47 => 
        pwm_negedge_reg_47, pwm_negedge_reg_31 => 
        pwm_negedge_reg_31, pwm_negedge_reg_16 => 
        pwm_negedge_reg_16, CoreAPB3_0_APBmslave0_PRDATA_6 => 
        CoreAPB3_0_APBmslave0_PRDATA_6, 
        CoreAPB3_0_APBmslave0_PRDATA_1 => 
        CoreAPB3_0_APBmslave0_PRDATA_1, 
        CoreAPB3_0_APBmslave0_PRDATA_0 => 
        CoreAPB3_0_APBmslave0_PRDATA_0, 
        CoreAPB3_0_APBmslave1_PRDATA_3 => 
        CoreAPB3_0_APBmslave1_PRDATA_3, 
        CoreAPB3_0_APBmslave1_PRDATA_1 => 
        CoreAPB3_0_APBmslave1_PRDATA_1, 
        CoreAPB3_0_APBmslave1_PRDATA_0 => 
        CoreAPB3_0_APBmslave1_PRDATA_0, 
        CoreAPB3_0_APBmslave1_PRDATA_4 => 
        CoreAPB3_0_APBmslave1_PRDATA_4, 
        CoreAPB3_0_APBmslave1_PRDATA_5 => 
        CoreAPB3_0_APBmslave1_PRDATA_5, 
        CoreAPB3_0_APBmslave1_PRDATA_6 => 
        CoreAPB3_0_APBmslave1_PRDATA_6, 
        CoreAPB3_0_APBmslave1_PRDATA_11 => 
        CoreAPB3_0_APBmslave1_PRDATA_11, 
        CoreAPB3_0_APBmslave1_PRDATA_10 => 
        CoreAPB3_0_APBmslave1_PRDATA_10, 
        CoreAPB3_0_APBmslave3_PRDATA_0 => 
        CoreAPB3_0_APBmslave3_PRDATA_0, 
        CoreAPB3_0_APBmslave3_PRDATA_11 => 
        CoreAPB3_0_APBmslave3_PRDATA_11, 
        CoreAPB3_0_APBmslave3_PRDATA_10 => 
        CoreAPB3_0_APBmslave3_PRDATA_10, Motor_in_c_6 => 
        Motor_in_c_6, Motor_in_c_0 => Motor_in_c_0, Motor_in_c_7
         => Motor_in_c_7, Motor_in_c_5 => Motor_in_c_5, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_54 => N_54, 
        un97_psel_4 => un97_psel_4, un7_pseli => un7_pseli, 
        N_156_0 => N_156, N_259 => N_259, un78_psel => un78_psel, 
        PRDATA_generated_sn_m5_0 => PRDATA_generated_sn_m5_0, 
        prdata_typ20 => prdata_typ20, un17_psel => un17_psel, 
        CoreAPB3_0_APBmslave3_PSELx_2 => 
        \CoreAPB3_0_APBmslave3_PSELx_2\, N_196 => N_196, 
        PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_199 => N_199, N_198 => 
        N_198, N_197 => N_197, N_119 => N_119, N_109 => N_109, 
        un17_psel_0_a2_0 => un17_psel_0_a2_0, PRDATA_m4_e_0_0 => 
        PRDATA_m4_e_0_0, N_144 => N_144, N_143 => N_143, N_170
         => N_170, N_152 => N_152, PRDATA_generated_sn_N_4 => 
        PRDATA_generated_sn_N_4, N_189 => N_189, N_190 => N_190, 
        un7_prdata_regif => un7_prdata_regif);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \iPSELS_raw_2[0]\ : CFG3
      generic map(INIT => x"02")

      port map(A => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), Y
         => \CoreAPB3_0_APBmslave3_PSELx_2\);
    
    \iPSELS_raw_2_0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, Y => 
        \iPSELS_raw_2_0[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreGPIO is

    port( Motor_in_c                                  : out   std_logic_vector(11 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(11 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          CoreAPB3_0_APBmslave0_PADDR_6               : in    std_logic;
          CoreAPB3_0_APBmslave0_PADDR_7               : in    std_logic;
          CoreAPB3_0_APBmslave0_PADDR_5               : in    std_logic;
          CoreAPB3_0_APBmslave0_PADDR_0               : in    std_logic;
          CoreAPB3_0_APBmslave0_PADDR_1               : in    std_logic;
          CoreAPB3_0_APBmslave0_PADDR_2               : in    std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_0              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_3              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_4              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_6              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_5              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_1              : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          un17_psel_0_a2_0                            : out   std_logic;
          N_112                                       : out   std_logic;
          N_105                                       : in    std_logic;
          N_119                                       : in    std_logic;
          un17_psel                                   : out   std_logic;
          N_109                                       : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic;
          N_121                                       : out   std_logic
        );

end CoreGPIO;

architecture DEF_ARCH of CoreGPIO is 

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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \Motor_in_c[11]\, VCC_net_1, GPOUT_reg_0_sqmuxa, 
        GND_net_1, \Motor_in_c[10]\, \Motor_in_c[6]\, 
        \Motor_in_c[5]\, \Motor_in_c[4]\, \Motor_in_c[3]\, 
        \Motor_in_c[1]\, \Motor_in_c[0]\, 
        \GPOUT_reg_0_sqmuxa_0_a2_0\, \un17_psel_0_a2_0\, \N_112\, 
        \N_121\ : std_logic;

begin 

    Motor_in_c(11) <= \Motor_in_c[11]\;
    Motor_in_c(10) <= \Motor_in_c[10]\;
    Motor_in_c(6) <= \Motor_in_c[6]\;
    Motor_in_c(5) <= \Motor_in_c[5]\;
    Motor_in_c(4) <= \Motor_in_c[4]\;
    Motor_in_c(3) <= \Motor_in_c[3]\;
    Motor_in_c(1) <= \Motor_in_c[1]\;
    Motor_in_c(0) <= \Motor_in_c[0]\;
    un17_psel_0_a2_0 <= \un17_psel_0_a2_0\;
    N_112 <= \N_112\;
    N_121 <= \N_121\;

    \GPOUT_reg_RNIH0U81[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[1]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_1);
    
    \GPOUT_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[6]\);
    
    GPOUT_reg_0_sqmuxa_0_a2_0_0 : CFG3
      generic map(INIT => x"40")

      port map(A => CoreAPB3_0_APBmslave0_PADDR_6, B => 
        CoreAPB3_0_APBmslave0_PADDR_7, C => 
        CoreAPB3_0_APBmslave0_PADDR_5, Y => 
        \GPOUT_reg_0_sqmuxa_0_a2_0\);
    
    \GPOUT_reg_RNIL4U81[5]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[5]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_5);
    
    \GPOUT_reg_RNIK3U81[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[4]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_4);
    
    GPOUT_reg_0_sqmuxa_0_a2_0 : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR_0, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        CoreAPB3_0_APBmslave0_PADDR_1, Y => \N_112\);
    
    \GPOUT_reg[11]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[11]\);
    
    \GPOUT_reg[8]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => Motor_in_c(8));
    
    \GPOUT_reg[10]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[10]\);
    
    \GPOUT_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[0]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \GPOUT_reg_RNIJ2U81[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[3]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_3);
    
    \GPOUT_reg_RNI14N01[10]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[10]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_10);
    
    \GPOUT_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => Motor_in_c(2));
    
    GPOUT_reg_0_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => \GPOUT_reg_0_sqmuxa_0_a2_0\, B => \N_112\, C
         => N_109, D => \N_121\, Y => GPOUT_reg_0_sqmuxa);
    
    \GPOUT_reg_RNIM5U81[6]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[6]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_6);
    
    \GPOUT_reg_RNI25N01[11]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[11]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_11);
    
    \GPOUT_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => Motor_in_c(7));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GPOUT_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[5]\);
    
    \GPOUT_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[1]\);
    
    \GEN_BITS.0.APB_32.un17_psel_0_a2\ : CFG4
      generic map(INIT => x"2000")

      port map(A => N_105, B => CoreAPB3_0_APBmslave0_PADDR_2, C
         => \un17_psel_0_a2_0\, D => N_119, Y => un17_psel);
    
    \GPOUT_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[3]\);
    
    \GPOUT_reg_RNIGVT81[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \Motor_in_c[0]\, B => N_119, C => N_109, D
         => \un17_psel_0_a2_0\, Y => 
        CoreAPB3_0_APBmslave1_PRDATA_0);
    
    GPOUT_reg_0_sqmuxa_0_a2_1 : CFG4
      generic map(INIT => x"8000")

      port map(A => CoreAPB3_0_APBmslave0_PWRITE, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => 
        CoreAPB3_0_APBmslave3_PSELx_2, Y => \N_121\);
    
    \GPOUT_reg[9]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => Motor_in_c(9));
    
    \GPOUT_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => GPOUT_reg_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \Motor_in_c[4]\);
    
    \GEN_BITS.0.APB_32.un17_psel_0_a2_0_0\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR_0, B => 
        CoreAPB3_0_APBmslave0_PADDR_6, C => 
        CoreAPB3_0_APBmslave0_PADDR_1, Y => \un17_psel_0_a2_0\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2CREAL is

    port( COREI2C_0_0_SDAO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                   : in    std_logic_vector(4 downto 0);
          iPSELS_raw_2_0                                : in    std_logic_vector(0 to 0);
          seradr0apb                                    : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                  : in    std_logic_vector(7 downto 0);
          serdat_0                                      : out   std_logic;
          sercon_0                                      : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 : in    std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 : in    std_logic;
          MSS_READY                                     : in    std_logic;
          FAB_CCC_GL0                                   : in    std_logic;
          N_1209                                        : out   std_logic;
          N_1206                                        : out   std_logic;
          N_1207                                        : out   std_logic;
          N_1205                                        : out   std_logic;
          N_1208                                        : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                    : in    std_logic;
          N_105                                         : out   std_logic;
          N_110                                         : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                    : in    std_logic;
          N_109                                         : out   std_logic;
          PRDATA_sn_N_8                                 : out   std_logic;
          un7_pseli                                     : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                  : in    std_logic;
          N_1204                                        : out   std_logic;
          N_1203                                        : out   std_logic;
          N_112                                         : in    std_logic;
          N_108                                         : in    std_logic
        );

end COREI2CREAL;

architecture DEF_ARCH of COREI2CREAL is 

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
        \fsmsta_8[1]\, \fsmsta[2]_net_1\, N_1382_i_0, 
        \fsmsta[3]_net_1\, \fsmsta_8_0_iv_i_0[3]\, 
        \fsmsta[4]_net_1\, \fsmsta_8[4]\, \ack\, ack_7, 
        \sercon[6]_net_1\, N_1389, SDAO_int_1_sqmuxa_i_0, 
        \serdat_0\, \serdat_9[0]\, \un1_serdat_2_sqmuxa\, 
        \serdat[1]_net_1\, \serdat_9[1]\, \serdat[2]_net_1\, 
        \serdat_9[2]\, \serdat[3]_net_1\, \serdat_9[3]\, 
        \serdat[4]_net_1\, \serdat_9[4]\, \serdat[5]_net_1\, 
        \serdat_9[5]\, \serdat[6]_net_1\, \serdat_9[6]\, 
        \serdat[7]_net_1\, \serdat_9[7]\, \bsd7\, bsd7_9, 
        \bsd7_tmp\, bsd7_tmp_6, \adrcomp\, \un1_adrcomp5\, 
        adrcomp_2_sqmuxa_i_0, \ack_bit\, \ack_bit_1_sqmuxa\, 
        \PCLKint\, PCLKint_3, un1_pclkint4_i_0, \busfree\, 
        un105_fsmdet, \adrcompen\, \adrcompen_0_sqmuxa\, 
        adrcompen_2_sqmuxa_i_0, \SCLSCL\, \fsmmod[1]_net_1\, 
        SCLSCL_1_sqmuxa_i_0, \SDAInt\, \SDAI_ff_reg[0]_net_1\, 
        \un1_rtn_4\, \SCLI_ff_reg[0]_net_1\, \un1_rtn_3\, 
        \nedetect\, \nedetect_0_sqmuxa\, rtn_1_i_0, \pedetect\, 
        \pedetect_0_sqmuxa\, rtn_1, \starto_en\, un8_busfree, 
        starto_en_1_sqmuxa_i_0, \SCLI_ff_reg_3[0]\, 
        \SCLI_ff_reg[1]_net_1\, \SCLI_ff_reg_3[1]\, 
        \SCLI_ff_reg[2]_net_1\, \SCLI_ff_reg_3[2]\, 
        \SDAI_ff_reg_4[0]\, \SDAI_ff_reg[1]_net_1\, 
        \SDAI_ff_reg_4[1]\, \SDAI_ff_reg[2]_net_1\, 
        \SDAI_ff_reg_4[2]\, \framesync[0]_net_1\, 
        \framesync_7[0]\, \framesync[1]_net_1\, \framesync_7[1]\, 
        \framesync[2]_net_1\, \framesync_7[2]\, 
        \framesync[3]_net_1\, \framesync_7[3]\, 
        \indelay[0]_net_1\, \indelay_4[0]\, \indelay[1]_net_1\, 
        \indelay_4[1]\, \indelay[2]_net_1\, \indelay_4[2]\, 
        \indelay[3]_net_1\, \indelay_4[3]\, \sercon[1]_net_1\, 
        un5_penable, \sercon[2]_net_1\, \COREI2C_0_0_INT[0]\, 
        \sercon_9[3]\, \sercon[4]_net_1\, \sercon_9[4]\, 
        \sercon[5]_net_1\, \sercon[7]_net_1\, 
        \PCLK_count1[0]_net_1\, \PCLK_count1_10[0]\, 
        \PCLK_count1[1]_net_1\, \PCLK_count1_10[1]\, 
        \PCLK_count1[2]_net_1\, \PCLK_count1_10[2]\, 
        \PCLK_count1[3]_net_1\, \PCLK_count1_10[3]\, 
        \PCLK_count2[0]_net_1\, \PCLK_count2_3[0]\, 
        \PCLK_count2[1]_net_1\, \PCLK_count2_3[1]\, 
        \PCLK_count2[2]_net_1\, \PCLK_count2_3[2]\, 
        \PCLK_count2[3]_net_1\, \PCLK_count2_3[3]\, 
        \sersta[3]_net_1\, \sersta_32[3]\, \sersta[4]_net_1\, 
        \sersta_32[4]\, \sercon_0\, \sersta[0]_net_1\, 
        \sersta_32[0]\, \sersta[1]_net_1\, \sersta_32[1]\, 
        \sersta[2]_net_1\, \sersta_32[2]\, \fsmsync[6]_net_1\, 
        N_968_i_0, \fsmsync[5]_net_1\, N_970_i_0, 
        \fsmsync[4]_net_1\, N_972_i_0, \fsmsync[3]_net_1\, 
        N_974_i_0, \fsmsync[2]_net_1\, N_976_i_0, 
        \fsmsync[1]_net_1\, N_978_i_0, \fsmdet[6]_net_1\, 
        \fsmdet[5]_net_1\, N_934_i_0, \fsmdet[4]_net_1\, 
        N_936_i_0, N_938_i_0, \fsmdet[2]_net_1\, N_940_i_0, 
        \fsmdet[1]_net_1\, N_942_i_0, \fsmdet[0]_net_1\, 
        N_944_i_0, \fsmmod[6]_net_1\, \fsmmod_ns[0]\, 
        \fsmmod[5]_net_1\, \fsmmod_ns[1]\, \fsmmod[4]_net_1\, 
        N_1029_i_0, \fsmmod[3]_net_1\, \fsmmod_ns[3]\, 
        \fsmmod[2]_net_1\, N_1032_i_0, \fsmmod_ns[5]\, 
        \fsmmod[0]_net_1\, N_1035_i_0, \fsmsync[7]_net_1\, 
        \fsmsync_ns[0]\, un149_ens1_i_0, \PCLKint_ff\, 
        PCLKint_ff_2, \PCLK_count1_ov\, \PCLK_count1_1_sqmuxa\, 
        \PCLK_count2_ov\, PCLK_count2_ov_6, PCLK_count2_ov_6_1, 
        \PCLK_count1_1_sqmuxa_1_0\, \PCLK_count1_ov_1_sqmuxa\, 
        \PCLK_count1_1_sqmuxa_2\, \un1_counter_rst_3\, 
        un105_fsmdet_1, un30_fsmmod, un133_framesync, 
        un136_framesync, N_1135, un2_fsmsta_12_s7, 
        \fsmsta_nxt_cnst_i_m_1[3]\, \fsmsta_nxt_cnst_i_m[3]\, 
        un34_si_int_2, N_1105, un70_ens1, un97_ens1_1, 
        un16_ens1_1, un97_ens1, un60_ens1, un30_fsmsta, N_329, 
        N_32, \sersta_32_1[0]\, \sersta_32_1[4]\, un6_fsmsta_2, 
        \un7_fsmsta_1\, \un7_fsmsta\, un12_fsmsta_0_0, 
        un25_fsmsta_1_1, un25_fsmsta_1, un25_fsmsta_0_1, 
        un2_fsmsta_1, \un1_pclk_count1_ov_1_1\, 
        \un1_pclk_count1_ov_1\, \PRDATA_3_1_1[7]\, 
        \PRDATA_3_1_1[4]\, \PRDATA_3_1_1[5]\, \PRDATA_3_1_1[3]\, 
        \PRDATA_3_1_1[6]\, bsd7_0_ns_1_0, bsd7_91, un57_fsmsta_0, 
        un57_fsmsta_4, bsd7_tmp_6_sn_m6_1, bsd7_tmp_6_ns_1, 
        un105_ens1, serdat_0_sqmuxa_sn, bsd7_90, 
        bsd7_9_m_ns_RNO_1, bsd7_9_m_ns_RNO_2, bsd7_sn_N_4, 
        \framesync_7_enl_am[0]\, \framesync_7_enl_bm[0]\, 
        framesync_7_e2, \framesync_7_enl_am[3]\, 
        \framesync_7_enl_bm[3]\, \fsmsta_8_1_iv_2[4]\, N_1104, 
        \fsmsta_nxt_cnst_0_1[4]_net_1\, \serdat_m3_e_1\, 
        PCLK_count2_ov_6_0_a2_1_0, \fsmmod_ns_i_a3_0[2]_net_1\, 
        N_1004_3, serdat_m6_0_a2_0, bsd7_1_sqmuxa_2_0, un1_fsmmod, 
        N_1333_2, un39_fsmdet, N_997, N_1139, N_1004_1, 
        PCLKint_p1_i_0, un36_si_int_2, un20_sdao_int, N_1186, 
        N_1185, SDAO_int_7_0_354_1, SDAO_int_7_0_354_a5_0, 
        un105_ens1_0_a2_1_0, \SDAO_int_1_sqmuxa_2\, 
        SDAO_int_1_sqmuxa_1_0, un27_adrcompen_1, un141_ens1_2, 
        un81_ens1_0, \fsmmod_ns_0_a4_0_3_0_0[3]_net_1\, 
        \sercon_8_1[4]\, un26_adrcompen_NE_2, un26_adrcompen_NE_1, 
        un26_adrcompen_NE_0, un25_si_int_0, un13_adrcompen_4, 
        \fsmsta_nxt_cnst_0_a5_1_0[1]_net_1\, N_1038, 
        un12_pclk_count1, \fsmmod_nxt_0_sqmuxa\, N_1012, N_1044, 
        N_989, un70_fsmsta, \fsmsta_cnst_m_2[4]\, framesync_7_sm0, 
        N_1125, PCLK_count2_ov_6_0_a2_1_4_tz, \N_109\, N_21, 
        un22_si_int_3, N_1141, N_1056, un38_fsmsta, un33_fsmsta, 
        N_1010, N_983, un16_fsmmod, CO1, CO2, 
        \un1_pclk_count1_ov\, N_1332, N_1041, N_15, N_30_mux, 
        un5_penable_0_a2_0, \serdat_m3_e_3\, 
        \fsmmod_ns_i_0[2]_net_1\, \fsmsta_nxt_cnst_0_0[4]_net_1\, 
        \fsmsta_nxt_cnst_i_0[2]_net_1\, PCLK_count2_ov_6_0_a2_1_3, 
        \sercon_8_2[4]\, un135_ens1_1_0, un26_adrcompen_NE_3, 
        un36_si_int, \PCLK_count1_0_sqmuxa\, 
        \PCLK_count1_0_sqmuxa_4\, N_1003, N_1004, un1_fsmsta, 
        un27_si_int, un25_si_int, un13_adrcompen, un18_fsmsta, 
        N_1433_tz, \un63_fsmsta_tz\, un22_si_int, un74_ens1, 
        N_1120, N_984, un23_pclk_count1, un33_pclk_count1, 
        \un1_pclk_count191\, N_994, un34_si_int, un71_fsmsta, 
        \un2_fsmsta_5\, N_1122_1, N_1108, i4_mux_4, 
        \SDAO_int_1_sqmuxa_5\, \fsmsta_nxt_cnst_i_0[0]_net_1\, 
        \fsmsta_nxt_cnst_0_0[1]_net_1\, un19_framesync_0, 
        \fsmsync_ns_i_0[3]_net_1\, \fsmmod_ns_i_a4_1[2]\, 
        \fsmmod_ns_0_a4_0_3[3]\, un135_ens1, N_1011, N_1053, 
        un25_framesync, un111_fsmdet, un20_adrcompen, i4_mux_2, 
        CO0, N_1137, N_982, N_1040, N_1067, N_1055, un53_fsmdet, 
        un54_fsmdet, N_996, \PCLK_count1_0_sqmuxa_3\, CO1_0, 
        \fsmsta_nxt_cnst_i_1[0]_net_1\, 
        \fsmsta_nxt_cnst_0_1[1]_net_1\, un27_adrcompen_3, 
        un21_fsmdet_3, un21_fsmdet_2, \fsmsta_3_sqmuxa_0\, 
        \fsmsync_ns_0_1[0]_net_1\, un105_ens1_0_a2_1_0_RNIP3231, 
        un115_fsmdet, un23_adrcompen, un78_fsmdet, 
        fsmsta_0_sqmuxa_1, \un2_fsmsta_4\, \un2_fsmsta_8\, 
        un2_fsmsta_12_s7_0, \fsmsta_cnst_m_0[4]\, 
        \fsmsta_nxt_cnst_i_2[0]_net_1\, un27_adrcompen_4, 
        un25_fsmsta, N_1065, N_1100, un19_framesync, N_1088, 
        fsmsta_1_sqmuxa, N_1066_1, \un2_fsmsta_6\, 
        \ack_bit_1_sqmuxa_1\, un2_fsmsta_12_s7_3, N_1405, N_1058, 
        \fsmsta_nxt_cnst[1]\, \un1_serdat36_tz\, un2_fsmsta_9_s2, 
        un2_fsmsta_7_s3, un92_fsmsta, \ack_bit_1_sqmuxa_2\, 
        \fsmsta_8_0_iv_0[3]\, \fsmsta_8_0_iv_1[0]\, 
        \fsmsta_nxt_60_i_m[3]\, N_1388, N_1386, \un1_serdat36\, 
        \fsmsta_nxt_60_i_m[0]\, SDAO_int_m, un25_fsmdet, N_1258, 
        CO1_1, \fsmsta_nxt_9_i_m[0]\, \fsmsta_nxt_9_i_m[3]\, 
        N_1406, \fsmsta_8_0_iv_1[3]\, \fsmsta_8_1_iv_1[4]\, 
        \fsmsta_8_0_iv_3[0]\, \fsmsta_8_0_iv_1[1]\, 
        \fsmsta_8_0_iv_0[1]\, fsmsta_8_0_iv_0_0_326_i_1, 
        fsmsta_8_0_iv_0_0_326_i_0, un2_fsmsta_14_0, 
        \fsmsta_8_0_iv_4[0]\, \fsmsta_8_0_iv_2[1]\, 
        un1_serdat_2_sqmuxa_2_0, serdat_2_sqmuxa_1, N_1097_m, 
        N_1176 : std_logic;

begin 

    COREI2C_0_0_INT(0) <= \COREI2C_0_0_INT[0]\;
    serdat_0 <= \serdat_0\;
    sercon_0 <= \sercon_0\;
    N_109 <= \N_109\;

    \un1_PCLK_count1_1.SUM[1]\ : CFG4
      generic map(INIT => x"B4F0")

      port map(A => \PCLK_count1_ov_1_sqmuxa\, B => 
        PCLK_count2_ov_6_1, C => \PCLK_count1[1]_net_1\, D => 
        \PCLK_count1[0]_net_1\, Y => N_1258);
    
    \FSMMOD_SYNC_PROC.un115_fsmdet\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \sercon[6]_net_1\, B => un111_fsmdet, C => 
        \fsmdet[1]_net_1\, Y => un115_fsmdet);
    
    \sercon[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[1]_net_1\);
    
    \fsmsync_ns_i_a3_0[6]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \fsmsync[2]_net_1\, B => \fsmsync[1]_net_1\, 
        C => N_983, D => un70_fsmsta, Y => N_1011);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0[3]\ : CFG4
      generic map(INIT => x"CEEE")

      port map(A => un53_fsmdet, B => un2_fsmsta_9_s2, C => 
        \adrcomp\, D => fsmsta_0_sqmuxa_1, Y => 
        \fsmsta_8_0_iv_0[3]\);
    
    \fsmsta_nxt_cnst_0[1]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => un20_adrcompen, B => N_1135, C => 
        \fsmsta_nxt_cnst_0_1[1]_net_1\, D => N_1104, Y => 
        \fsmsta_nxt_cnst[1]\);
    
    \fsmsync_ns_i_o3_0[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_984, B => \SCLInt\, Y => N_996);
    
    \fsmmod_ns_0_o3_1[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => 
        PCLKint_p1_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_0[3]\ : CFG4
      generic map(INIT => x"5010")

      port map(A => N_1135, B => \fsmsta[3]_net_1\, C => 
        un2_fsmsta_12_s7, D => \fsmsta_nxt_cnst_i_m_1[3]\, Y => 
        \fsmsta_nxt_cnst_i_m[3]\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_ns[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \framesync_7_enl_am[3]\, B => 
        \framesync_7_enl_bm[3]\, C => framesync_7_e2, Y => 
        \framesync_7[3]\);
    
    \fsmdet[1]\ : SLE
      port map(D => N_942_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[1]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un25_si_int, B => un19_framesync_0, C => 
        un34_si_int, D => un22_si_int, Y => un19_framesync);
    
    \serSTA_WRITE_PROC.sersta_32[4]\ : CFG4
      generic map(INIT => x"3AFF")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, C
         => \sersta_32_1[4]\, D => \COREI2C_0_0_INT[0]\, Y => 
        \sersta_32[4]\);
    
    \fsmsta_nxt_cnst_i_a2_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un34_si_int_2);
    
    \serSTA_WRITE_PROC.un34_si_int_1\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[4]_net_1\, Y
         => un36_si_int_2);
    
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
      generic map(INIT => x"0004")

      port map(A => un57_fsmsta_0, B => \un1_serdat36_tz\, C => 
        \fsmdet[3]_net_1\, D => un57_fsmsta_4, Y => 
        \un1_serdat36\);
    
    starto_en : SLE
      port map(D => un8_busfree, CLK => FAB_CCC_GL0, EN => 
        starto_en_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \starto_en\);
    
    \fsmsta_nxt_cnst_0_a5_1_0[1]\ : CFG4
      generic map(INIT => x"020F")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => un30_fsmsta, D => un20_sdao_int, Y => N_1122_1);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_bm[0]\ : CFG3
      generic map(INIT => x"1E")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        \framesync[0]_net_1\, Y => \framesync_7_enl_bm[0]\);
    
    \un1_PCLK_count2_1.CO1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \PCLK_count2[0]_net_1\, B => 
        \PCLK_count2[1]_net_1\, C => \PCLK_count1_ov\, Y => CO1);
    
    \serdat[4]\ : SLE
      port map(D => \serdat_9[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[4]_net_1\);
    
    \fsmsta[4]\ : SLE
      port map(D => \fsmsta_8[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[4]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1_1\ : CFG4
      generic map(INIT => x"00E0")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        un25_fsmsta_1_1);
    
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
    
    \fsmmod[4]\ : SLE
      port map(D => N_1029_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[4]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns\ : CFG4
      generic map(INIT => x"0323")

      port map(A => bsd7_tmp_6_sn_m6_1, B => \fsmdet[3]_net_1\, C
         => bsd7_tmp_6_ns_1, D => un105_ens1, Y => bsd7_tmp_6);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un2_fsmsta_1, B => un18_fsmsta, C => 
        \un7_fsmsta\, D => un25_fsmsta_1, Y => un25_fsmsta);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_4[0]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => \un2_fsmsta_6\, B => un136_framesync, C => 
        \fsmsta_nxt_9_i_m[0]\, D => \fsmsta_8_0_iv_1[0]\, Y => 
        \fsmsta_8_0_iv_4[0]\);
    
    \fsmmod_ns_0_a4_0[1]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmmod[6]_net_1\, B => \SDAInt\, C => 
        N_1066_1, Y => N_1058);
    
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
    
    pedetect_RNI2C3D : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => \pedetect\, Y => 
        serdat_m6_0_a2_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0[1]\ : CFG4
      generic map(INIT => x"AAEA")

      port map(A => un2_fsmsta_9_s2, B => un136_framesync, C => 
        \fsmsta_cnst_m_2[4]\, D => fsmsta_1_sqmuxa, Y => 
        \fsmsta_8_0_iv_0[1]\);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO\ : CFG3
      generic map(INIT => x"AC")

      port map(A => bsd7_9_m_ns_RNO_1, B => bsd7_9_m_ns_RNO_2, C
         => bsd7_sn_N_4, Y => bsd7_90);
    
    \fsmmod_ns_0[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmmod_nxt_0_sqmuxa\, B => N_1056, C => 
        un115_fsmdet, D => N_1055, Y => \fsmmod_ns[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_1[0]\ : CFG4
      generic map(INIT => x"3679")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_329, D => \fsmsta[2]_net_1\, Y => \sersta_32_1[0]\);
    
    \INDELAY_WRITE_PROC.indelay_4[1]\ : CFG4
      generic map(INIT => x"6090")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => \fsmsync[4]_net_1\, D => N_989, Y => \indelay_4[1]\);
    
    \fsmsta_nxt_cnst_i_a5_2[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_1141, B => \fsmsta[0]_net_1\, Y => N_1120);
    
    \PRDATA_3[1]\ : CFG4
      generic map(INIT => x"88F0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        seradr0apb(1), C => N_1185, D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_1203);
    
    \INDELAY_WRITE_PROC.indelay_4[3]\ : CFG4
      generic map(INIT => x"60A0")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \fsmsync[4]_net_1\, D => CO1_0, Y => \indelay_4[3]\);
    
    ack : SLE
      port map(D => ack_7, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \ack\);
    
    \fsmsta[3]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[3]_net_1\);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_3[1]\ : CFG4
      generic map(INIT => x"6A00")

      port map(A => \PCLK_count2[1]_net_1\, B => \PCLK_count1_ov\, 
        C => \PCLK_count2[0]_net_1\, D => PCLK_count2_ov_6_1, Y
         => \PCLK_count2_3[1]\);
    
    \serdat[2]\ : SLE
      port map(D => \serdat_9[2]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[2]_net_1\);
    
    un1_pclk_count1_ov_1 : CFG4
      generic map(INIT => x"CFEF")

      port map(A => \PCLK_count2[0]_net_1\, B => 
        \sercon[1]_net_1\, C => \sercon[7]_net_1\, D => 
        \un1_pclk_count1_ov_1_1\, Y => \un1_pclk_count1_ov_1\);
    
    \fsmsta_nxt_cnst_i_2[0]\ : CFG3
      generic map(INIT => x"CE")

      port map(A => N_1122_1, B => \fsmsta_nxt_cnst_i_1[0]_net_1\, 
        C => \fsmsta[0]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_2[0]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7s2\ : CFG2
      generic map(INIT => x"E")

      port map(A => bsd7_1_sqmuxa_2_0, B => un105_fsmdet_1, Y => 
        framesync_7_sm0);
    
    \fsmmod_ns_0_a4_0[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmmod[1]_net_1\, B => \SCLSCL\, C => 
        \pedetect\, Y => N_1056);
    
    \serCON_WRITE_PROC.un5_penable_0_a2\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_108, B => N_112, C => un5_penable_0_a2_0, Y
         => un5_penable);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m24\ : CFG4
      generic map(INIT => x"7FFE")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        i4_mux_4);
    
    \fsmsync_ns_0_o3_0[0]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => PCLKint_p1_i_0, B => N_1004_1, C => N_1004_3, 
        Y => N_984);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_1\ : CFG4
      generic map(INIT => x"13B3")

      port map(A => serdat_0_sqmuxa_sn, B => \bsd7_tmp\, C => 
        un105_ens1, D => CoreAPB3_0_APBmslave0_PWDATA(7), Y => 
        bsd7_tmp_6_ns_1);
    
    PCLK_count1_0_sqmuxa : CFG3
      generic map(INIT => x"04")

      port map(A => \sercon[7]_net_1\, B => un12_pclk_count1, C
         => \sercon[1]_net_1\, Y => \PCLK_count1_0_sqmuxa\);
    
    \fsmsync_ns_i_o3[5]\ : CFG2
      generic map(INIT => x"B")

      port map(A => PCLKint_p1_i_0, B => \fsmsync[5]_net_1\, Y
         => N_983);
    
    \serdat_RNIJD9G[4]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \serdat[4]_net_1\, B => \sercon[4]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \PRDATA_3_1_1[4]\);
    
    \FSMSTA_SYNC_PROC.un30_fsmmod\ : CFG4
      generic map(INIT => x"7333")

      port map(A => \PCLKint\, B => \fsmsta_cnst_m_2[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => un30_fsmmod);
    
    SDAO_int_RNO : CFG4
      generic map(INIT => x"FF40")

      port map(A => un1_fsmmod, B => SDAO_int_7_0_354_a5_0, C => 
        N_1406, D => SDAO_int_7_0_354_1, Y => N_1389);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        BIBUF_COREI2C_0_0_SDA_IO_Y, Y => \SDAI_ff_reg_4[0]\);
    
    \fsmmod_ns_i_a4_1_1[2]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \COREI2C_0_0_INT[0]\, B => un70_fsmsta, C => 
        \fsmmod[0]_net_1\, D => \fsmmod[5]_net_1\, Y => 
        \fsmmod_ns_i_a4_1[2]\);
    
    \fsmsta_nxt_cnst_0_o2[4]\ : CFG2
      generic map(INIT => x"7")

      port map(A => un20_sdao_int, B => \fsmsta[2]_net_1\, Y => 
        N_1105);
    
    \un1_PCLK_count1_1.CO1\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \PCLK_count1_ov_1_sqmuxa\, B => 
        PCLK_count2_ov_6_1, C => \PCLK_count1[1]_net_1\, D => 
        \PCLK_count1[0]_net_1\, Y => CO1_1);
    
    \fsmsync_ns_i_a3_0[2]\ : CFG4
      generic map(INIT => x"0111")

      port map(A => \fsmsync[7]_net_1\, B => \fsmsync[6]_net_1\, 
        C => PCLKint_p1_i_0, D => \fsmsync[5]_net_1\, Y => N_1003);
    
    \FSMMOD_SYNC_PROC.un111_fsmdet\ : CFG3
      generic map(INIT => x"80")

      port map(A => \pedetect\, B => un30_fsmsta, C => un1_fsmsta, 
        Y => un111_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_2_RNO[4]\ : CFG4
      generic map(INIT => x"CCC8")

      port map(A => \ack\, B => \fsmsta_cnst_m_2[4]\, C => 
        un105_fsmdet_1, D => un30_fsmmod, Y => 
        \fsmsta_cnst_m_0[4]\);
    
    \ADRCOMP_WRITE_PROC.un23_adrcompen\ : CFG4
      generic map(INIT => x"CCCD")

      port map(A => un26_adrcompen_NE_3, B => un20_adrcompen, C
         => un26_adrcompen_NE_2, D => un26_adrcompen_NE_1, Y => 
        un23_adrcompen);
    
    \serCON_WRITE_PROC.sercon_9[3]\ : CFG4
      generic map(INIT => x"BBB8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        un5_penable, C => \COREI2C_0_0_INT[0]\, D => un97_ens1, Y
         => \sercon_9[3]\);
    
    PCLK_count1_0_sqmuxa_4 : CFG4
      generic map(INIT => x"0004")

      port map(A => \sercon[7]_net_1\, B => CO2, C => 
        \sercon[1]_net_1\, D => \sercon_0\, Y => 
        \PCLK_count1_0_sqmuxa_4\);
    
    \fsmmod[3]\ : SLE
      port map(D => \fsmmod_ns[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[3]_net_1\);
    
    \CLK_COUNTER1_PROC.un1_pclk_count1_1.CO2\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \PCLK_count1[2]_net_1\, B => 
        \PCLK_count1[1]_net_1\, C => \PCLK_count1[0]_net_1\, Y
         => CO2);
    
    \PCLK_count2[3]\ : SLE
      port map(D => \PCLK_count2_3[3]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[3]_net_1\);
    
    un1_rtn_4 : CFG3
      generic map(INIT => x"81")

      port map(A => \SDAI_ff_reg[2]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, C => \SDAI_ff_reg[0]_net_1\, Y
         => \un1_rtn_4\);
    
    un1_serdat_2_sqmuxa_RNO : CFG4
      generic map(INIT => x"0200")

      port map(A => serdat_m6_0_a2_0, B => \COREI2C_0_0_INT[0]\, 
        C => un105_ens1_0_a2_1_0_RNIP3231, D => un92_fsmsta, Y
         => serdat_2_sqmuxa_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_4_RNO[0]\ : CFG4
      generic map(INIT => x"2220")

      port map(A => \un2_fsmsta_5\, B => un136_framesync, C => 
        \ack\, D => \SDAInt\, Y => \fsmsta_nxt_9_i_m[0]\);
    
    \indelay_RNIETMD[1]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => N_989, Y => CO1_0);
    
    \fsmmod_ns_0_a4_0_3_0_0[3]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmmod[4]_net_1\, B => \PCLKint_ff\, C => 
        \PCLKint\, Y => \fsmmod_ns_0_a4_0_3_0_0[3]_net_1\);
    
    \serdat[7]\ : SLE
      port map(D => \serdat_9[7]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[7]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m18\ : CFG4
      generic map(INIT => x"BD21")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        i4_mux_2);
    
    \sercon[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[2]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un26_adrcompen_NE_0\ : CFG4
      generic map(INIT => x"7BDE")

      port map(A => seradr0apb(6), B => seradr0apb(5), C => 
        \serdat[5]_net_1\, D => \serdat[4]_net_1\, Y => 
        un26_adrcompen_NE_0);
    
    un2_fsmsta_8 : CFG4
      generic map(INIT => x"8000")

      port map(A => \un63_fsmsta_tz\, B => un30_fsmsta, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        \un2_fsmsta_8\);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, C
         => un6_fsmsta_2, D => \fsmsta[2]_net_1\, Y => un1_fsmsta);
    
    fsmsta_3_sqmuxa_0_RNI1J851 : CFG4
      generic map(INIT => x"FC54")

      port map(A => \fsmsta_3_sqmuxa_0\, B => un136_framesync, C
         => \pedetect\, D => un78_fsmdet, Y => 
        un1_ens1_pre_1_sqmuxa_i_0);
    
    \serCON_WRITE_PROC.sercon_8_2[4]\ : CFG4
      generic map(INIT => x"8CCC")

      port map(A => \PCLKint\, B => \sercon_8_1[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => 
        \sercon_8_2[4]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \ADRCOMP_WRITE_PROC.un20_adrcompen\ : CFG2
      generic map(INIT => x"8")

      port map(A => un13_adrcompen, B => seradr0apb(0), Y => 
        un20_adrcompen);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmdet[3]_net_1\, B => \fsmmod[5]_net_1\, Y
         => un39_fsmdet);
    
    SCLSCL : SLE
      port map(D => \fsmmod[1]_net_1\, CLK => FAB_CCC_GL0, EN => 
        SCLSCL_1_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLSCL\);
    
    \fsmsta_nxt_cnst_i_1[0]\ : CFG4
      generic map(INIT => x"FF80")

      port map(A => \fsmsta[2]_net_1\, B => un34_si_int_2, C => 
        N_1108, D => \fsmsta_nxt_cnst_i_0[0]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_1[0]_net_1\);
    
    \fsmsta_nxt_cnst_0_a2[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un30_fsmsta, B => un1_fsmmod, Y => N_1135);
    
    \serCON_WRITE_PROC.un60_ens1\ : CFG4
      generic map(INIT => x"5556")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un60_ens1);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_a4_0\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_1332);
    
    \fsmsta_nxt_cnst_i_a2_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, Y
         => N_1139);
    
    \serDAT_WRITE_PROC.serdat_9[1]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(1), B => 
        un105_ens1, C => \serdat_0\, Y => \serdat_9[1]\);
    
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

      port map(A => \sercon[4]_net_1\, B => \fsmsync[2]_net_1\, Y
         => N_997);
    
    serdat_m3_e_3 : CFG4
      generic map(INIT => x"8000")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, C => iPSELS_raw_2_0(0), D
         => \serdat_m3_e_1\, Y => \serdat_m3_e_3\);
    
    \fsmsync_RNO[6]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsync[7]_net_1\, B => \SCLInt\, C => 
        N_1004, Y => N_968_i_0);
    
    un2_fsmsta_4 : CFG2
      generic map(INIT => x"8")

      port map(A => un2_fsmsta_1, B => un30_fsmsta, Y => 
        \un2_fsmsta_4\);
    
    \PRDATA_1[2]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \sercon[2]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => \serdat[2]_net_1\, Y
         => N_1186);
    
    \fsmmod_ns_i_a4[6]\ : CFG3
      generic map(INIT => x"31")

      port map(A => \fsmmod[3]_net_1\, B => \fsmmod[0]_net_1\, C
         => N_1041, Y => N_1067);
    
    \serCON_WRITE_PROC.un97_ens1\ : CFG4
      generic map(INIT => x"AA08")

      port map(A => \sercon[6]_net_1\, B => un70_ens1, C => 
        un97_ens1_1, D => un16_ens1_1, Y => un97_ens1);
    
    SDAO_int_1_sqmuxa_i : CFG4
      generic map(INIT => x"777F")

      port map(A => \SDAO_int_1_sqmuxa_5\, B => un25_fsmsta, C
         => un33_fsmsta, D => un30_fsmsta, Y => 
        SDAO_int_1_sqmuxa_i_0);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_0\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[0]_net_1\, C
         => un25_fsmsta_0_1, D => \fsmsta[2]_net_1\, Y => 
        un2_fsmsta_1);
    
    \fsmmod_ns_i_a3_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \PCLKint_ff\, B => \sercon[5]_net_1\, Y => 
        \fsmmod_ns_i_a3_0[2]_net_1\);
    
    PCLKint_RNO : CFG2
      generic map(INIT => x"D")

      port map(A => PCLK_count2_ov_6_1, B => \PCLK_count2_ov\, Y
         => un1_pclkint4_i_0);
    
    SCLInt_RNIUIF9 : CFG2
      generic map(INIT => x"2")

      port map(A => \COREI2C_0_0_INT[0]\, B => \SCLInt\, Y => 
        bsd7_1_sqmuxa_2_0);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[2]\ : CFG4
      generic map(INIT => x"3ACA")

      port map(A => \fsmdet[3]_net_1\, B => \framesync[2]_net_1\, 
        C => framesync_7_e2, D => un38_fsmsta, Y => 
        \framesync_7[2]\);
    
    \ADRCOMP_WRITE_PROC.un26_adrcompen_NE_3\ : CFG3
      generic map(INIT => x"F6")

      port map(A => seradr0apb(2), B => \serdat[1]_net_1\, C => 
        un26_adrcompen_NE_0, Y => un26_adrcompen_NE_3);
    
    \serSTA_WRITE_PROC.un25_si_int_0\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => un25_si_int_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[1]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \un2_fsmsta_4\, B => \COREI2C_0_0_SDAO[0]\, C
         => un133_framesync, D => un53_fsmdet, Y => SDAO_int_m);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_0_1\ : CFG2
      generic map(INIT => x"7")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un25_fsmsta_0_1);
    
    SCLO_int_RNO : CFG4
      generic map(INIT => x"5777")

      port map(A => \sercon[6]_net_1\, B => un141_ens1_2, C => 
        bsd7_1_sqmuxa_2_0, D => un135_ens1, Y => un149_ens1_i_0);
    
    un1_pclk_count1_ov : CFG3
      generic map(INIT => x"13")

      port map(A => \PCLK_count2[0]_net_1\, B => 
        \sercon[7]_net_1\, C => \PCLK_count2[1]_net_1\, Y => 
        \un1_pclk_count1_ov\);
    
    \PCLK_count2[0]\ : SLE
      port map(D => \PCLK_count2_3[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[0]_net_1\);
    
    \sersta[0]\ : SLE
      port map(D => \sersta_32[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[0]_net_1\);
    
    \PCLK_count1[3]\ : SLE
      port map(D => \PCLK_count1_10[3]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[3]_net_1\);
    
    \indelay[2]\ : SLE
      port map(D => \indelay_4[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[2]_net_1\);
    
    \fsmsync[2]\ : SLE
      port map(D => N_976_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[2]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_4\ : CFG4
      generic map(INIT => x"FE00")

      port map(A => \fsmmod[6]_net_1\, B => \fsmmod[1]_net_1\, C
         => un1_fsmsta, D => un27_adrcompen_3, Y => 
        un27_adrcompen_4);
    
    un63_fsmsta_tz : CFG3
      generic map(INIT => x"C8")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => \un63_fsmsta_tz\);
    
    \serCON_WRITE_PROC.un74_ens1_RNIU5QP\ : CFG4
      generic map(INIT => x"0200")

      port map(A => un74_ens1, B => un30_fsmmod, C => 
        \COREI2C_0_0_INT[0]\, D => un105_fsmdet_1, Y => 
        fsmsta_0_sqmuxa_1);
    
    \fsmdet_RNO[5]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[5]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_934_i_0);
    
    \framesync[3]\ : SLE
      port map(D => \framesync_7[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[3]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_5\ : CFG4
      generic map(INIT => x"0F01")

      port map(A => un57_fsmsta_4, B => un57_fsmsta_0, C => 
        \fsmdet[3]_net_1\, D => \SCLInt\, Y => un2_fsmsta_14_0);
    
    \CLKINT_WRITE_PROC.PCLKint_ff_2\ : CFG2
      generic map(INIT => x"D")

      port map(A => PCLK_count2_ov_6_1, B => \PCLKint\, Y => 
        PCLKint_ff_2);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, Y => \SCLI_ff_reg_3[0]\);
    
    \fsmmod_ns_0_o3_RNI5F9M[3]\ : CFG3
      generic map(INIT => x"73")

      port map(A => un57_fsmsta_4, B => un30_fsmsta, C => N_1038, 
        Y => un2_fsmsta_12_s7_0);
    
    \fsmmod_ns_0_a4_0_1[1]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \starto_en\, B => PCLKint_p1_i_0, C => N_1044, 
        D => un115_fsmdet, Y => N_1066_1);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_1_0\ : CFG3
      generic map(INIT => x"04")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => un105_ens1_0_a2_1_0);
    
    PRDATA_sn_m7_0_a2 : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(1), C => 
        CoreAPB3_0_APBmslave0_PADDR(0), Y => PRDATA_sn_N_8);
    
    \CLKINT_WRITE_PROC.PCLKint_3\ : CFG2
      generic map(INIT => x"7")

      port map(A => PCLK_count2_ov_6_1, B => \PCLKint\, Y => 
        PCLKint_3);
    
    \INDELAY_WRITE_PROC.indelay_4[2]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \indelay[2]_net_1\, B => \fsmsync[4]_net_1\, 
        C => CO1_0, Y => \indelay_4[2]\);
    
    un1_serdat36_tz : CFG2
      generic map(INIT => x"7")

      port map(A => un25_fsmsta, B => \COREI2C_0_0_INT[0]\, Y => 
        \un1_serdat36_tz\);
    
    PCLK_count1_ov : SLE
      port map(D => \PCLK_count1_1_sqmuxa\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1_ov\);
    
    \fsmsta_nxt_cnst_0_a2_0[1]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_1139, B => \fsmsta[3]_net_1\, Y => N_1141);
    
    \indelay[1]\ : SLE
      port map(D => \indelay_4[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[1]_net_1\);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_ov_6_0_a2_1_0\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsync[3]_net_1\, B => \fsmsync[6]_net_1\, 
        Y => PCLK_count2_ov_6_0_a2_1_0);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_2\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_105);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_3[3]\ : CFG4
      generic map(INIT => x"48C0")

      port map(A => CO1, B => PCLK_count2_ov_6_1, C => 
        \PCLK_count2[3]_net_1\, D => \PCLK_count2[2]_net_1\, Y
         => \PCLK_count2_3[3]\);
    
    un7_fsmsta_RNIUPKR : CFG4
      generic map(INIT => x"0111")

      port map(A => \un2_fsmsta_8\, B => \un2_fsmsta_6\, C => 
        un30_fsmsta, D => \un7_fsmsta\, Y => un2_fsmsta_12_s7_3);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m14\ : CFG3
      generic map(INIT => x"27")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_15);
    
    \serdat[0]\ : SLE
      port map(D => \serdat_9[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat_0\);
    
    \fsmsta_nxt_cnst_i_a5_0_0[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1333_2);
    
    \serCON_WRITE_PROC.un74_ens1\ : CFG4
      generic map(INIT => x"0201")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un74_ens1);
    
    \fsmsta_nxt_cnst_0_1[4]\ : CFG4
      generic map(INIT => x"CCEC")

      port map(A => N_1105, B => \fsmsta_nxt_cnst_0_0[4]_net_1\, 
        C => \fsmsta[4]_net_1\, D => un30_fsmsta, Y => 
        \fsmsta_nxt_cnst_0_1[4]_net_1\);
    
    \framesync[2]\ : SLE
      port map(D => \framesync_7[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[2]_net_1\);
    
    ack_bit_1_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \COREI2C_0_0_INT[0]\, B => \sercon[6]_net_1\, 
        C => un25_fsmsta, Y => \ack_bit_1_sqmuxa_1\);
    
    \sersta_RNI2RK71[2]\ : CFG4
      generic map(INIT => x"B391")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \PRDATA_3_1_1[5]\, C => \sersta[2]_net_1\, D => 
        seradr0apb(5), Y => N_1207);
    
    \fsmmod_ns_0_a4[5]\ : CFG4
      generic map(INIT => x"0700")

      port map(A => \pedetect\, B => \SCLSCL\, C => un115_fsmdet, 
        D => \fsmmod[1]_net_1\, Y => N_1065);
    
    \fsmmod_ns_0_a4[0]\ : CFG4
      generic map(INIT => x"CCC4")

      port map(A => \starto_en\, B => \fsmmod[6]_net_1\, C => 
        PCLKint_p1_i_0, D => N_1044, Y => N_1055);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \sersta_RNI6VK71[3]\ : CFG4
      generic map(INIT => x"B391")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \PRDATA_3_1_1[6]\, C => \sersta[3]_net_1\, D => 
        seradr0apb(6), Y => N_1208);
    
    SDAO_int_RNIVHDF : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SDAO[0]\, Y => 
        COREI2C_0_0_SDAO_i(0));
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_0\ : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_110);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[3]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => \fsmsta_nxt_60_i_m[3]\, B => un20_sdao_int, C
         => un2_fsmsta_7_s3, Y => \fsmsta_8_0_iv_1[3]\);
    
    \ADRCOMP_WRITE_PROC.un25_fsmdet\ : CFG4
      generic map(INIT => x"EEEA")

      port map(A => un105_fsmdet_1, B => \COREI2C_0_0_INT[0]\, C
         => un21_fsmdet_3, D => un21_fsmdet_2, Y => un25_fsmdet);
    
    PCLK_count1_1_sqmuxa : CFG4
      generic map(INIT => x"2000")

      port map(A => \PCLK_count1_1_sqmuxa_2\, B => 
        \PCLK_count1_ov_1_sqmuxa\, C => 
        \PCLK_count1_1_sqmuxa_1_0\, D => PCLK_count2_ov_6_1, Y
         => \PCLK_count1_1_sqmuxa\);
    
    \fsmsta_RNO_2[2]\ : CFG3
      generic map(INIT => x"02")

      port map(A => un136_framesync, B => un54_fsmdet, C => 
        N_1088, Y => N_1386);
    
    SDAO_int_RNO_2 : CFG4
      generic map(INIT => x"F7F3")

      port map(A => \adrcomp\, B => \sercon[6]_net_1\, C => 
        \fsmmod[3]_net_1\, D => \fsmmod[6]_net_1\, Y => 
        SDAO_int_7_0_354_1);
    
    \serdat_RNIEB8J[7]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => seradr0apb(7), B => \serdat[7]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \PRDATA_3_1_1[7]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[2]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \PCLK_count1[2]_net_1\, B => CO1_1, C => 
        \un1_counter_rst_3\, Y => \PCLK_count1_10[2]\);
    
    adrcomp_2_sqmuxa_i : CFG4
      generic map(INIT => x"FEFC")

      port map(A => un27_adrcompen_4, B => un25_fsmdet, C => 
        un16_fsmmod, D => un23_adrcompen, Y => 
        adrcomp_2_sqmuxa_i_0);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_3[2]\ : CFG3
      generic map(INIT => x"48")

      port map(A => CO1, B => PCLK_count2_ov_6_1, C => 
        \PCLK_count2[2]_net_1\, Y => \PCLK_count2_3[2]\);
    
    \sersta[1]\ : SLE
      port map(D => \sersta_32[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[1]_net_1\);
    
    serdat_m3_e_1 : CFG2
      generic map(INIT => x"1")

      port map(A => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0, 
        B => MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2, Y => 
        \serdat_m3_e_1\);
    
    \SDAO_INT_WRITE_PROC.un71_fsmsta\ : CFG2
      generic map(INIT => x"B")

      port map(A => un70_fsmsta, B => \framesync[3]_net_1\, Y => 
        un71_fsmsta);
    
    \fsmdet[4]\ : SLE
      port map(D => N_936_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[4]_net_1\);
    
    \serDAT_WRITE_PROC.ack_7_u\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \COREI2C_0_0_INT[0]\, B => un92_fsmsta, C => 
        N_1176, Y => ack_7);
    
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
    
    \fsmdet[0]\ : SLE
      port map(D => N_944_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[0]_net_1\);
    
    \serDAT_WRITE_PROC.ack_7_0_RNO\ : CFG4
      generic map(INIT => x"C0E0")

      port map(A => un92_fsmsta, B => \un1_serdat36\, C => 
        \pedetect\, D => \COREI2C_0_0_INT[0]\, Y => 
        un1_serdat_2_sqmuxa_2_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[0]\ : CFG4
      generic map(INIT => x"F200")

      port map(A => N_1137, B => un20_adrcompen, C => 
        \fsmsta_nxt_cnst_i_2[0]_net_1\, D => un2_fsmsta_12_s7, Y
         => N_1097_m);
    
    \sercon[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[7]_net_1\);
    
    ack_bit : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \ack_bit_1_sqmuxa\, ALn => MSS_READY, 
        ADn => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \ack_bit\);
    
    \fsmsta[2]\ : SLE
      port map(D => N_1382_i_0, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[2]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_3\ : CFG3
      generic map(INIT => x"FE")

      port map(A => un27_si_int, B => un22_si_int, C => 
        un25_si_int, Y => un21_fsmdet_3);
    
    \fsmdet[2]\ : SLE
      port map(D => N_940_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[2]_net_1\);
    
    \fsmdet_RNO[2]\ : CFG4
      generic map(INIT => x"A0E0")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[2]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_940_i_0);
    
    \framesync[1]\ : SLE
      port map(D => \framesync_7[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[1]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un26_adrcompen_NE_1\ : CFG4
      generic map(INIT => x"7BDE")

      port map(A => seradr0apb(7), B => seradr0apb(3), C => 
        \serdat[6]_net_1\, D => \serdat[2]_net_1\, Y => 
        un26_adrcompen_NE_1);
    
    \serSTA_WRITE_PROC.sersta_32[1]\ : CFG4
      generic map(INIT => x"4EFF")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_30_mux, D => \COREI2C_0_0_INT[0]\, Y => 
        \sersta_32[1]\);
    
    \serCON_WRITE_PROC.un81_ens1_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => un105_fsmdet_1, B => \adrcomp\, Y => 
        un81_ens1_0);
    
    \serDAT_WRITE_PROC.serdat_9[0]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => un105_ens1, B => \ack\, C => 
        CoreAPB3_0_APBmslave0_PWDATA(0), Y => \serdat_9[0]\);
    
    \fsmsta_cnst_i_a4[0]\ : CFG4
      generic map(INIT => x"4044")

      port map(A => un53_fsmdet, B => un133_framesync, C => \ack\, 
        D => un13_adrcompen, Y => N_1088);
    
    \serSTA_WRITE_PROC.un22_si_int_3\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[3]_net_1\, B => un34_si_int_2, C => 
        \fsmsta[4]_net_1\, Y => un22_si_int_3);
    
    \sercon[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_0\);
    
    \fsmsync[1]\ : SLE
      port map(D => N_978_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[1]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \nedetect\, B => \adrcompen\, C => 
        \sercon[2]_net_1\, Y => un27_adrcompen_1);
    
    \serDAT_WRITE_PROC.serdat_9[4]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(4), B => 
        un105_ens1, C => \serdat[3]_net_1\, Y => \serdat_9[4]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[3]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \un2_fsmsta_8\, B => un136_framesync, C => 
        \sercon[2]_net_1\, D => \SDAInt\, Y => 
        \fsmsta_nxt_60_i_m[3]\);
    
    \fsmmod[0]\ : SLE
      port map(D => N_1035_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[0]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_bm[3]\ : CFG3
      generic map(INIT => x"6A")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => un38_fsmsta, Y => 
        \framesync_7_enl_bm[3]\);
    
    \fsmmod[6]\ : SLE
      port map(D => \fsmmod_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[6]_net_1\);
    
    \sercon[4]\ : SLE
      port map(D => \sercon_9[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sercon[4]_net_1\);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un7_pseli, B => N_108, C => 
        un105_ens1_0_a2_1_0, D => N_112, Y => un105_ens1);
    
    SCLO_int : SLE
      port map(D => un149_ens1_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_SCLO[0]\);
    
    \fsmmod[2]\ : SLE
      port map(D => N_1032_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[2]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_2\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => un36_si_int_2, B => un34_si_int_2, C => 
        un36_si_int, D => un1_fsmsta, Y => un21_fsmdet_2);
    
    \sersta[3]\ : SLE
      port map(D => \sersta_32[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[3]_net_1\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1\ : CFG3
      generic map(INIT => x"F8")

      port map(A => un36_si_int_2, B => un34_si_int_2, C => 
        un135_ens1_1_0, Y => un135_ens1);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_RNO\ : CFG4
      generic map(INIT => x"4440")

      port map(A => \COREI2C_0_0_INT[0]\, B => \nedetect\, C => 
        un57_fsmsta_0, D => un57_fsmsta_4, Y => 
        bsd7_tmp_6_sn_m6_1);
    
    \fsmsync[6]\ : SLE
      port map(D => N_968_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[6]_net_1\);
    
    \SDAI_ff_reg[2]\ : SLE
      port map(D => \SDAI_ff_reg_4[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[2]_net_1\);
    
    un7_fsmsta_RNII68N : CFG4
      generic map(INIT => x"0008")

      port map(A => un30_fsmsta, B => \un7_fsmsta\, C => 
        un53_fsmdet, D => un133_framesync, Y => un2_fsmsta_7_s3);
    
    PCLK_count1_1_sqmuxa_1_0 : CFG4
      generic map(INIT => x"00EF")

      port map(A => \sercon_0\, B => \sercon[7]_net_1\, C => 
        un23_pclk_count1, D => \PCLK_count1_0_sqmuxa\, Y => 
        \PCLK_count1_1_sqmuxa_1_0\);
    
    \PCLK_count1[0]\ : SLE
      port map(D => \PCLK_count1_10[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[0]_net_1\);
    
    PCLK_count1_1_sqmuxa_2 : CFG4
      generic map(INIT => x"1011")

      port map(A => \PCLK_count1_0_sqmuxa_3\, B => 
        \PCLK_count1_0_sqmuxa_4\, C => \sercon[7]_net_1\, D => 
        un33_pclk_count1, Y => \PCLK_count1_1_sqmuxa_2\);
    
    \fsmsync_ns_i_a3_1[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \SDAInt\, Y => N_1012);
    
    \serdat_RNINH9G[6]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \serdat[6]_net_1\, B => \sercon[6]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \PRDATA_3_1_1[6]\);
    
    \fsmmod_ns_i_o3[4]\ : CFG4
      generic map(INIT => x"BFFF")

      port map(A => \COREI2C_0_0_INT[0]\, B => un70_fsmsta, C => 
        \fsmmod[4]_net_1\, D => \sercon[4]_net_1\, Y => N_1053);
    
    \fsmsta[0]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[0]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m16\ : CFG2
      generic map(INIT => x"6")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_32);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_3\ : CFG4
      generic map(INIT => x"0EFF")

      port map(A => \nedetect\, B => \COREI2C_0_0_INT[0]\, C => 
        bsd7_1_sqmuxa_2_0, D => un92_fsmsta, Y => bsd7_sn_N_4);
    
    \serdat[3]\ : SLE
      port map(D => \serdat_9[3]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[3]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[6]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(6), B => 
        un105_ens1, C => \serdat[5]_net_1\, Y => \serdat_9[6]\);
    
    \serSTA_WRITE_PROC.un22_si_int\ : CFG2
      generic map(INIT => x"2")

      port map(A => un22_si_int_3, B => \fsmsta[2]_net_1\, Y => 
        un22_si_int);
    
    nedetect : SLE
      port map(D => \nedetect_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => rtn_1_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \nedetect\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1\ : CFG4
      generic map(INIT => x"D100")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => un12_fsmsta_0_0, D => un25_fsmsta_1_1, Y => 
        un25_fsmsta_1);
    
    \fsmsta_nxt_cnst_0_a5_1_0_0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, Y => 
        \fsmsta_nxt_cnst_0_a5_1_0[1]_net_1\);
    
    adrcompen_2_sqmuxa_i : CFG4
      generic map(INIT => x"FFEA")

      port map(A => un16_fsmmod, B => un30_fsmsta, C => 
        \nedetect\, D => \fsmdet[3]_net_1\, Y => 
        adrcompen_2_sqmuxa_i_0);
    
    \serCON_WRITE_PROC.un16_fsmmod\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \sercon[4]_net_1\, B => \fsmmod[1]_net_1\, C
         => \fsmmod[6]_net_1\, Y => un16_fsmmod);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_3[0]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \PCLK_count2[0]_net_1\, B => 
        PCLK_count2_ov_6_1, C => \PCLK_count1_ov\, Y => 
        \PCLK_count2_3[0]\);
    
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
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_1_RNO\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \COREI2C_0_0_INT[0]\, B => un57_fsmsta_4, C
         => un57_fsmsta_0, Y => serdat_0_sqmuxa_sn);
    
    \fsmsync_ns_i_a3[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmsync[1]_net_1\, B => \sercon[4]_net_1\, C
         => \COREI2C_0_0_INT[0]\, Y => N_1010);
    
    \fsmsync_ns_i_o3[3]\ : CFG4
      generic map(INIT => x"3175")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[4]_net_1\, 
        C => PCLKint_p1_i_0, D => N_989, Y => N_982);
    
    starto_en_1_sqmuxa_i : CFG2
      generic map(INIT => x"7")

      port map(A => un8_busfree, B => PCLKint_p1_i_0, Y => 
        starto_en_1_sqmuxa_i_0);
    
    \FSMSTA_SYNC_PROC.un133_framesync\ : CFG4
      generic map(INIT => x"2000")

      port map(A => un30_fsmsta, B => un1_fsmsta, C => \pedetect\, 
        D => un1_fsmmod, Y => un133_framesync);
    
    \fsmsync_ns_i_a3_1[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \fsmmod[3]_net_1\, B => \fsmmod[2]_net_1\, C
         => N_1004_3, D => N_1004_1, Y => N_1004);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[3]\ : CFG4
      generic map(INIT => x"0222")

      port map(A => \un2_fsmsta_5\, B => un136_framesync, C => 
        \ack\, D => \SDAInt\, Y => \fsmsta_nxt_9_i_m[3]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1_ov_1_sqmuxa\, C => \un1_counter_rst_3\, Y
         => \PCLK_count1_10[0]\);
    
    \serDAT_WRITE_PROC.un92_fsmsta\ : CFG3
      generic map(INIT => x"54")

      port map(A => \fsmdet[3]_net_1\, B => un57_fsmsta_4, C => 
        un57_fsmsta_0, Y => un92_fsmsta);
    
    \sersta_RNIQIK71[0]\ : CFG4
      generic map(INIT => x"B391")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \PRDATA_3_1_1[3]\, C => \sersta[0]_net_1\, D => 
        seradr0apb(3), Y => N_1205);
    
    \INDELAY_WRITE_PROC.indelay_4[0]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \indelay[0]_net_1\, B => \fsmsync[4]_net_1\, 
        C => N_989, Y => \indelay_4[0]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_2[4]\ : CFG4
      generic map(INIT => x"FFCA")

      port map(A => \un2_fsmsta_4\, B => \fsmsta_cnst_m_0[4]\, C
         => un136_framesync, D => \fsmsta_8_1_iv_1[4]\, Y => 
        \fsmsta_8_1_iv_2[4]\);
    
    adrcompen_0_sqmuxa : CFG2
      generic map(INIT => x"4")

      port map(A => un16_fsmmod, B => \fsmdet[3]_net_1\, Y => 
        \adrcompen_0_sqmuxa\);
    
    SDAO_int_1_sqmuxa_1 : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmmod[3]_net_1\, B => \fsmmod[5]_net_1\, C
         => \sercon[6]_net_1\, Y => SDAO_int_1_sqmuxa_1_0);
    
    \fsmsta[1]\ : SLE
      port map(D => \fsmsta_8[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[1]_net_1\);
    
    \fsmsta_nxt_cnst_i_0[2]\ : CFG3
      generic map(INIT => x"F4")

      port map(A => \fsmsta[2]_net_1\, B => N_1139, C => N_1125, 
        Y => \fsmsta_nxt_cnst_i_0[2]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_am[0]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => un25_framesync, B => un19_framesync, C => 
        un70_fsmsta, D => framesync_7_sm0, Y => 
        \framesync_7_enl_am[0]\);
    
    SDAO_int_1_sqmuxa_2 : CFG4
      generic map(INIT => x"0031")

      port map(A => \fsmmod[6]_net_1\, B => \fsmmod[0]_net_1\, C
         => \adrcomp\, D => \fsmmod[2]_net_1\, Y => 
        \SDAO_int_1_sqmuxa_2\);
    
    \FSMSTA_SYNC_PROC.un136_framesync\ : CFG3
      generic map(INIT => x"FE")

      port map(A => un105_fsmdet_1, B => un30_fsmmod, C => 
        un133_framesync, Y => un136_framesync);
    
    \framesync[0]\ : SLE
      port map(D => \framesync_7[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[0]_net_1\);
    
    ack_bit_1_sqmuxa_2 : CFG4
      generic map(INIT => x"0010")

      port map(A => un57_fsmsta_4, B => \fsmdet[3]_net_1\, C => 
        \ack_bit_1_sqmuxa_1\, D => un57_fsmsta_0, Y => 
        \ack_bit_1_sqmuxa_2\);
    
    \un2_framesync_1_1.CO0\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        \framesync[0]_net_1\, Y => CO0);
    
    bsd7_tmp : SLE
      port map(D => bsd7_tmp_6, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \bsd7_tmp\);
    
    \fsmsta_nxt_cnst_0_o5[1]\ : CFG4
      generic map(INIT => x"D5C0")

      port map(A => \fsmsta[2]_net_1\, B => \ack\, C => N_1135, D
         => N_1139, Y => N_1104);
    
    \fsmdet[3]\ : SLE
      port map(D => N_938_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[3]_net_1\);
    
    \serSTA_WRITE_PROC.un27_si_int\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1333_2, D => \fsmsta[2]_net_1\, Y => un27_si_int);
    
    \SDAO_INT_WRITE_PROC.un12_fsmsta_0_0\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[0]_net_1\, Y
         => un12_fsmsta_0_0);
    
    PCLKint_ff : SLE
      port map(D => PCLKint_ff_2, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint_ff\);
    
    \serdat[6]\ : SLE
      port map(D => \serdat_9[6]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[6]_net_1\);
    
    \fsmdet_RNO[0]\ : CFG4
      generic map(INIT => x"E0A0")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_944_i_0);
    
    \fsmmod_RNO[2]\ : CFG4
      generic map(INIT => x"0405")

      port map(A => \fsmmod_nxt_0_sqmuxa\, B => \fsmmod[2]_net_1\, 
        C => un115_fsmdet, D => N_1053, Y => N_1032_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[1]\ : CFG4
      generic map(INIT => x"EAAA")

      port map(A => SDAO_int_m, B => un2_fsmsta_7_s3, C => 
        \COREI2C_0_0_SDAO[0]\, D => \SDAInt\, Y => 
        \fsmsta_8_0_iv_1[1]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_1[4]\ : CFG4
      generic map(INIT => x"00EC")

      port map(A => \COREI2C_0_0_SDAO[0]\, B => \un2_fsmsta_8\, C
         => \un2_fsmsta_6\, D => un136_framesync, Y => 
        \fsmsta_8_1_iv_1[4]\);
    
    \fsmmod_ns_0_o3_0[3]\ : CFG3
      generic map(INIT => x"B7")

      port map(A => \PCLKint\, B => \SCLInt\, C => \PCLKint_ff\, 
        Y => N_1041);
    
    un7_fsmsta : CFG4
      generic map(INIT => x"C800")

      port map(A => un6_fsmsta_2, B => \un7_fsmsta_1\, C => 
        \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        \un7_fsmsta\);
    
    \serDAT_WRITE_PROC.serdat_9[3]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        un105_ens1, C => \serdat[2]_net_1\, Y => \serdat_9[3]\);
    
    bsd7 : SLE
      port map(D => bsd7_9, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \bsd7\);
    
    PCLKint : SLE
      port map(D => PCLKint_3, CLK => FAB_CCC_GL0, EN => 
        un1_pclkint4_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint\);
    
    \PCLK_count1[1]\ : SLE
      port map(D => \PCLK_count1_10[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[1]_net_1\);
    
    \serdat[5]\ : SLE
      port map(D => \serdat_9[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[5]_net_1\);
    
    \fsmsync_ns_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_1004, B => \fsmsync_ns_0_1[0]_net_1\, C => 
        \fsmsync[3]_net_1\, D => \SCLInt\, Y => \fsmsync_ns[0]\);
    
    fsmsta_3_sqmuxa_0 : CFG3
      generic map(INIT => x"B0")

      port map(A => \COREI2C_0_0_INT[0]\, B => un74_ens1, C => 
        un54_fsmdet, Y => \fsmsta_3_sqmuxa_0\);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_ov_6_0_a2_1\ : CFG4
      generic map(INIT => x"4440")

      port map(A => un16_fsmmod, B => PCLK_count2_ov_6_0_a2_1_3, 
        C => \SCLInt\, D => PCLK_count2_ov_6_0_a2_1_4_tz, Y => 
        PCLK_count2_ov_6_1);
    
    \serDAT_WRITE_PROC.serdat_9[7]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        un105_ens1, C => \serdat[6]_net_1\, Y => \serdat_9[7]\);
    
    \fsmsta_nxt_cnst_0_1[1]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_1122_1, B => \fsmsta_nxt_cnst_0_0[1]_net_1\, 
        C => \fsmsta[1]_net_1\, Y => 
        \fsmsta_nxt_cnst_0_1[1]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta_2\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un6_fsmsta_2);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_0\ : CFG4
      generic map(INIT => x"1514")

      port map(A => \fsmdet[3]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => bsd7_0_ns_1_0, D => CoreAPB3_0_APBmslave0_PWDATA(7), 
        Y => bsd7_91);
    
    \serSTA_WRITE_PROC.un34_si_int\ : CFG3
      generic map(INIT => x"20")

      port map(A => un34_si_int_2, B => \fsmsta[3]_net_1\, C => 
        un36_si_int_2, Y => un34_si_int);
    
    SDAO_int_1_sqmuxa_5 : CFG4
      generic map(INIT => x"1000")

      port map(A => un38_fsmsta, B => un1_fsmmod, C => 
        SDAO_int_1_sqmuxa_1_0, D => \SDAO_int_1_sqmuxa_2\, Y => 
        \SDAO_int_1_sqmuxa_5\);
    
    un1_counter_rst_3 : CFG4
      generic map(INIT => x"5D55")

      port map(A => PCLK_count2_ov_6_1, B => 
        \PCLK_count1_1_sqmuxa_1_0\, C => 
        \PCLK_count1_ov_1_sqmuxa\, D => \PCLK_count1_1_sqmuxa_2\, 
        Y => \un1_counter_rst_3\);
    
    \fsmsta_RNO_3[2]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_1088, B => un136_framesync, C => \adrcomp\, 
        D => un78_fsmdet, Y => N_1388);
    
    \fsmsync_RNO[4]\ : CFG4
      generic map(INIT => x"0013")

      port map(A => N_997, B => \fsmsync_ns_i_0[3]_net_1\, C => 
        N_982, D => N_1004, Y => N_972_i_0);
    
    fsmmod_nxt_0_sqmuxa : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmmod[2]_net_1\, B => \SCLInt\, C => 
        PCLKint_p1_i_0, Y => \fsmmod_nxt_0_sqmuxa\);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync_0\ : CFG4
      generic map(INIT => x"2080")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1333_2, D => \fsmsta[2]_net_1\, Y => 
        un19_framesync_0);
    
    \SDAI_ff_reg[0]\ : SLE
      port map(D => \SDAI_ff_reg_4[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[0]_net_1\);
    
    \fsmsync_RNO[5]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmsync[7]_net_1\, B => N_1003, C => N_1004, 
        D => N_996, Y => N_970_i_0);
    
    PCLK_count1_ov_1_sqmuxa : CFG3
      generic map(INIT => x"80")

      port map(A => \sercon_0\, B => \sercon[7]_net_1\, C => 
        \sercon[1]_net_1\, Y => \PCLK_count1_ov_1_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.un53_fsmdet\ : CFG2
      generic map(INIT => x"E")

      port map(A => un30_fsmmod, B => un105_fsmdet_1, Y => 
        un53_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_1[3]\ : CFG3
      generic map(INIT => x"10")

      port map(A => un34_si_int_2, B => N_1105, C => 
        \fsmsta[4]_net_1\, Y => \fsmsta_nxt_cnst_i_m_1[3]\);
    
    adrcomp : SLE
      port map(D => \un1_adrcomp5\, CLK => FAB_CCC_GL0, EN => 
        adrcomp_2_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \adrcomp\);
    
    \FSMSTA_SYNC_PROC.un133_framesync_RNIMH7T\ : CFG4
      generic map(INIT => x"0008")

      port map(A => un30_fsmsta, B => un57_fsmsta_4, C => 
        un133_framesync, D => un53_fsmdet, Y => un2_fsmsta_9_s2);
    
    \fsmmod_ns_i_o3[2]\ : CFG4
      generic map(INIT => x"BAAA")

      port map(A => \sercon[4]_net_1\, B => \PCLKint\, C => 
        N_1038, D => \fsmmod_ns_i_a3_0[2]_net_1\, Y => N_1040);
    
    adrcompen : SLE
      port map(D => \adrcompen_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => adrcompen_2_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcompen\);
    
    \fsmsync_ns_i_0[3]\ : CFG4
      generic map(INIT => x"0E0A")

      port map(A => \COREI2C_0_0_INT[0]\, B => un70_fsmsta, C => 
        \fsmsync[4]_net_1\, D => \sercon[4]_net_1\, Y => 
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
    
    un2_fsmsta_6 : CFG3
      generic map(INIT => x"C8")

      port map(A => un25_fsmsta_1, B => un30_fsmsta, C => 
        un18_fsmsta, Y => \un2_fsmsta_6\);
    
    \fsmdet[6]\ : SLE
      port map(D => SCLInt_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[6]_net_1\);
    
    \serCON_WRITE_PROC.un16_ens1_1\ : CFG4
      generic map(INIT => x"EFCF")

      port map(A => un81_ens1_0, B => \fsmmod_nxt_0_sqmuxa\, C
         => \fsmsta_cnst_m_2[4]\, D => un74_ens1, Y => 
        un16_ens1_1);
    
    \fsmsync_ns_i_o3[4]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_989, B => \fsmsync[4]_net_1\, Y => N_994);
    
    \fsmmod_ns_0[1]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => \fsmmod[5]_net_1\, B => \nedetect\, C => 
        un115_fsmdet, D => N_1058, Y => \fsmmod_ns[1]\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_3\ : CFG4
      generic map(INIT => x"40C0")

      port map(A => \ack\, B => un27_adrcompen_1, C => 
        un33_fsmsta, D => un13_adrcompen, Y => un27_adrcompen_3);
    
    ack_bit_1_sqmuxa : CFG4
      generic map(INIT => x"8000")

      port map(A => un5_penable_0_a2_0, B => N_108, C => N_112, D
         => \ack_bit_1_sqmuxa_2\, Y => \ack_bit_1_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.un133_framesync_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \adrcomp\, B => \adrcompen\, Y => un1_fsmmod);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_1\ : CFG4
      generic map(INIT => x"EF40")

      port map(A => \COREI2C_0_0_INT[0]\, B => \serdat[7]_net_1\, 
        C => un92_fsmsta, D => un2_fsmsta_14_0, Y => 
        bsd7_9_m_ns_RNO_1);
    
    pedetect_0_sqmuxa : CFG4
      generic map(INIT => x"2000")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \pedetect_0_sqmuxa\);
    
    \PRDATA_1[1]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \sercon[1]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => \serdat[1]_net_1\, Y
         => N_1185);
    
    PCLK_count1_0_sqmuxa_3 : CFG4
      generic map(INIT => x"4CCC")

      port map(A => \PCLK_count1[1]_net_1\, B => 
        \un1_pclk_count191\, C => \PCLK_count1[3]_net_1\, D => 
        \PCLK_count1[2]_net_1\, Y => \PCLK_count1_0_sqmuxa_3\);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_2\ : CFG4
      generic map(INIT => x"CAAA")

      port map(A => \bsd7\, B => \bsd7_tmp\, C => un92_fsmsta, D
         => bsd7_1_sqmuxa_2_0, Y => bsd7_9_m_ns_RNO_2);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_0_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => un7_pseli, B => \N_109\, Y => 
        un5_penable_0_a2_0);
    
    \fsmsync_ns_0_a3_2_1[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[0]_net_1\, Y
         => N_1004_1);
    
    \sersta[4]\ : SLE
      port map(D => \sersta_32[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[4]_net_1\);
    
    SCLInt : SLE
      port map(D => \SCLI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_3\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLInt\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_ns[0]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \framesync_7_enl_am[0]\, B => 
        \framesync_7_enl_bm[0]\, C => framesync_7_e2, Y => 
        \framesync_7[0]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \un1_counter_rst_3\, B => N_1258, Y => 
        \PCLK_count1_10[1]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \fsmsta_8_0_iv_0[3]\, B => 
        \fsmsta_nxt_9_i_m[3]\, C => \fsmsta_8_0_iv_1[3]\, D => 
        \fsmsta_nxt_cnst_i_m[3]\, Y => \fsmsta_8_0_iv_i_0[3]\);
    
    \fsmmod_RNO[0]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => \nedetect\, B => \fsmmod[3]_net_1\, C => 
        un115_fsmdet, D => N_1067, Y => N_1035_i_0);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m20\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_21);
    
    \serCON_WRITE_PROC.un97_ens1_1\ : CFG4
      generic map(INIT => x"153F")

      port map(A => \pedetect\, B => un105_fsmdet_1, C => 
        un60_ens1, D => un30_fsmsta, Y => un97_ens1_1);
    
    un1_serdat_2_sqmuxa : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \un1_serdat36\, B => serdat_m6_0_a2_0, C => 
        un105_ens1, D => serdat_2_sqmuxa_1, Y => 
        \un1_serdat_2_sqmuxa\);
    
    \sersta_RNIA3L71[4]\ : CFG4
      generic map(INIT => x"7632")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \PRDATA_3_1_1[7]\, C => \sersta[4]_net_1\, D => 
        \sercon[7]_net_1\, Y => N_1209);
    
    \fsmmod_RNIPMDM[0]\ : CFG3
      generic map(INIT => x"37")

      port map(A => \fsmmod[5]_net_1\, B => \fsmdet[3]_net_1\, C
         => \fsmmod[0]_net_1\, Y => \fsmsta_cnst_m_2[4]\);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un33_fsmsta);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, Y => \SDAI_ff_reg_4[2]\);
    
    PCLK_count2_ov : SLE
      port map(D => PCLK_count2_ov_6, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2_ov\);
    
    \serSTA_WRITE_PROC.sersta_32_1[4]\ : CFG4
      generic map(INIT => x"0810")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        \sersta_32_1[4]\);
    
    \fsmsync_RNO[2]\ : CFG4
      generic map(INIT => x"008C")

      port map(A => \fsmsync[2]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_983, D => N_1004, Y => N_976_i_0);
    
    \fsmsta_RNO_1[2]\ : CFG4
      generic map(INIT => x"FF04")

      port map(A => \ack\, B => \un2_fsmsta_5\, C => 
        un136_framesync, D => N_1388, Y => 
        fsmsta_8_0_iv_0_0_326_i_1);
    
    \sercon[3]\ : SLE
      port map(D => \sercon_9[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_INT[0]\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet\ : CFG4
      generic map(INIT => x"FFEF")

      port map(A => un16_fsmmod, B => \fsmmod_nxt_0_sqmuxa\, C
         => \sercon[6]_net_1\, D => un105_fsmdet_1, Y => 
        un105_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[1]\ : CFG4
      generic map(INIT => x"F0F2")

      port map(A => \un2_fsmsta_5\, B => \ack\, C => 
        \fsmsta_8_0_iv_0[1]\, D => un136_framesync, Y => 
        \fsmsta_8_0_iv_2[1]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \COREI2C_0_0_INT[0]\, B => \adrcomp\, C => 
        un54_fsmdet, D => un74_ens1, Y => fsmsta_1_sqmuxa);
    
    \fsmmod[5]\ : SLE
      port map(D => \fsmmod_ns[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un25_framesync\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_1038, C => 
        \sercon[5]_net_1\, D => \sercon[4]_net_1\, Y => 
        un25_framesync);
    
    \fsmmod_ns_0_o3[3]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        N_1038);
    
    SDAO_int_RNO_1 : CFG4
      generic map(INIT => x"7F20")

      port map(A => un33_fsmsta, B => \ack_bit\, C => un25_fsmsta, 
        D => N_1405, Y => N_1406);
    
    \fsmsync_ns_i_o3_0[4]\ : CFG4
      generic map(INIT => x"FBFF")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        N_989);
    
    \fsmdet[5]\ : SLE
      port map(D => N_934_i_0, CLK => FAB_CCC_GL0, EN => 
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
         => \SDAInt\, D => \SCLInt\, Y => N_936_i_0);
    
    \fsmdet_RNO[1]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[4]_net_1\, B => \fsmdet[2]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_942_i_0);
    
    \SDAO_INT_WRITE_PROC.un38_fsmsta\ : CFG3
      generic map(INIT => x"80")

      port map(A => \framesync[0]_net_1\, B => \nedetect\, C => 
        \framesync[1]_net_1\, Y => un38_fsmsta);
    
    \fsmmod_ns_0_a4_0_3_0[3]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \fsmmod_ns_0_a4_0_3_0_0[3]_net_1\, B => 
        N_1044, C => un70_fsmsta, D => N_1038, Y => 
        \fsmmod_ns_0_a4_0_3[3]\);
    
    \fsmsync[4]\ : SLE
      port map(D => N_972_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[4]_net_1\);
    
    \CLK_COUNTER1_PROC.un33_pclk_count1_1.CO3\ : CFG4
      generic map(INIT => x"5557")

      port map(A => \PCLK_count1[3]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => \PCLK_count1[1]_net_1\, D
         => \PCLK_count1[0]_net_1\, Y => un33_pclk_count1);
    
    SCLSCL_1_sqmuxa_i : CFG2
      generic map(INIT => x"D")

      port map(A => \fsmmod[1]_net_1\, B => \pedetect\, Y => 
        SCLSCL_1_sqmuxa_i_0);
    
    \ADRCOMP_WRITE_PROC.un13_adrcompen_4\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \serdat[5]_net_1\, B => \serdat[3]_net_1\, C
         => \serdat[2]_net_1\, D => \serdat_0\, Y => 
        un13_adrcompen_4);
    
    \sercon[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[5]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_0\ : CFG4
      generic map(INIT => x"B333")

      port map(A => \un63_fsmsta_tz\, B => N_1038, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        un57_fsmsta_0);
    
    \PRDATA_3[2]\ : CFG4
      generic map(INIT => x"88F0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        seradr0apb(2), C => N_1186, D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_1204);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[0]\ : CFG3
      generic map(INIT => x"BA")

      port map(A => \fsmsta_nxt_60_i_m[0]\, B => \SDAInt\, C => 
        un2_fsmsta_9_s2, Y => \fsmsta_8_0_iv_3[0]\);
    
    \fsmsta_nxt_cnst_0_0[1]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => \fsmsta_nxt_cnst_0_a5_1_0[1]_net_1\, B => 
        N_1141, C => \fsmsta[1]_net_1\, D => \fsmsta[0]_net_1\, Y
         => \fsmsta_nxt_cnst_0_0[1]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[5]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(5), B => 
        un105_ens1, C => \serdat[4]_net_1\, Y => \serdat_9[5]\);
    
    nedetect_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1_i_0);
    
    un2_fsmsta_4_RNI33K82 : CFG4
      generic map(INIT => x"0020")

      port map(A => un2_fsmsta_12_s7_3, B => un136_framesync, C
         => un2_fsmsta_12_s7_0, D => \un2_fsmsta_4\, Y => 
        un2_fsmsta_12_s7);
    
    \serCON_WRITE_PROC.sercon_8_1[4]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmdet[1]_net_1\, B => \sercon[4]_net_1\, C
         => \sercon[6]_net_1\, Y => \sercon_8_1[4]\);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_ov_6_0_a2_1_4_tz\ : CFG4
      generic map(INIT => x"4C5F")

      port map(A => \fsmmod[2]_net_1\, B => \fsmmod[1]_net_1\, C
         => \COREI2C_0_0_SCLO[0]\, D => \busfree\, Y => 
        PCLK_count2_ov_6_0_a2_1_4_tz);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns_RNO_4\ : CFG4
      generic map(INIT => x"2225")

      port map(A => \COREI2C_0_0_INT[0]\, B => \bsd7\, C => 
        un57_fsmsta_0, D => un57_fsmsta_4, Y => bsd7_0_ns_1_0);
    
    \fsmmod_ns_0_o3_2[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \sercon[4]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => \sercon[5]_net_1\, Y => N_1044);
    
    \serCON_WRITE_PROC.un70_ens1\ : CFG3
      generic map(INIT => x"F1")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[6]_net_1\, C
         => \adrcomp\, Y => un70_ens1);
    
    \SDAO_INT_WRITE_PROC.un18_fsmsta\ : CFG4
      generic map(INIT => x"0010")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, C
         => un12_fsmsta_0_0, D => \fsmsta[2]_net_1\, Y => 
        un18_fsmsta);
    
    \SDAO_INT_WRITE_PROC.un70_fsmsta\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un70_fsmsta);
    
    \fsmmod_RNO[4]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmmod_ns_i_a4_1[2]\, B => 
        \fsmmod_ns_i_0[2]_net_1\, C => un115_fsmdet, D => N_1040, 
        Y => N_1029_i_0);
    
    \CLK_COUNTER1_PROC.un12_pclk_count1_1.CO3\ : CFG4
      generic map(INIT => x"777F")

      port map(A => \PCLK_count1[3]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => \PCLK_count1[1]_net_1\, D
         => \PCLK_count1[0]_net_1\, Y => un12_pclk_count1);
    
    \serDAT_WRITE_PROC.un105_ens1_0_a2_1_0_RNIP3231\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un7_pseli, B => \serdat_m3_e_3\, C => 
        un105_ens1_0_a2_1_0, D => N_112, Y => 
        un105_ens1_0_a2_1_0_RNIP3231);
    
    \SCLI_ff_reg[2]\ : SLE
      port map(D => \SCLI_ff_reg_3[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[2]_net_1\);
    
    \fsmsync_RNO[3]\ : CFG4
      generic map(INIT => x"0405")

      port map(A => \SCLInt\, B => \fsmsync[3]_net_1\, C => 
        N_1004, D => N_994, Y => N_974_i_0);
    
    \fsmsync[3]\ : SLE
      port map(D => N_974_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un30_fsmsta\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un30_fsmsta);
    
    \sercon_RNILF9G[5]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \serdat[5]_net_1\, B => \sercon[5]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \PRDATA_3_1_1[5]\);
    
    \PCLK_count2[1]\ : SLE
      port map(D => \PCLK_count2_3[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[1]_net_1\);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_ov_6_0_a2_1_3\ : CFG4
      generic map(INIT => x"0010")

      port map(A => \fsmsync[2]_net_1\, B => \fsmdet[1]_net_1\, C
         => PCLK_count2_ov_6_0_a2_1_0, D => \fsmdet[3]_net_1\, Y
         => PCLK_count2_ov_6_0_a2_1_3);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \adrcomp\, B => un39_fsmdet, C => 
        fsmsta_0_sqmuxa_1, D => N_1088, Y => \fsmsta_8_0_iv_1[0]\);
    
    SDAO_int_RNO_3 : CFG4
      generic map(INIT => x"AFBF")

      port map(A => \bsd7\, B => un57_fsmsta_4, C => un71_fsmsta, 
        D => un57_fsmsta_0, Y => N_1405);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3_RNO[0]\ : CFG4
      generic map(INIT => x"2202")

      port map(A => \un2_fsmsta_8\, B => un136_framesync, C => 
        \sercon[2]_net_1\, D => \SDAInt\, Y => 
        \fsmsta_nxt_60_i_m[0]\);
    
    busfree : SLE
      port map(D => \fsmdet_i_0[3]\, CLK => FAB_CCC_GL0, EN => 
        un105_fsmdet, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \busfree\);
    
    \PCLK_count1[2]\ : SLE
      port map(D => \PCLK_count1_10[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[2]_net_1\);
    
    \sercon[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[6]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta_8_0_iv_3[0]\, B => 
        \fsmsta_8_0_iv_4[0]\, C => N_1097_m, Y => 
        \fsmsta_8_0_iv_i_0[0]\);
    
    SDAO_int : SLE
      port map(D => N_1389, CLK => FAB_CCC_GL0, EN => 
        SDAO_int_1_sqmuxa_i_0, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \COREI2C_0_0_SDAO[0]\);
    
    \serDAT_WRITE_PROC.ack_7_0\ : CFG4
      generic map(INIT => x"AACA")

      port map(A => \ack\, B => \SDAInt\, C => 
        un1_serdat_2_sqmuxa_2_0, D => 
        un105_ens1_0_a2_1_0_RNIP3231, Y => N_1176);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_e2\ : CFG4
      generic map(INIT => x"0013")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        un30_fsmsta, D => framesync_7_sm0, Y => framesync_7_e2);
    
    un1_adrcomp5 : CFG2
      generic map(INIT => x"1")

      port map(A => un25_fsmdet, B => un16_fsmmod, Y => 
        \un1_adrcomp5\);
    
    \fsmsta_nxt_cnst_i_RNO[2]\ : CFG4
      generic map(INIT => x"0C0D")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => un20_sdao_int, Y => N_1433_tz);
    
    \fsmsta_nxt_cnst_0_0[4]\ : CFG4
      generic map(INIT => x"FEF0")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => un22_si_int_3, D => N_329, Y => 
        \fsmsta_nxt_cnst_0_0[4]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un13_adrcompen\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \serdat[6]_net_1\, B => \serdat[4]_net_1\, C
         => \serdat[1]_net_1\, D => un13_adrcompen_4, Y => 
        un13_adrcompen);
    
    \fsmsta_nxt_cnst_i_a5[2]\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[0]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        N_1125);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        \SDAI_ff_reg[0]_net_1\, Y => \SDAI_ff_reg_4[1]\);
    
    \fsmsta_RNO[2]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => N_1100, B => un2_fsmsta_12_s7, C => 
        fsmsta_8_0_iv_0_0_326_i_0, D => fsmsta_8_0_iv_0_0_326_i_1, 
        Y => N_1382_i_0);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_0\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_109\);
    
    \fsmmod_ns_i_a4_1_0[2]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[4]_net_1\, Y
         => N_1004_3);
    
    \CLK_COUNT2_WRITE_PROC.PCLK_count2_ov_6_0_a2\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \un1_pclk_count1_ov_1\, B => 
        PCLK_count2_ov_6_1, C => \PCLK_count1_ov\, D => 
        \un1_pclk_count1_ov\, Y => PCLK_count2_ov_6);
    
    \PCLK_count2[2]\ : SLE
      port map(D => \PCLK_count2_3[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.un78_fsmdet\ : CFG2
      generic map(INIT => x"8")

      port map(A => un60_ens1, B => un70_ens1, Y => un78_fsmdet);
    
    \fsmmod_ns_0[3]\ : CFG4
      generic map(INIT => x"3222")

      port map(A => \fsmmod_ns_0_a4_0_3[3]\, B => un115_fsmdet, C
         => \fsmmod[3]_net_1\, D => N_1041, Y => \fsmmod_ns[3]\);
    
    \fsmdet_RNO[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \SCLInt\, Y => SCLInt_i_0);
    
    \serSTA_WRITE_PROC.sersta_32[3]\ : CFG4
      generic map(INIT => x"DF8F")

      port map(A => N_32, B => i4_mux_4, C => 
        \COREI2C_0_0_INT[0]\, D => N_21, Y => \sersta_32[3]\);
    
    \serSTA_WRITE_PROC.sersta_32[0]\ : CFG4
      generic map(INIT => x"DF75")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_329, C => N_32, 
        D => \sersta_32_1[0]\, Y => \sersta_32[0]\);
    
    un1_pclk_count1_ov_1_1 : CFG4
      generic map(INIT => x"1333")

      port map(A => \PCLK_count2[1]_net_1\, B => \sercon_0\, C
         => \PCLK_count2[3]_net_1\, D => \PCLK_count2[2]_net_1\, 
        Y => \un1_pclk_count1_ov_1_1\);
    
    \serdat[1]\ : SLE
      port map(D => \serdat_9[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[1]_net_1\);
    
    \fsmsta_nxt_cnst_i[2]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_1433_tz, B => un30_fsmsta, C => N_1137, D
         => \fsmsta_nxt_cnst_i_0[2]_net_1\, Y => N_1100);
    
    \serDAT_WRITE_PROC.bsd7_9_m_ns\ : CFG3
      generic map(INIT => x"E2")

      port map(A => bsd7_90, B => un105_ens1, C => bsd7_91, Y => 
        bsd7_9);
    
    \fsmsta_nxt_cnst_i_a2[2]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_1135, B => \ack\, Y => N_1137);
    
    \FSMSTA_COMB_PROC.un20_sdao_int\ : CFG2
      generic map(INIT => x"4")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, Y => 
        un20_sdao_int);
    
    un1_pclk_count191 : CFG3
      generic map(INIT => x"4C")

      port map(A => \sercon_0\, B => \sercon[7]_net_1\, C => 
        \sercon[1]_net_1\, Y => \un1_pclk_count191\);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, Y => \SCLI_ff_reg_3[2]\);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[1]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        \SCLI_ff_reg[0]_net_1\, Y => \SCLI_ff_reg_3[1]\);
    
    \or_br.rtn_1\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv[1]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \fsmsta_nxt_cnst[1]\, B => 
        \fsmsta_8_0_iv_1[1]\, C => un2_fsmsta_12_s7, D => 
        \fsmsta_8_0_iv_2[1]\, Y => \fsmsta_8[1]\);
    
    \fsmdet_RNO[3]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[5]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_938_i_0);
    
    \fsmsync_RNO[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_1010, B => N_1012, C => N_1011, D => N_1004, 
        Y => N_978_i_0);
    
    \serSTA_WRITE_PROC.un25_si_int\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[3]_net_1\, B => un25_si_int_0, C => 
        \fsmsta[4]_net_1\, Y => un25_si_int);
    
    \fsmmod_ns_0[5]\ : CFG4
      generic map(INIT => x"FF40")

      port map(A => \SDAInt\, B => \fsmmod[6]_net_1\, C => 
        N_1066_1, D => N_1065, Y => \fsmmod_ns[5]\);
    
    \ADRCOMP_WRITE_PROC.un26_adrcompen_NE_2\ : CFG4
      generic map(INIT => x"7BDE")

      port map(A => seradr0apb(4), B => seradr0apb(1), C => 
        \serdat[3]_net_1\, D => \serdat_0\, Y => 
        un26_adrcompen_NE_2);
    
    un2_fsmsta_5 : CFG2
      generic map(INIT => x"4")

      port map(A => N_1038, B => un30_fsmsta, Y => \un2_fsmsta_5\);
    
    \fsmsync[5]\ : SLE
      port map(D => N_970_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_am[3]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => un25_framesync, B => un19_framesync, C => 
        un70_fsmsta, D => framesync_7_sm0, Y => 
        \framesync_7_enl_am[3]\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m10\ : CFG4
      generic map(INIT => x"3938")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, D => \fsmsta[2]_net_1\, Y => 
        N_30_mux);
    
    \sersta_RNIUMK71[1]\ : CFG4
      generic map(INIT => x"B391")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \PRDATA_3_1_1[4]\, C => \sersta[1]_net_1\, D => 
        seradr0apb(4), Y => N_1206);
    
    \fsmsync_ns_0_1[0]\ : CFG4
      generic map(INIT => x"8A0A")

      port map(A => \SCLInt\, B => \fsmsync[7]_net_1\, C => N_994, 
        D => N_984, Y => \fsmsync_ns_0_1[0]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[2]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(2), B => 
        un105_ens1, C => \serdat[1]_net_1\, Y => \serdat_9[2]\);
    
    \FSMSYNC_SYNC_PROC.un141_ens1_2\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \fsmsync[6]_net_1\, D => \fsmsync[1]_net_1\, Y => 
        un141_ens1_2);
    
    \fsmsta_nxt_cnst_i_o2_0[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => un30_fsmsta, B => \fsmsta[3]_net_1\, Y => 
        N_1108);
    
    \fsmmod_ns_i_0[2]\ : CFG4
      generic map(INIT => x"0313")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[4]_net_1\, C
         => \nedetect\, D => \fsmmod[5]_net_1\, Y => 
        \fsmmod_ns_i_0[2]_net_1\);
    
    \fsmsta_RNO_0[2]\ : CFG4
      generic map(INIT => x"FF0E")

      port map(A => \un2_fsmsta_4\, B => \un2_fsmsta_6\, C => 
        un136_framesync, D => N_1386, Y => 
        fsmsta_8_0_iv_0_0_326_i_0);
    
    \fsmsta_nxt_cnst_i_0[0]\ : CFG4
      generic map(INIT => x"FF60")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => N_1333_2, D => N_1120, Y => 
        \fsmsta_nxt_cnst_i_0[0]_net_1\);
    
    \fsmsta_nxt_cnst_0_a5_0_0[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_329);
    
    \sersta[2]\ : SLE
      port map(D => \sersta_32[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv[4]\ : CFG4
      generic map(INIT => x"EEEC")

      port map(A => un2_fsmsta_12_s7, B => \fsmsta_8_1_iv_2[4]\, 
        C => N_1104, D => \fsmsta_nxt_cnst_0_1[4]_net_1\, Y => 
        \fsmsta_8[4]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[3]\ : CFG4
      generic map(INIT => x"060C")

      port map(A => \PCLK_count1[2]_net_1\, B => 
        \PCLK_count1[3]_net_1\, C => \un1_counter_rst_3\, D => 
        CO1_1, Y => \PCLK_count1_10[3]\);
    
    \serdat_RNIHB9G[3]\ : CFG4
      generic map(INIT => x"03F5")

      port map(A => \COREI2C_0_0_INT[0]\, B => \serdat[3]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \PRDATA_3_1_1[3]\);
    
    \serSTA_WRITE_PROC.un36_si_int\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => un36_si_int_2, D => \fsmsta[3]_net_1\, Y => 
        un36_si_int);
    
    un1_rtn_3 : CFG3
      generic map(INIT => x"81")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => \un1_rtn_3\);
    
    SDAO_int_RNO_0 : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmmod[2]_net_1\, B => \fsmmod[0]_net_1\, C
         => \fsmmod[5]_net_1\, Y => SDAO_int_7_0_354_a5_0);
    
    SCLO_int_RNI93EC : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SCLO[0]\, Y => 
        COREI2C_0_0_SCLO_i(0));
    
    nedetect_0_sqmuxa : CFG4
      generic map(INIT => x"0004")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \nedetect_0_sqmuxa\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_0\ : CFG4
      generic map(INIT => x"FF8C")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => N_1332, Y => un135_ens1_1_0);
    
    \CLK_COUNTER1_PROC.un23_pclk_count1_1.CO3\ : CFG4
      generic map(INIT => x"5777")

      port map(A => \PCLK_count1[3]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => \PCLK_count1[1]_net_1\, D
         => \PCLK_count1[0]_net_1\, Y => un23_pclk_count1);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_4\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, Y => un57_fsmsta_4);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2C is

    port( CoreAPB3_0_APBmslave0_PWDATA                  : in    std_logic_vector(7 downto 0);
          COREI2C_0_0_SDAO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                   : in    std_logic_vector(8 downto 0);
          iPSELS_raw_2_0                                : in    std_logic_vector(0 to 0);
          PRDATA_0_0                                    : out   std_logic;
          PRDATA_0_3                                    : out   std_logic;
          PRDATA_0_6                                    : out   std_logic;
          PRDATA_0_4                                    : out   std_logic;
          PRDATA_0_5                                    : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_6                : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_0                : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_1                : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 : in    std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 : in    std_logic;
          MSS_READY                                     : in    std_logic;
          FAB_CCC_GL0                                   : in    std_logic;
          un7_pseli                                     : out   std_logic;
          N_108                                         : in    std_logic;
          un13_psel_0                                   : in    std_logic;
          N_112                                         : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                    : in    std_logic;
          N_105                                         : out   std_logic;
          N_110                                         : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                    : in    std_logic;
          N_109                                         : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                  : in    std_logic
        );

end COREI2C;

architecture DEF_ARCH of COREI2C is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component COREI2CREAL
    port( COREI2C_0_0_SDAO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                   : in    std_logic_vector(4 downto 0) := (others => 'U');
          iPSELS_raw_2_0                                : in    std_logic_vector(0 to 0) := (others => 'U');
          seradr0apb                                    : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                  : in    std_logic_vector(7 downto 0) := (others => 'U');
          serdat_0                                      : out   std_logic;
          sercon_0                                      : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 : in    std_logic := 'U';
          MSS_READY                                     : in    std_logic := 'U';
          FAB_CCC_GL0                                   : in    std_logic := 'U';
          N_1209                                        : out   std_logic;
          N_1206                                        : out   std_logic;
          N_1207                                        : out   std_logic;
          N_1205                                        : out   std_logic;
          N_1208                                        : out   std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                    : in    std_logic := 'U';
          N_105                                         : out   std_logic;
          N_110                                         : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                    : in    std_logic := 'U';
          N_109                                         : out   std_logic;
          PRDATA_sn_N_8                                 : out   std_logic;
          un7_pseli                                     : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                  : in    std_logic := 'U';
          N_1204                                        : out   std_logic;
          N_1203                                        : out   std_logic;
          N_112                                         : in    std_logic := 'U';
          N_108                                         : in    std_logic := 'U'
        );
  end component;

    signal \seradr0apb[0]_net_1\, VCC_net_1, un3_penable, 
        GND_net_1, \seradr0apb[1]_net_1\, \seradr0apb[2]_net_1\, 
        \seradr0apb[3]_net_1\, \seradr0apb[4]_net_1\, 
        \seradr0apb[5]_net_1\, \seradr0apb[6]_net_1\, 
        \seradr0apb[7]_net_1\, PRDATA_sn_N_8, 
        \PRDATA_0_1[0]_net_1\, \serdat[0]\, \sercon[0]\, 
        \un7_pseli\, N_1205, N_1208, N_1206, N_1207, N_1209, 
        N_1203, N_1204 : std_logic;

    for all : COREI2CREAL
	Use entity work.COREI2CREAL(DEF_ARCH);
begin 

    un7_pseli <= \un7_pseli\;

    \serADR0_WRITE_PROCa.un3_penable_0_a2\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_108, B => un13_psel_0, C => N_112, Y => 
        un3_penable);
    
    \PRDATA_0[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1207, B => PRDATA_sn_N_8, Y => PRDATA_0_5);
    
    \PRDATA_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1206, B => PRDATA_sn_N_8, Y => PRDATA_0_4);
    
    \PRDATA_0[0]\ : CFG4
      generic map(INIT => x"00D0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \seradr0apb[0]_net_1\, C => PRDATA_sn_N_8, D => 
        \PRDATA_0_1[0]_net_1\, Y => PRDATA_0_0);
    
    \seradr0apb[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[0]_net_1\);
    
    \seradr0apb[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \seradr0apb[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[7]_net_1\);
    
    \seradr0apb[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[5]_net_1\);
    
    \seradr0apb[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[1]_net_1\);
    
    \seradr0apb[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[6]_net_1\);
    
    \seradr0apb[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[4]_net_1\);
    
    \seradr0apb[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un3_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \seradr0apb[3]_net_1\);
    
    \PRDATA_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1205, B => PRDATA_sn_N_8, Y => PRDATA_0_3);
    
    \PRDATA[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_1204, B => \un7_pseli\, C => PRDATA_sn_N_8, 
        Y => CoreAPB3_0_APBmslave0_PRDATA_1);
    
    \PRDATA[1]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_1203, B => \un7_pseli\, C => PRDATA_sn_N_8, 
        Y => CoreAPB3_0_APBmslave0_PRDATA_0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1208, B => PRDATA_sn_N_8, Y => PRDATA_0_6);
    
    \G0b.0.un7_pseli\ : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(8), D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => \un7_pseli\);
    
    \G0a.0.ui2c\ : COREI2CREAL
      port map(COREI2C_0_0_SDAO_i(0) => COREI2C_0_0_SDAO_i(0), 
        COREI2C_0_0_SCLO_i(0) => COREI2C_0_0_SCLO_i(0), 
        COREI2C_0_0_INT(0) => COREI2C_0_0_INT(0), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), 
        CoreAPB3_0_APBmslave0_PADDR(1) => 
        CoreAPB3_0_APBmslave0_PADDR(1), 
        CoreAPB3_0_APBmslave0_PADDR(0) => 
        CoreAPB3_0_APBmslave0_PADDR(0), iPSELS_raw_2_0(0) => 
        iPSELS_raw_2_0(0), seradr0apb(7) => \seradr0apb[7]_net_1\, 
        seradr0apb(6) => \seradr0apb[6]_net_1\, seradr0apb(5) => 
        \seradr0apb[5]_net_1\, seradr0apb(4) => 
        \seradr0apb[4]_net_1\, seradr0apb(3) => 
        \seradr0apb[3]_net_1\, seradr0apb(2) => 
        \seradr0apb[2]_net_1\, seradr0apb(1) => 
        \seradr0apb[1]_net_1\, seradr0apb(0) => 
        \seradr0apb[0]_net_1\, CoreAPB3_0_APBmslave0_PWDATA(7)
         => CoreAPB3_0_APBmslave0_PWDATA(7), 
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
        CoreAPB3_0_APBmslave0_PWDATA(0), serdat_0 => \serdat[0]\, 
        sercon_0 => \sercon[0]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2, MSS_READY
         => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, N_1209 => 
        N_1209, N_1206 => N_1206, N_1207 => N_1207, N_1205 => 
        N_1205, N_1208 => N_1208, BIBUF_COREI2C_0_0_SDA_IO_Y => 
        BIBUF_COREI2C_0_0_SDA_IO_Y, N_105 => N_105, N_110 => 
        N_110, BIBUF_COREI2C_0_0_SCL_IO_Y => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, N_109 => N_109, PRDATA_sn_N_8
         => PRDATA_sn_N_8, un7_pseli => \un7_pseli\, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, N_1204 => N_1204, N_1203
         => N_1203, N_112 => N_112, N_108 => N_108);
    
    \PRDATA[7]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \un7_pseli\, B => N_1209, C => PRDATA_sn_N_8, 
        Y => CoreAPB3_0_APBmslave0_PRDATA_6);
    
    \PRDATA_0_1[0]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \serdat[0]\, B => \sercon[0]\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_0_1[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreResetP is

    port( MSS_READY                                 : out   std_logic;
          FAB_CCC_GL0                               : in    std_logic;
          POWER_ON_RESET_N                          : in    std_logic;
          MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic
        );

end CoreResetP;

architecture DEF_ARCH of CoreResetP is 

  component CLKINT
    port( A : in    std_logic := 'U';
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
        \POWER_ON_RESET_N_q1\, \RESET_N_M2F_q1\, 
        \FIC_2_APB_M_PRESET_N_q1\, 
        \FIC_2_APB_M_PRESET_N_clk_base\, \MSS_HPMS_READY_int_3\
         : std_logic;

begin 


    MSS_HPMS_READY_int_RNINGUA : CLKINT
      port map(A => \MSS_HPMS_READY_int\, Y => MSS_READY);
    
    RESET_N_M2F_clk_base : SLE
      port map(D => \RESET_N_M2F_q1\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
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
        VCC_net_1, ALn => MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \RESET_N_M2F_q1\);
    
    FIC_2_APB_M_PRESET_N_clk_base : SLE
      port map(D => \FIC_2_APB_M_PRESET_N_q1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, ADn => 
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
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, ADn => 
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

entity MSS_top_sb_CoreUARTapb_0_0_Tx_async is

    port( tx_hold_reg                                 : in    std_logic_vector(7 downto 0);
          controlReg2                                 : in    std_logic_vector(2 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          TX_c                                        : out   std_logic;
          xmit_pulse                                  : in    std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          baud_clock                                  : in    std_logic;
          xmit_clock                                  : in    std_logic;
          N_108                                       : in    std_logic;
          N_109                                       : in    std_logic
        );

end MSS_top_sb_CoreUARTapb_0_0_Tx_async;

architecture DEF_ARCH of MSS_top_sb_CoreUARTapb_0_0_Tx_async is 

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

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \tx_parity\, VCC_net_1, tx_parity_4, 
        \un1_tx_parity_1_sqmuxa_0\, GND_net_1, tx_xhdl2_3_iv_i_0, 
        N_138_i_0, \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_117_i_0, 
        \xmit_bit_sel[2]_net_1\, N_119_i_0, 
        \xmit_bit_sel[3]_net_1\, N_121_i_0, 
        \CoreUARTapb_0_0_TXRDY\, un1_csn_i_0, 
        txrdy_int_1_sqmuxa_i_0, \tx_byte[0]_net_1\, N_126_i_0, 
        \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, \xmit_state[0]_net_1\, 
        \xmit_state_ns[5]_net_1\, \xmit_state[5]_net_1\, 
        \xmit_state_ns[0]_net_1\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[1]\, \xmit_state[3]_net_1\, 
        \xmit_state_ns[2]_net_1\, \xmit_state[2]_net_1\, 
        N_108_i_0, \xmit_state[1]_net_1\, 
        \xmit_state_ns[4]_net_1\, \txrdy_int_0_sqmuxa_i_o3\, 
        tx_xhdl2_1_7_am_1_1, tx_xhdl2_1_7_am, tx_xhdl2_1_7_bm_1_1, 
        tx_xhdl2_1_7_bm, tx_xhdl2_1, N_124, N_123_i, 
        tx_xhdl2_2_i_m, N_165, N_166, N_148 : std_logic;

begin 

    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;

    \xmit_sel.tx_xhdl2_1_7_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_am_1_1, D => \xmit_bit_sel[1]_net_1\, Y
         => tx_xhdl2_1_7_am);
    
    tx_parity : SLE
      port map(D => tx_parity_4, CLK => FAB_CCC_GL0, EN => 
        \un1_tx_parity_1_sqmuxa_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_parity\);
    
    \xmit_state_RNI7EGR[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[3]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_126_i_0);
    
    txrdy_int : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        txrdy_int_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \CoreUARTapb_0_0_TXRDY\);
    
    \xmit_state_ns_a3[5]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \xmit_state[2]_net_1\, B => controlReg2(1), C
         => xmit_pulse, D => N_165, Y => N_148);
    
    \xmit_state_ns_i_x2[3]\ : CFG2
      generic map(INIT => x"6")

      port map(A => controlReg2(0), B => \xmit_bit_sel[0]_net_1\, 
        Y => N_123_i);
    
    \xmit_state[3]\ : SLE
      port map(D => \xmit_state_ns[2]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \xmit_cnt.xmit_bit_sel_3_i_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, Y => N_124);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_hold_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[2]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_117_i_0);
    
    un1_tx_parity_1_sqmuxa_0_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => controlReg2(1), B => xmit_pulse, C => 
        \xmit_state[2]_net_1\, Y => N_166);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_hold_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    txrdy_int_1_sqmuxa_i : CFG4
      generic map(INIT => x"B333")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        \txrdy_int_0_sqmuxa_i_o3\, C => N_108, D => N_109, Y => 
        txrdy_int_1_sqmuxa_i_0);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state_ns[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sel.tx_xhdl2_3_iv_i\ : CFG4
      generic map(INIT => x"0501")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[2]_net_1\, C => tx_xhdl2_2_i_m, D => 
        tx_xhdl2_1, Y => tx_xhdl2_3_iv_i_0);
    
    tx_xhdl2_RNO : CFG3
      generic map(INIT => x"FE")

      port map(A => \xmit_state[4]_net_1\, B => 
        \xmit_state[5]_net_1\, C => xmit_pulse, Y => N_138_i_0);
    
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
    
    \xmit_state_ns[4]\ : CFG4
      generic map(INIT => x"F222")

      port map(A => \xmit_state[1]_net_1\, B => xmit_pulse, C => 
        N_165, D => N_166, Y => \xmit_state_ns[4]_net_1\);
    
    \xmit_state[2]\ : SLE
      port map(D => N_108_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[2]_net_1\);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_121_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_i_0, CLK => FAB_CCC_GL0, EN => 
        N_138_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => TX_c);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_119_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_hold_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_hold_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    un1_tx_parity_1_sqmuxa_0 : CFG2
      generic map(INIT => x"E")

      port map(A => N_166, B => \xmit_state[0]_net_1\, Y => 
        \un1_tx_parity_1_sqmuxa_0\);
    
    \xmit_state_ns_i_a2[3]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => \xmit_bit_sel[3]_net_1\, B => 
        \xmit_bit_sel[2]_net_1\, C => \xmit_bit_sel[1]_net_1\, D
         => N_123_i, Y => N_165);
    
    \xmit_bit_sel_RNO[2]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \xmit_state[2]_net_1\, B => N_124, C => 
        \xmit_bit_sel[2]_net_1\, Y => N_119_i_0);
    
    \xmit_state_ns_a3[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \CoreUARTapb_0_0_TXRDY\, B => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[1]\);
    
    \xmit_par_calc.tx_parity_4\ : CFG3
      generic map(INIT => x"06")

      port map(A => tx_xhdl2_1, B => \tx_parity\, C => 
        \xmit_state[0]_net_1\, Y => tx_parity_4);
    
    txrdy_int_0_sqmuxa_i_o3 : CFG3
      generic map(INIT => x"7F")

      port map(A => \xmit_state[3]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => \txrdy_int_0_sqmuxa_i_o3\);
    
    \xmit_sel.tx_xhdl2_3_iv_i_RNO\ : CFG3
      generic map(INIT => x"82")

      port map(A => \xmit_state[1]_net_1\, B => controlReg2(2), C
         => \tx_parity\, Y => tx_xhdl2_2_i_m);
    
    \xmit_state_ns[5]\ : CFG4
      generic map(INIT => x"FDEC")

      port map(A => xmit_pulse, B => N_148, C => 
        \xmit_state[1]_net_1\, D => \xmit_state[0]_net_1\, Y => 
        \xmit_state_ns[5]_net_1\);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_hold_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_117_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_bm_1_1);
    
    \xmit_state[1]\ : SLE
      port map(D => \xmit_state_ns[4]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \xmit_state_RNO[2]\ : CFG4
      generic map(INIT => x"F7A0")

      port map(A => xmit_pulse, B => N_165, C => 
        \xmit_state[3]_net_1\, D => \xmit_state[2]_net_1\, Y => 
        N_108_i_0);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_hold_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    txrdy_int_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => N_108, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_109, Y => un1_csn_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_ns\ : CFG3
      generic map(INIT => x"E2")

      port map(A => tx_xhdl2_1_7_am, B => \xmit_bit_sel[2]_net_1\, 
        C => tx_xhdl2_1_7_bm, Y => tx_xhdl2_1);
    
    \xmit_state_ns[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \xmit_state[5]_net_1\, B => 
        \xmit_state[0]_net_1\, C => \CoreUARTapb_0_0_TXRDY\, D
         => xmit_pulse, Y => \xmit_state_ns[0]_net_1\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_hold_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_126_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[4]_net_1\);
    
    \xmit_bit_sel_RNO[3]\ : CFG4
      generic map(INIT => x"82A0")

      port map(A => \xmit_state[2]_net_1\, B => N_124, C => 
        \xmit_bit_sel[3]_net_1\, D => \xmit_bit_sel[2]_net_1\, Y
         => N_121_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity MSS_top_sb_CoreUARTapb_0_0_Clock_gen is

    port( controlReg1 : in    std_logic_vector(7 downto 0);
          controlReg2 : in    std_logic_vector(7 downto 3);
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );

end MSS_top_sb_CoreUARTapb_0_0_Clock_gen;

architecture DEF_ARCH of MSS_top_sb_CoreUARTapb_0_0_Clock_gen is 

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
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNI259N_Y, 
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

    \baud_cntr_RNISE0S3[2]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(2), C => 
        baud_cntr, D => \baud_cntr[2]_net_1\, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
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
    
    \baud_cntr_RNIQTMQ4[3]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(3), C => 
        baud_cntr, D => \baud_cntr[3]_net_1\, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
    \make_xmit_clock.un7_baud_clock_int\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un7_baud_clock_int);
    
    \baud_cntr_RNI6NJU1[0]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(0), C => 
        un2_baud_cntr_1_RNI259N_Y, D => \baud_cntr[0]_net_1\, FCI
         => \baud_cntr_cry_cy[0]\, S => \baud_cntr_s[0]\, Y => 
        OPEN, FCO => \baud_cntr_cry[0]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[0]_net_1\, Y => un2_baud_cntr_1);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"44700")

      port map(A => VCC_net_1, B => controlReg2(7), C => 
        baud_cntr, D => \baud_cntr[12]_net_1\, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, D => 
        \baud_cntr[2]_net_1\, Y => un2_baud_cntr_7);
    
    \baud_cntr_RNIGU4LA[9]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg2(4), C => 
        baud_cntr, D => \baud_cntr[9]_net_1\, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_8, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_1, Y => 
        baud_cntr);
    
    \baud_cntr_RNI02AT2[1]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(1), C => 
        baud_cntr, D => \baud_cntr[1]_net_1\, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \baud_cntr[5]\ : SLE
      port map(D => \baud_cntr_s[5]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[5]_net_1\);
    
    \baud_cntr_RNIVLOJB[10]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg2(5), C => 
        baud_cntr, D => \baud_cntr[10]_net_1\, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[9]_net_1\, B => 
        \baud_cntr[8]_net_1\, C => \baud_cntr[7]_net_1\, D => 
        \baud_cntr[6]_net_1\, Y => un2_baud_cntr_8);
    
    \baud_cntr_RNIA5BL9[8]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg2(3), C => 
        baud_cntr, D => \baud_cntr[8]_net_1\, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNI259N\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_1, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNI259N_Y, FCO
         => \baud_cntr_cry_cy[0]\);
    
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
    
    \xmit_cntr[2]\ : SLE
      port map(D => \xmit_cntr_3[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => CO0, B => \xmit_cntr[1]_net_1\, Y => 
        \xmit_cntr_3[1]\);
    
    \baud_cntr_RNIS14O6[5]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(5), C => 
        baud_cntr, D => \baud_cntr[5]_net_1\, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_s[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
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
    
    \baud_cntr_RNIGFCIC[11]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg2(6), C => 
        baud_cntr, D => \baud_cntr[11]_net_1\, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
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
    
    \baud_cntr_RNI0NQM7[6]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(6), C => 
        baud_cntr, D => \baud_cntr[6]_net_1\, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \baud_cntr_RNIQEDP5[4]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(4), C => 
        baud_cntr, D => \baud_cntr[4]_net_1\, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
    \baud_cntr_RNI6EHL8[7]\ : ARI1
      generic map(INIT => x"64700")

      port map(A => VCC_net_1, B => controlReg1(7), C => 
        baud_cntr, D => \baud_cntr[7]_net_1\, FCI => 
        \baud_cntr_cry[6]\, S => \baud_cntr_s[7]\, Y => OPEN, FCO
         => \baud_cntr_cry[7]\);
    
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

entity MSS_top_sb_CoreUARTapb_0_0_Rx_async is

    port( data_out                    : out   std_logic_vector(7 downto 0);
          controlReg2                 : in    std_logic_vector(2 downto 0);
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          baud_clock                  : in    std_logic;
          CoreUARTapb_0_0_PARITY_ERR  : out   std_logic;
          receive_full                : out   std_logic;
          un1_temp_xhdl10_i_0         : in    std_logic;
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW    : out   std_logic;
          RX_c                        : in    std_logic;
          un1_temp_xhdl10             : in    std_logic
        );

end MSS_top_sb_CoreUARTapb_0_0_Rx_async;

architecture DEF_ARCH of MSS_top_sb_CoreUARTapb_0_0_Rx_async is 

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

    signal \rx_state[1]_net_1\, VCC_net_1, N_211_i_0, GND_net_1, 
        \rx_state[0]_net_1\, \rx_state_ns[0]\, 
        \rx_shift[0]_net_1\, \rx_shift_12[0]\, \un1_samples8_1_0\, 
        \rx_shift[1]_net_1\, \rx_shift_12[1]\, 
        \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, \rx_shift_12[7]\, 
        \rx_shift[8]_net_1\, \rx_shift_12[8]\, N_289, 
        parity_err_xhdl2_1_sqmuxa_i_0, \receive_full\, 
        un1_receive_full_int_1_sqmuxa_i_0, \rx_parity_calc\, 
        rx_parity_calc_3, \receive_count[0]_net_1\, 
        \receive_count_3[0]\, \receive_count[1]_net_1\, 
        \receive_count_3[1]\, \receive_count[2]_net_1\, 
        \receive_count_3[2]\, \receive_count[3]_net_1\, 
        \receive_count_3[3]\, \overflow_int\, overflow_int_3, 
        \rx_byte_xhdl5_1_sqmuxa\, \rx_byte_xhdl5_2[7]\, 
        \framing_error_int\, \framing_error_int_0_sqmuxa\, 
        framing_error_int_2_sqmuxa, un1_framing_error_i4_i_0, 
        overflow_xhdl1_1_sqmuxa_i_0, \samples[0]_net_1\, 
        \samples[1]_net_1\, \samples[2]_net_1\, 
        \rx_bit_cnt[1]_net_1\, \rx_bit_cnt_4[1]\, 
        \rx_bit_cnt[2]_net_1\, \rx_bit_cnt_4[2]\, 
        \rx_bit_cnt[3]_net_1\, \rx_bit_cnt_4[3]\, 
        \rx_bit_cnt[0]_net_1\, \rx_bit_cnt_4[0]\, 
        un24_baud_clock_li, N_216_3, rx_bit_cnt_0_sqmuxa, 
        un74_baud_clock, \parity_err_xhdl2_1_sqmuxa_i_1\, 
        un66_baud_clock, un74_baud_clock_0, N_216_1, N_218, 
        \framing_error_int_0_sqmuxa_1\, N_214_4, 
        un24_baud_clock_0, i1_mux, un24_baud_clock_NE_1, 
        un84_baud_clock, un89_baud_clock, un53_baud_clock, 
        rx_bit_cnt_1_sqmuxa, \receive_full_int_1_sqmuxa_1_0\, 
        \clear_parity_en_xhdl3_1_sqmuxa_2\, \rx_shift_9[8]\, 
        \rx_shift_9[6]\, \rx_shift_9[7]\, un6_baud_clock, 
        \un1_receive_full_int_1_sqmuxa_tz_1\, CO1 : std_logic;

begin 

    receive_full <= \receive_full\;

    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(0));
    
    \receive_full_indicator.un84_baud_clock\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \rx_state[0]_net_1\, B => un74_baud_clock_0, 
        C => \rx_bit_cnt[1]_net_1\, D => \rx_bit_cnt[0]_net_1\, Y
         => un84_baud_clock);
    
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
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(6));
    
    framing_error_int_0_sqmuxa : CFG4
      generic map(INIT => x"0080")

      port map(A => \framing_error_int_0_sqmuxa_1\, B => i1_mux, 
        C => \receive_count[3]_net_1\, D => 
        \receive_count[0]_net_1\, Y => 
        \framing_error_int_0_sqmuxa\);
    
    \receive_count[1]\ : SLE
      port map(D => \receive_count_3[1]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => \rx_shift_12[7]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[7]_net_1\);
    
    \rcv_sm.un24_baud_clock_NE\ : CFG4
      generic map(INIT => x"FCF9")

      port map(A => controlReg2(1), B => \rx_bit_cnt[1]_net_1\, C
         => un24_baud_clock_NE_1, D => controlReg2(0), Y => 
        un24_baud_clock_li);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    \rx_par_calc.un53_baud_clock\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_216_3, B => controlReg2(1), Y => 
        un53_baud_clock);
    
    receive_full_int_RNO : CFG4
      generic map(INIT => x"FF02")

      port map(A => baud_clock, B => 
        \clear_parity_en_xhdl3_1_sqmuxa_2\, C => 
        \un1_receive_full_int_1_sqmuxa_tz_1\, D => 
        un1_temp_xhdl10, Y => un1_receive_full_int_1_sqmuxa_i_0);
    
    \rcv_cnt.receive_count_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un6_baud_clock, B => \receive_count[0]_net_1\, 
        Y => \receive_count_3[0]\);
    
    \rcv_cnt.receive_count_3[1]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[0]_net_1\, C => un6_baud_clock, Y => 
        \receive_count_3[1]\);
    
    rx_byte_xhdl5_1_sqmuxa : CFG4
      generic map(INIT => x"0200")

      port map(A => \rx_state[0]_net_1\, B => \receive_full\, C
         => un24_baud_clock_li, D => baud_clock, Y => 
        \rx_byte_xhdl5_1_sqmuxa\);
    
    \receive_shift.rx_shift_12[0]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[1]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[0]\);
    
    \rcv_cnt.receive_count_3[2]\ : CFG3
      generic map(INIT => x"14")

      port map(A => un6_baud_clock, B => \receive_count[2]_net_1\, 
        C => N_216_1, Y => \receive_count_3[2]\);
    
    rx_bit_cnt_0_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => baud_clock, Y => rx_bit_cnt_0_sqmuxa);
    
    framing_error_i : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => un1_framing_error_i4_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_0_0_FRAMING_ERR);
    
    \un1_rx_bit_cnt_1_1.CO1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_1_sqmuxa, C => \rx_bit_cnt[1]_net_1\, Y => CO1);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_byte_xhdl5_2[7]\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(7));
    
    \receive_shift.rx_shift_9_3[7]\ : CFG4
      generic map(INIT => x"9F06")

      port map(A => controlReg2(0), B => controlReg2(1), C => 
        i1_mux, D => N_218, Y => \rx_shift_9[7]\);
    
    \receive_count[3]\ : SLE
      port map(D => \receive_count_3[3]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rcv_sm.overflow_int_3\ : CFG3
      generic map(INIT => x"08")

      port map(A => \receive_full\, B => \rx_state[0]_net_1\, C
         => un24_baud_clock_li, Y => overflow_int_3);
    
    rx_parity_calc : SLE
      port map(D => rx_parity_calc_3, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_parity_calc\);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => \rx_bit_cnt_4[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \receive_shift.rx_bit_cnt_4[3]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt[3]_net_1\, C => CO1, D => rx_bit_cnt_0_sqmuxa, 
        Y => \rx_bit_cnt_4[3]\);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => \rx_bit_cnt_4[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \rx_state_ns_0_a3_0_4[0]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \receive_count[3]_net_1\, B => 
        \receive_count[2]_net_1\, C => \receive_count[1]_net_1\, 
        D => \receive_count[0]_net_1\, Y => N_214_4);
    
    parity_err_xhdl2_1_sqmuxa_i : CFG4
      generic map(INIT => x"FF08")

      port map(A => baud_clock, B => N_216_3, C => 
        \parity_err_xhdl2_1_sqmuxa_i_1\, D => un1_temp_xhdl10, Y
         => parity_err_xhdl2_1_sqmuxa_i_0);
    
    \receive_shift.rx_shift_12[8]\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_shift_9[8]\, Y => \rx_shift_12[8]\);
    
    \rcv_cnt.un6_baud_clock\ : CFG4
      generic map(INIT => x"1101")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => i1_mux, D => N_214_4, Y => un6_baud_clock);
    
    parity_err_xhdl2_1_sqmuxa_i_1 : CFG4
      generic map(INIT => x"5D7F")

      port map(A => controlReg2(1), B => controlReg2(0), C => 
        un74_baud_clock, D => un66_baud_clock, Y => 
        \parity_err_xhdl2_1_sqmuxa_i_1\);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    \rx_state_RNO[1]\ : CFG4
      generic map(INIT => x"02CE")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => un24_baud_clock_li, D => N_216_3, Y => N_211_i_0);
    
    \receive_full_indicator.un89_baud_clock\ : CFG2
      generic map(INIT => x"8")

      port map(A => un74_baud_clock, B => \rx_state[0]_net_1\, Y
         => un89_baud_clock);
    
    \receive_count[2]\ : SLE
      port map(D => \receive_count_3[2]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[2]_net_1\);
    
    stop_strobe_i : SLE
      port map(D => framing_error_int_2_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => stop_strobe);
    
    \receive_shift.rx_shift_12[2]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[3]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[6]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[5]\);
    
    \make_parity_err.un66_baud_clock\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => un66_baud_clock);
    
    \rx_state[1]\ : SLE
      port map(D => N_211_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    un1_receive_full_int_1_sqmuxa_tz_1 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => controlReg2(0), B => controlReg2(1), C => 
        \receive_full_int_1_sqmuxa_1_0\, D => un84_baud_clock, Y
         => \un1_receive_full_int_1_sqmuxa_tz_1\);
    
    \rx_state_ns_i_a3_0_3[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \receive_count[3]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[2]_net_1\, 
        D => \receive_count[0]_net_1\, Y => N_216_3);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    \rx_par_calc.rx_parity_calc_3_u\ : CFG4
      generic map(INIT => x"2122")

      port map(A => \rx_parity_calc\, B => \rx_state[1]_net_1\, C
         => i1_mux, D => un53_baud_clock, Y => rx_parity_calc_3);
    
    \rcv_sm.un24_baud_clock_0\ : CFG3
      generic map(INIT => x"69")

      port map(A => \rx_bit_cnt[0]_net_1\, B => controlReg2(1), C
         => controlReg2(0), Y => un24_baud_clock_0);
    
    \receive_shift.rx_shift_12_RNO[6]\ : CFG4
      generic map(INIT => x"CC8D")

      port map(A => controlReg2(1), B => \rx_shift[7]_net_1\, C
         => i1_mux, D => controlReg2(0), Y => \rx_shift_9[6]\);
    
    \rcv_sm.rx_byte_xhdl5_2[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => controlReg2(0), B => \rx_shift[7]_net_1\, Y
         => \rx_byte_xhdl5_2[7]\);
    
    \receive_shift.rx_bit_cnt_4[2]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => CO1, Y => \rx_bit_cnt_4[2]\);
    
    rx_bit_cnt_1_sqmuxa_0_a3 : CFG2
      generic map(INIT => x"8")

      port map(A => N_216_3, B => baud_clock, Y => 
        rx_bit_cnt_1_sqmuxa);
    
    \receive_shift.rx_shift_12[1]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[2]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[1]\);
    
    receive_full_int : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => un1_receive_full_int_1_sqmuxa_i_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \receive_full\);
    
    framing_error_i_RNO : CFG3
      generic map(INIT => x"EC")

      port map(A => baud_clock, B => un1_temp_xhdl10, C => 
        \framing_error_int\, Y => un1_framing_error_i4_i_0);
    
    \receive_shift.rx_shift_12_RNO[8]\ : CFG4
      generic map(INIT => x"4ECC")

      port map(A => controlReg2(1), B => \rx_shift[8]_net_1\, C
         => i1_mux, D => controlReg2(0), Y => \rx_shift_9[8]\);
    
    parity_err_xhdl2 : SLE
      port map(D => N_289, CLK => FAB_CCC_GL0, EN => 
        parity_err_xhdl2_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_0_0_PARITY_ERR);
    
    clear_parity_en_xhdl3_1_sqmuxa_2 : CFG4
      generic map(INIT => x"0111")

      port map(A => controlReg2(1), B => controlReg2(0), C => 
        \rx_state[0]_net_1\, D => un66_baud_clock, Y => 
        \clear_parity_en_xhdl3_1_sqmuxa_2\);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[6]_net_1\);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[1]_net_1\);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[3]_net_1\);
    
    framing_error_int : SLE
      port map(D => \framing_error_int_0_sqmuxa\, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \framing_error_int\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(2));
    
    overflow_xhdl1_1_sqmuxa_i : CFG3
      generic map(INIT => x"EC")

      port map(A => baud_clock, B => un1_temp_xhdl10, C => 
        \overflow_int\, Y => overflow_xhdl1_1_sqmuxa_i_0);
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    receive_full_int_1_sqmuxa_1_0 : CFG4
      generic map(INIT => x"0600")

      port map(A => controlReg2(0), B => controlReg2(1), C => 
        un89_baud_clock, D => baud_clock, Y => 
        \receive_full_int_1_sqmuxa_1_0\);
    
    \samples[2]\ : SLE
      port map(D => RX_c, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_shift_9[6]\, Y => \rx_shift_12[6]\);
    
    \rcv_cnt.receive_count_3[3]\ : CFG4
      generic map(INIT => x"060C")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => un6_baud_clock, D => 
        N_216_1, Y => \receive_count_3[3]\);
    
    un1_samples8_1_0 : CFG3
      generic map(INIT => x"F8")

      port map(A => baud_clock, B => N_216_3, C => 
        rx_bit_cnt_0_sqmuxa, Y => \un1_samples8_1_0\);
    
    \receive_count[0]\ : SLE
      port map(D => \receive_count_3[0]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    parity_err_xhdl2_RNO : CFG4
      generic map(INIT => x"0609")

      port map(A => controlReg2(2), B => \rx_parity_calc\, C => 
        un1_temp_xhdl10, D => i1_mux, Y => N_289);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(3));
    
    \rx_state_ns_i_a3_0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_216_3, B => \rx_state[1]_net_1\, Y => 
        framing_error_int_2_sqmuxa);
    
    \receive_shift.rx_shift_12[4]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[5]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4[0]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => rx_bit_cnt_1_sqmuxa, Y => 
        \rx_bit_cnt_4[0]\);
    
    \receive_shift.rx_shift_12[3]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \rx_state[0]_net_1\, B => \rx_shift[4]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rx_state_ns_0[0]\ : CFG4
      generic map(INIT => x"B1A0")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => un24_baud_clock_li, D => N_214_4, Y => 
        \rx_state_ns[0]\);
    
    \rcv_sm.un24_baud_clock_NE_1\ : CFG4
      generic map(INIT => x"FFBD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        un24_baud_clock_0, Y => un24_baud_clock_NE_1);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => \rx_bit_cnt_4[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \rx_shift[8]\ : SLE
      port map(D => \rx_shift_12[8]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[8]_net_1\);
    
    \rx_state_ns_i_a3_0_1[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \receive_count[0]_net_1\, B => 
        \receive_count[1]_net_1\, Y => N_216_1);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(1));
    
    framing_error_int_0_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \receive_count[1]_net_1\, B => 
        \rx_state[1]_net_1\, C => \receive_count[2]_net_1\, Y => 
        \framing_error_int_0_sqmuxa_1\);
    
    \rx_filtered.m3\ : CFG3
      generic map(INIT => x"17")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => i1_mux);
    
    \make_parity_err.un74_baud_clock_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt[3]_net_1\, Y => un74_baud_clock_0);
    
    \receive_shift.rx_shift_12[7]\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_shift_9[7]\, Y => \rx_shift_12[7]\);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => \rx_byte_xhdl5_1_sqmuxa\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => data_out(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => \rx_bit_cnt_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    overflow_xhdl1 : SLE
      port map(D => un1_temp_xhdl10_i_0, CLK => FAB_CCC_GL0, EN
         => overflow_xhdl1_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_0_0_OVERFLOW);
    
    \receive_shift.rx_shift_9_1[7]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \rx_shift[8]_net_1\, B => \rx_shift[7]_net_1\, 
        C => controlReg2(0), Y => N_218);
    
    \receive_shift.rx_bit_cnt_4[1]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => rx_bit_cnt_1_sqmuxa, D => 
        rx_bit_cnt_0_sqmuxa, Y => \rx_bit_cnt_4[1]\);
    
    \make_parity_err.un74_baud_clock\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt[3]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => un74_baud_clock);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity MSS_top_sb_CoreUARTapb_0_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(2 to 2);
          controlReg1                                 : in    std_logic_vector(7 downto 0);
          controlReg2                                 : in    std_logic_vector(7 downto 0);
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          N_105                                       : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic;
          N_108                                       : in    std_logic;
          N_109                                       : in    std_logic;
          TX_c                                        : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_PARITY_ERR                  : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          RX_c                                        : in    std_logic
        );

end MSS_top_sb_CoreUARTapb_0_0_COREUART;

architecture DEF_ARCH of MSS_top_sb_CoreUARTapb_0_0_COREUART is 

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

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MSS_top_sb_CoreUARTapb_0_0_Tx_async
    port( tx_hold_reg                                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          controlReg2                                 : in    std_logic_vector(2 downto 0) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          xmit_pulse                                  : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          baud_clock                                  : in    std_logic := 'U';
          xmit_clock                                  : in    std_logic := 'U';
          N_108                                       : in    std_logic := 'U';
          N_109                                       : in    std_logic := 'U'
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

  component MSS_top_sb_CoreUARTapb_0_0_Clock_gen
    port( controlReg1 : in    std_logic_vector(7 downto 0) := (others => 'U');
          controlReg2 : in    std_logic_vector(7 downto 3) := (others => 'U');
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );
  end component;

  component MSS_top_sb_CoreUARTapb_0_0_Rx_async
    port( data_out                    : out   std_logic_vector(7 downto 0);
          controlReg2                 : in    std_logic_vector(2 downto 0) := (others => 'U');
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          baud_clock                  : in    std_logic := 'U';
          CoreUARTapb_0_0_PARITY_ERR  : out   std_logic;
          receive_full                : out   std_logic;
          un1_temp_xhdl10_i_0         : in    std_logic := 'U';
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW    : out   std_logic;
          RX_c                        : in    std_logic := 'U';
          un1_temp_xhdl10             : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, receive_full, un1_rx_fifo, GND_net_1, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        stop_strobe, un1_temp_xhdl10_0_a2_0, 
        \un1_temp_xhdl10_0_a2_1\, un1_temp_xhdl10, 
        un1_temp_xhdl10_i_0, xmit_clock, baud_clock, xmit_pulse
         : std_logic;

    for all : MSS_top_sb_CoreUARTapb_0_0_Tx_async
	Use entity work.MSS_top_sb_CoreUARTapb_0_0_Tx_async(DEF_ARCH);
    for all : MSS_top_sb_CoreUARTapb_0_0_Clock_gen
	Use entity work.MSS_top_sb_CoreUARTapb_0_0_Clock_gen(DEF_ARCH);
    for all : MSS_top_sb_CoreUARTapb_0_0_Rx_async
	Use entity work.MSS_top_sb_CoreUARTapb_0_0_Rx_async(DEF_ARCH);
begin 


    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \reg_write.un1_csn_0_a2\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_108, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_109, Y => un1_csn);
    
    un1_temp_xhdl10_0_a2_1 : CFG3
      generic map(INIT => x"80")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        un1_temp_xhdl10_0_a2_0, C => N_105, Y => 
        \un1_temp_xhdl10_0_a2_1\);
    
    \RXRDY_NEW.un1_rx_fifo\ : CFG2
      generic map(INIT => x"D")

      port map(A => receive_full, B => stop_strobe, Y => 
        un1_rx_fifo);
    
    make_TX : MSS_top_sb_CoreUARTapb_0_0_Tx_async
      port map(tx_hold_reg(7) => \tx_hold_reg[7]_net_1\, 
        tx_hold_reg(6) => \tx_hold_reg[6]_net_1\, tx_hold_reg(5)
         => \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, controlReg2(2) => controlReg2(2), 
        controlReg2(1) => controlReg2(1), controlReg2(0) => 
        controlReg2(0), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, TX_c
         => TX_c, xmit_pulse => xmit_pulse, CoreUARTapb_0_0_TXRDY
         => CoreUARTapb_0_0_TXRDY, baud_clock => baud_clock, 
        xmit_clock => xmit_clock, N_108 => N_108, N_109 => N_109);
    
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
    
    un1_temp_xhdl10_0_a2_0_1 : CFG3
      generic map(INIT => x"04")

      port map(A => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => un1_temp_xhdl10_0_a2_0);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    un1_temp_xhdl10_0_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave3_PSELx_2, C => 
        \un1_temp_xhdl10_0_a2_1\, Y => un1_temp_xhdl10);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    un1_temp_xhdl10_0_a2_1_RNI0FIU : CFG3
      generic map(INIT => x"7F")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave3_PSELx_2, C => 
        \un1_temp_xhdl10_0_a2_1\, Y => un1_temp_xhdl10_i_0);
    
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
    
    make_MSS_top_sb_CoreUARTapb_0_0_Clock_gen : 
        MSS_top_sb_CoreUARTapb_0_0_Clock_gen
      port map(controlReg1(7) => controlReg1(7), controlReg1(6)
         => controlReg1(6), controlReg1(5) => controlReg1(5), 
        controlReg1(4) => controlReg1(4), controlReg1(3) => 
        controlReg1(3), controlReg1(2) => controlReg1(2), 
        controlReg1(1) => controlReg1(1), controlReg1(0) => 
        controlReg1(0), controlReg2(7) => controlReg2(7), 
        controlReg2(6) => controlReg2(6), controlReg2(5) => 
        controlReg2(5), controlReg2(4) => controlReg2(4), 
        controlReg2(3) => controlReg2(3), xmit_clock => 
        xmit_clock, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, baud_clock => baud_clock, xmit_pulse => 
        xmit_pulse);
    
    make_RX : MSS_top_sb_CoreUARTapb_0_0_Rx_async
      port map(data_out(7) => data_out(7), data_out(6) => 
        data_out(6), data_out(5) => data_out(5), data_out(4) => 
        data_out(4), data_out(3) => data_out(3), data_out(2) => 
        data_out(2), data_out(1) => data_out(1), data_out(0) => 
        data_out(0), controlReg2(2) => controlReg2(2), 
        controlReg2(1) => controlReg2(1), controlReg2(0) => 
        controlReg2(0), MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, baud_clock => baud_clock, 
        CoreUARTapb_0_0_PARITY_ERR => CoreUARTapb_0_0_PARITY_ERR, 
        receive_full => receive_full, un1_temp_xhdl10_i_0 => 
        un1_temp_xhdl10_i_0, stop_strobe => stop_strobe, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_OVERFLOW => 
        CoreUARTapb_0_0_OVERFLOW, RX_c => RX_c, un1_temp_xhdl10
         => un1_temp_xhdl10);
    
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

entity MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb is

    port( CoreAPB3_0_APBmslave2_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_PARITY_ERR                  : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          un13_psel_0                                 : out   std_logic;
          N_110                                       : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          N_108                                       : out   std_logic;
          N_105                                       : in    std_logic;
          N_109                                       : in    std_logic;
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic
        );

end MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb;

architecture DEF_ARCH of MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb is 

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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component MSS_top_sb_CoreUARTapb_0_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(2 to 2) := (others => 'U');
          controlReg1                                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          controlReg2                                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          data_out                                    : out   std_logic_vector(7 downto 0);
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          N_105                                       : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic := 'U';
          N_108                                       : in    std_logic := 'U';
          N_109                                       : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_PARITY_ERR                  : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          RX_c                                        : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, N_88, GND_net_1, 
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
        \controlReg1[7]_net_1\, \nxtprdata_xhdl7_1_5_1[6]\, 
        \data_out[6]\, \nxtprdata_xhdl7_1_5_1[5]\, \data_out[5]\, 
        \nxtprdata_xhdl7_1_5_ns_1[4]\, N_42, 
        \CoreUARTapb_0_0_FRAMING_ERR\, 
        \nxtprdata_xhdl7_1_5_ns_1[0]\, N_38, 
        \CoreUARTapb_0_0_TXRDY\, \nxtprdata_xhdl7_1_5_ns_1[1]\, 
        N_39, \CoreUARTapb_0_0_RXRDY\, 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, N_41, 
        \CoreUARTapb_0_0_OVERFLOW\, \nxtprdata_xhdl7_1_5_ns_1[2]\, 
        N_40, \CoreUARTapb_0_0_PARITY_ERR\, \data_out[4]\, 
        \data_out[0]\, \data_out[1]\, \data_out[3]\, 
        \data_out[7]\, N_260, \data_out[2]\, un5_psel_0, 
        \un1_nxtprdata_xhdl722_i_a2_1\, \un13_psel_0\, N_92, 
        \N_108\ : std_logic;

    for all : MSS_top_sb_CoreUARTapb_0_0_COREUART
	Use entity work.MSS_top_sb_CoreUARTapb_0_0_COREUART(DEF_ARCH);
begin 

    CoreUARTapb_0_0_FRAMING_ERR <= \CoreUARTapb_0_0_FRAMING_ERR\;
    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;
    CoreUARTapb_0_0_RXRDY <= \CoreUARTapb_0_0_RXRDY\;
    CoreUARTapb_0_0_OVERFLOW <= \CoreUARTapb_0_0_OVERFLOW\;
    CoreUARTapb_0_0_PARITY_ERR <= \CoreUARTapb_0_0_PARITY_ERR\;
    un13_psel_0 <= \un13_psel_0\;
    N_108 <= \N_108\;

    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[2]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_0_0_PARITY_ERR\, B => 
        \controlReg1[2]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[2]\);
    
    \p_CtrlReg1Seq.un3_psel_0_a2_0\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PWRITE, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => 
        CoreAPB3_0_APBmslave3_PSELx_2, Y => \N_108\);
    
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
      generic map(INIT => x"350F")

      port map(A => \data_out[5]\, B => \controlReg2[5]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[5]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[2]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[2]\, D => N_40, Y => 
        \nxtprdata_xhdl7_1[2]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[3]\, B => \controlReg2[3]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_41);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[4]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0_a2[7]\ : CFG3
      generic map(INIT => x"08")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => N_260, C
         => CoreAPB3_0_APBmslave0_PADDR(4), Y => N_92);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[4]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(4));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[0]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[0]\, D => N_38, Y => 
        \nxtprdata_xhdl7_1[0]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[3]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(3));
    
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
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_39);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[4]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[4]\, B => \controlReg2[4]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_42);
    
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
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[4]_net_1\);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(5));
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(7));
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2_i_m2[7]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[7]\, B => \controlReg2[7]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_260);
    
    \p_CtrlReg2Seq.un13_psel\ : CFG3
      generic map(INIT => x"80")

      port map(A => \un13_psel_0\, B => \N_108\, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        un13_psel);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(2));
    
    un1_nxtprdata_xhdl722_i_a2 : CFG4
      generic map(INIT => x"0080")

      port map(A => CoreAPB3_0_APBmslave3_PSELx_2, B => 
        \un1_nxtprdata_xhdl722_i_a2_1\, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => N_88);
    
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
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[1]\, D => N_39, Y => 
        \nxtprdata_xhdl7_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[6]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \nxtprdata_xhdl7_1_5_1[6]\, C => \data_out[6]\, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[6]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[0]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[0]\, B => \controlReg2[0]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_38);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[5]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[5]\, C => \controlReg1[5]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[5]\);
    
    \iPRDATA[0]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[0]\, CLK => FAB_CCC_GL0, 
        EN => N_88, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreAPB3_0_APBmslave2_PRDATA(0));
    
    uUART : MSS_top_sb_CoreUARTapb_0_0_COREUART
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), controlReg1(7) => 
        \controlReg1[7]_net_1\, controlReg1(6) => 
        \controlReg1[6]_net_1\, controlReg1(5) => 
        \controlReg1[5]_net_1\, controlReg1(4) => 
        \controlReg1[4]_net_1\, controlReg1(3) => 
        \controlReg1[3]_net_1\, controlReg1(2) => 
        \controlReg1[2]_net_1\, controlReg1(1) => 
        \controlReg1[1]_net_1\, controlReg1(0) => 
        \controlReg1[0]_net_1\, controlReg2(7) => 
        \controlReg2[7]_net_1\, controlReg2(6) => 
        \controlReg2[6]_net_1\, controlReg2(5) => 
        \controlReg2[5]_net_1\, controlReg2(4) => 
        \controlReg2[4]_net_1\, controlReg2(3) => 
        \controlReg2[3]_net_1\, controlReg2(2) => 
        \controlReg2[2]_net_1\, controlReg2(1) => 
        \controlReg2[1]_net_1\, controlReg2(0) => 
        \controlReg2[0]_net_1\, data_out(7) => \data_out[7]\, 
        data_out(6) => \data_out[6]\, data_out(5) => 
        \data_out[5]\, data_out(4) => \data_out[4]\, data_out(3)
         => \data_out[3]\, data_out(2) => \data_out[2]\, 
        data_out(1) => \data_out[1]\, data_out(0) => 
        \data_out[0]\, CoreUARTapb_0_0_RXRDY => 
        \CoreUARTapb_0_0_RXRDY\, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, CoreAPB3_0_APBmslave0_PWRITE
         => CoreAPB3_0_APBmslave0_PWRITE, N_105 => N_105, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave3_PSELx_2 => 
        CoreAPB3_0_APBmslave3_PSELx_2, N_108 => \N_108\, N_109
         => N_109, TX_c => TX_c, CoreUARTapb_0_0_TXRDY => 
        \CoreUARTapb_0_0_TXRDY\, CoreUARTapb_0_0_PARITY_ERR => 
        \CoreUARTapb_0_0_PARITY_ERR\, CoreUARTapb_0_0_FRAMING_ERR
         => \CoreUARTapb_0_0_FRAMING_ERR\, 
        CoreUARTapb_0_0_OVERFLOW => \CoreUARTapb_0_0_OVERFLOW\, 
        RX_c => RX_c);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[4]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[4]\, D => N_42, Y => 
        \nxtprdata_xhdl7_1[4]\);
    
    un1_nxtprdata_xhdl722_i_a2_1 : CFG4
      generic map(INIT => x"0007")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D => 
        CoreAPB3_0_APBmslave0_PENABLE, Y => 
        \un1_nxtprdata_xhdl722_i_a2_1\);
    
    \p_CtrlReg1Seq.un5_psel_0_0\ : CFG3
      generic map(INIT => x"04")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => un5_psel_0);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[6]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => \controlReg2[6]_net_1\, B => 
        \controlReg1[6]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[6]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[2]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \data_out[2]\, B => \controlReg2[2]_net_1\, C
         => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_40);
    
    \p_CtrlReg2Seq.un13_psel_0\ : CFG3
      generic map(INIT => x"40")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \un13_psel_0\);
    
    \p_CtrlReg1Seq.un5_psel\ : CFG3
      generic map(INIT => x"80")

      port map(A => un5_psel_0, B => \N_108\, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        un5_psel);
    
    \controlReg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[3]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, D => N_41, Y => 
        \nxtprdata_xhdl7_1[3]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_0[7]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \controlReg1[7]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => N_110, D => N_92, Y
         => \nxtprdata_xhdl7_1[7]\);
    
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
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity pwm_gen is

    port( period_cnt      : in    std_logic_vector(15 downto 0);
          pwm_negedge_reg : in    std_logic_vector(64 downto 1);
          pwm_enable_reg  : in    std_logic_vector(4 downto 1);
          PWM_3_c         : out   std_logic;
          MSS_READY       : in    std_logic;
          FAB_CCC_GL0     : in    std_logic;
          PWM_2_c         : out   std_logic;
          PWM_1_c         : out   std_logic;
          PWM_0_c         : out   std_logic;
          prescale_cnt    : in    std_logic
        );

end pwm_gen;

architecture DEF_ARCH of pwm_gen is 

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

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \PWM_3_c\, VCC_net_1, N_199_i_0, 
        \un1_pwm_enable_reg_i_0[0]_net_1\, GND_net_1, \PWM_2_c\, 
        N_208_i_0, \un1_pwm_enable_reg_1_i_0[0]_net_1\, \PWM_1_c\, 
        N_217_i_0, \un1_pwm_enable_reg_2_i_0[0]\, \PWM_0_c\, 
        N_226_i_0, \un1_pwm_enable_reg_3_i_0[0]\, 
        \un107_pwm_enable_reg_0_data_tmp[0]\, 
        \un107_pwm_enable_reg_0_data_tmp[1]\, 
        \un107_pwm_enable_reg_0_data_tmp[2]\, 
        \un107_pwm_enable_reg_0_data_tmp[3]\, 
        \un107_pwm_enable_reg_0_data_tmp[4]\, 
        \un107_pwm_enable_reg_0_data_tmp[5]\, 
        \un107_pwm_enable_reg_0_data_tmp[6]\, 
        un107_pwm_enable_reg, \un69_pwm_enable_reg_0_data_tmp[0]\, 
        \un69_pwm_enable_reg_0_data_tmp[1]\, 
        \un69_pwm_enable_reg_0_data_tmp[2]\, 
        \un69_pwm_enable_reg_0_data_tmp[3]\, 
        \un69_pwm_enable_reg_0_data_tmp[4]\, 
        \un69_pwm_enable_reg_0_data_tmp[5]\, 
        \un69_pwm_enable_reg_0_data_tmp[6]\, un69_pwm_enable_reg, 
        \un31_pwm_enable_reg_0_data_tmp[0]\, 
        \un31_pwm_enable_reg_0_data_tmp[1]\, 
        \un31_pwm_enable_reg_0_data_tmp[2]\, 
        \un31_pwm_enable_reg_0_data_tmp[3]\, 
        \un31_pwm_enable_reg_0_data_tmp[4]\, 
        \un31_pwm_enable_reg_0_data_tmp[5]\, 
        \un31_pwm_enable_reg_0_data_tmp[6]\, un31_pwm_enable_reg, 
        \un145_pwm_enable_reg_0_data_tmp[0]\, 
        \un145_pwm_enable_reg_0_data_tmp[1]\, 
        \un145_pwm_enable_reg_0_data_tmp[2]\, 
        \un145_pwm_enable_reg_0_data_tmp[3]\, 
        \un145_pwm_enable_reg_0_data_tmp[4]\, 
        \un145_pwm_enable_reg_0_data_tmp[5]\, 
        \un145_pwm_enable_reg_0_data_tmp[6]\, 
        un145_pwm_enable_reg, PWM_int_17_f0_27_i_a4_2, 
        PWM_int_27_f0_17_i_0_a2_0_0, PWM_int_37_f0_7_i_0_a2_0_0, 
        PWM_int_7_f0_37_i_a4_2, PWM_int_17_f0_27_i_a4_11, 
        PWM_int_17_f0_27_i_a4_10, PWM_int_17_f0_27_i_a4_8, 
        PWM_int_27_f0_17_i_0_a2_0_11, 
        PWM_int_27_f0_17_i_0_a2_0_10, PWM_int_27_f0_17_i_0_a2_0_9, 
        PWM_int_37_f0_7_i_0_a2_0_11, PWM_int_37_f0_7_i_0_a2_0_10, 
        PWM_int_37_f0_7_i_0_a2_0_9, PWM_int_7_f0_37_i_a4_11, 
        PWM_int_7_f0_37_i_a4_10, PWM_int_7_f0_37_i_a4_8, 
        un14_pwm_enable_reg_NE_11, un14_pwm_enable_reg_NE_10, 
        un14_pwm_enable_reg_NE_9, un14_pwm_enable_reg_NE_8, 
        PWM_int_17_f0_27_i_a4_13, PWM_int_27_f0_17_i_0_a2_0_12, 
        PWM_int_37_f0_7_i_0_a2_0_12, PWM_int_7_f0_37_i_a4_13, 
        PWM_int_17_f0_27_i_a4_14, PWM_int_7_f0_37_i_a4_14, 
        un14_pwm_enable_reg_NE, N_97, N_99, N_96, N_98
         : std_logic;

begin 

    PWM_3_c <= \PWM_3_c\;
    PWM_2_c <= \PWM_2_c\;
    PWM_1_c <= \PWM_1_c\;
    PWM_0_c <= \PWM_0_c\;

    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(46), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(45), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(34), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(33), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un107_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(60), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(59), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(50), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(49), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un145_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(24), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(23), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_5[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(30), B => pwm_negedge_reg(29), 
        C => pwm_negedge_reg(28), D => pwm_negedge_reg(27), Y => 
        PWM_int_17_f0_27_i_a4_11);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(16), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(15), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => un31_pwm_enable_reg);
    
    \PWM_int_RNO_0[2]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un69_pwm_enable_reg, B => pwm_enable_reg(2), 
        C => prescale_cnt, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_2_i_0[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(28), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(27), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_11\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(15), B => period_cnt(14), C => 
        period_cnt(13), D => period_cnt(12), Y => 
        un14_pwm_enable_reg_NE_11);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(10), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(9), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(30), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(29), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_0[1]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un31_pwm_enable_reg, B => pwm_enable_reg(1), 
        C => prescale_cnt, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_3_i_0[0]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_int_RNO_3[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(26), B => pwm_negedge_reg(25), 
        C => pwm_negedge_reg(24), D => pwm_negedge_reg(23), Y => 
        PWM_int_17_f0_27_i_a4_10);
    
    \PWM_int_RNO_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => prescale_cnt, B => \PWM_2_c\, Y => N_98);
    
    \PWM_int_RNO_6[2]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(17), B => \PWM_1_c\, C => 
        pwm_negedge_reg(18), Y => PWM_int_17_f0_27_i_a4_8);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(44), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(43), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(22), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(21), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_9\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(7), B => period_cnt(6), C => 
        period_cnt(5), D => period_cnt(4), Y => 
        un14_pwm_enable_reg_NE_9);
    
    \PWM_int_RNO_2[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(46), B => pwm_negedge_reg(45), 
        C => pwm_negedge_reg(44), D => pwm_negedge_reg(43), Y => 
        PWM_int_27_f0_17_i_0_a2_0_9);
    
    \PWM_int_RNO_3[3]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(41), B => pwm_negedge_reg(35), 
        C => \PWM_2_c\, D => PWM_int_27_f0_17_i_0_a2_0_0, Y => 
        PWM_int_27_f0_17_i_0_a2_0_12);
    
    \PWM_int_RNO_4[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(53), B => pwm_negedge_reg(51), 
        C => pwm_negedge_reg(50), D => pwm_negedge_reg(49), Y => 
        PWM_int_37_f0_7_i_0_a2_0_11);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(6), B => period_cnt(4), C => 
        period_cnt(5), D => pwm_negedge_reg(5), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un14_pwm_enable_reg_NE_11, B => 
        un14_pwm_enable_reg_NE_10, C => un14_pwm_enable_reg_NE_9, 
        D => un14_pwm_enable_reg_NE_8, Y => 
        un14_pwm_enable_reg_NE);
    
    \PWM_int_RNO_6[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(1), B => \PWM_0_c\, C => 
        pwm_negedge_reg(2), Y => PWM_int_7_f0_37_i_a4_8);
    
    \PWM_int_RNO[4]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_96, C => 
        pwm_enable_reg(4), D => N_97, Y => N_199_i_0);
    
    \PWM_int_RNO_5[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(42), B => pwm_negedge_reg(40), 
        C => pwm_negedge_reg(39), D => pwm_negedge_reg(37), Y => 
        PWM_int_27_f0_17_i_0_a2_0_10);
    
    \PWM_int_RNO_4[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(38), B => pwm_negedge_reg(36), 
        C => pwm_negedge_reg(34), D => pwm_negedge_reg(33), Y => 
        PWM_int_27_f0_17_i_0_a2_0_11);
    
    \PWM_int[4]\ : SLE
      port map(D => N_199_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_i_0[0]_net_1\, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \PWM_3_c\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(52), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(51), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(36), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(35), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(2), B => period_cnt(0), C => 
        period_cnt(1), D => pwm_negedge_reg(1), FCI => VCC_net_1, 
        S => OPEN, Y => OPEN, FCO => 
        \un31_pwm_enable_reg_0_data_tmp[0]\);
    
    \PWM_int[1]\ : SLE
      port map(D => N_226_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_3_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \PWM_0_c\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(54), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(53), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(32), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(31), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => un69_pwm_enable_reg);
    
    \PWM_int_RNO_6[4]\ : CFG2
      generic map(INIT => x"1")

      port map(A => pwm_negedge_reg(62), B => pwm_negedge_reg(63), 
        Y => PWM_int_37_f0_7_i_0_a2_0_0);
    
    \PWM_int_RNO[1]\ : CFG4
      generic map(INIT => x"002A")

      port map(A => pwm_enable_reg(1), B => 
        PWM_int_7_f0_37_i_a4_13, C => PWM_int_7_f0_37_i_a4_14, D
         => un14_pwm_enable_reg_NE, Y => N_226_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PWM_int_RNO_3[4]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(57), B => pwm_negedge_reg(52), 
        C => \PWM_3_c\, D => PWM_int_37_f0_7_i_0_a2_0_0, Y => 
        PWM_int_37_f0_7_i_0_a2_0_12);
    
    \PWM_int[2]\ : SLE
      port map(D => N_217_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_2_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \PWM_1_c\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(56), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(55), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_3[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(10), B => pwm_negedge_reg(9), 
        C => pwm_negedge_reg(8), D => pwm_negedge_reg(7), Y => 
        PWM_int_7_f0_37_i_a4_10);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_8\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(3), B => period_cnt(2), C => 
        period_cnt(1), D => period_cnt(0), Y => 
        un14_pwm_enable_reg_NE_8);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(8), B => period_cnt(6), C => 
        period_cnt(7), D => pwm_negedge_reg(7), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[3]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_10\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(11), B => period_cnt(10), C => 
        period_cnt(9), D => period_cnt(8), Y => 
        un14_pwm_enable_reg_NE_10);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(4), B => period_cnt(2), C => 
        period_cnt(3), D => pwm_negedge_reg(3), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(12), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(11), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[5]\);
    
    \PWM_int_RNO[2]\ : CFG4
      generic map(INIT => x"040C")

      port map(A => PWM_int_17_f0_27_i_a4_13, B => 
        pwm_enable_reg(2), C => un14_pwm_enable_reg_NE, D => 
        PWM_int_17_f0_27_i_a4_14, Y => N_217_i_0);
    
    \un1_pwm_enable_reg_i_0[0]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un145_pwm_enable_reg, B => pwm_enable_reg(4), 
        C => prescale_cnt, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_i_0[0]_net_1\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(42), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(41), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(40), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(39), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_6[3]\ : CFG2
      generic map(INIT => x"1")

      port map(A => pwm_negedge_reg(47), B => pwm_negedge_reg(48), 
        Y => PWM_int_27_f0_17_i_0_a2_0_0);
    
    \PWM_int_RNO_1[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_27_f0_17_i_0_a2_0_9, B => 
        PWM_int_27_f0_17_i_0_a2_0_12, C => 
        PWM_int_27_f0_17_i_0_a2_0_11, D => 
        PWM_int_27_f0_17_i_0_a2_0_10, Y => N_99);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(64), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(63), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => un145_pwm_enable_reg);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(58), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(57), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(26), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(25), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_1[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_37_f0_7_i_0_a2_0_9, B => 
        PWM_int_37_f0_7_i_0_a2_0_12, C => 
        PWM_int_37_f0_7_i_0_a2_0_11, D => 
        PWM_int_37_f0_7_i_0_a2_0_10, Y => N_97);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(38), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(37), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[2]\);
    
    \PWM_int_RNO_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => prescale_cnt, B => \PWM_3_c\, Y => N_96);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(20), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(19), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[1]\);
    
    \PWM_int_RNO_4[2]\ : CFG2
      generic map(INIT => x"1")

      port map(A => pwm_negedge_reg(21), B => pwm_negedge_reg(22), 
        Y => PWM_int_17_f0_27_i_a4_2);
    
    \PWM_int_RNO_1[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(3), B => pwm_negedge_reg(4), 
        C => PWM_int_7_f0_37_i_a4_10, D => PWM_int_7_f0_37_i_a4_2, 
        Y => PWM_int_7_f0_37_i_a4_13);
    
    \PWM_int_RNO_4[1]\ : CFG2
      generic map(INIT => x"1")

      port map(A => pwm_negedge_reg(5), B => pwm_negedge_reg(6), 
        Y => PWM_int_7_f0_37_i_a4_2);
    
    \un1_pwm_enable_reg_1_i_0[0]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un107_pwm_enable_reg, B => pwm_enable_reg(3), 
        C => prescale_cnt, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_1_i_0[0]_net_1\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(48), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(47), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => un107_pwm_enable_reg);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(18), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(17), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un69_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(14), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(13), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_2[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(32), B => pwm_negedge_reg(31), 
        C => PWM_int_17_f0_27_i_a4_11, D => 
        PWM_int_17_f0_27_i_a4_8, Y => PWM_int_17_f0_27_i_a4_14);
    
    \PWM_int_RNO_2[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(61), B => pwm_negedge_reg(60), 
        C => pwm_negedge_reg(59), D => pwm_negedge_reg(58), Y => 
        PWM_int_37_f0_7_i_0_a2_0_9);
    
    \PWM_int_RNO[3]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_98, C => 
        pwm_enable_reg(3), D => N_99, Y => N_208_i_0);
    
    \PWM_int_RNO_2[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(16), B => pwm_negedge_reg(15), 
        C => PWM_int_7_f0_37_i_a4_11, D => PWM_int_7_f0_37_i_a4_8, 
        Y => PWM_int_7_f0_37_i_a4_14);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(62), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(61), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_1[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(19), B => pwm_negedge_reg(20), 
        C => PWM_int_17_f0_27_i_a4_10, D => 
        PWM_int_17_f0_27_i_a4_2, Y => PWM_int_17_f0_27_i_a4_13);
    
    \PWM_int_RNO_5[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(14), B => pwm_negedge_reg(13), 
        C => pwm_negedge_reg(12), D => pwm_negedge_reg(11), Y => 
        PWM_int_7_f0_37_i_a4_11);
    
    \PWM_int[3]\ : SLE
      port map(D => N_208_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_1_i_0[0]_net_1\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \PWM_2_c\);
    
    \PWM_int_RNO_5[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(64), B => pwm_negedge_reg(56), 
        C => pwm_negedge_reg(55), D => pwm_negedge_reg(54), Y => 
        PWM_int_37_f0_7_i_0_a2_0_10);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity reg_if is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(15 downto 0);
          pwm_negedge_reg                             : out   std_logic_vector(64 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          PRDATA_generated_i_m                        : out   std_logic_vector(3 to 3);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2);
          PWM_STRETCH                                 : in    std_logic_vector(3 downto 0);
          PRDATA_generated_i_m_0_1                    : out   std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                       : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_xx                      : out   std_logic_vector(2 to 2);
          PRDATA_generated_i_m_c                      : out   std_logic_vector(7 to 7);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13);
          PRDATA_generated_1_RNI9N3B1                 : out   std_logic_vector(1 to 1);
          PRDATA_regif_1_0_iv_0_1                     : out   std_logic;
          PRDATA_regif_1_0_iv_0_2                     : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0              : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          un97_psel_4                                 : out   std_logic;
          un78_psel                                   : out   std_logic;
          PRDATA_generated_sn_N_4                     : out   std_logic;
          N_259                                       : out   std_logic;
          PRDATA_generated_sn_N_7_mux                 : out   std_logic;
          un7_prdata_regif                            : out   std_logic;
          N_196                                       : out   std_logic;
          N_197                                       : out   std_logic;
          N_198                                       : out   std_logic;
          N_199                                       : out   std_logic;
          N_119                                       : out   std_logic;
          N_54                                        : out   std_logic;
          PRDATA_m4_e_0_0                             : out   std_logic;
          N_105                                       : in    std_logic;
          prdata_typ20                                : out   std_logic;
          N_110                                       : in    std_logic;
          un13_psel_0                                 : in    std_logic;
          PRDATA_generated_sn_m5_0                    : out   std_logic;
          N_144                                       : out   std_logic;
          N_143                                       : out   std_logic;
          N_170                                       : out   std_logic;
          N_152                                       : out   std_logic;
          N_156                                       : out   std_logic;
          N_189                                       : out   std_logic;
          N_190                                       : out   std_logic;
          N_121                                       : in    std_logic
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \pwm_negedge_reg[49]\, VCC_net_1, 
        \psh_negedge_reg_1_sqmuxa\, GND_net_1, 
        \pwm_negedge_reg[50]\, \pwm_negedge_reg[51]\, 
        \pwm_negedge_reg[52]\, \pwm_negedge_reg[53]\, 
        \pwm_negedge_reg[54]\, \pwm_negedge_reg[55]\, 
        \pwm_negedge_reg[56]\, \pwm_negedge_reg[59]\, 
        \pwm_negedge_reg[60]\, \pwm_negedge_reg[61]\, 
        \pwm_negedge_reg[62]\, \pwm_negedge_reg[63]\, 
        \pwm_negedge_reg[64]\, \pwm_negedge_reg[33]\, 
        \psh_negedge_reg_1_sqmuxa_1\, \pwm_negedge_reg[34]\, 
        \pwm_negedge_reg[35]\, \pwm_negedge_reg[36]\, 
        \pwm_negedge_reg[37]\, \pwm_negedge_reg[38]\, 
        \pwm_negedge_reg[39]\, \pwm_negedge_reg[40]\, 
        \pwm_negedge_reg[43]\, \pwm_negedge_reg[44]\, 
        \pwm_negedge_reg[45]\, \pwm_negedge_reg[46]\, 
        \pwm_negedge_reg[47]\, \pwm_negedge_reg[48]\, 
        \pwm_negedge_reg[17]\, \psh_negedge_reg_1_sqmuxa_2\, 
        \pwm_negedge_reg[18]\, \pwm_negedge_reg[19]\, 
        \pwm_negedge_reg[20]\, \pwm_negedge_reg[21]\, 
        \pwm_negedge_reg[22]\, \pwm_negedge_reg[23]\, 
        \pwm_negedge_reg[24]\, \pwm_negedge_reg[25]\, 
        \pwm_negedge_reg[27]\, \pwm_negedge_reg[28]\, 
        \pwm_negedge_reg[29]\, \pwm_negedge_reg[30]\, 
        \pwm_negedge_reg[31]\, \pwm_negedge_reg[32]\, 
        \pwm_negedge_reg[1]\, \psh_negedge_reg_1_sqmuxa_3\, 
        \pwm_negedge_reg[2]\, \pwm_negedge_reg[3]\, 
        \pwm_negedge_reg[4]\, \pwm_negedge_reg[5]\, 
        \pwm_negedge_reg[6]\, \pwm_negedge_reg[7]\, 
        \pwm_negedge_reg[8]\, \pwm_negedge_reg[9]\, 
        \pwm_negedge_reg[11]\, \pwm_negedge_reg[12]\, 
        \pwm_negedge_reg[13]\, \pwm_negedge_reg[14]\, 
        \pwm_negedge_reg[15]\, \pwm_negedge_reg[16]\, 
        \sync_update\, \sync_update_0_sqmuxa\, 
        \pwm_enable_reg[1]\, \psh_enable_reg1_1_sqmuxa\, 
        \pwm_enable_reg[2]\, \pwm_enable_reg[3]\, 
        \pwm_enable_reg[4]\, \un97_psel_4\, \un78_psel\, 
        \PRDATA_generated_sn_N_4\, \N_259\, 
        \PRDATA_generated_sn_N_7_mux\, 
        \PRDATA_generated_i_m_xx_mm_ns_1[3]\, N_145, 
        \un7_prdata_regif\, N_261, N_151, 
        \PRDATA_generated_3_bm[12]_net_1\, 
        \PRDATA_generated_3_am[12]_net_1\, 
        \PRDATA_generated_3_bm[0]_net_1\, 
        \PRDATA_generated_3_am[0]_net_1\, N_184, 
        \PRDATA_generated_3_bm[13]_net_1\, 
        \PRDATA_generated_3_am[13]_net_1\, 
        \PRDATA_generated_3_bm[14]_net_1\, 
        \PRDATA_generated_3_am[14]_net_1\, 
        \PRDATA_generated_3_bm[15]_net_1\, 
        \PRDATA_generated_3_am[15]_net_1\, \N_119\, \N_54\, 
        \un11_psel_0\, un59_psel_1, prdata_generated48_1, N_266, 
        un42_psel_4, un25_psel, prdata_typ23, prdata_typ21, N_171, 
        N_153, N_150, N_168, N_172, 
        \PRDATA_regif_1_0_iv_0[3]_net_1\, 
        \PRDATA_generated_sn_m5_0\, sync_update_m, N_142, N_177, 
        N_173, N_159, N_155, N_158, N_176, N_149, N_167, N_154, 
        \PRDATA_regif_1_0_iv_0[0]_net_1\, 
        \PRDATA_regif_1_0_iv_0_1\, \PRDATA_regif_1_0_iv_0_2\, 
        N_186 : std_logic;

begin 

    pwm_negedge_reg(64) <= \pwm_negedge_reg[64]\;
    pwm_negedge_reg(63) <= \pwm_negedge_reg[63]\;
    pwm_negedge_reg(62) <= \pwm_negedge_reg[62]\;
    pwm_negedge_reg(61) <= \pwm_negedge_reg[61]\;
    pwm_negedge_reg(60) <= \pwm_negedge_reg[60]\;
    pwm_negedge_reg(59) <= \pwm_negedge_reg[59]\;
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
    PRDATA_regif_1_0_iv_0_1 <= \PRDATA_regif_1_0_iv_0_1\;
    PRDATA_regif_1_0_iv_0_2 <= \PRDATA_regif_1_0_iv_0_2\;
    un97_psel_4 <= \un97_psel_4\;
    un78_psel <= \un78_psel\;
    PRDATA_generated_sn_N_4 <= \PRDATA_generated_sn_N_4\;
    N_259 <= \N_259\;
    PRDATA_generated_sn_N_7_mux <= \PRDATA_generated_sn_N_7_mux\;
    un7_prdata_regif <= \un7_prdata_regif\;
    N_119 <= \N_119\;
    N_54 <= \N_54\;
    PRDATA_generated_sn_m5_0 <= \PRDATA_generated_sn_m5_0\;

    \psh_negedge_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[4]\);
    
    \PRDATA_generated_3_am[14]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[63]\, D => \pwm_negedge_reg[47]\, Y => 
        \PRDATA_generated_3_am[14]_net_1\);
    
    \PRDATA_regif_1_0_iv_0_RNO[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un25_psel, B => \sync_update\, Y => 
        sync_update_m);
    
    un25_psel_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => N_105, D => \N_119\, 
        Y => un25_psel);
    
    \PRDATA_generated_3_ns[12]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \PRDATA_generated_3_bm[12]_net_1\, B => 
        \PRDATA_generated_3_am[12]_net_1\, C => 
        \PRDATA_generated_sn_N_4\, Y => N_196);
    
    \PRDATA_generated_0[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(1), C => prdata_generated48_1, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_143);
    
    \psh_negedge_reg[39]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[39]\);
    
    \psh_negedge_reg[48]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[48]\);
    
    \psh_negedge_reg[8]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[8]\);
    
    psh_negedge_reg_1_sqmuxa_3 : CFG4
      generic map(INIT => x"4000")

      port map(A => \N_54\, B => N_121, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        un42_psel_4, Y => \psh_negedge_reg_1_sqmuxa_3\);
    
    \psh_negedge_reg[29]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[29]\);
    
    \PRDATA_generated_0[3]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(3), C => prdata_generated48_1, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_145);
    
    \G60b.prdata_typ20_0_a2\ : CFG4
      generic map(INIT => x"0100")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => \N_54\, D => N_105, 
        Y => prdata_typ20);
    
    \PRDATA_generated_2[5]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[38]\, B => \un97_psel_4\, C
         => \pwm_negedge_reg[54]\, Y => N_171);
    
    \psh_negedge_reg[61]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[61]\);
    
    \psh_negedge_reg[35]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[35]\);
    
    \psh_negedge_reg[19]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[19]\);
    
    \PRDATA_regif_1_0_iv_0[3]\ : CFG4
      generic map(INIT => x"FF04")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        un13_psel_0, C => \N_54\, D => un25_psel, Y => 
        \PRDATA_regif_1_0_iv_0[3]_net_1\);
    
    \psh_enable_reg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[4]\);
    
    un25_psel_0_a2_0 : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \N_119\);
    
    \psh_negedge_reg[25]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[25]\);
    
    \PRDATA_regif_1_0_iv_0[2]\ : CFG4
      generic map(INIT => x"FF08")

      port map(A => \pwm_enable_reg[3]\, B => \un11_psel_0\, C
         => \N_54\, D => prdata_typ21, Y => 
        \PRDATA_regif_1_0_iv_0_2\);
    
    \PRDATA_generated_3[6]\ : CFG4
      generic map(INIT => x"FD20")

      port map(A => \N_259\, B => \un78_psel\, C => N_154, D => 
        N_172, Y => N_190);
    
    \xhdl28.xhdl29.un7_prdata_regif_0\ : CFG2
      generic map(INIT => x"E")

      port map(A => un25_psel, B => N_266, Y => 
        \un7_prdata_regif\);
    
    \PRDATA_generated_2[7]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[56]\, D => \pwm_negedge_reg[40]\, Y => 
        N_173);
    
    \G1.4.un97_psel_0_o2_RNIVVND\ : CFG3
      generic map(INIT => x"40")

      port map(A => \un78_psel\, B => \N_259\, C => 
        \PRDATA_generated_sn_m5_0\, Y => 
        \PRDATA_generated_sn_N_7_mux\);
    
    \psh_negedge_reg[15]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[15]\);
    
    \psh_negedge_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[3]\);
    
    \G1.1.un42_psel_3_0_o2\ : CFG2
      generic map(INIT => x"E")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \N_54\);
    
    \PRDATA_generated_2[2]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[35]\, B => \un97_psel_4\, C
         => \pwm_negedge_reg[51]\, Y => N_168);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \psh_negedge_reg[52]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[52]\);
    
    \psh_negedge_reg[50]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[50]\);
    
    \psh_negedge_reg[63]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[63]\);
    
    \PRDATA_m4_e_0_0\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => PRDATA_m4_e_0_0);
    
    \psh_negedge_reg[36]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[36]\);
    
    \PRDATA_generated_3_ns[15]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \PRDATA_generated_3_bm[15]_net_1\, B => 
        \PRDATA_generated_3_am[15]_net_1\, C => 
        \PRDATA_generated_sn_N_4\, Y => N_199);
    
    \psh_negedge_reg[26]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(26));
    
    sync_update_0_sqmuxa : CFG3
      generic map(INIT => x"80")

      port map(A => N_121, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        un25_psel, Y => \sync_update_0_sqmuxa\);
    
    \psh_negedge_reg[31]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[31]\);
    
    \psh_negedge_reg[16]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[16]\);
    
    \G1.3.un78_psel_0_a2_RNI2ISF\ : CFG4
      generic map(INIT => x"3331")

      port map(A => \un97_psel_4\, B => \un78_psel\, C => 
        CoreAPB3_0_APBmslave0_PADDR(7), D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => 
        \PRDATA_generated_sn_N_4\);
    
    \PRDATA_generated_3_ns[13]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \PRDATA_generated_3_bm[13]_net_1\, B => 
        \PRDATA_generated_3_am[13]_net_1\, C => 
        \PRDATA_generated_sn_N_4\, Y => N_197);
    
    \PRDATA_generated[11]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => N_177, B => N_159, C => 
        \PRDATA_generated_sn_N_4\, D => 
        \PRDATA_generated_sn_m5_0\, Y => 
        CoreAPB3_0_APBmslave3_PRDATA_11);
    
    \psh_negedge_reg[21]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[21]\);
    
    \psh_negedge_reg[64]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[64]\);
    
    \PRDATA_generated_1[2]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \pwm_negedge_reg[3]\, B => un42_psel_4, C => 
        \pwm_negedge_reg[19]\, Y => N_150);
    
    \psh_negedge_reg[42]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(42));
    
    \psh_negedge_reg[40]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[40]\);
    
    \psh_negedge_reg[11]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[11]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \psh_negedge_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[2]\);
    
    \PRDATA_generated_1[10]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[27]\, D => \pwm_negedge_reg[11]\, Y => 
        N_158);
    
    \PRDATA_generated_3_ns[0]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \PRDATA_generated_3_bm[0]_net_1\, B => 
        \PRDATA_generated_3_am[0]_net_1\, C => 
        \PRDATA_generated_sn_N_4\, Y => N_184);
    
    \PRDATA_generated_3_bm[15]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[32]\, D => \pwm_negedge_reg[16]\, Y => 
        \PRDATA_generated_3_bm[15]_net_1\);
    
    \psh_negedge_reg[59]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[59]\);
    
    \psh_negedge_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[5]\);
    
    \PRDATA_generated_3_am[0]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[49]\, D => \pwm_negedge_reg[33]\, Y => 
        \PRDATA_generated_3_am[0]_net_1\);
    
    \PRDATA_generated_3_am[13]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[62]\, D => \pwm_negedge_reg[46]\, Y => 
        \PRDATA_generated_3_am[13]_net_1\);
    
    \psh_negedge_reg[55]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[55]\);
    
    \xhdl28.xhdl29.un7_prdata_regif_0_RNO\ : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => N_266);
    
    \PRDATA_generated_1[5]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \pwm_negedge_reg[6]\, B => un42_psel_4, C => 
        \pwm_negedge_reg[22]\, Y => N_153);
    
    sync_update : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \sync_update_0_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \sync_update\);
    
    \PRDATA_generated_1_RNIPJV71[7]\ : CFG4
      generic map(INIT => x"0035")

      port map(A => N_173, B => N_155, C => 
        \PRDATA_generated_sn_N_4\, D => \un7_prdata_regif\, Y => 
        PRDATA_generated_i_m_c(7));
    
    \psh_negedge_reg[33]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[33]\);
    
    \psh_negedge_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[7]\);
    
    \G1.4.un97_psel_0_o2\ : CFG3
      generic map(INIT => x"FB")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        \un97_psel_4\, C => CoreAPB3_0_APBmslave0_PADDR(7), Y => 
        \N_259\);
    
    \psh_negedge_reg[23]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[23]\);
    
    \PRDATA_generated_3_am[12]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[61]\, D => \pwm_negedge_reg[45]\, Y => 
        \PRDATA_generated_3_am[12]_net_1\);
    
    psh_negedge_reg_1_sqmuxa : CFG3
      generic map(INIT => x"08")

      port map(A => N_121, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        \N_259\, Y => \psh_negedge_reg_1_sqmuxa\);
    
    psh_enable_reg1_1_sqmuxa : CFG4
      generic map(INIT => x"4000")

      port map(A => \N_54\, B => N_121, C => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        \un11_psel_0\, Y => \psh_enable_reg1_1_sqmuxa\);
    
    \psh_negedge_reg[13]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[13]\);
    
    \psh_negedge_reg[37]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[37]\);
    
    \psh_negedge_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[1]\);
    
    \psh_negedge_reg[49]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[49]\);
    
    \psh_negedge_reg[27]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[27]\);
    
    \PRDATA_generated_1[1]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[18]\, D => \pwm_negedge_reg[2]\, Y => 
        N_149);
    
    \PRDATA_generated[10]\ : CFG4
      generic map(INIT => x"0ACA")

      port map(A => N_176, B => N_158, C => 
        \PRDATA_generated_sn_N_4\, D => 
        \PRDATA_generated_sn_m5_0\, Y => 
        CoreAPB3_0_APBmslave3_PRDATA_10);
    
    \PRDATA_regif_1_0_iv_0[0]\ : CFG4
      generic map(INIT => x"FF08")

      port map(A => \pwm_enable_reg[1]\, B => \un11_psel_0\, C
         => \N_54\, D => sync_update_m, Y => 
        \PRDATA_regif_1_0_iv_0[0]_net_1\);
    
    \PRDATA_generated_3_am[15]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[64]\, D => \pwm_negedge_reg[48]\, Y => 
        \PRDATA_generated_3_am[15]_net_1\);
    
    \PRDATA_generated_1[11]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[28]\, D => \pwm_negedge_reg[12]\, Y => 
        N_159);
    
    \psh_negedge_reg[17]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[17]\);
    
    \psh_negedge_reg[34]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[34]\);
    
    \psh_negedge_reg[45]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[45]\);
    
    \PRDATA_regif_1_0_iv_xx[2]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \PRDATA_regif_1_0_iv_0_2\, B => N_186, Y => 
        PRDATA_regif_1_0_iv_xx(2));
    
    \psh_negedge_reg[24]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[24]\);
    
    \psh_negedge_reg[14]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[14]\);
    
    \PRDATA_generated_0[2]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(2), C => prdata_generated48_1, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_144);
    
    un11_psel_0 : CFG4
      generic map(INIT => x"0100")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un11_psel_0\);
    
    \psh_negedge_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[6]\);
    
    \psh_negedge_reg[56]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[56]\);
    
    \PRDATA_generated_1[6]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[23]\, D => \pwm_negedge_reg[7]\, Y => 
        N_154);
    
    \G60b.prdata_typ23_0_a2\ : CFG4
      generic map(INIT => x"0400")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => \N_54\, D => N_110, 
        Y => prdata_typ23);
    
    \PRDATA_generated_2_i_m2[3]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[52]\, D => \pwm_negedge_reg[36]\, Y => 
        N_261);
    
    \PRDATA_generated_0_RNIRBKU1[3]\ : CFG4
      generic map(INIT => x"004E")

      port map(A => \PRDATA_generated_sn_N_7_mux\, B => 
        \PRDATA_generated_i_m_xx_mm_ns_1[3]\, C => N_145, D => 
        \un7_prdata_regif\, Y => PRDATA_generated_i_m(3));
    
    \PRDATA_generated_1[7]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[24]\, D => \pwm_negedge_reg[8]\, Y => 
        N_155);
    
    \PRDATA_generated_3_bm[12]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[29]\, D => \pwm_negedge_reg[13]\, Y => 
        \PRDATA_generated_3_bm[12]_net_1\);
    
    \PRDATA_generated_2[4]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[53]\, D => \pwm_negedge_reg[37]\, Y => 
        N_170);
    
    \PRDATA_generated_3_bm[14]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[31]\, D => \pwm_negedge_reg[15]\, Y => 
        \PRDATA_generated_3_bm[14]_net_1\);
    
    \psh_negedge_reg[51]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[51]\);
    
    \PRDATA_regif_1_0_iv_1[3]\ : CFG4
      generic map(INIT => x"FF04")

      port map(A => \pwm_enable_reg[4]\, B => \un11_psel_0\, C
         => \N_54\, D => \PRDATA_regif_1_0_iv_0[3]_net_1\, Y => 
        PRDATA_regif_1_0_iv_1(3));
    
    \psh_negedge_reg[38]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[38]\);
    
    \G1.1.un42_psel_4_RNIJD9A\ : CFG3
      generic map(INIT => x"AB")

      port map(A => \N_54\, B => un59_psel_1, C => un42_psel_4, Y
         => \PRDATA_generated_sn_m5_0\);
    
    \PRDATA_generated_3_bm[13]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[30]\, D => \pwm_negedge_reg[14]\, Y => 
        \PRDATA_generated_3_bm[13]_net_1\);
    
    \psh_negedge_reg[28]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[28]\);
    
    \PRDATA_generated_1_RNILDA01[3]\ : CFG3
      generic map(INIT => x"1D")

      port map(A => N_261, B => \PRDATA_generated_sn_N_4\, C => 
        N_151, Y => \PRDATA_generated_i_m_xx_mm_ns_1[3]\);
    
    \psh_negedge_reg[18]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[18]\);
    
    \psh_enable_reg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[1]\);
    
    \psh_negedge_reg[62]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[62]\);
    
    \psh_negedge_reg[60]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[60]\);
    
    psh_negedge_reg_1_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => N_121, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        \un78_psel\, Y => \psh_negedge_reg_1_sqmuxa_1\);
    
    \psh_enable_reg1[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[3]\);
    
    \psh_enable_reg1[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[2]\);
    
    \psh_negedge_reg[46]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[46]\);
    
    \PRDATA_regif_1_0_iv_0[1]\ : CFG4
      generic map(INIT => x"FF08")

      port map(A => \pwm_enable_reg[2]\, B => \un11_psel_0\, C
         => \N_54\, D => prdata_typ21, Y => 
        \PRDATA_regif_1_0_iv_0_1\);
    
    \PRDATA_generated_3[5]\ : CFG4
      generic map(INIT => x"F2D0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => \N_54\, 
        C => N_153, D => N_171, Y => N_189);
    
    \psh_negedge_reg[41]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(41));
    
    \psh_negedge_reg[9]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[9]\);
    
    \PRDATA_generated_1[3]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[20]\, D => \pwm_negedge_reg[4]\, Y => 
        N_151);
    
    \PRDATA_generated_2[10]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[59]\, D => \pwm_negedge_reg[43]\, Y => 
        N_176);
    
    \psh_negedge_reg[53]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[53]\);
    
    \PRDATA_generated_1[4]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[21]\, D => \pwm_negedge_reg[5]\, Y => 
        N_152);
    
    \G60b.prdata_typ21_0_a2\ : CFG4
      generic map(INIT => x"0400")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => \N_54\, D => N_105, 
        Y => prdata_typ21);
    
    \psh_negedge_reg[57]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(57));
    
    \PRDATA_generated_3_bm[0]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[17]\, D => \pwm_negedge_reg[1]\, Y => 
        \PRDATA_generated_3_bm[0]_net_1\);
    
    \PRDATA_generated_2[6]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[39]\, B => \un97_psel_4\, C
         => \pwm_negedge_reg[55]\, Y => N_172);
    
    \G60b.prdata_typ23_0_a2_RNI6UMO\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => \N_54\, B => \un11_psel_0\, C => un25_psel, D
         => prdata_typ23, Y => PRDATA_generated_i_m_0_1(7));
    
    \PRDATA_generated_0_RNI3F1H1[0]\ : CFG4
      generic map(INIT => x"FFD8")

      port map(A => \PRDATA_generated_sn_N_7_mux\, B => N_142, C
         => N_184, D => \PRDATA_regif_1_0_iv_0[0]_net_1\, Y => 
        CoreAPB3_0_APBmslave3_PRDATA_0);
    
    \psh_negedge_reg[54]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[54]\);
    
    \G1.2.un59_psel_1\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => un59_psel_1);
    
    \PRDATA_generated_3_ns[14]\ : CFG3
      generic map(INIT => x"AC")

      port map(A => \PRDATA_generated_3_bm[14]_net_1\, B => 
        \PRDATA_generated_3_am[14]_net_1\, C => 
        \PRDATA_generated_sn_N_4\, Y => N_198);
    
    \PRDATA_generated_2[1]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[50]\, D => \pwm_negedge_reg[34]\, Y => 
        N_167);
    
    psh_negedge_reg_1_sqmuxa_2 : CFG4
      generic map(INIT => x"4000")

      port map(A => \N_54\, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        N_121, D => un59_psel_1, Y => 
        \psh_negedge_reg_1_sqmuxa_2\);
    
    \psh_negedge_reg[43]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[43]\);
    
    \psh_negedge_reg[32]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[32]\);
    
    \psh_negedge_reg[30]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[30]\);
    
    \PRDATA_generated_1_RNI9N3B1[1]\ : CFG4
      generic map(INIT => x"FFCA")

      port map(A => N_167, B => N_149, C => 
        \PRDATA_generated_sn_N_4\, D => \PRDATA_regif_1_0_iv_0_1\, 
        Y => PRDATA_generated_1_RNI9N3B1(1));
    
    \psh_negedge_reg[22]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[22]\);
    
    \psh_negedge_reg[20]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_2\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[20]\);
    
    \G1.1.un42_psel_4\ : CFG4
      generic map(INIT => x"0020")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => un42_psel_4);
    
    \G64.prdata_generated48_1\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => prdata_generated48_1);
    
    \G1.3.un78_psel_0_a2\ : CFG4
      generic map(INIT => x"0800")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => \N_54\, D => N_105, 
        Y => \un78_psel\);
    
    \psh_negedge_reg[12]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[12]\);
    
    \psh_negedge_reg[10]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_3\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(10));
    
    \PRDATA_generated_2[11]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => \un97_psel_4\, C => 
        \pwm_negedge_reg[60]\, D => \pwm_negedge_reg[44]\, Y => 
        N_177);
    
    \PRDATA_generated_1[8]\ : CFG4
      generic map(INIT => x"FB40")

      port map(A => \N_54\, B => un59_psel_1, C => 
        \pwm_negedge_reg[25]\, D => \pwm_negedge_reg[9]\, Y => 
        N_156);
    
    \psh_negedge_reg[47]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[47]\);
    
    \PRDATA_generated_0[0]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(0), C => prdata_generated48_1, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_142);
    
    \psh_negedge_reg[58]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(58));
    
    \G1.4.un97_psel_4\ : CFG4
      generic map(INIT => x"0800")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un97_psel_4\);
    
    \psh_negedge_reg[44]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => \psh_negedge_reg_1_sqmuxa_1\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[44]\);
    
    \PRDATA_generated_3[2]\ : CFG4
      generic map(INIT => x"F2D0")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => \N_54\, 
        C => N_150, D => N_168, Y => N_186);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity timebase is

    port( period_cnt      : out   std_logic_vector(15 downto 0);
          prescale_cnt_1z : out   std_logic;
          MSS_READY       : in    std_logic;
          FAB_CCC_GL0     : in    std_logic
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

    signal \period_cnt[0]\, VCC_net_1, \period_cnt_int_lm[0]\, 
        period_cnt_inte, GND_net_1, \period_cnt[1]\, 
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
        \period_cnt_int_lm[15]\, \prescale_cnt[0]_net_1\, 
        \prescale_cnt_s[0]\, \prescale_cnt[1]_net_1\, 
        \prescale_cnt_s[1]\, \prescale_cnt[2]_net_1\, 
        \prescale_cnt_s[2]\, \prescale_cnt[3]_net_1\, 
        \prescale_cnt_s[3]\, \prescale_cnt[4]_net_1\, 
        \prescale_cnt_s[4]\, \prescale_cnt[5]_net_1\, 
        \prescale_cnt_s[5]\, \prescale_cnt[6]_net_1\, 
        \prescale_cnt_s[6]\, \prescale_cnt[7]_net_1\, 
        \prescale_cnt_s[7]\, \prescale_cnt[8]_net_1\, 
        \prescale_cnt_s[8]\, \prescale_cnt[9]_net_1\, 
        \prescale_cnt_s[9]\, \prescale_cnt[10]_net_1\, 
        \prescale_cnt_s[10]\, \prescale_cnt[11]_net_1\, 
        \prescale_cnt_s[11]\, \prescale_cnt[12]_net_1\, 
        \prescale_cnt_s[12]\, \prescale_cnt[13]_net_1\, 
        \prescale_cnt_s[13]\, \prescale_cnt[14]_net_1\, 
        \prescale_cnt_s[14]\, \prescale_cnt[15]_net_1\, 
        \prescale_cnt_s[15]\, \prescale_cnt_cry_cy[0]\, 
        sync_pulse_1lto15_3_RNIGUTE2_Y, \sync_pulse_1lto15_3\, 
        sync_pulse_1lt15, \prescale_cnt_cry[0]\, 
        \prescale_cnt_qxu_1[0]_net_1\, \prescale_cnt_cry[1]\, 
        \prescale_cnt_cry[2]\, \prescale_cnt_1z\, 
        \prescale_cnt_cry[3]\, \prescale_cnt_cry[4]\, 
        \prescale_cnt_cry[5]\, \prescale_cnt_cry[6]\, 
        \prescale_cnt_cry[7]\, \prescale_cnt_cry[8]\, 
        \prescale_cnt_cry[9]\, \prescale_cnt_cry[10]\, 
        \prescale_cnt_cry[11]\, \prescale_cnt_cry[12]\, 
        \prescale_cnt_cry[13]\, \prescale_cnt_cry[14]\, 
        period_cnt_int_s_101_FCO, \period_cnt_int_cry[1]_net_1\, 
        \period_cnt_int_s[1]\, \period_cnt_int_cry[2]_net_1\, 
        \period_cnt_int_s[2]\, \period_cnt_int_cry[3]_net_1\, 
        \period_cnt_int_s[3]\, \period_cnt_int_cry[4]_net_1\, 
        \period_cnt_int_s[4]\, \period_cnt_int_cry[5]_net_1\, 
        \period_cnt_int_s[5]\, \period_cnt_int_cry[6]_net_1\, 
        \period_cnt_int_s[6]\, \period_cnt_int_cry[7]_net_1\, 
        \period_cnt_int_s[7]\, \period_cnt_int_cry[8]_net_1\, 
        \period_cnt_int_s[8]\, \period_cnt_int_cry[9]_net_1\, 
        \period_cnt_int_s[9]\, \period_cnt_int_cry[10]_net_1\, 
        \period_cnt_int_s[10]\, \period_cnt_int_cry[11]_net_1\, 
        \period_cnt_int_s[11]\, \period_cnt_int_cry[12]_net_1\, 
        \period_cnt_int_s[12]\, \period_cnt_int_cry[13]_net_1\, 
        \period_cnt_int_s[13]\, \period_cnt_int_s[15]_net_1\, 
        \period_cnt_int_cry[14]_net_1\, \period_cnt_int_s[14]\, 
        un1_period_cnt_int, g0_1, sync_pulse_1lto9_1, 
        \un1_period_cnt_intlto15_5\, \un1_period_cnt_intlto15_4\, 
        \un14_prescale_cnt_NE_8\, \un14_prescale_cnt_NE_7\, 
        \un14_prescale_cnt_NE_6\, un1_period_cnt_intlt6, 
        un1_period_cnt_intlt7, \un14_prescale_cnt_NE\
         : std_logic;

begin 

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
    prescale_cnt_1z <= \prescale_cnt_1z\;

    \period_cnt_int_lm_0[15]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[15]_net_1\, C => un1_period_cnt_int, Y
         => \period_cnt_int_lm[15]\);
    
    \period_cnt_int[0]\ : SLE
      port map(D => \period_cnt_int_lm[0]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[0]\);
    
    \prescale_cnt[10]\ : SLE
      port map(D => \prescale_cnt_s[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[10]_net_1\);
    
    \period_cnt_int_lm_0[4]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[4]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[4]\);
    
    \period_cnt_int_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[2]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[1]_net_1\, S => \period_cnt_int_s[2]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[2]_net_1\);
    
    \prescale_cnt_RNI5P7KF[13]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[13]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[12]\, S => \prescale_cnt_s[13]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[13]\);
    
    \period_cnt_int_lm_0[5]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[5]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[5]\);
    
    \period_cnt_int[2]\ : SLE
      port map(D => \period_cnt_int_lm[2]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[2]\);
    
    \period_cnt_int_cry[14]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[14]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[13]_net_1\, S => 
        \period_cnt_int_s[14]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[14]_net_1\);
    
    sync_pulse_1lto15_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \prescale_cnt[15]_net_1\, B => 
        \prescale_cnt[12]_net_1\, C => \prescale_cnt[11]_net_1\, 
        D => \prescale_cnt[10]_net_1\, Y => \sync_pulse_1lto15_3\);
    
    \period_cnt_int_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[1]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        period_cnt_int_s_101_FCO, S => \period_cnt_int_s[1]\, Y
         => OPEN, FCO => \period_cnt_int_cry[1]_net_1\);
    
    un1_period_cnt_intlto15_5 : CFG4
      generic map(INIT => x"0001")

      port map(A => \period_cnt[14]\, B => \period_cnt[13]\, C
         => \period_cnt[12]\, D => \period_cnt[11]\, Y => 
        \un1_period_cnt_intlto15_5\);
    
    sync_pulse_1lto15 : CFG4
      generic map(INIT => x"1000")

      port map(A => \prescale_cnt[14]_net_1\, B => 
        \prescale_cnt[13]_net_1\, C => \sync_pulse_1lto15_3\, D
         => sync_pulse_1lt15, Y => \prescale_cnt_1z\);
    
    \period_cnt_int[6]\ : SLE
      port map(D => \period_cnt_int_lm[6]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[6]\);
    
    \period_cnt_int_lm_0[9]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[9]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[9]\);
    
    \period_cnt_int[1]\ : SLE
      port map(D => \period_cnt_int_lm[1]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[1]\);
    
    \prescale_cnt[13]\ : SLE
      port map(D => \prescale_cnt_s[13]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[13]_net_1\);
    
    \period_cnt_int_lm_0[6]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[6]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[6]\);
    
    \period_cnt_int_s[15]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[15]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[14]_net_1\, S => 
        \period_cnt_int_s[15]_net_1\, Y => OPEN, FCO => OPEN);
    
    \period_cnt_int_cry[11]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[11]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[10]_net_1\, S => 
        \period_cnt_int_s[11]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[11]_net_1\);
    
    \period_cnt_int[13]\ : SLE
      port map(D => \period_cnt_int_lm[13]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[13]\);
    
    \period_cnt_int_lm_0[11]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[11]\, C => un1_period_cnt_int, Y => 
        \period_cnt_int_lm[11]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \prescale_cnt_RNO[15]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[15]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[14]\, S => \prescale_cnt_s[15]\, Y => 
        OPEN, FCO => OPEN);
    
    \period_cnt_int_lm_0[12]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[12]\, C => un1_period_cnt_int, Y => 
        \period_cnt_int_lm[12]\);
    
    \period_cnt_int[14]\ : SLE
      port map(D => \period_cnt_int_lm[14]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[14]\);
    
    \prescale_cnt[8]\ : SLE
      port map(D => \prescale_cnt_s[8]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[8]_net_1\);
    
    \period_cnt_int[7]\ : SLE
      port map(D => \period_cnt_int_lm[7]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[7]\);
    
    \prescale_cnt_RNI8VJM7[2]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[2]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[1]\, S => \prescale_cnt_s[2]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[2]\);
    
    sync_pulse_1lto15_3_RNIGUTE2 : ARI1
      generic map(INIT => x"41000")

      port map(A => \sync_pulse_1lto15_3\, B => 
        \prescale_cnt[13]_net_1\, C => \prescale_cnt[14]_net_1\, 
        D => sync_pulse_1lt15, FCI => VCC_net_1, S => OPEN, Y => 
        sync_pulse_1lto15_3_RNIGUTE2_Y, FCO => 
        \prescale_cnt_cry_cy[0]\);
    
    \period_cnt_int_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[6]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[5]_net_1\, S => \period_cnt_int_s[6]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[6]_net_1\);
    
    \period_cnt_int[12]\ : SLE
      port map(D => \period_cnt_int_lm[12]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[12]\);
    
    \prescale_cnt[14]\ : SLE
      port map(D => \prescale_cnt_s[14]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[14]_net_1\);
    
    \period_cnt_int[8]\ : SLE
      port map(D => \period_cnt_int_lm[8]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[8]\);
    
    \period_cnt_int_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[4]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[3]_net_1\, S => \period_cnt_int_s[4]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[4]_net_1\);
    
    \period_cnt_int_lm_0[7]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[7]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[7]\);
    
    un1_period_cnt_intlto15 : CFG4
      generic map(INIT => x"C040")

      port map(A => \period_cnt[7]\, B => 
        \un1_period_cnt_intlto15_5\, C => 
        \un1_period_cnt_intlto15_4\, D => un1_period_cnt_intlt7, 
        Y => un1_period_cnt_int);
    
    \prescale_cnt_RNI4DOB1[3]\ : CFG4
      generic map(INIT => x"FF57")

      port map(A => \prescale_cnt[7]_net_1\, B => 
        \prescale_cnt[4]_net_1\, C => \prescale_cnt[3]_net_1\, D
         => g0_1, Y => sync_pulse_1lt15);
    
    \period_cnt_int_lm_0[14]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[14]\, C => un1_period_cnt_int, Y => 
        \period_cnt_int_lm[14]\);
    
    \prescale_cnt_RNI6HD7A[6]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[6]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[5]\, S => \prescale_cnt_s[6]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[6]\);
    
    \period_cnt_int[4]\ : SLE
      port map(D => \period_cnt_int_lm[4]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[4]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \prescale_cnt[2]\ : SLE
      port map(D => \prescale_cnt_s[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[2]_net_1\);
    
    \period_cnt_int_cry[10]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[10]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[9]_net_1\, S => 
        \period_cnt_int_s[10]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[10]_net_1\);
    
    \prescale_cnt_RNIKB0P[5]\ : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \prescale_cnt[9]_net_1\, B => 
        \prescale_cnt[8]_net_1\, C => \prescale_cnt[6]_net_1\, D
         => \prescale_cnt[5]_net_1\, Y => g0_1);
    
    \prescale_cnt[5]\ : SLE
      port map(D => \prescale_cnt_s[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[5]_net_1\);
    
    un1_period_cnt_intlto15_4 : CFG4
      generic map(INIT => x"0001")

      port map(A => \period_cnt[15]\, B => \period_cnt[10]\, C
         => \period_cnt[9]\, D => \period_cnt[8]\, Y => 
        \un1_period_cnt_intlto15_4\);
    
    un14_prescale_cnt_NE_RNO : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \prescale_cnt[9]_net_1\, B => 
        \prescale_cnt[8]_net_1\, C => \prescale_cnt[7]_net_1\, D
         => \prescale_cnt[6]_net_1\, Y => sync_pulse_1lto9_1);
    
    \period_cnt_int[9]\ : SLE
      port map(D => \period_cnt_int_lm[9]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[9]\);
    
    \period_cnt_int_cry[8]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[8]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[7]_net_1\, S => \period_cnt_int_s[8]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[8]_net_1\);
    
    \prescale_cnt_RNIRL20D[10]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[10]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[9]\, S => \prescale_cnt_s[10]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[10]\);
    
    \prescale_cnt_RNI6AQA8[3]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[3]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[2]\, S => \prescale_cnt_s[3]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[3]\);
    
    un14_prescale_cnt_NE_6 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[0]_net_1\, B => 
        \prescale_cnt[14]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[1]_net_1\, Y => 
        \un14_prescale_cnt_NE_6\);
    
    \prescale_cnt_RNIM16OE[12]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[12]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[11]\, S => \prescale_cnt_s[12]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[12]\);
    
    \prescale_cnt[9]\ : SLE
      port map(D => \prescale_cnt_s[9]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[9]_net_1\);
    
    \period_cnt_int[15]\ : SLE
      port map(D => \period_cnt_int_lm[15]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[15]\);
    
    un14_prescale_cnt_NE_8 : CFG4
      generic map(INIT => x"FBFF")

      port map(A => \prescale_cnt[11]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[4]_net_1\, D
         => \prescale_cnt[3]_net_1\, Y => 
        \un14_prescale_cnt_NE_8\);
    
    \prescale_cnt[4]\ : SLE
      port map(D => \prescale_cnt_s[4]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[4]_net_1\);
    
    \prescale_cnt_RNIF114C[9]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[9]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[8]\, S => \prescale_cnt_s[9]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[9]\);
    
    un14_prescale_cnt_NE_7 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[12]_net_1\, B => 
        \prescale_cnt[15]_net_1\, C => \prescale_cnt[13]_net_1\, 
        D => \prescale_cnt[10]_net_1\, Y => 
        \un14_prescale_cnt_NE_7\);
    
    \prescale_cnt_RNI80KRA[7]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[7]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[6]\, S => \prescale_cnt_s[7]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[7]\);
    
    \period_cnt_int_lm_0[8]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[8]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[8]\);
    
    \period_cnt_int_cry[12]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[12]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[11]_net_1\, S => 
        \period_cnt_int_s[12]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[12]_net_1\);
    
    un1_period_cnt_intlto3 : CFG3
      generic map(INIT => x"7F")

      port map(A => \period_cnt[3]\, B => \period_cnt[2]\, C => 
        \period_cnt[1]\, Y => un1_period_cnt_intlt6);
    
    \period_cnt_int_lm_0[13]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[13]\, C => un1_period_cnt_int, Y => 
        \period_cnt_int_lm[13]\);
    
    \period_cnt_int[3]\ : SLE
      port map(D => \period_cnt_int_lm[3]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[3]\);
    
    un14_prescale_cnt_NE : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \un14_prescale_cnt_NE_6\, B => 
        \un14_prescale_cnt_NE_8\, C => sync_pulse_1lto9_1, D => 
        \un14_prescale_cnt_NE_7\, Y => \un14_prescale_cnt_NE\);
    
    \prescale_cnt_RNIBGQFB[8]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[8]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[7]\, S => \prescale_cnt_s[8]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[8]\);
    
    \period_cnt_int_lm_0[0]\ : CFG3
      generic map(INIT => x"54")

      port map(A => \period_cnt[0]\, B => un1_period_cnt_int, C
         => \prescale_cnt_1z\, Y => \period_cnt_int_lm[0]\);
    
    \prescale_cnt_qxu_1[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \prescale_cnt[13]_net_1\, B => 
        \prescale_cnt[14]_net_1\, Y => 
        \prescale_cnt_qxu_1[0]_net_1\);
    
    \period_cnt_int[11]\ : SLE
      port map(D => \period_cnt_int_lm[11]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[11]\);
    
    \prescale_cnt[15]\ : SLE
      port map(D => \prescale_cnt_s[15]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[15]_net_1\);
    
    period_cnt_int_s_101 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[0]\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => period_cnt_int_s_101_FCO);
    
    \prescale_cnt[1]\ : SLE
      port map(D => \prescale_cnt_s[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[1]_net_1\);
    
    \period_cnt_int_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[7]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[6]_net_1\, S => \period_cnt_int_s[7]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[7]_net_1\);
    
    \period_cnt_int_cry[9]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[9]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[8]_net_1\, S => \period_cnt_int_s[9]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[9]_net_1\);
    
    \prescale_cnt_RNI8B4SD[11]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[11]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[10]\, S => \prescale_cnt_s[11]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[11]\);
    
    \prescale_cnt[7]\ : SLE
      port map(D => \prescale_cnt_s[7]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[7]_net_1\);
    
    \prescale_cnt[6]\ : SLE
      port map(D => \prescale_cnt_s[6]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[6]_net_1\);
    
    \prescale_cnt[0]\ : SLE
      port map(D => \prescale_cnt_s[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[0]_net_1\);
    
    \prescale_cnt[12]\ : SLE
      port map(D => \prescale_cnt_s[12]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[12]_net_1\);
    
    \period_cnt_int_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[5]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[4]_net_1\, S => \period_cnt_int_s[5]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[5]_net_1\);
    
    un14_prescale_cnt_NE_RNI0UKN : CFG3
      generic map(INIT => x"57")

      port map(A => \un14_prescale_cnt_NE\, B => 
        un1_period_cnt_int, C => \prescale_cnt_1z\, Y => 
        period_cnt_inte);
    
    un1_period_cnt_intlto6 : CFG4
      generic map(INIT => x"0100")

      port map(A => \period_cnt[6]\, B => \period_cnt[5]\, C => 
        \period_cnt[4]\, D => un1_period_cnt_intlt6, Y => 
        un1_period_cnt_intlt7);
    
    \period_cnt_int_lm_0[1]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[1]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[1]\);
    
    \period_cnt_int_lm_0[10]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => 
        \period_cnt_int_s[10]\, C => un1_period_cnt_int, Y => 
        \period_cnt_int_lm[10]\);
    
    \prescale_cnt_qxu_1_RNI4Q7D4[0]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \sync_pulse_1lto15_3\, B => 
        \prescale_cnt[0]_net_1\, C => 
        \prescale_cnt_qxu_1[0]_net_1\, D => sync_pulse_1lt15, FCI
         => \prescale_cnt_cry_cy[0]\, S => \prescale_cnt_s[0]\, Y
         => OPEN, FCO => \prescale_cnt_cry[0]\);
    
    \prescale_cnt[11]\ : SLE
      port map(D => \prescale_cnt_s[11]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[11]_net_1\);
    
    \prescale_cnt_RNI537J9[5]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[5]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[4]\, S => \prescale_cnt_s[5]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[5]\);
    
    \prescale_cnt[3]\ : SLE
      port map(D => \prescale_cnt_s[3]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[3]_net_1\);
    
    \period_cnt_int_lm_0[2]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[2]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[2]\);
    
    \prescale_cnt_RNIBLD27[1]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => 
        sync_pulse_1lto15_3_RNIGUTE2_Y, C => 
        \prescale_cnt[1]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[0]\, S => \prescale_cnt_s[1]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[1]\);
    
    \period_cnt_int_lm_0[3]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \prescale_cnt_1z\, B => \period_cnt_int_s[3]\, 
        C => un1_period_cnt_int, Y => \period_cnt_int_lm[3]\);
    
    \period_cnt_int[5]\ : SLE
      port map(D => \period_cnt_int_lm[5]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[5]\);
    
    \period_cnt_int[10]\ : SLE
      port map(D => \period_cnt_int_lm[10]\, CLK => FAB_CCC_GL0, 
        EN => period_cnt_inte, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \period_cnt[10]\);
    
    \prescale_cnt_RNILH9GG[14]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[14]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[13]\, S => \prescale_cnt_s[14]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[14]\);
    
    \prescale_cnt_RNI5M0V8[4]\ : ARI1
      generic map(INIT => x"48800")

      port map(A => VCC_net_1, B => \prescale_cnt_1z\, C => 
        \prescale_cnt[4]_net_1\, D => GND_net_1, FCI => 
        \prescale_cnt_cry[3]\, S => \prescale_cnt_s[4]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[4]\);
    
    \period_cnt_int_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[13]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[12]_net_1\, S => 
        \period_cnt_int_s[13]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[13]_net_1\);
    
    \period_cnt_int_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[3]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[2]_net_1\, S => \period_cnt_int_s[3]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[3]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity corepwm is

    port( CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(15 downto 0);
          PRDATA_generated_i_m                        : out   std_logic_vector(3 to 3);
          PRDATA_generated_i_m_0_1                    : out   std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                       : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_0                       : out   std_logic_vector(2 downto 1);
          PRDATA_regif_1_0_iv_xx                      : out   std_logic_vector(2 to 2);
          PRDATA_generated_i_m_c                      : out   std_logic_vector(7 to 7);
          PRDATA_generated_1_RNI9N3B1                 : out   std_logic_vector(1 to 1);
          pwm_negedge_reg_9                           : out   std_logic;
          pwm_negedge_reg_25                          : out   std_logic;
          pwm_negedge_reg_40                          : out   std_logic;
          pwm_negedge_reg_41                          : out   std_logic;
          pwm_negedge_reg_56                          : out   std_logic;
          pwm_negedge_reg_57                          : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0              : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_121                                       : in    std_logic;
          un97_psel_4                                 : out   std_logic;
          un78_psel                                   : out   std_logic;
          PRDATA_generated_sn_N_4                     : out   std_logic;
          N_259                                       : out   std_logic;
          PRDATA_generated_sn_N_7_mux                 : out   std_logic;
          un7_prdata_regif                            : out   std_logic;
          N_196                                       : out   std_logic;
          N_197                                       : out   std_logic;
          N_198                                       : out   std_logic;
          N_199                                       : out   std_logic;
          N_119                                       : out   std_logic;
          N_54                                        : out   std_logic;
          PRDATA_m4_e_0_0                             : out   std_logic;
          N_105                                       : in    std_logic;
          prdata_typ20                                : out   std_logic;
          N_110                                       : in    std_logic;
          un13_psel_0                                 : in    std_logic;
          PRDATA_generated_sn_m5_0                    : out   std_logic;
          N_144                                       : out   std_logic;
          N_143                                       : out   std_logic;
          N_170                                       : out   std_logic;
          N_152                                       : out   std_logic;
          N_156                                       : out   std_logic;
          N_189                                       : out   std_logic;
          N_190                                       : out   std_logic;
          PWM_3_c                                     : out   std_logic;
          PWM_2_c                                     : out   std_logic;
          PWM_1_c                                     : out   std_logic;
          PWM_0_c                                     : out   std_logic
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

  component pwm_gen
    port( period_cnt      : in    std_logic_vector(15 downto 0) := (others => 'U');
          pwm_negedge_reg : in    std_logic_vector(64 downto 1) := (others => 'U');
          pwm_enable_reg  : in    std_logic_vector(4 downto 1) := (others => 'U');
          PWM_3_c         : out   std_logic;
          MSS_READY       : in    std_logic := 'U';
          FAB_CCC_GL0     : in    std_logic := 'U';
          PWM_2_c         : out   std_logic;
          PWM_1_c         : out   std_logic;
          PWM_0_c         : out   std_logic;
          prescale_cnt    : in    std_logic := 'U'
        );
  end component;

  component reg_if
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(15 downto 0) := (others => 'U');
          pwm_negedge_reg                             : out   std_logic_vector(64 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          PRDATA_generated_i_m                        : out   std_logic_vector(3 to 3);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2) := (others => 'U');
          PWM_STRETCH                                 : in    std_logic_vector(3 downto 0) := (others => 'U');
          PRDATA_generated_i_m_0_1                    : out   std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                       : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_xx                      : out   std_logic_vector(2 to 2);
          PRDATA_generated_i_m_c                      : out   std_logic_vector(7 to 7);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13) := (others => 'U');
          PRDATA_generated_1_RNI9N3B1                 : out   std_logic_vector(1 to 1);
          PRDATA_regif_1_0_iv_0_1                     : out   std_logic;
          PRDATA_regif_1_0_iv_0_2                     : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0              : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          un97_psel_4                                 : out   std_logic;
          un78_psel                                   : out   std_logic;
          PRDATA_generated_sn_N_4                     : out   std_logic;
          N_259                                       : out   std_logic;
          PRDATA_generated_sn_N_7_mux                 : out   std_logic;
          un7_prdata_regif                            : out   std_logic;
          N_196                                       : out   std_logic;
          N_197                                       : out   std_logic;
          N_198                                       : out   std_logic;
          N_199                                       : out   std_logic;
          N_119                                       : out   std_logic;
          N_54                                        : out   std_logic;
          PRDATA_m4_e_0_0                             : out   std_logic;
          N_105                                       : in    std_logic := 'U';
          prdata_typ20                                : out   std_logic;
          N_110                                       : in    std_logic := 'U';
          un13_psel_0                                 : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                    : out   std_logic;
          N_144                                       : out   std_logic;
          N_143                                       : out   std_logic;
          N_170                                       : out   std_logic;
          N_152                                       : out   std_logic;
          N_156                                       : out   std_logic;
          N_189                                       : out   std_logic;
          N_190                                       : out   std_logic;
          N_121                                       : in    std_logic := 'U'
        );
  end component;

  component timebase
    port( period_cnt      : out   std_logic_vector(15 downto 0);
          prescale_cnt_1z : out   std_logic;
          MSS_READY       : in    std_logic := 'U';
          FAB_CCC_GL0     : in    std_logic := 'U'
        );
  end component;

    signal \PWM_STRETCH[0]_net_1\, VCC_net_1, 
        PWM_STRETCH_0_sqmuxa, GND_net_1, \PWM_STRETCH[1]_net_1\, 
        \PWM_STRETCH[2]_net_1\, \PWM_STRETCH[3]_net_1\, 
        PWM_STRETCH_0_sqmuxa_0_a2_1, 
        \PWM_STRETCH_0_sqmuxa_0_a2_2\, \pwm_negedge_reg[1]\, 
        \pwm_negedge_reg[2]\, \pwm_negedge_reg[3]\, 
        \pwm_negedge_reg[4]\, \pwm_negedge_reg[5]\, 
        \pwm_negedge_reg[6]\, \pwm_negedge_reg[7]\, 
        \pwm_negedge_reg[8]\, \pwm_negedge_reg[9]\, 
        \pwm_negedge_reg_9\, \pwm_negedge_reg[11]\, 
        \pwm_negedge_reg[12]\, \pwm_negedge_reg[13]\, 
        \pwm_negedge_reg[14]\, \pwm_negedge_reg[15]\, 
        \pwm_negedge_reg[16]\, \pwm_negedge_reg[17]\, 
        \pwm_negedge_reg[18]\, \pwm_negedge_reg[19]\, 
        \pwm_negedge_reg[20]\, \pwm_negedge_reg[21]\, 
        \pwm_negedge_reg[22]\, \pwm_negedge_reg[23]\, 
        \pwm_negedge_reg[24]\, \pwm_negedge_reg[25]\, 
        \pwm_negedge_reg_25\, \pwm_negedge_reg[27]\, 
        \pwm_negedge_reg[28]\, \pwm_negedge_reg[29]\, 
        \pwm_negedge_reg[30]\, \pwm_negedge_reg[31]\, 
        \pwm_negedge_reg[32]\, \pwm_negedge_reg[33]\, 
        \pwm_negedge_reg[34]\, \pwm_negedge_reg[35]\, 
        \pwm_negedge_reg[36]\, \pwm_negedge_reg[37]\, 
        \pwm_negedge_reg[38]\, \pwm_negedge_reg[39]\, 
        \pwm_negedge_reg[40]\, \pwm_negedge_reg_40\, 
        \pwm_negedge_reg_41\, \pwm_negedge_reg[43]\, 
        \pwm_negedge_reg[44]\, \pwm_negedge_reg[45]\, 
        \pwm_negedge_reg[46]\, \pwm_negedge_reg[47]\, 
        \pwm_negedge_reg[48]\, \pwm_negedge_reg[49]\, 
        \pwm_negedge_reg[50]\, \pwm_negedge_reg[51]\, 
        \pwm_negedge_reg[52]\, \pwm_negedge_reg[53]\, 
        \pwm_negedge_reg[54]\, \pwm_negedge_reg[55]\, 
        \pwm_negedge_reg[56]\, \pwm_negedge_reg_56\, 
        \pwm_negedge_reg_57\, \pwm_negedge_reg[59]\, 
        \pwm_negedge_reg[60]\, \pwm_negedge_reg[61]\, 
        \pwm_negedge_reg[62]\, \pwm_negedge_reg[63]\, 
        \pwm_negedge_reg[64]\, \pwm_enable_reg[1]\, 
        \pwm_enable_reg[2]\, \pwm_enable_reg[3]\, 
        \pwm_enable_reg[4]\, \period_cnt[0]\, \period_cnt[1]\, 
        \period_cnt[2]\, \period_cnt[3]\, \period_cnt[4]\, 
        \period_cnt[5]\, \period_cnt[6]\, \period_cnt[7]\, 
        \period_cnt[8]\, \period_cnt[9]\, \period_cnt[10]\, 
        \period_cnt[11]\, \period_cnt[12]\, \period_cnt[13]\, 
        \period_cnt[14]\, \period_cnt[15]\, prescale_cnt
         : std_logic;

    for all : pwm_gen
	Use entity work.pwm_gen(DEF_ARCH);
    for all : reg_if
	Use entity work.reg_if(DEF_ARCH);
    for all : timebase
	Use entity work.timebase(DEF_ARCH);
begin 

    pwm_negedge_reg_9 <= \pwm_negedge_reg_9\;
    pwm_negedge_reg_25 <= \pwm_negedge_reg_25\;
    pwm_negedge_reg_40 <= \pwm_negedge_reg_40\;
    pwm_negedge_reg_41 <= \pwm_negedge_reg_41\;
    pwm_negedge_reg_56 <= \pwm_negedge_reg_56\;
    pwm_negedge_reg_57 <= \pwm_negedge_reg_57\;

    \PWM_STRETCH[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \PWM_STRETCH[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    PWM_STRETCH_0_sqmuxa_0_a2_1_0 : CFG4
      generic map(INIT => x"0020")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        CoreAPB3_0_APBmslave0_PADDR(7), D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => 
        PWM_STRETCH_0_sqmuxa_0_a2_1);
    
    \PWM_STRETCH[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \PWM_STRETCH[0]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    PWM_STRETCH_0_sqmuxa_0_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => N_121, B => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        \PWM_STRETCH_0_sqmuxa_0_a2_2\, Y => PWM_STRETCH_0_sqmuxa);
    
    \PWM_STRETCH[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \PWM_STRETCH[2]_net_1\);
    
    \xhdl63.pwm_gen_inst\ : pwm_gen
      port map(period_cnt(15) => \period_cnt[15]\, period_cnt(14)
         => \period_cnt[14]\, period_cnt(13) => \period_cnt[13]\, 
        period_cnt(12) => \period_cnt[12]\, period_cnt(11) => 
        \period_cnt[11]\, period_cnt(10) => \period_cnt[10]\, 
        period_cnt(9) => \period_cnt[9]\, period_cnt(8) => 
        \period_cnt[8]\, period_cnt(7) => \period_cnt[7]\, 
        period_cnt(6) => \period_cnt[6]\, period_cnt(5) => 
        \period_cnt[5]\, period_cnt(4) => \period_cnt[4]\, 
        period_cnt(3) => \period_cnt[3]\, period_cnt(2) => 
        \period_cnt[2]\, period_cnt(1) => \period_cnt[1]\, 
        period_cnt(0) => \period_cnt[0]\, pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg_57\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg_56\, pwm_negedge_reg(56) => 
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
        \pwm_negedge_reg_41\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg_40\, pwm_negedge_reg(40) => 
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
        \pwm_negedge_reg_25\, pwm_negedge_reg(25) => 
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
        \pwm_negedge_reg_9\, pwm_negedge_reg(9) => 
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
        \pwm_enable_reg[1]\, PWM_3_c => PWM_3_c, MSS_READY => 
        MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, PWM_2_c => PWM_2_c, 
        PWM_1_c => PWM_1_c, PWM_0_c => PWM_0_c, prescale_cnt => 
        prescale_cnt);
    
    \xhdl58.reg_if_inst\ : reg_if
      port map(CoreAPB3_0_APBmslave0_PWDATA(15) => 
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
        CoreAPB3_0_APBmslave0_PWDATA(0), pwm_negedge_reg(64) => 
        \pwm_negedge_reg[64]\, pwm_negedge_reg(63) => 
        \pwm_negedge_reg[63]\, pwm_negedge_reg(62) => 
        \pwm_negedge_reg[62]\, pwm_negedge_reg(61) => 
        \pwm_negedge_reg[61]\, pwm_negedge_reg(60) => 
        \pwm_negedge_reg[60]\, pwm_negedge_reg(59) => 
        \pwm_negedge_reg[59]\, pwm_negedge_reg(58) => 
        \pwm_negedge_reg_57\, pwm_negedge_reg(57) => 
        \pwm_negedge_reg_56\, pwm_negedge_reg(56) => 
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
        \pwm_negedge_reg_41\, pwm_negedge_reg(41) => 
        \pwm_negedge_reg_40\, pwm_negedge_reg(40) => 
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
        \pwm_negedge_reg_25\, pwm_negedge_reg(25) => 
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
        \pwm_negedge_reg_9\, pwm_negedge_reg(9) => 
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
        \pwm_enable_reg[1]\, PRDATA_generated_i_m(3) => 
        PRDATA_generated_i_m(3), CoreAPB3_0_APBmslave0_PADDR(7)
         => CoreAPB3_0_APBmslave0_PADDR(7), 
        CoreAPB3_0_APBmslave0_PADDR(6) => 
        CoreAPB3_0_APBmslave0_PADDR(6), 
        CoreAPB3_0_APBmslave0_PADDR(5) => 
        CoreAPB3_0_APBmslave0_PADDR(5), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), PWM_STRETCH(3) => 
        \PWM_STRETCH[3]_net_1\, PWM_STRETCH(2) => 
        \PWM_STRETCH[2]_net_1\, PWM_STRETCH(1) => 
        \PWM_STRETCH[1]_net_1\, PWM_STRETCH(0) => 
        \PWM_STRETCH[0]_net_1\, PRDATA_generated_i_m_0_1(7) => 
        PRDATA_generated_i_m_0_1(7), PRDATA_regif_1_0_iv_1(3) => 
        PRDATA_regif_1_0_iv_1(3), PRDATA_regif_1_0_iv_xx(2) => 
        PRDATA_regif_1_0_iv_xx(2), PRDATA_generated_i_m_c(7) => 
        PRDATA_generated_i_m_c(7), 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        PRDATA_generated_1_RNI9N3B1(1) => 
        PRDATA_generated_1_RNI9N3B1(1), PRDATA_regif_1_0_iv_0_1
         => PRDATA_regif_1_0_iv_0(1), PRDATA_regif_1_0_iv_0_2 => 
        PRDATA_regif_1_0_iv_0(2), CoreAPB3_0_APBmslave3_PRDATA_11
         => CoreAPB3_0_APBmslave3_PRDATA_11, 
        CoreAPB3_0_APBmslave3_PRDATA_10 => 
        CoreAPB3_0_APBmslave3_PRDATA_10, 
        CoreAPB3_0_APBmslave3_PRDATA_0 => 
        CoreAPB3_0_APBmslave3_PRDATA_0, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, un97_psel_4 => un97_psel_4, 
        un78_psel => un78_psel, PRDATA_generated_sn_N_4 => 
        PRDATA_generated_sn_N_4, N_259 => N_259, 
        PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, un7_prdata_regif => 
        un7_prdata_regif, N_196 => N_196, N_197 => N_197, N_198
         => N_198, N_199 => N_199, N_119 => N_119, N_54 => N_54, 
        PRDATA_m4_e_0_0 => PRDATA_m4_e_0_0, N_105 => N_105, 
        prdata_typ20 => prdata_typ20, N_110 => N_110, un13_psel_0
         => un13_psel_0, PRDATA_generated_sn_m5_0 => 
        PRDATA_generated_sn_m5_0, N_144 => N_144, N_143 => N_143, 
        N_170 => N_170, N_152 => N_152, N_156 => N_156, N_189 => 
        N_189, N_190 => N_190, N_121 => N_121);
    
    \PWM_STRETCH[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \PWM_STRETCH[3]_net_1\);
    
    \G0b.timebase_inst\ : timebase
      port map(period_cnt(15) => \period_cnt[15]\, period_cnt(14)
         => \period_cnt[14]\, period_cnt(13) => \period_cnt[13]\, 
        period_cnt(12) => \period_cnt[12]\, period_cnt(11) => 
        \period_cnt[11]\, period_cnt(10) => \period_cnt[10]\, 
        period_cnt(9) => \period_cnt[9]\, period_cnt(8) => 
        \period_cnt[8]\, period_cnt(7) => \period_cnt[7]\, 
        period_cnt(6) => \period_cnt[6]\, period_cnt(5) => 
        \period_cnt[5]\, period_cnt(4) => \period_cnt[4]\, 
        period_cnt(3) => \period_cnt[3]\, period_cnt(2) => 
        \period_cnt[2]\, period_cnt(1) => \period_cnt[1]\, 
        period_cnt(0) => \period_cnt[0]\, prescale_cnt_1z => 
        prescale_cnt, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0);
    
    PWM_STRETCH_0_sqmuxa_0_a2_2 : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        PWM_STRETCH_0_sqmuxa_0_a2_1, Y => 
        \PWM_STRETCH_0_sqmuxa_0_a2_2\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity MSS_top_sb_MSS is

    port( CoreAPB3_0_APBmslave0_PADDR                  : out   std_logic_vector(8 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                 : out   std_logic_vector(15 downto 0);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : in    std_logic_vector(15 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N    : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                 : out   std_logic;
          MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F         : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                  : in    std_logic;
          FAB_CCC_LOCK                                 : in    std_logic;
          FAB_CCC_GL0                                  : in    std_logic
        );

end MSS_top_sb_MSS;

architecture DEF_ARCH of MSS_top_sb_MSS is 

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
        nc41, nc100, nc270, nc339, nc52, nc251, nc186, nc29, 
        nc269, nc118, nc60, nc141, nc311, nc276, nc193, nc214, 
        nc298, nc282, nc240, nc45, nc53, nc121, nc176, nc220, 
        nc158, nc281, nc209, nc246, nc162, nc11, nc272, nc131, 
        nc254, nc267, nc96, nc79, nc226, nc146, nc230, nc89, 
        nc119, nc48, nc271, nc213, nc300, nc126, nc195, nc188, 
        nc242, nc15, nc308, nc236, nc102, nc304, nc3, nc207, nc47, 
        nc90, nc284, nc222, nc159, nc136, nc241, nc253, nc178, 
        nc306, nc215, nc59, nc221, nc232, nc274, nc18, nc44, 
        nc117, nc189, nc164, nc148, nc42, nc231, nc191, nc255, 
        nc283, nc341, nc317, nc290, nc17, nc2, nc302, nc110, 
        nc128, nc244, nc321, nc43, nc179, nc157, nc36, nc224, 
        nc296, nc273, nc61, nc104, nc138, nc14, nc285, nc303, 
        nc150, nc331, nc196, nc234, nc149, nc12, nc219, nc30, 
        nc243, nc187, nc65, nc7, nc292, nc129, nc275, nc8, nc223, 
        nc13, nc305, nc180, nc26, nc291, nc177, nc139, nc310, 
        nc259, nc245, nc233, nc163, nc318, nc268, nc112, nc68, 
        nc49, nc314, nc217, nc170, nc91, nc225, nc5, nc20, nc198, 
        nc147, nc316, nc67, nc289, nc294, nc152, nc127, nc103, 
        nc235, nc76, nc208, nc140, nc257, nc86, nc95, nc327, 
        nc120, nc165, nc279, nc137, nc64, nc19, nc312, nc70, 
        nc182, nc62, nc337, nc199, nc80, nc130, nc287, nc98, 
        nc293, nc249, nc114, nc56, nc105, nc63, nc313, nc309, 
        nc172, nc229, nc277, nc97, nc161, nc31, nc340, nc295, 
        nc154, nc50, nc260, nc239, nc142, nc320, nc344, nc315, 
        nc247, nc94, nc197, nc328, nc122, nc266, nc35, nc324, nc4, 
        nc227, nc92, nc101, nc346, nc330, nc184, nc200, nc190, 
        nc166, nc338, nc326, nc132, nc334, nc21, nc237, nc93, 
        nc262, nc69, nc206, nc174, nc38, nc113, nc336, nc218, 
        nc342, nc106, nc261, nc25, nc1, nc322, nc299, nc37, nc202, 
        nc144, nc153, nc46, nc258, nc343, nc71, nc124, nc332, 
        nc81, nc201, nc168, nc323, nc34, nc28, nc115, nc264, 
        nc192, nc319, nc134, nc32, nc40, nc297, nc99, nc75, nc183, 
        nc345, nc333, nc288, nc85, nc27, nc108, nc325, nc16, 
        nc155, nc51, nc301, nc33, nc204, nc173, nc278, nc169, 
        nc78, nc263, nc335, nc24, nc88, nc111, nc55, nc10, nc22, 
        nc210, nc185, nc143, nc248, nc77, nc6, nc109, nc87, nc123
         : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    MSS_ADLIB_INST : MSS_010

              generic map(INIT => "00" & x"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00000000F000000000000000000000000000000007FFFFFFFB000001007C33C00000000609280208003FFFFE400000000000010000000000F01C000001FEDFFC010842108421000001FE34001FF80000004000000000200D1007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
         ACT_UBITS => x"FFFFFFFFFFFFFF",
         MEMORYFILE => "ENVM_init.mem", RTC_MAIN_XTL_FREQ => 0.0
        )

      port map(CAN_RXBUS_MGPIO3A_H2F_A => OPEN, 
        CAN_RXBUS_MGPIO3A_H2F_B => OPEN, CAN_TX_EBL_MGPIO4A_H2F_A
         => OPEN, CAN_TX_EBL_MGPIO4A_H2F_B => OPEN, 
        CAN_TXBUS_MGPIO2A_H2F_A => OPEN, CAN_TXBUS_MGPIO2A_H2F_B
         => OPEN, CLK_CONFIG_APB => OPEN, COMMS_INT => OPEN, 
        CONFIG_PRESET_N => 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, EDAC_ERROR(7)
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
        F_HM0_ADDR(26) => nc339, F_HM0_ADDR(25) => nc52, 
        F_HM0_ADDR(24) => nc251, F_HM0_ADDR(23) => nc186, 
        F_HM0_ADDR(22) => nc29, F_HM0_ADDR(21) => nc269, 
        F_HM0_ADDR(20) => nc118, F_HM0_ADDR(19) => nc60, 
        F_HM0_ADDR(18) => nc141, F_HM0_ADDR(17) => nc311, 
        F_HM0_ADDR(16) => nc276, F_HM0_ADDR(15) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), 
        F_HM0_ADDR(14) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), 
        F_HM0_ADDR(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        F_HM0_ADDR(12) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        F_HM0_ADDR(11) => nc193, F_HM0_ADDR(10) => nc214, 
        F_HM0_ADDR(9) => nc298, F_HM0_ADDR(8) => 
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        F_HM0_SIZE(1) => nc282, F_HM0_SIZE(0) => nc240, 
        F_HM0_TRANS1 => OPEN, F_HM0_WDATA(31) => nc45, 
        F_HM0_WDATA(30) => nc53, F_HM0_WDATA(29) => nc121, 
        F_HM0_WDATA(28) => nc176, F_HM0_WDATA(27) => nc220, 
        F_HM0_WDATA(26) => nc158, F_HM0_WDATA(25) => nc281, 
        F_HM0_WDATA(24) => nc209, F_HM0_WDATA(23) => nc246, 
        F_HM0_WDATA(22) => nc162, F_HM0_WDATA(21) => nc11, 
        F_HM0_WDATA(20) => nc272, F_HM0_WDATA(19) => nc131, 
        F_HM0_WDATA(18) => nc254, F_HM0_WDATA(17) => nc267, 
        F_HM0_WDATA(16) => nc96, F_HM0_WDATA(15) => 
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
         => OPEN, FAB_OPMODE(1) => nc79, FAB_OPMODE(0) => nc226, 
        FAB_SUSPENDM => OPEN, FAB_TERMSEL => OPEN, FAB_TXVALID
         => OPEN, FAB_VCONTROL(3) => nc146, FAB_VCONTROL(2) => 
        nc230, FAB_VCONTROL(1) => nc89, FAB_VCONTROL(0) => nc119, 
        FAB_VCONTROLLOADM => OPEN, FAB_XCVRSEL(1) => nc48, 
        FAB_XCVRSEL(0) => nc271, FAB_XDATAOUT(7) => nc213, 
        FAB_XDATAOUT(6) => nc300, FAB_XDATAOUT(5) => nc126, 
        FAB_XDATAOUT(4) => nc195, FAB_XDATAOUT(3) => nc188, 
        FAB_XDATAOUT(2) => nc242, FAB_XDATAOUT(1) => nc15, 
        FAB_XDATAOUT(0) => nc308, FACC_GLMUX_SEL => OPEN, 
        FIC32_0_MASTER(1) => nc236, FIC32_0_MASTER(0) => nc102, 
        FIC32_1_MASTER(1) => nc304, FIC32_1_MASTER(0) => nc3, 
        FPGA_RESET_N => MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        GTX_CLK => OPEN, H2F_INTERRUPT(15) => nc207, 
        H2F_INTERRUPT(14) => nc47, H2F_INTERRUPT(13) => nc90, 
        H2F_INTERRUPT(12) => nc284, H2F_INTERRUPT(11) => nc222, 
        H2F_INTERRUPT(10) => nc159, H2F_INTERRUPT(9) => nc136, 
        H2F_INTERRUPT(8) => nc241, H2F_INTERRUPT(7) => nc253, 
        H2F_INTERRUPT(6) => nc178, H2F_INTERRUPT(5) => nc306, 
        H2F_INTERRUPT(4) => nc215, H2F_INTERRUPT(3) => nc59, 
        H2F_INTERRUPT(2) => nc221, H2F_INTERRUPT(1) => nc232, 
        H2F_INTERRUPT(0) => nc274, H2F_NMI => OPEN, H2FCALIB => 
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
        PER2_FABRIC_PADDR(15) => nc18, PER2_FABRIC_PADDR(14) => 
        nc44, PER2_FABRIC_PADDR(13) => nc117, 
        PER2_FABRIC_PADDR(12) => nc189, PER2_FABRIC_PADDR(11) => 
        nc164, PER2_FABRIC_PADDR(10) => nc148, 
        PER2_FABRIC_PADDR(9) => nc42, PER2_FABRIC_PADDR(8) => 
        nc231, PER2_FABRIC_PADDR(7) => nc191, 
        PER2_FABRIC_PADDR(6) => nc255, PER2_FABRIC_PADDR(5) => 
        nc283, PER2_FABRIC_PADDR(4) => nc341, 
        PER2_FABRIC_PADDR(3) => nc317, PER2_FABRIC_PADDR(2) => 
        nc290, PER2_FABRIC_PENABLE => OPEN, PER2_FABRIC_PSEL => 
        OPEN, PER2_FABRIC_PWDATA(31) => nc17, 
        PER2_FABRIC_PWDATA(30) => nc2, PER2_FABRIC_PWDATA(29) => 
        nc302, PER2_FABRIC_PWDATA(28) => nc110, 
        PER2_FABRIC_PWDATA(27) => nc128, PER2_FABRIC_PWDATA(26)
         => nc244, PER2_FABRIC_PWDATA(25) => nc321, 
        PER2_FABRIC_PWDATA(24) => nc43, PER2_FABRIC_PWDATA(23)
         => nc179, PER2_FABRIC_PWDATA(22) => nc157, 
        PER2_FABRIC_PWDATA(21) => nc36, PER2_FABRIC_PWDATA(20)
         => nc224, PER2_FABRIC_PWDATA(19) => nc296, 
        PER2_FABRIC_PWDATA(18) => nc273, PER2_FABRIC_PWDATA(17)
         => nc61, PER2_FABRIC_PWDATA(16) => nc104, 
        PER2_FABRIC_PWDATA(15) => nc138, PER2_FABRIC_PWDATA(14)
         => nc14, PER2_FABRIC_PWDATA(13) => nc285, 
        PER2_FABRIC_PWDATA(12) => nc303, PER2_FABRIC_PWDATA(11)
         => nc150, PER2_FABRIC_PWDATA(10) => nc331, 
        PER2_FABRIC_PWDATA(9) => nc196, PER2_FABRIC_PWDATA(8) => 
        nc234, PER2_FABRIC_PWDATA(7) => nc149, 
        PER2_FABRIC_PWDATA(6) => nc12, PER2_FABRIC_PWDATA(5) => 
        nc219, PER2_FABRIC_PWDATA(4) => nc30, 
        PER2_FABRIC_PWDATA(3) => nc243, PER2_FABRIC_PWDATA(2) => 
        nc187, PER2_FABRIC_PWDATA(1) => nc65, 
        PER2_FABRIC_PWDATA(0) => nc7, PER2_FABRIC_PWRITE => OPEN, 
        RTC_MATCH => OPEN, SLEEPDEEP => OPEN, SLEEPHOLDACK => 
        OPEN, SLEEPING => OPEN, SMBALERT_NO0 => OPEN, 
        SMBALERT_NO1 => OPEN, SMBSUS_NO0 => OPEN, SMBSUS_NO1 => 
        OPEN, SPI0_CLK_OUT => OPEN, SPI0_SDI_MGPIO5A_H2F_A => 
        OPEN, SPI0_SDI_MGPIO5A_H2F_B => OPEN, 
        SPI0_SDO_MGPIO6A_H2F_A => OPEN, SPI0_SDO_MGPIO6A_H2F_B
         => OPEN, SPI0_SS0_MGPIO7A_H2F_A => OPEN, 
        SPI0_SS0_MGPIO7A_H2F_B => OPEN, SPI0_SS1_MGPIO8A_H2F_A
         => OPEN, SPI0_SS1_MGPIO8A_H2F_B => OPEN, 
        SPI0_SS2_MGPIO9A_H2F_A => OPEN, SPI0_SS2_MGPIO9A_H2F_B
         => OPEN, SPI0_SS3_MGPIO10A_H2F_A => OPEN, 
        SPI0_SS3_MGPIO10A_H2F_B => OPEN, SPI0_SS4_MGPIO19A_H2F_A
         => OPEN, SPI0_SS5_MGPIO20A_H2F_A => OPEN, 
        SPI0_SS6_MGPIO21A_H2F_A => OPEN, SPI0_SS7_MGPIO22A_H2F_A
         => OPEN, SPI1_CLK_OUT => OPEN, SPI1_SDI_MGPIO11A_H2F_A
         => OPEN, SPI1_SDI_MGPIO11A_H2F_B => OPEN, 
        SPI1_SDO_MGPIO12A_H2F_A => OPEN, SPI1_SDO_MGPIO12A_H2F_B
         => OPEN, SPI1_SS0_MGPIO13A_H2F_A => OPEN, 
        SPI1_SS0_MGPIO13A_H2F_B => OPEN, SPI1_SS1_MGPIO14A_H2F_A
         => OPEN, SPI1_SS1_MGPIO14A_H2F_B => OPEN, 
        SPI1_SS2_MGPIO15A_H2F_A => OPEN, SPI1_SS2_MGPIO15A_H2F_B
         => OPEN, SPI1_SS3_MGPIO16A_H2F_A => OPEN, 
        SPI1_SS3_MGPIO16A_H2F_B => OPEN, SPI1_SS4_MGPIO17A_H2F_A
         => OPEN, SPI1_SS5_MGPIO18A_H2F_A => OPEN, 
        SPI1_SS6_MGPIO23A_H2F_A => OPEN, SPI1_SS7_MGPIO24A_H2F_A
         => OPEN, TCGF(9) => nc292, TCGF(8) => nc129, TCGF(7) => 
        nc275, TCGF(6) => nc8, TCGF(5) => nc223, TCGF(4) => nc13, 
        TCGF(3) => nc305, TCGF(2) => nc180, TCGF(1) => nc26, 
        TCGF(0) => nc291, TRACECLK => OPEN, TRACEDATA(3) => nc177, 
        TRACEDATA(2) => nc139, TRACEDATA(1) => nc310, 
        TRACEDATA(0) => nc259, TX_CLK => OPEN, TX_ENF => OPEN, 
        TX_ERRF => OPEN, TXCTL_EN_RIF => OPEN, TXD_RIF(3) => 
        nc245, TXD_RIF(2) => nc233, TXD_RIF(1) => nc163, 
        TXD_RIF(0) => nc318, TXDF(7) => nc268, TXDF(6) => nc112, 
        TXDF(5) => nc68, TXDF(4) => nc49, TXDF(3) => nc314, 
        TXDF(2) => nc217, TXDF(1) => nc170, TXDF(0) => nc91, TXEV
         => OPEN, WDOGTIMEOUT => OPEN, F_ARREADY_HREADYOUT1 => 
        OPEN, F_AWREADY_HREADYOUT0 => OPEN, F_BID(3) => nc225, 
        F_BID(2) => nc5, F_BID(1) => nc20, F_BID(0) => nc198, 
        F_BRESP_HRESP0(1) => nc147, F_BRESP_HRESP0(0) => nc316, 
        F_BVALID => OPEN, F_RDATA_HRDATA01(63) => nc67, 
        F_RDATA_HRDATA01(62) => nc289, F_RDATA_HRDATA01(61) => 
        nc294, F_RDATA_HRDATA01(60) => nc152, 
        F_RDATA_HRDATA01(59) => nc127, F_RDATA_HRDATA01(58) => 
        nc103, F_RDATA_HRDATA01(57) => nc235, 
        F_RDATA_HRDATA01(56) => nc76, F_RDATA_HRDATA01(55) => 
        nc208, F_RDATA_HRDATA01(54) => nc140, 
        F_RDATA_HRDATA01(53) => nc257, F_RDATA_HRDATA01(52) => 
        nc86, F_RDATA_HRDATA01(51) => nc95, F_RDATA_HRDATA01(50)
         => nc327, F_RDATA_HRDATA01(49) => nc120, 
        F_RDATA_HRDATA01(48) => nc165, F_RDATA_HRDATA01(47) => 
        nc279, F_RDATA_HRDATA01(46) => nc137, 
        F_RDATA_HRDATA01(45) => nc64, F_RDATA_HRDATA01(44) => 
        nc19, F_RDATA_HRDATA01(43) => nc312, F_RDATA_HRDATA01(42)
         => nc70, F_RDATA_HRDATA01(41) => nc182, 
        F_RDATA_HRDATA01(40) => nc62, F_RDATA_HRDATA01(39) => 
        nc337, F_RDATA_HRDATA01(38) => nc199, 
        F_RDATA_HRDATA01(37) => nc80, F_RDATA_HRDATA01(36) => 
        nc130, F_RDATA_HRDATA01(35) => nc287, 
        F_RDATA_HRDATA01(34) => nc98, F_RDATA_HRDATA01(33) => 
        nc293, F_RDATA_HRDATA01(32) => nc249, 
        F_RDATA_HRDATA01(31) => nc114, F_RDATA_HRDATA01(30) => 
        nc56, F_RDATA_HRDATA01(29) => nc105, F_RDATA_HRDATA01(28)
         => nc63, F_RDATA_HRDATA01(27) => nc313, 
        F_RDATA_HRDATA01(26) => nc309, F_RDATA_HRDATA01(25) => 
        nc172, F_RDATA_HRDATA01(24) => nc229, 
        F_RDATA_HRDATA01(23) => nc277, F_RDATA_HRDATA01(22) => 
        nc97, F_RDATA_HRDATA01(21) => nc161, F_RDATA_HRDATA01(20)
         => nc31, F_RDATA_HRDATA01(19) => nc340, 
        F_RDATA_HRDATA01(18) => nc295, F_RDATA_HRDATA01(17) => 
        nc154, F_RDATA_HRDATA01(16) => nc50, F_RDATA_HRDATA01(15)
         => nc260, F_RDATA_HRDATA01(14) => nc239, 
        F_RDATA_HRDATA01(13) => nc142, F_RDATA_HRDATA01(12) => 
        nc320, F_RDATA_HRDATA01(11) => nc344, 
        F_RDATA_HRDATA01(10) => nc315, F_RDATA_HRDATA01(9) => 
        nc247, F_RDATA_HRDATA01(8) => nc94, F_RDATA_HRDATA01(7)
         => nc197, F_RDATA_HRDATA01(6) => nc328, 
        F_RDATA_HRDATA01(5) => nc122, F_RDATA_HRDATA01(4) => 
        nc266, F_RDATA_HRDATA01(3) => nc35, F_RDATA_HRDATA01(2)
         => nc324, F_RDATA_HRDATA01(1) => nc4, 
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15), 
        F_HM0_RDATA(14) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14), 
        F_HM0_RDATA(13) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13), 
        F_HM0_RDATA(12) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12), 
        F_HM0_RDATA(11) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11), 
        F_HM0_RDATA(10) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10), 
        F_HM0_RDATA(9) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9), 
        F_HM0_RDATA(8) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8), 
        F_HM0_RDATA(7) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7), 
        F_HM0_RDATA(6) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6), 
        F_HM0_RDATA(5) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5), 
        F_HM0_RDATA(4) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4), 
        F_HM0_RDATA(3) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3), 
        F_HM0_RDATA(2) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2), 
        F_HM0_RDATA(1) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1), 
        F_HM0_RDATA(0) => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0), 
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

entity MSS_top_sb_CCC_0_FCCC is

    port( FAB_CCC_GL0                                        : out   std_logic;
          FAB_CCC_LOCK                                       : out   std_logic;
          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic
        );

end MSS_top_sb_CCC_0_FCCC;

architecture DEF_ARCH of MSS_top_sb_CCC_0_FCCC is 

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

              generic map(INIT => "00" & x"000007F90000044964000318C6318C1F18C61EC0404040404618",
         VCOFREQUENCY => 568.0)

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

entity MSS_top_sb_FABOSC_0_OSC is

    port( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );

end MSS_top_sb_FABOSC_0_OSC;

architecture DEF_ARCH of MSS_top_sb_FABOSC_0_OSC is 

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

entity MSS_top_sb is

    port( Motor_in_c         : out   std_logic_vector(11 downto 0);
          COREI2C_0_0_SDA_IO : inout std_logic := 'Z';
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          DEVRST_N           : in    std_logic;
          PWM_3_c            : out   std_logic;
          PWM_2_c            : out   std_logic;
          PWM_1_c            : out   std_logic;
          PWM_0_c            : out   std_logic;
          TX_c               : out   std_logic;
          RX_c               : in    std_logic
        );

end MSS_top_sb;

architecture DEF_ARCH of MSS_top_sb is 

  component CoreAPB3
    port( iPSELS_raw_2_0                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(5 downto 2) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12) := (others => 'U');
          PRDATA_regif_1_0_iv_xx                       : in    std_logic_vector(2 to 2) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_regif_1_0_iv_0                        : in    std_logic_vector(2 downto 1) := (others => 'U');
          PRDATA_generated_1_RNI9N3B1                  : in    std_logic_vector(1 to 1) := (others => 'U');
          PRDATA_generated_i_m_c                       : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_generated_i_m_0_1                     : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_regif_1_0_iv_1                        : in    std_logic_vector(3 to 3) := (others => 'U');
          PRDATA_generated_i_m                         : in    std_logic_vector(3 to 3) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(15 downto 0);
          PRDATA_0_6                                   : in    std_logic := 'U';
          PRDATA_0_4                                   : in    std_logic := 'U';
          PRDATA_0_3                                   : in    std_logic := 'U';
          PRDATA_0_5                                   : in    std_logic := 'U';
          PRDATA_0_0                                   : in    std_logic := 'U';
          pwm_negedge_reg_48                           : in    std_logic := 'U';
          pwm_negedge_reg_32                           : in    std_logic := 'U';
          pwm_negedge_reg_0                            : in    std_logic := 'U';
          pwm_negedge_reg_47                           : in    std_logic := 'U';
          pwm_negedge_reg_31                           : in    std_logic := 'U';
          pwm_negedge_reg_16                           : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_6               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_1               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_3               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_1               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_4               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_5               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_6               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_11              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_10              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_11              : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PRDATA_10              : in    std_logic := 'U';
          Motor_in_c_6                                 : in    std_logic := 'U';
          Motor_in_c_0                                 : in    std_logic := 'U';
          Motor_in_c_7                                 : in    std_logic := 'U';
          Motor_in_c_5                                 : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx_2                : out   std_logic;
          N_54                                         : in    std_logic := 'U';
          un97_psel_4                                  : in    std_logic := 'U';
          un7_pseli                                    : in    std_logic := 'U';
          N_156                                        : in    std_logic := 'U';
          N_259                                        : in    std_logic := 'U';
          un78_psel                                    : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                     : in    std_logic := 'U';
          prdata_typ20                                 : in    std_logic := 'U';
          un17_psel                                    : in    std_logic := 'U';
          N_196                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_7_mux                  : in    std_logic := 'U';
          N_199                                        : in    std_logic := 'U';
          N_198                                        : in    std_logic := 'U';
          N_197                                        : in    std_logic := 'U';
          N_119                                        : in    std_logic := 'U';
          N_109                                        : in    std_logic := 'U';
          un17_psel_0_a2_0                             : in    std_logic := 'U';
          PRDATA_m4_e_0_0                              : in    std_logic := 'U';
          N_144                                        : in    std_logic := 'U';
          N_143                                        : in    std_logic := 'U';
          N_170                                        : in    std_logic := 'U';
          N_152                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_4                      : in    std_logic := 'U';
          N_189                                        : in    std_logic := 'U';
          N_190                                        : in    std_logic := 'U';
          un7_prdata_regif                             : in    std_logic := 'U'
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

  component CoreGPIO
    port( Motor_in_c                                  : out   std_logic_vector(11 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(11 downto 0) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR_6               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PADDR_7               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PADDR_5               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PADDR_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PADDR_1               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PADDR_2               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave1_PRDATA_0              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_3              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_4              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_6              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_5              : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave1_PRDATA_1              : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          un17_psel_0_a2_0                            : out   std_logic;
          N_112                                       : out   std_logic;
          N_105                                       : in    std_logic := 'U';
          N_119                                       : in    std_logic := 'U';
          un17_psel                                   : out   std_logic;
          N_109                                       : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic := 'U';
          N_121                                       : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component COREI2C
    port( CoreAPB3_0_APBmslave0_PWDATA                  : in    std_logic_vector(7 downto 0) := (others => 'U');
          COREI2C_0_0_SDAO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                            : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT                               : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                   : in    std_logic_vector(8 downto 0) := (others => 'U');
          iPSELS_raw_2_0                                : in    std_logic_vector(0 to 0) := (others => 'U');
          PRDATA_0_0                                    : out   std_logic;
          PRDATA_0_3                                    : out   std_logic;
          PRDATA_0_6                                    : out   std_logic;
          PRDATA_0_4                                    : out   std_logic;
          PRDATA_0_5                                    : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_6                : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_0                : out   std_logic;
          CoreAPB3_0_APBmslave0_PRDATA_1                : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 : in    std_logic := 'U';
          MSS_READY                                     : in    std_logic := 'U';
          FAB_CCC_GL0                                   : in    std_logic := 'U';
          un7_pseli                                     : out   std_logic;
          N_108                                         : in    std_logic := 'U';
          un13_psel_0                                   : in    std_logic := 'U';
          N_112                                         : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y                    : in    std_logic := 'U';
          N_105                                         : out   std_logic;
          N_110                                         : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                    : in    std_logic := 'U';
          N_109                                         : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                 : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                  : in    std_logic := 'U'
        );
  end component;

  component CoreResetP
    port( MSS_READY                                 : out   std_logic;
          FAB_CCC_GL0                               : in    std_logic := 'U';
          POWER_ON_RESET_N                          : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F      : in    std_logic := 'U';
          MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N : in    std_logic := 'U'
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

  component MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave2_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_PARITY_ERR                  : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          un13_psel_0                                 : out   std_logic;
          N_110                                       : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx_2               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          N_108                                       : out   std_logic;
          N_105                                       : in    std_logic := 'U';
          N_109                                       : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic := 'U'
        );
  end component;

  component corepwm
    port( CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(7 downto 2) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 to 13) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(15 downto 0) := (others => 'U');
          PRDATA_generated_i_m                        : out   std_logic_vector(3 to 3);
          PRDATA_generated_i_m_0_1                    : out   std_logic_vector(7 to 7);
          PRDATA_regif_1_0_iv_1                       : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_0                       : out   std_logic_vector(2 downto 1);
          PRDATA_regif_1_0_iv_xx                      : out   std_logic_vector(2 to 2);
          PRDATA_generated_i_m_c                      : out   std_logic_vector(7 to 7);
          PRDATA_generated_1_RNI9N3B1                 : out   std_logic_vector(1 to 1);
          pwm_negedge_reg_9                           : out   std_logic;
          pwm_negedge_reg_25                          : out   std_logic;
          pwm_negedge_reg_40                          : out   std_logic;
          pwm_negedge_reg_41                          : out   std_logic;
          pwm_negedge_reg_56                          : out   std_logic;
          pwm_negedge_reg_57                          : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_11             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_10             : out   std_logic;
          CoreAPB3_0_APBmslave3_PRDATA_0              : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_121                                       : in    std_logic := 'U';
          un97_psel_4                                 : out   std_logic;
          un78_psel                                   : out   std_logic;
          PRDATA_generated_sn_N_4                     : out   std_logic;
          N_259                                       : out   std_logic;
          PRDATA_generated_sn_N_7_mux                 : out   std_logic;
          un7_prdata_regif                            : out   std_logic;
          N_196                                       : out   std_logic;
          N_197                                       : out   std_logic;
          N_198                                       : out   std_logic;
          N_199                                       : out   std_logic;
          N_119                                       : out   std_logic;
          N_54                                        : out   std_logic;
          PRDATA_m4_e_0_0                             : out   std_logic;
          N_105                                       : in    std_logic := 'U';
          prdata_typ20                                : out   std_logic;
          N_110                                       : in    std_logic := 'U';
          un13_psel_0                                 : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                    : out   std_logic;
          N_144                                       : out   std_logic;
          N_143                                       : out   std_logic;
          N_170                                       : out   std_logic;
          N_152                                       : out   std_logic;
          N_156                                       : out   std_logic;
          N_189                                       : out   std_logic;
          N_190                                       : out   std_logic;
          PWM_3_c                                     : out   std_logic;
          PWM_2_c                                     : out   std_logic;
          PWM_1_c                                     : out   std_logic;
          PWM_0_c                                     : out   std_logic
        );
  end component;

  component MSS_top_sb_MSS
    port( CoreAPB3_0_APBmslave0_PADDR                  : out   std_logic_vector(8 downto 0);
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                 : out   std_logic_vector(15 downto 0);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : in    std_logic_vector(15 downto 0) := (others => 'U');
          MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N    : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                : out   std_logic;
          MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                 : out   std_logic;
          MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F         : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                  : in    std_logic := 'U';
          FAB_CCC_LOCK                                 : in    std_logic := 'U';
          FAB_CCC_GL0                                  : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component MSS_top_sb_CCC_0_FCCC
    port( FAB_CCC_GL0                                        : out   std_logic;
          FAB_CCC_LOCK                                       : out   std_logic;
          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic := 'U'
        );
  end component;

  component MSS_top_sb_FABOSC_0_OSC
    port( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );
  end component;

    signal BIBUF_COREI2C_0_0_SDA_IO_Y, GND_net_1, 
        \COREI2C_0_0_SDAO_i[0]\, BIBUF_COREI2C_0_0_SCL_IO_Y, 
        \COREI2C_0_0_SCLO_i[0]\, POWER_ON_RESET_N, 
        CoreUARTapb_0_0_intr_or_2_Y, CoreUARTapb_0_0_intr_or_1_Y, 
        CoreUARTapb_0_0_intr_or_0_Y, CoreUARTapb_0_0_RXRDY, 
        CoreUARTapb_0_0_TXRDY, CoreUARTapb_0_0_FRAMING_ERR, 
        CoreUARTapb_0_0_OVERFLOW, CoreUARTapb_0_0_PARITY_ERR, 
        FAB_CCC_GL0, FAB_CCC_LOCK, 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        \iPSELS_raw_2_0[0]\, \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        \PRDATA_0[6]\, \PRDATA_0[4]\, \PRDATA_0[3]\, 
        \PRDATA_0[5]\, \PRDATA_0[0]\, \PRDATA_regif_1_0_iv_xx[2]\, 
        \pwm_negedge_reg[58]\, \pwm_negedge_reg[42]\, 
        \pwm_negedge_reg[10]\, \pwm_negedge_reg[57]\, 
        \pwm_negedge_reg[41]\, \pwm_negedge_reg[26]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        \PRDATA_regif_1_0_iv_0[1]\, \PRDATA_regif_1_0_iv_0[2]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[11]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[10]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[11]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[10]\, 
        \PRDATA_generated_1_RNI9N3B1[1]\, 
        \PRDATA_generated_i_m_c[7]\, 
        \PRDATA_generated_i_m_0_1[7]\, \Motor_in_c[8]\, 
        \Motor_in_c[2]\, \Motor_in_c[9]\, \Motor_in_c[7]\, 
        \PRDATA_regif_1_0_iv_1[3]\, \PRDATA_generated_i_m[3]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave3_PSELx_2, N_54, un97_psel_4, 
        un7_pseli, N_156, N_259, un78_psel, 
        PRDATA_generated_sn_m5_0, prdata_typ20, un17_psel, N_196, 
        PRDATA_generated_sn_N_7_mux, N_199, N_198, N_197, N_119, 
        N_109, un17_psel_0_a2_0, PRDATA_m4_e_0_0, N_144, N_143, 
        N_170, N_152, PRDATA_generated_sn_N_4, N_189, N_190, 
        un7_prdata_regif, \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[8]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[9]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[10]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[11]\, 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, MSS_READY, N_112, N_105, 
        CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE, N_121, 
        \COREI2C_0_0_INT[0]\, \CoreAPB3_0_APBmslave0_PADDR[8]\, 
        N_108, un13_psel_0, N_110, 
        \CoreAPB3_0_APBmslave0_PWDATA[12]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[13]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[14]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[15]\, 
        MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, VCC_net_1
         : std_logic;

    for all : CoreAPB3
	Use entity work.CoreAPB3(DEF_ARCH);
    for all : CoreGPIO
	Use entity work.CoreGPIO(DEF_ARCH);
    for all : COREI2C
	Use entity work.COREI2C(DEF_ARCH);
    for all : CoreResetP
	Use entity work.CoreResetP(DEF_ARCH);
    for all : MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb
	Use entity work.MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb(DEF_ARCH);
    for all : corepwm
	Use entity work.corepwm(DEF_ARCH);
    for all : MSS_top_sb_MSS
	Use entity work.MSS_top_sb_MSS(DEF_ARCH);
    for all : MSS_top_sb_CCC_0_FCCC
	Use entity work.MSS_top_sb_CCC_0_FCCC(DEF_ARCH);
    for all : MSS_top_sb_FABOSC_0_OSC
	Use entity work.MSS_top_sb_FABOSC_0_OSC(DEF_ARCH);
begin 

    Motor_in_c(9) <= \Motor_in_c[9]\;
    Motor_in_c(8) <= \Motor_in_c[8]\;
    Motor_in_c(7) <= \Motor_in_c[7]\;
    Motor_in_c(2) <= \Motor_in_c[2]\;

    CoreAPB3_0 : CoreAPB3
      port map(iPSELS_raw_2_0(0) => \iPSELS_raw_2_0[0]\, 
        CoreAPB3_0_APBmslave0_PADDR(5) => 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        PRDATA_regif_1_0_iv_xx(2) => \PRDATA_regif_1_0_iv_xx[2]\, 
        CoreAPB3_0_APBmslave2_PRDATA(7) => 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        CoreAPB3_0_APBmslave2_PRDATA(6) => 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        CoreAPB3_0_APBmslave2_PRDATA(5) => 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        CoreAPB3_0_APBmslave2_PRDATA(4) => 
        \CoreAPB3_0_APBmslave2_PRDATA[4]\, 
        CoreAPB3_0_APBmslave2_PRDATA(3) => 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        CoreAPB3_0_APBmslave2_PRDATA(2) => 
        \CoreAPB3_0_APBmslave2_PRDATA[2]\, 
        CoreAPB3_0_APBmslave2_PRDATA(1) => 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        CoreAPB3_0_APBmslave2_PRDATA(0) => 
        \CoreAPB3_0_APBmslave2_PRDATA[0]\, 
        PRDATA_regif_1_0_iv_0(2) => \PRDATA_regif_1_0_iv_0[2]\, 
        PRDATA_regif_1_0_iv_0(1) => \PRDATA_regif_1_0_iv_0[1]\, 
        PRDATA_generated_1_RNI9N3B1(1) => 
        \PRDATA_generated_1_RNI9N3B1[1]\, 
        PRDATA_generated_i_m_c(7) => \PRDATA_generated_i_m_c[7]\, 
        PRDATA_generated_i_m_0_1(7) => 
        \PRDATA_generated_i_m_0_1[7]\, PRDATA_regif_1_0_iv_1(3)
         => \PRDATA_regif_1_0_iv_1[3]\, PRDATA_generated_i_m(3)
         => \PRDATA_generated_i_m[3]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        PRDATA_0_6 => \PRDATA_0[6]\, PRDATA_0_4 => \PRDATA_0[4]\, 
        PRDATA_0_3 => \PRDATA_0[3]\, PRDATA_0_5 => \PRDATA_0[5]\, 
        PRDATA_0_0 => \PRDATA_0[0]\, pwm_negedge_reg_48 => 
        \pwm_negedge_reg[58]\, pwm_negedge_reg_32 => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg_0 => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg_47 => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg_31 => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg_16 => 
        \pwm_negedge_reg[26]\, CoreAPB3_0_APBmslave0_PRDATA_6 => 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, 
        CoreAPB3_0_APBmslave0_PRDATA_1 => 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        CoreAPB3_0_APBmslave0_PRDATA_0 => 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        CoreAPB3_0_APBmslave1_PRDATA_3 => 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        CoreAPB3_0_APBmslave1_PRDATA_1 => 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        CoreAPB3_0_APBmslave1_PRDATA_0 => 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        CoreAPB3_0_APBmslave1_PRDATA_4 => 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        CoreAPB3_0_APBmslave1_PRDATA_5 => 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        CoreAPB3_0_APBmslave1_PRDATA_6 => 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        CoreAPB3_0_APBmslave1_PRDATA_11 => 
        \CoreAPB3_0_APBmslave1_PRDATA[11]\, 
        CoreAPB3_0_APBmslave1_PRDATA_10 => 
        \CoreAPB3_0_APBmslave1_PRDATA[10]\, 
        CoreAPB3_0_APBmslave3_PRDATA_0 => 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, 
        CoreAPB3_0_APBmslave3_PRDATA_11 => 
        \CoreAPB3_0_APBmslave3_PRDATA[11]\, 
        CoreAPB3_0_APBmslave3_PRDATA_10 => 
        \CoreAPB3_0_APBmslave3_PRDATA[10]\, Motor_in_c_6 => 
        \Motor_in_c[8]\, Motor_in_c_0 => \Motor_in_c[2]\, 
        Motor_in_c_7 => \Motor_in_c[9]\, Motor_in_c_5 => 
        \Motor_in_c[7]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave3_PSELx_2 => 
        CoreAPB3_0_APBmslave3_PSELx_2, N_54 => N_54, un97_psel_4
         => un97_psel_4, un7_pseli => un7_pseli, N_156 => N_156, 
        N_259 => N_259, un78_psel => un78_psel, 
        PRDATA_generated_sn_m5_0 => PRDATA_generated_sn_m5_0, 
        prdata_typ20 => prdata_typ20, un17_psel => un17_psel, 
        N_196 => N_196, PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_199 => N_199, N_198 => 
        N_198, N_197 => N_197, N_119 => N_119, N_109 => N_109, 
        un17_psel_0_a2_0 => un17_psel_0_a2_0, PRDATA_m4_e_0_0 => 
        PRDATA_m4_e_0_0, N_144 => N_144, N_143 => N_143, N_170
         => N_170, N_152 => N_152, PRDATA_generated_sn_N_4 => 
        PRDATA_generated_sn_N_4, N_189 => N_189, N_190 => N_190, 
        un7_prdata_regif => un7_prdata_regif);
    
    BIBUF_COREI2C_0_0_SDA_IO : BIBUF
      port map(PAD => COREI2C_0_0_SDA_IO, D => GND_net_1, E => 
        \COREI2C_0_0_SDAO_i[0]\, Y => BIBUF_COREI2C_0_0_SDA_IO_Y);
    
    CoreGPIO_0_0 : CoreGPIO
      port map(Motor_in_c(11) => Motor_in_c(11), Motor_in_c(10)
         => Motor_in_c(10), Motor_in_c(9) => \Motor_in_c[9]\, 
        Motor_in_c(8) => \Motor_in_c[8]\, Motor_in_c(7) => 
        \Motor_in_c[7]\, Motor_in_c(6) => Motor_in_c(6), 
        Motor_in_c(5) => Motor_in_c(5), Motor_in_c(4) => 
        Motor_in_c(4), Motor_in_c(3) => Motor_in_c(3), 
        Motor_in_c(2) => \Motor_in_c[2]\, Motor_in_c(1) => 
        Motor_in_c(1), Motor_in_c(0) => Motor_in_c(0), 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PADDR_6 => 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        CoreAPB3_0_APBmslave0_PADDR_7 => 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        CoreAPB3_0_APBmslave0_PADDR_5 => 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        CoreAPB3_0_APBmslave0_PADDR_0 => 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        CoreAPB3_0_APBmslave0_PADDR_1 => 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        CoreAPB3_0_APBmslave0_PADDR_2 => 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        CoreAPB3_0_APBmslave1_PRDATA_0 => 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        CoreAPB3_0_APBmslave1_PRDATA_3 => 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        CoreAPB3_0_APBmslave1_PRDATA_4 => 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        CoreAPB3_0_APBmslave1_PRDATA_6 => 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        CoreAPB3_0_APBmslave1_PRDATA_11 => 
        \CoreAPB3_0_APBmslave1_PRDATA[11]\, 
        CoreAPB3_0_APBmslave1_PRDATA_5 => 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        CoreAPB3_0_APBmslave1_PRDATA_10 => 
        \CoreAPB3_0_APBmslave1_PRDATA[10]\, 
        CoreAPB3_0_APBmslave1_PRDATA_1 => 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, un17_psel_0_a2_0 => 
        un17_psel_0_a2_0, N_112 => N_112, N_105 => N_105, N_119
         => N_119, un17_psel => un17_psel, N_109 => N_109, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave3_PSELx_2 => 
        CoreAPB3_0_APBmslave3_PSELx_2, N_121 => N_121);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    COREI2C_0_0 : COREI2C
      port map(CoreAPB3_0_APBmslave0_PWDATA(7) => 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, COREI2C_0_0_SDAO_i(0)
         => \COREI2C_0_0_SDAO_i[0]\, COREI2C_0_0_SCLO_i(0) => 
        \COREI2C_0_0_SCLO_i[0]\, COREI2C_0_0_INT(0) => 
        \COREI2C_0_0_INT[0]\, CoreAPB3_0_APBmslave0_PADDR(8) => 
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
        \CoreAPB3_0_APBmslave0_PADDR[0]\, iPSELS_raw_2_0(0) => 
        \iPSELS_raw_2_0[0]\, PRDATA_0_0 => \PRDATA_0[0]\, 
        PRDATA_0_3 => \PRDATA_0[3]\, PRDATA_0_6 => \PRDATA_0[6]\, 
        PRDATA_0_4 => \PRDATA_0[4]\, PRDATA_0_5 => \PRDATA_0[5]\, 
        CoreAPB3_0_APBmslave0_PRDATA_6 => 
        \CoreAPB3_0_APBmslave0_PRDATA[7]\, 
        CoreAPB3_0_APBmslave0_PRDATA_0 => 
        \CoreAPB3_0_APBmslave0_PRDATA[1]\, 
        CoreAPB3_0_APBmslave0_PRDATA_1 => 
        \CoreAPB3_0_APBmslave0_PRDATA[2]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_0 => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR_2 => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        un7_pseli => un7_pseli, N_108 => N_108, un13_psel_0 => 
        un13_psel_0, N_112 => N_112, BIBUF_COREI2C_0_0_SDA_IO_Y
         => BIBUF_COREI2C_0_0_SDA_IO_Y, N_105 => N_105, N_110 => 
        N_110, BIBUF_COREI2C_0_0_SCL_IO_Y => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, N_109 => N_109, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE);
    
    CORERESETP_0 : CoreResetP
      port map(MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        POWER_ON_RESET_N => POWER_ON_RESET_N, 
        MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N);
    
    SYSRESET_POR : SYSRESET
      port map(POWER_ON_RESET_N => POWER_ON_RESET_N, DEVRST_N => 
        DEVRST_N);
    
    CoreUARTapb_0_0_intr_or_0 : OR3
      port map(A => CoreUARTapb_0_0_FRAMING_ERR, B => 
        CoreUARTapb_0_0_OVERFLOW, C => CoreUARTapb_0_0_PARITY_ERR, 
        Y => CoreUARTapb_0_0_intr_or_0_Y);
    
    CoreUARTapb_0_0 : MSS_top_sb_CoreUARTapb_0_0_CoreUARTapb
      port map(CoreAPB3_0_APBmslave2_PRDATA(7) => 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        CoreAPB3_0_APBmslave2_PRDATA(6) => 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        CoreAPB3_0_APBmslave2_PRDATA(5) => 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        CoreAPB3_0_APBmslave2_PRDATA(4) => 
        \CoreAPB3_0_APBmslave2_PRDATA[4]\, 
        CoreAPB3_0_APBmslave2_PRDATA(3) => 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        CoreAPB3_0_APBmslave2_PRDATA(2) => 
        \CoreAPB3_0_APBmslave2_PRDATA[2]\, 
        CoreAPB3_0_APBmslave2_PRDATA(1) => 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        CoreAPB3_0_APBmslave2_PRDATA(0) => 
        \CoreAPB3_0_APBmslave2_PRDATA[0]\, 
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_TXRDY => 
        CoreUARTapb_0_0_TXRDY, CoreUARTapb_0_0_RXRDY => 
        CoreUARTapb_0_0_RXRDY, CoreUARTapb_0_0_OVERFLOW => 
        CoreUARTapb_0_0_OVERFLOW, CoreUARTapb_0_0_PARITY_ERR => 
        CoreUARTapb_0_0_PARITY_ERR, CoreAPB3_0_APBmslave0_PENABLE
         => CoreAPB3_0_APBmslave0_PENABLE, un13_psel_0 => 
        un13_psel_0, N_110 => N_110, 
        CoreAPB3_0_APBmslave3_PSELx_2 => 
        CoreAPB3_0_APBmslave3_PSELx_2, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, N_108 => N_108, N_105 => 
        N_105, N_109 => N_109, TX_c => TX_c, RX_c => RX_c);
    
    CoreUARTapb_0_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_0_0_RXRDY, B => 
        CoreUARTapb_0_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_1_Y);
    
    corepwm_0_0 : corepwm
      port map(CoreAPB3_0_APBmslave0_PADDR(7) => 
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        PRDATA_generated_i_m(3) => \PRDATA_generated_i_m[3]\, 
        PRDATA_generated_i_m_0_1(7) => 
        \PRDATA_generated_i_m_0_1[7]\, PRDATA_regif_1_0_iv_1(3)
         => \PRDATA_regif_1_0_iv_1[3]\, PRDATA_regif_1_0_iv_0(2)
         => \PRDATA_regif_1_0_iv_0[2]\, PRDATA_regif_1_0_iv_0(1)
         => \PRDATA_regif_1_0_iv_0[1]\, PRDATA_regif_1_0_iv_xx(2)
         => \PRDATA_regif_1_0_iv_xx[2]\, 
        PRDATA_generated_i_m_c(7) => \PRDATA_generated_i_m_c[7]\, 
        PRDATA_generated_1_RNI9N3B1(1) => 
        \PRDATA_generated_1_RNI9N3B1[1]\, pwm_negedge_reg_9 => 
        \pwm_negedge_reg[10]\, pwm_negedge_reg_25 => 
        \pwm_negedge_reg[26]\, pwm_negedge_reg_40 => 
        \pwm_negedge_reg[41]\, pwm_negedge_reg_41 => 
        \pwm_negedge_reg[42]\, pwm_negedge_reg_56 => 
        \pwm_negedge_reg[57]\, pwm_negedge_reg_57 => 
        \pwm_negedge_reg[58]\, CoreAPB3_0_APBmslave3_PRDATA_11
         => \CoreAPB3_0_APBmslave3_PRDATA[11]\, 
        CoreAPB3_0_APBmslave3_PRDATA_10 => 
        \CoreAPB3_0_APBmslave3_PRDATA[10]\, 
        CoreAPB3_0_APBmslave3_PRDATA_0 => 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, N_121 => N_121, un97_psel_4
         => un97_psel_4, un78_psel => un78_psel, 
        PRDATA_generated_sn_N_4 => PRDATA_generated_sn_N_4, N_259
         => N_259, PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, un7_prdata_regif => 
        un7_prdata_regif, N_196 => N_196, N_197 => N_197, N_198
         => N_198, N_199 => N_199, N_119 => N_119, N_54 => N_54, 
        PRDATA_m4_e_0_0 => PRDATA_m4_e_0_0, N_105 => N_105, 
        prdata_typ20 => prdata_typ20, N_110 => N_110, un13_psel_0
         => un13_psel_0, PRDATA_generated_sn_m5_0 => 
        PRDATA_generated_sn_m5_0, N_144 => N_144, N_143 => N_143, 
        N_170 => N_170, N_152 => N_152, N_156 => N_156, N_189 => 
        N_189, N_190 => N_190, PWM_3_c => PWM_3_c, PWM_2_c => 
        PWM_2_c, PWM_1_c => PWM_1_c, PWM_0_c => PWM_0_c);
    
    MSS_top_sb_MSS_0 : MSS_top_sb_MSS
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
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
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        \MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        MSS_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        MSS_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        MSS_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        CoreUARTapb_0_0_intr_or_2_Y => 
        CoreUARTapb_0_0_intr_or_2_Y, FAB_CCC_LOCK => FAB_CCC_LOCK, 
        FAB_CCC_GL0 => FAB_CCC_GL0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    CCC_0 : MSS_top_sb_CCC_0_FCCC
      port map(FAB_CCC_GL0 => FAB_CCC_GL0, FAB_CCC_LOCK => 
        FAB_CCC_LOCK, 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC => 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    
    BIBUF_COREI2C_0_0_SCL_IO : BIBUF
      port map(PAD => COREI2C_0_0_SCL_IO, D => GND_net_1, E => 
        \COREI2C_0_0_SCLO_i[0]\, Y => BIBUF_COREI2C_0_0_SCL_IO_Y);
    
    CoreUARTapb_0_0_intr_or_2 : OR3
      port map(A => CoreUARTapb_0_0_intr_or_1_Y, B => 
        CoreUARTapb_0_0_intr_or_0_Y, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_2_Y);
    
    FABOSC_0 : MSS_top_sb_FABOSC_0_OSC
      port map(FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
         => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity MSS_top is

    port( Motor_in           : out   std_logic_vector(11 downto 0);
          DEVRST_N           : in    std_logic;
          RX                 : in    std_logic;
          PWM_0              : out   std_logic;
          PWM_1              : out   std_logic;
          PWM_2              : out   std_logic;
          PWM_3              : out   std_logic;
          TX                 : out   std_logic;
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          COREI2C_0_0_SDA_IO : inout std_logic := 'Z'
        );

end MSS_top;

architecture DEF_ARCH of MSS_top is 

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

  component MSS_top_sb
    port( Motor_in_c         : out   std_logic_vector(11 downto 0);
          COREI2C_0_0_SDA_IO : inout   std_logic;
          COREI2C_0_0_SCL_IO : inout   std_logic;
          DEVRST_N           : in    std_logic := 'U';
          PWM_3_c            : out   std_logic;
          PWM_2_c            : out   std_logic;
          PWM_1_c            : out   std_logic;
          PWM_0_c            : out   std_logic;
          TX_c               : out   std_logic;
          RX_c               : in    std_logic := 'U'
        );
  end component;

  component INBUF
    generic (IOSTD:string := "");

    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1, RX_c, \Motor_in_c[0]\, 
        \Motor_in_c[1]\, \Motor_in_c[2]\, \Motor_in_c[3]\, 
        \Motor_in_c[4]\, \Motor_in_c[5]\, \Motor_in_c[6]\, 
        \Motor_in_c[7]\, \Motor_in_c[8]\, \Motor_in_c[9]\, 
        \Motor_in_c[10]\, \Motor_in_c[11]\, PWM_0_c, PWM_1_c, 
        PWM_2_c, PWM_3_c, TX_c : std_logic;

    for all : MSS_top_sb
	Use entity work.MSS_top_sb(DEF_ARCH);
begin 


    PWM_1_obuf : OUTBUF
      port map(D => PWM_1_c, PAD => PWM_1);
    
    \Motor_in_obuf[7]\ : OUTBUF
      port map(D => \Motor_in_c[7]\, PAD => Motor_in(7));
    
    TX_obuf : OUTBUF
      port map(D => TX_c, PAD => TX);
    
    \Motor_in_obuf[1]\ : OUTBUF
      port map(D => \Motor_in_c[1]\, PAD => Motor_in(1));
    
    \Motor_in_obuf[0]\ : OUTBUF
      port map(D => \Motor_in_c[0]\, PAD => Motor_in(0));
    
    \Motor_in_obuf[4]\ : OUTBUF
      port map(D => \Motor_in_c[4]\, PAD => Motor_in(4));
    
    \Motor_in_obuf[5]\ : OUTBUF
      port map(D => \Motor_in_c[5]\, PAD => Motor_in(5));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    MSS_top_sb_0 : MSS_top_sb
      port map(Motor_in_c(11) => \Motor_in_c[11]\, Motor_in_c(10)
         => \Motor_in_c[10]\, Motor_in_c(9) => \Motor_in_c[9]\, 
        Motor_in_c(8) => \Motor_in_c[8]\, Motor_in_c(7) => 
        \Motor_in_c[7]\, Motor_in_c(6) => \Motor_in_c[6]\, 
        Motor_in_c(5) => \Motor_in_c[5]\, Motor_in_c(4) => 
        \Motor_in_c[4]\, Motor_in_c(3) => \Motor_in_c[3]\, 
        Motor_in_c(2) => \Motor_in_c[2]\, Motor_in_c(1) => 
        \Motor_in_c[1]\, Motor_in_c(0) => \Motor_in_c[0]\, 
        COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO, 
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO, DEVRST_N => 
        DEVRST_N, PWM_3_c => PWM_3_c, PWM_2_c => PWM_2_c, PWM_1_c
         => PWM_1_c, PWM_0_c => PWM_0_c, TX_c => TX_c, RX_c => 
        RX_c);
    
    \Motor_in_obuf[11]\ : OUTBUF
      port map(D => \Motor_in_c[11]\, PAD => Motor_in(11));
    
    RX_ibuf : INBUF
      port map(PAD => RX, Y => RX_c);
    
    \Motor_in_obuf[8]\ : OUTBUF
      port map(D => \Motor_in_c[8]\, PAD => Motor_in(8));
    
    \Motor_in_obuf[2]\ : OUTBUF
      port map(D => \Motor_in_c[2]\, PAD => Motor_in(2));
    
    \Motor_in_obuf[9]\ : OUTBUF
      port map(D => \Motor_in_c[9]\, PAD => Motor_in(9));
    
    \Motor_in_obuf[6]\ : OUTBUF
      port map(D => \Motor_in_c[6]\, PAD => Motor_in(6));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    PWM_3_obuf : OUTBUF
      port map(D => PWM_3_c, PAD => PWM_3);
    
    PWM_2_obuf : OUTBUF
      port map(D => PWM_2_c, PAD => PWM_2);
    
    PWM_0_obuf : OUTBUF
      port map(D => PWM_0_c, PAD => PWM_0);
    
    \Motor_in_obuf[10]\ : OUTBUF
      port map(D => \Motor_in_c[10]\, PAD => Motor_in(10));
    
    \Motor_in_obuf[3]\ : OUTBUF
      port map(D => \Motor_in_c[3]\, PAD => Motor_in(3));
    

end DEF_ARCH; 
