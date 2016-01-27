-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREAPB3_MUXPTOB3 is

    port( CoreAPB3_0_APBmslave0_PRDATA                 : in    std_logic_vector(5 to 5);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(13 downto 12);
          pwm_enable_reg_m                             : in    std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_yy                       : in    std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave3_PRDATA                 : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0);
          PRDATA_0_iv_1                                : in    std_logic_vector(7 to 7);
          PRDATA_0_iv_0                                : in    std_logic_vector(7 to 7);
          PRDATA_regif_1_iv_1                          : in    std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave2_PRDATA_1               : in    std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_xx                         : in    std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          PRDATAi_0_1                                  : in    std_logic;
          PRDATAi_0_0                                  : in    std_logic;
          PRDATAi_0_4                                  : in    std_logic;
          PRDATAi_0_2                                  : in    std_logic;
          PRDATAi_0_6                                  : in    std_logic;
          PRDATAi_0_3                                  : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_4               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6               : in    std_logic;
          N_465                                        : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx                  : in    std_logic;
          CoreAPB3_0_APBmslave2_PSELx                  : in    std_logic;
          N_26_0                                       : in    std_logic;
          PRDATA_generated_sn_m5_0                     : in    std_logic;
          N_328                                        : in    std_logic;
          N_338                                        : in    std_logic;
          un7_pseli                                    : in    std_logic;
          N_329                                        : in    std_logic;
          PRDATA_generated_sn_N_7_mux                  : in    std_logic;
          N_327                                        : in    std_logic;
          N_326                                        : in    std_logic;
          N_325                                        : in    std_logic;
          N_324                                        : in    std_logic;
          N_316                                        : in    std_logic;
          N_23_0                                       : in    std_logic;
          N_339                                        : in    std_logic;
          N_345                                        : in    std_logic;
          N_344                                        : in    std_logic;
          N_343                                        : in    std_logic;
          N_342                                        : in    std_logic;
          N_341                                        : in    std_logic;
          N_340                                        : in    std_logic;
          N_337                                        : in    std_logic;
          N_336                                        : in    std_logic;
          N_335                                        : in    std_logic;
          N_334                                        : in    std_logic;
          N_333                                        : in    std_logic;
          N_332                                        : in    std_logic;
          N_331                                        : in    std_logic;
          N_330                                        : in    std_logic;
          N_240                                        : in    std_logic;
          prdata_typ21                                 : in    std_logic;
          N_322                                        : in    std_logic;
          N_323                                        : in    std_logic
        );

end COREAPB3_MUXPTOB3;

architecture DEF_ARCH of COREAPB3_MUXPTOB3 is 

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

    signal \PRDATA_2_d_bm[7]_net_1\, \PSELSBUS[0]_net_1\, 
        \PRDATA_2_d_am[7]_net_1\, \PRDATA_2_d_ns[7]_net_1\, N_88, 
        \PRDATA_2_d_ns[5]_net_1\, N_83, \PSELSBUS[1]_net_1\, 
        \PRDATA_2_s[0]_net_1\, \PRDATA_2_s[3]_net_1\, N_86, N_84, 
        N_87, N_85, N_89, PRDATA_sn_N_5_mux, 
        \PRDATA_2_s_0[0]_net_1\, \PRDATA_2_s[2]_net_1\, 
        \PRDATA_2_d[1]_net_1\, \PRDATA_2_d[0]_net_1\, 
        \PRDATA_2_d[2]_net_1\, \PRDATA_2_d[4]_net_1\, 
        \PRDATA_1_d[2]_net_1\, \PRDATA_2_d[6]_net_1\, 
        \PRDATA_2_d[3]_net_1\, \PRDATA_2_d_0[0]_net_1\, GND_net_1, 
        VCC_net_1 : std_logic;

begin 


    PRDATA_sn_m3 : CFG2
      generic map(INIT => x"7")

      port map(A => N_465, B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, Y => 
        PRDATA_sn_N_5_mux);
    
    \PRDATA_0[5]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(5), B => 
        CoreAPB3_0_APBmslave1_PRDATA(5), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_88);
    
    \PRDATA_2_d[1]\ : CFG4
      generic map(INIT => x"EC20")

      port map(A => un7_pseli, B => \PSELSBUS[0]_net_1\, C => 
        PRDATAi_0_1, D => N_84, Y => \PRDATA_2_d[1]_net_1\);
    
    \PRDATA[29]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_343, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29));
    
    \PRDATA[14]\ : CFG4
      generic map(INIT => x"B000")

      port map(A => N_26_0, B => PRDATA_generated_sn_m5_0, C => 
        CoreAPB3_0_APBmslave2_PSELx, D => N_328, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14));
    
    \PRDATA[4]\ : CFG4
      generic map(INIT => x"5140")

      port map(A => PRDATA_sn_N_5_mux, B => \PRDATA_2_s[3]_net_1\, 
        C => CoreAPB3_0_APBmslave2_PRDATA_1(4), D => 
        \PRDATA_2_d[4]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4));
    
    \PRDATA[25]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_339, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25));
    
    \PRDATA[10]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_324, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10));
    
    \PRDATA[2]\ : CFG4
      generic map(INIT => x"3210")

      port map(A => \PRDATA_2_s[2]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => \PRDATA_2_d[2]_net_1\, D => \PRDATA_1_d[2]_net_1\, Y
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_2_s[3]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => \PRDATA_2_s[3]_net_1\);
    
    \PRDATA_2_d[6]\ : CFG4
      generic map(INIT => x"EC20")

      port map(A => un7_pseli, B => \PSELSBUS[0]_net_1\, C => 
        PRDATAi_0_6, D => N_89, Y => \PRDATA_2_d[6]_net_1\);
    
    \PRDATA[31]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_345, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31));
    
    \PRDATA[1]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => \PRDATA_2_s[3]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => CoreAPB3_0_APBmslave2_PRDATA_0, D => 
        \PRDATA_2_d[1]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1));
    
    \PRDATA_2_s_0[0]\ : CFG4
      generic map(INIT => x"2030")

      port map(A => N_26_0, B => \PSELSBUS[0]_net_1\, C => 
        CoreAPB3_0_APBmslave2_PSELx, D => 
        PRDATA_generated_sn_m5_0, Y => \PRDATA_2_s_0[0]_net_1\);
    
    \PRDATA[8]\ : CFG4
      generic map(INIT => x"8C88")

      port map(A => prdata_typ21, B => 
        CoreAPB3_0_APBmslave2_PSELx, C => 
        PRDATA_generated_sn_N_7_mux, D => N_322, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8));
    
    \PSELSBUS[1]\ : CFG3
      generic map(INIT => x"80")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => N_465, Y => \PSELSBUS[1]_net_1\);
    
    \PRDATA_2_s[2]\ : CFG4
      generic map(INIT => x"1151")

      port map(A => \PSELSBUS[0]_net_1\, B => \PSELSBUS[1]_net_1\, 
        C => PRDATA_generated_sn_m5_0, D => N_26_0, Y => 
        \PRDATA_2_s[2]_net_1\);
    
    \PRDATA[12]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_326, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12));
    
    \PRDATA[27]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_341, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27));
    
    \PRDATA[19]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_333, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19));
    
    \PRDATA_2_d_ns[5]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \PSELSBUS[0]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PRDATA(5), C => N_88, Y => 
        \PRDATA_2_d_ns[5]_net_1\);
    
    \PRDATA_0[6]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(6), B => 
        CoreAPB3_0_APBmslave1_PRDATA(6), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_89);
    
    \PRDATA[23]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_337, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23));
    
    \PRDATA[5]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => \PRDATA_2_s[3]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => CoreAPB3_0_APBmslave2_PRDATA_4, D => 
        \PRDATA_2_d_ns[5]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA[26]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_340, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26));
    
    \PRDATA_0[4]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(4), B => 
        CoreAPB3_0_APBmslave1_PRDATA(4), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_87);
    
    \PRDATA[30]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_344, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30));
    
    \PRDATA_2_s[0]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => \PRDATA_2_s[0]_net_1\);
    
    \PRDATA[15]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_329, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15));
    
    \PRDATA_2_d[0]\ : CFG4
      generic map(INIT => x"EA40")

      port map(A => \PSELSBUS[0]_net_1\, B => PRDATAi_0_0, C => 
        un7_pseli, D => N_83, Y => \PRDATA_2_d[0]_net_1\);
    
    \PRDATA_0[3]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(3), B => 
        CoreAPB3_0_APBmslave1_PRDATA(3), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_86);
    
    \PRDATA[0]\ : CFG4
      generic map(INIT => x"3210")

      port map(A => \PRDATA_2_s_0[0]_net_1\, B => 
        PRDATA_sn_N_5_mux, C => \PRDATA_2_d_0[0]_net_1\, D => 
        PRDATA_regif_1_iv_xx(0), Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0));
    
    \PRDATA[3]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => \PRDATA_2_s[3]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => CoreAPB3_0_APBmslave2_PRDATA_2, D => 
        \PRDATA_2_d[3]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3));
    
    \PRDATA[28]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_342, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28));
    
    \PRDATA[21]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_335, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21));
    
    \PRDATA[17]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_331, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17));
    
    \PRDATA_2_d_0[0]\ : CFG4
      generic map(INIT => x"FCB8")

      port map(A => N_240, B => \PRDATA_2_s[0]_net_1\, C => 
        \PRDATA_2_d[0]_net_1\, D => PRDATA_regif_1_iv_1(0), Y => 
        \PRDATA_2_d_0[0]_net_1\);
    
    \PRDATA_2_d[4]\ : CFG4
      generic map(INIT => x"EC20")

      port map(A => un7_pseli, B => \PSELSBUS[0]_net_1\, C => 
        PRDATAi_0_4, D => N_87, Y => \PRDATA_2_d[4]_net_1\);
    
    \PRDATA_2_d[2]\ : CFG4
      generic map(INIT => x"AAFC")

      port map(A => N_85, B => N_316, C => pwm_enable_reg_m(3), D
         => \PSELSBUS[0]_net_1\, Y => \PRDATA_2_d[2]_net_1\);
    
    \PSELSBUS[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C
         => N_465, Y => \PSELSBUS[0]_net_1\);
    
    \PRDATA_2_d_am[7]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => PRDATA_0_iv_1(7), B => un7_pseli, C => 
        PRDATA_0_iv_0(7), Y => \PRDATA_2_d_am[7]_net_1\);
    
    \PRDATA[24]\ : CFG4
      generic map(INIT => x"B000")

      port map(A => N_26_0, B => PRDATA_generated_sn_m5_0, C => 
        CoreAPB3_0_APBmslave2_PSELx, D => N_338, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24));
    
    \PRDATA_2_d_bm[7]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(7), B => 
        CoreAPB3_0_APBmslave1_PRDATA(7), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => 
        \PRDATA_2_d_bm[7]_net_1\);
    
    \PRDATA_0[0]\ : CFG4
      generic map(INIT => x"ACCC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(0), B => 
        CoreAPB3_0_APBmslave1_PRDATA(0), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        N_465, Y => N_83);
    
    \PRDATA[9]\ : CFG4
      generic map(INIT => x"8C88")

      port map(A => prdata_typ21, B => 
        CoreAPB3_0_APBmslave2_PSELx, C => 
        PRDATA_generated_sn_N_7_mux, D => N_323, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9));
    
    \PRDATA_0[1]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(1), B => 
        CoreAPB3_0_APBmslave1_PRDATA(1), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_84);
    
    \PRDATA[6]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => \PRDATA_2_s[3]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => CoreAPB3_0_APBmslave2_PRDATA_5, D => 
        \PRDATA_2_d[6]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6));
    
    \PRDATA[13]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_327, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13));
    
    \PRDATA[16]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_330, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16));
    
    \PRDATA_0[2]\ : CFG4
      generic map(INIT => x"AAAC")

      port map(A => CoreAPB3_0_APBmslave3_PRDATA(2), B => 
        CoreAPB3_0_APBmslave1_PRDATA(2), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => 
        CoreAPB3_0_APBmslave2_PSELx, Y => N_85);
    
    \PRDATA_2_d[3]\ : CFG4
      generic map(INIT => x"EC20")

      port map(A => un7_pseli, B => \PSELSBUS[0]_net_1\, C => 
        PRDATAi_0_3, D => N_86, Y => \PRDATA_2_d[3]_net_1\);
    
    \PRDATA[20]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_334, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20));
    
    \PRDATA_2_d_ns[7]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_2_d_bm[7]_net_1\, B => 
        \PSELSBUS[0]_net_1\, C => \PRDATA_2_d_am[7]_net_1\, Y => 
        \PRDATA_2_d_ns[7]_net_1\);
    
    \PRDATA[7]\ : CFG4
      generic map(INIT => x"3120")

      port map(A => \PRDATA_2_s[3]_net_1\, B => PRDATA_sn_N_5_mux, 
        C => CoreAPB3_0_APBmslave2_PRDATA_6, D => 
        \PRDATA_2_d_ns[7]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7));
    
    \PRDATA[18]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_332, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18));
    
    \PRDATA[11]\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_325, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11));
    
    \PRDATA_1_d[2]\ : CFG4
      generic map(INIT => x"E4A0")

      port map(A => \PSELSBUS[1]_net_1\, B => un7_pseli, C => 
        PRDATA_regif_1_0_iv_yy(2), D => PRDATAi_0_2, Y => 
        \PRDATA_1_d[2]_net_1\);
    
    \PRDATA[22]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_23_0, B => CoreAPB3_0_APBmslave2_PSELx, C
         => PRDATA_generated_sn_N_7_mux, D => N_336, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22));
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreAPB3 is

    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PRDATA                 : in    std_logic_vector(5 to 5);
          pwm_enable_reg_m                             : in    std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_yy                       : in    std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave3_PRDATA                 : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0);
          PRDATA_0_iv_1                                : in    std_logic_vector(7 to 7);
          PRDATA_0_iv_0                                : in    std_logic_vector(7 to 7);
          PRDATA_regif_1_iv_1                          : in    std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave2_PRDATA_1               : in    std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_xx                         : in    std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          PRDATAi_0_1                                  : in    std_logic;
          PRDATAi_0_0                                  : in    std_logic;
          PRDATAi_0_4                                  : in    std_logic;
          PRDATAi_0_2                                  : in    std_logic;
          PRDATAi_0_6                                  : in    std_logic;
          PRDATAi_0_3                                  : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_4               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5               : in    std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6               : in    std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          CoreAPB3_0_APBmslave0_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave3_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave2_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx                  : out   std_logic;
          N_26_0                                       : in    std_logic;
          PRDATA_generated_sn_m5_0                     : in    std_logic;
          N_328                                        : in    std_logic;
          N_338                                        : in    std_logic;
          un7_pseli                                    : in    std_logic;
          N_329                                        : in    std_logic;
          PRDATA_generated_sn_N_7_mux                  : in    std_logic;
          N_327                                        : in    std_logic;
          N_326                                        : in    std_logic;
          N_325                                        : in    std_logic;
          N_324                                        : in    std_logic;
          N_316                                        : in    std_logic;
          N_23_0                                       : in    std_logic;
          N_339                                        : in    std_logic;
          N_345                                        : in    std_logic;
          N_344                                        : in    std_logic;
          N_343                                        : in    std_logic;
          N_342                                        : in    std_logic;
          N_341                                        : in    std_logic;
          N_340                                        : in    std_logic;
          N_337                                        : in    std_logic;
          N_336                                        : in    std_logic;
          N_335                                        : in    std_logic;
          N_334                                        : in    std_logic;
          N_333                                        : in    std_logic;
          N_332                                        : in    std_logic;
          N_331                                        : in    std_logic;
          N_330                                        : in    std_logic;
          N_240                                        : in    std_logic;
          prdata_typ21                                 : in    std_logic;
          N_322                                        : in    std_logic;
          N_323                                        : in    std_logic
        );

end CoreAPB3;

architecture DEF_ARCH of CoreAPB3 is 

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

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component COREAPB3_MUXPTOB3
    port( CoreAPB3_0_APBmslave0_PRDATA                 : in    std_logic_vector(5 to 5) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(13 downto 12) := (others => 'U');
          pwm_enable_reg_m                             : in    std_logic_vector(3 to 3) := (others => 'U');
          PRDATA_regif_1_0_iv_yy                       : in    std_logic_vector(2 to 2) := (others => 'U');
          CoreAPB3_0_APBmslave3_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_0_iv_1                                : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_0_iv_0                                : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_regif_1_iv_1                          : in    std_logic_vector(0 to 0) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA_1               : in    std_logic_vector(4 to 4) := (others => 'U');
          PRDATA_regif_1_iv_xx                         : in    std_logic_vector(0 to 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          PRDATAi_0_1                                  : in    std_logic := 'U';
          PRDATAi_0_0                                  : in    std_logic := 'U';
          PRDATAi_0_4                                  : in    std_logic := 'U';
          PRDATAi_0_2                                  : in    std_logic := 'U';
          PRDATAi_0_6                                  : in    std_logic := 'U';
          PRDATAi_0_3                                  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_4               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_2               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_5               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_6               : in    std_logic := 'U';
          N_465                                        : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx                  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PSELx                  : in    std_logic := 'U';
          N_26_0                                       : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                     : in    std_logic := 'U';
          N_328                                        : in    std_logic := 'U';
          N_338                                        : in    std_logic := 'U';
          un7_pseli                                    : in    std_logic := 'U';
          N_329                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_7_mux                  : in    std_logic := 'U';
          N_327                                        : in    std_logic := 'U';
          N_326                                        : in    std_logic := 'U';
          N_325                                        : in    std_logic := 'U';
          N_324                                        : in    std_logic := 'U';
          N_316                                        : in    std_logic := 'U';
          N_23_0                                       : in    std_logic := 'U';
          N_339                                        : in    std_logic := 'U';
          N_345                                        : in    std_logic := 'U';
          N_344                                        : in    std_logic := 'U';
          N_343                                        : in    std_logic := 'U';
          N_342                                        : in    std_logic := 'U';
          N_341                                        : in    std_logic := 'U';
          N_340                                        : in    std_logic := 'U';
          N_337                                        : in    std_logic := 'U';
          N_336                                        : in    std_logic := 'U';
          N_335                                        : in    std_logic := 'U';
          N_334                                        : in    std_logic := 'U';
          N_333                                        : in    std_logic := 'U';
          N_332                                        : in    std_logic := 'U';
          N_331                                        : in    std_logic := 'U';
          N_330                                        : in    std_logic := 'U';
          N_240                                        : in    std_logic := 'U';
          prdata_typ21                                 : in    std_logic := 'U';
          N_322                                        : in    std_logic := 'U';
          N_323                                        : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal N_465, \CoreAPB3_0_APBmslave3_PSELx\, 
        \CoreAPB3_0_APBmslave2_PSELx\, GND_net_1, VCC_net_1
         : std_logic;

    for all : COREAPB3_MUXPTOB3
	Use entity work.COREAPB3_MUXPTOB3(DEF_ARCH);
begin 

    CoreAPB3_0_APBmslave3_PSELx <= \CoreAPB3_0_APBmslave3_PSELx\;
    CoreAPB3_0_APBmslave2_PSELx <= \CoreAPB3_0_APBmslave2_PSELx\;

    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \iPSELS_raw_6_0_a2_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), Y => 
        N_465);
    
    \iPSELS_raw[2]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => \CoreAPB3_0_APBmslave2_PSELx\);
    
    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
      port map(CoreAPB3_0_APBmslave0_PRDATA(5) => 
        CoreAPB3_0_APBmslave0_PRDATA(5), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        pwm_enable_reg_m(3) => pwm_enable_reg_m(3), 
        PRDATA_regif_1_0_iv_yy(2) => PRDATA_regif_1_0_iv_yy(2), 
        CoreAPB3_0_APBmslave3_PRDATA(7) => 
        CoreAPB3_0_APBmslave3_PRDATA(7), 
        CoreAPB3_0_APBmslave3_PRDATA(6) => 
        CoreAPB3_0_APBmslave3_PRDATA(6), 
        CoreAPB3_0_APBmslave3_PRDATA(5) => 
        CoreAPB3_0_APBmslave3_PRDATA(5), 
        CoreAPB3_0_APBmslave3_PRDATA(4) => 
        CoreAPB3_0_APBmslave3_PRDATA(4), 
        CoreAPB3_0_APBmslave3_PRDATA(3) => 
        CoreAPB3_0_APBmslave3_PRDATA(3), 
        CoreAPB3_0_APBmslave3_PRDATA(2) => 
        CoreAPB3_0_APBmslave3_PRDATA(2), 
        CoreAPB3_0_APBmslave3_PRDATA(1) => 
        CoreAPB3_0_APBmslave3_PRDATA(1), 
        CoreAPB3_0_APBmslave3_PRDATA(0) => 
        CoreAPB3_0_APBmslave3_PRDATA(0), 
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
        CoreAPB3_0_APBmslave1_PRDATA(0), PRDATA_0_iv_1(7) => 
        PRDATA_0_iv_1(7), PRDATA_0_iv_0(7) => PRDATA_0_iv_0(7), 
        PRDATA_regif_1_iv_1(0) => PRDATA_regif_1_iv_1(0), 
        CoreAPB3_0_APBmslave2_PRDATA_1(4) => 
        CoreAPB3_0_APBmslave2_PRDATA_1(4), 
        PRDATA_regif_1_iv_xx(0) => PRDATA_regif_1_iv_xx(0), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0), 
        PRDATAi_0_1 => PRDATAi_0_1, PRDATAi_0_0 => PRDATAi_0_0, 
        PRDATAi_0_4 => PRDATAi_0_4, PRDATAi_0_2 => PRDATAi_0_2, 
        PRDATAi_0_6 => PRDATAi_0_6, PRDATAi_0_3 => PRDATAi_0_3, 
        CoreAPB3_0_APBmslave2_PRDATA_4 => 
        CoreAPB3_0_APBmslave2_PRDATA_4, 
        CoreAPB3_0_APBmslave2_PRDATA_2 => 
        CoreAPB3_0_APBmslave2_PRDATA_2, 
        CoreAPB3_0_APBmslave2_PRDATA_0 => 
        CoreAPB3_0_APBmslave2_PRDATA_0, 
        CoreAPB3_0_APBmslave2_PRDATA_5 => 
        CoreAPB3_0_APBmslave2_PRDATA_5, 
        CoreAPB3_0_APBmslave2_PRDATA_6 => 
        CoreAPB3_0_APBmslave2_PRDATA_6, N_465 => N_465, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave3_PSELx => 
        \CoreAPB3_0_APBmslave3_PSELx\, 
        CoreAPB3_0_APBmslave2_PSELx => 
        \CoreAPB3_0_APBmslave2_PSELx\, N_26_0 => N_26_0, 
        PRDATA_generated_sn_m5_0 => PRDATA_generated_sn_m5_0, 
        N_328 => N_328, N_338 => N_338, un7_pseli => un7_pseli, 
        N_329 => N_329, PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_327 => N_327, N_326 => 
        N_326, N_325 => N_325, N_324 => N_324, N_316 => N_316, 
        N_23_0 => N_23_0, N_339 => N_339, N_345 => N_345, N_344
         => N_344, N_343 => N_343, N_342 => N_342, N_341 => N_341, 
        N_340 => N_340, N_337 => N_337, N_336 => N_336, N_335 => 
        N_335, N_334 => N_334, N_333 => N_333, N_332 => N_332, 
        N_331 => N_331, N_330 => N_330, N_240 => N_240, 
        prdata_typ21 => prdata_typ21, N_322 => N_322, N_323 => 
        N_323);
    
    \iPSELS_raw[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => \CoreAPB3_0_APBmslave3_PSELx\);
    
    \iPSELS_raw[1]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => CoreAPB3_0_APBmslave1_PSELx);
    
    \iPSELS_raw[0]\ : CFG4
      generic map(INIT => x"0200")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), D
         => N_465, Y => CoreAPB3_0_APBmslave0_PSELx);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2CREAL is

    port( COREI2C_0_0_SDAO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT              : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 0);
          sersta_m                     : out   std_logic_vector(2 to 2);
          PRDATA_0_iv_0                : out   std_logic_vector(7 to 7);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0);
          serdat_5                     : out   std_logic;
          sercon_5                     : out   std_logic;
          PRDATA_0_iv_1_4              : out   std_logic;
          PRDATAi_0_3                  : out   std_logic;
          PRDATAi_0_4                  : out   std_logic;
          PRDATAi_0_6                  : out   std_logic;
          PRDATAi_0_1                  : out   std_logic;
          PRDATAi_0_0                  : out   std_logic;
          PRDATAi_0_2                  : out   std_logic;
          MSS_READY                    : in    std_logic;
          FAB_CCC_GL0                  : in    std_logic;
          un3_prdata_0                 : out   std_logic;
          un3_wen_2                    : in    std_logic;
          N_10_0                       : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y   : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y   : in    std_logic;
          un5_psel_0_0                 : in    std_logic;
          un13_psel_0_0                : in    std_logic;
          un7_pseli                    : in    std_logic;
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic;
          CoreAPB3_0_APBmslave0_PSELx  : in    std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
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

    signal \COREI2C_0_0_SDAO[0]\, \COREI2C_0_0_SCLO[0]\, 
        \fsmdet[3]_net_1\, \fsmdet_i_0[3]\, \SCLInt\, SCLInt_i_0, 
        SCLSCL_1_sqmuxa, SCLSCL_1_sqmuxa_i_0, \fsmsta[0]_net_1\, 
        GND_net_1, \fsmsta_8_0_iv_i_0[0]\, 
        un1_ens1_pre_1_sqmuxa_i_0, VCC_net_1, \fsmsta[1]_net_1\, 
        \fsmsta_8[1]\, \fsmsta[2]_net_1\, N_1266_i_0, 
        \fsmsta[3]_net_1\, \fsmsta_8_0_iv_i_0[3]\, 
        \fsmsta[4]_net_1\, \fsmsta_8[4]\, \ack\, ack_7, 
        \sercon[6]_net_1\, N_1273, \SDAO_int_1_sqmuxa_i_0\, 
        \serdat[0]_net_1\, \serdat_9[0]\, \un1_serdat_2_sqmuxa\, 
        \serdat[1]_net_1\, \serdat_9[1]\, \serdat[2]_net_1\, 
        \serdat_9[2]\, \serdat[3]_net_1\, \serdat_9[3]\, 
        \serdat[4]_net_1\, \serdat_9[4]\, \serdat_5\, 
        \serdat_9[5]\, \serdat[6]_net_1\, \serdat_9[6]\, 
        \serdat[7]_net_1\, \serdat_9[7]\, \bsd7\, bsd7_8, 
        \bsd7_tmp\, bsd7_tmp_6, \adrcomp\, \un1_adrcomp5\, 
        adrcomp_2_sqmuxa_i_0, \ack_bit\, \ack_bit_1_sqmuxa\, 
        \PCLKint\, PCLKint_3, un1_pclkint4_i_0, \busfree\, 
        un105_fsmdet, \adrcompen\, \adrcompen_0_sqmuxa\, 
        adrcompen_2_sqmuxa_i_0, \SCLSCL\, \fsmmod[1]_net_1\, 
        \SDAInt\, \SDAI_ff_reg[0]_net_1\, \un1_rtn_4\, 
        \SCLI_ff_reg[0]_net_1\, \un1_rtn_3\, \nedetect\, 
        \nedetect_0_sqmuxa\, rtn_1_i_0, \pedetect\, 
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
        \SCLI_ff_reg_3[1]\, \sercon[0]_net_1\, un5_penable, 
        \sercon[1]_net_1\, \sercon[2]_net_1\, 
        \COREI2C_0_0_INT[0]\, \sercon_9[3]\, \sercon[4]_net_1\, 
        \sercon_9[4]\, \sercon_5\, \sercon[7]_net_1\, 
        \indelay[0]_net_1\, \indelay_4[0]\, \sersta[4]_net_1\, 
        \sersta_32[4]\, \framesync[0]_net_1\, \framesync_7[0]\, 
        \framesync[1]_net_1\, \framesync_7[1]\, 
        \framesync[2]_net_1\, \framesync_7[2]\, 
        \framesync[3]_net_1\, \framesync_7[3]\, 
        \PCLK_count1[0]_net_1\, \PCLK_count1_10[0]\, 
        \PCLK_count1[1]_net_1\, N_295_i_0, \PCLK_count1[2]_net_1\, 
        N_7_i_0, \PCLK_count1[3]_net_1\, N_5_i_0, 
        \sersta[0]_net_1\, \sersta_32[0]\, \sersta[1]_net_1\, 
        \sersta_32[1]\, \sersta[2]_net_1\, \sersta_32[2]\, 
        \sersta[3]_net_1\, \sersta_32[3]\, \fsmsync[5]_net_1\, 
        N_952_i_0, \fsmsync[4]_net_1\, N_954_i_0, 
        \fsmsync[3]_net_1\, N_956_i_0, \fsmsync[2]_net_1\, 
        N_958_i_0, \fsmsync[1]_net_1\, N_960_i_0, 
        \fsmdet[6]_net_1\, \fsmdet[5]_net_1\, N_916_i_0, 
        \fsmdet[4]_net_1\, N_918_i_0, N_920_i_0, 
        \fsmdet[2]_net_1\, N_922_i_0, \fsmdet[1]_net_1\, 
        N_924_i_0, \fsmdet[0]_net_1\, N_926_i_0, 
        \fsmmod[6]_net_1\, \fsmmod_ns[0]\, \fsmmod[5]_net_1\, 
        \fsmmod_ns[1]\, \fsmmod[4]_net_1\, N_1011_i_0, 
        \fsmmod[3]_net_1\, \fsmmod_ns[3]\, \fsmmod[2]_net_1\, 
        N_1014_i_0, \fsmmod_ns[5]\, \fsmmod[0]_net_1\, N_1017_i_0, 
        \fsmsync[7]_net_1\, \fsmsync_ns[0]\, \fsmsync[6]_net_1\, 
        N_950_i_0, un149_ens1_i_0, \PCLK_count1_ov\, 
        PCLK_count1_ov_9, \PCLKint_ff\, PCLKint_ff_2, 
        \PCLK_count2_ov\, \PCLK_count2_ov_0_sqmuxa\, un60_ens1, 
        N_422, un59_fsmdet, un54_fsmdet, \fsmsta_3_sqmuxa\, 
        un105_fsmdet_1, un20_fsmmod, un133_framesync, 
        \fsmsta_cnst_m_2[4]\, un136_framesync, un7_counter_rst, 
        \fsmsta_8_0_iv_i_1[3]\, \fsmsta_nxt_cnst_i_m[3]\, 
        un20_sdao_int, un2_fsmsta_7_s3, un2_fsmsta_8_s1, 
        \fsmsta_8_0_iv_2[3]\, N_132, SDAO_int_7_0_340_0_1, N_124, 
        SDAO_int_7_0_340_a3_0_1, N_410, SDAO_int_7_0_340_0_a3_1, 
        un22_si_int, un23_fsmdet_1, un21_fsmdet_2, un23_fsmdet, 
        un25_si_int, un1_fsmsta, un21_fsmdet_0, N_395, N_401, 
        N_1651_tz, un134_fsmsta_i_1_0, N_388, N_112, N_406, 
        un106_ens1, \PRDATA_0_iv_1[3]_net_1\, \un3_prdata_0\, 
        \N_10_0\, \PRDATA_0_iv_1[4]_net_1\, 
        \PRDATA_0_iv_1[6]_net_1\, un7_counter_rst_1_0, N_387, 
        un7_counter_rst_4, bsd7_tmp_6_am, bsd7_tmp_6_ns_1, 
        un105_ens1, serdat_0_sqmuxa_sn, bsd7_8_m_am, bsd7_8_m_bm, 
        un70_fsmsta, SDAO_int_7_0_340_o4_0_0, bsd7_tmp_6_sn_m6_0, 
        \fsmsta_nxt_60_i_m_0[3]\, \fsmmod_ns_0_0_a3_0_0[5]_net_1\, 
        un27_adrcompen_3, un133_framesync_0, un27_fsmsta_3_0, 
        N_525, N_1217_1, un8_busfree_0, N_119, N_402, N_11, N_411, 
        N_986_3, N_986_1, N_125, N_389_3, N_122, N_1091, N_32, 
        N_1097_2, un27_adrcompen_5, un141_ens1_2, 
        \fsmmod_ns_0_0_a3_0_5_1[3]_net_1\, 
        \fsmmod_ns_i_0_a3_2_0[2]_net_1\, 
        \fsmsta_nxt_cnst_i_a6_1_0[0]_net_1\, \un63_fsmsta_0_a3_0\, 
        un25_si_int_0, \fsmsta_cnst_i_o4_5[0]_net_1\, 
        \fsmsta_cnst_i_o4_4[0]_net_1\, un36_si_int_1, N_160, 
        N_158, N_1020, N_1103, un30_fsmsta, N_971, N_174, 
        fsmmod_nxt_0_sqmuxa, N_994, un76_ens1, framesync_7_sm0, 
        N_1111, N_123, N_992, N_6, N_413, N_965, N_178_2, N_1217, 
        N_440, N_163, N_1087, un22_si_int_3, N_21, N_444, 
        N_30_mux, N_15, \SDAO_int_1_sqmuxa_i_0_1\, 
        un133_fsmsta_0_1, un133_fsmsta_0_0, un16_ens1_0, 
        un27_adrcompen_8, \sercon_8_2[4]\, un135_ens1_1_0, 
        un32_si_int, N_1097, un63_fsmsta, N_127, N_986, 
        N_32_mux_i, N_985, un6_penable, un3_prdata, N_135, N_966, 
        N_1090, N_976, N_120, N_1113, N_394, N_429, un34_si_int, 
        N_415, N_1092, N_523, \un2_fsmsta_9\, N_187, N_136, 
        i4_mux_4, \fsmsta_nxt_cnst_i_m_0[3]\, 
        \fsmsta_nxt_cnst_i_0[2]_net_1\, un27_adrcompen_9, 
        \fsmsta_nxt_cnst_0_1[4]_net_1\, \fsmsync_ns_i_0[3]_net_1\, 
        \fsmmod_ns_0_0_a3_0_4[3]\, N_1096, un25_framesync, 
        \framesync_1_sqmuxa\, un81_ens1, N_993, N_1102, N_1101, 
        N_1099, N_435, un2_fsmsta_5, N_978, N_175, N_7, CO1, 
        N_964, un57_fsmsta, i4_mux_2, \sercon_m[2]\, 
        un2_fsmsta_12_s7_1, \fsmmod_ns_i_0_0_0[2]_net_1\, 
        \fsmsta_nxt_cnst_i_1[0]_net_1\, 
        \fsmsta_nxt_cnst_i_1[2]_net_1\, 
        \fsmsta_nxt_cnst_0_2[4]_net_1\, \fsmsync_ns_i_1[3]_net_1\, 
        \fsmsync_ns_0_1[0]_net_1\, un68_ens1, un139_ens1, CO0, 
        N_1086, un78_fsmdet, un2_fsmsta_6, N_397, bsd7_0_m0, 
        un92_fsmsta, \fsmsta_nxt_cnst_m_1[1]\, un2_fsmsta_12_s7_2, 
        \adrcomp_2_sqmuxa_0\, un133_fsmsta_0_4, un16_ens1_2, 
        \serdat_2_sqmuxa_1_0\, un19_framesync, bsd7_sn_N_4, 
        framesync_7_e2, CO1_0, fsmsta_0_sqmuxa, fsmsta_1_sqmuxa, 
        N_1267, serdat_0_sqmuxa, \fsmmod_ns_0_0_0[5]_net_1\, 
        un133_fsmsta, CO2, N_1071_m, un2_fsmsta_4_s6, 
        un2_fsmsta_9_s2, N_110, N_1070, N_1123, 
        \fsmsta_8_1_iv_0[4]\, \fsmsta_8_0_iv_1[0]\, 
        un2_fsmsta_12_s7, N_164, N_1272, \fsmsta_cnst_m[4]\, 
        \fsmsta_cnst_m[1]\, SDAO_int_m, \fsmsta_nxt_60_i_m[0]\, 
        un97_ens1, N_131, N_425_2, SDAO_int_m_0, 
        \fsmsta_8_0_iv_1[1]\, fsmsta_8_0_iv_0_0_312_i_0, 
        \fsmsta_8_0_iv_3[0]\, un2_fsmsta_14_0, N_1079_m, 
        \framesync_7_m2[3]\, \fsmsta_nxt_cnst_m[4]\, 
        \fsmsta_8_0_iv_2[1]\, fsmsta_8_0_iv_0_0_312_i_2, 
        \fsmsta_8_0_iv_4[0]\, \un1_serdat36\, N_1126, 
        \serdat_1_sqmuxa_1\, \un1_serdat_2_sqmuxa_1\ : std_logic;

begin 

    COREI2C_0_0_INT(0) <= \COREI2C_0_0_INT[0]\;
    serdat_5 <= \serdat_5\;
    sercon_5 <= \sercon_5\;
    un3_prdata_0 <= \un3_prdata_0\;
    N_10_0 <= \N_10_0\;

    \un2_framesync_1_1.CO2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \framesync[0]_net_1\, B => 
        \framesync_1_sqmuxa\, C => \framesync[2]_net_1\, D => 
        \framesync[1]_net_1\, Y => CO2);
    
    \sercon[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[1]_net_1\);
    
    \fsmsync_ns_i_a3_0[6]\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \fsmsync[2]_net_1\, B => \fsmsync[1]_net_1\, 
        C => N_965, D => un70_fsmsta, Y => N_993);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_1[4]\ : CFG4
      generic map(INIT => x"C8C0")

      port map(A => \ack\, B => \fsmsta_cnst_m_2[4]\, C => N_7, D
         => un133_framesync, Y => \fsmsta_cnst_m[4]\);
    
    \fsmsta_nxt_cnst_i_1[2]\ : CFG4
      generic map(INIT => x"F1F0")

      port map(A => un20_sdao_int, B => \fsmsta[2]_net_1\, C => 
        \fsmsta_nxt_cnst_i_0[2]_net_1\, D => N_1113, Y => 
        \fsmsta_nxt_cnst_i_1[2]_net_1\);
    
    \fsmsync_ns_i_o3_0[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_966, B => \SCLInt\, Y => N_978);
    
    \serDAT_WRITE_PROC.un133_fsmsta_0\ : CFG4
      generic map(INIT => x"F2FF")

      port map(A => N_401, B => \fsmsta[4]_net_1\, C => 
        un133_fsmsta_0_4, D => N_406, Y => un133_fsmsta);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_0[3]\ : CFG4
      generic map(INIT => x"00FB")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_429, Y => 
        \fsmsta_nxt_cnst_i_m_0[3]\);
    
    \fsmdet[1]\ : SLE
      port map(D => N_924_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[1]_net_1\);
    
    \fsmsta_nxt_cnst_i_a6_2[0]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmsta[3]_net_1\, B => N_1113, C => 
        \fsmsta[0]_net_1\, Y => N_1099);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un32_si_int, B => un25_si_int, C => 
        un22_si_int, D => un21_fsmdet_2, Y => un19_framesync);
    
    \APB_read.APB_read.un3_prdata\ : CFG4
      generic map(INIT => x"0004")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        un13_psel_0_0, C => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => un3_prdata);
    
    SDAInt : SLE
      port map(D => \SDAI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_4\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SDAInt\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta_cnst_m_2[4]\, B => un20_fsmmod, C => 
        un105_fsmdet_1, Y => un54_fsmdet);
    
    \APB_read.APB_read.un2_prdata_1\ : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \N_10_0\);
    
    un1_serdat36 : CFG3
      generic map(INIT => x"57")

      port map(A => un133_fsmsta, B => N_388, C => 
        \COREI2C_0_0_INT[0]\, Y => \un1_serdat36\);
    
    starto_en : SLE
      port map(D => un8_busfree, CLK => FAB_CCC_GL0, EN => 
        starto_en_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \starto_en\);
    
    \fsmmod_ns_0_o3_RNICD5I1[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1020, B => un30_fsmsta, C => 
        un133_framesync, D => N_7, Y => un2_fsmsta_8_s1);
    
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
      port map(D => N_1011_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[4]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns\ : CFG4
      generic map(INIT => x"3022")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        \fsmdet[3]_net_1\, C => bsd7_tmp_6_am, D => 
        bsd7_tmp_6_ns_1, Y => bsd7_tmp_6);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns\ : CFG3
      generic map(INIT => x"E2")

      port map(A => bsd7_8_m_am, B => un105_ens1, C => 
        bsd7_8_m_bm, Y => bsd7_8);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_4[0]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => un2_fsmsta_5, B => un136_framesync, C => 
        \fsmsta_nxt_60_i_m[0]\, D => \fsmsta_8_0_iv_1[0]\, Y => 
        \fsmsta_8_0_iv_4[0]\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_1\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[1]_net_1\, Y
         => un105_fsmdet_1);
    
    \STARTO_EN_WRITE_PROC.un8_busfree\ : CFG2
      generic map(INIT => x"8")

      port map(A => un8_busfree_0, B => \SCLInt\, Y => 
        un8_busfree);
    
    \serSTA_WRITE_PROC.sersta_32[2]\ : CFG4
      generic map(INIT => x"2F7F")

      port map(A => N_32, B => i4_mux_2, C => 
        \COREI2C_0_0_INT[0]\, D => N_15, Y => \sersta_32[2]\);
    
    \fsmmod_ns_0_0[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => N_127, B => N_131, C => \fsmmod[6]_net_1\, D
         => N_174, Y => \fsmmod_ns[0]\);
    
    \INDELAY_WRITE_PROC.indelay_4[1]\ : CFG4
      generic map(INIT => x"6090")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => \fsmsync[4]_net_1\, D => N_971, Y => \indelay_4[1]\);
    
    \fsmmod_ns_0_0_a3_0_2[1]\ : CFG4
      generic map(INIT => x"0023")

      port map(A => N_397, B => N_127, C => \pedetect\, D => 
        N_411, Y => N_425_2);
    
    \INDELAY_WRITE_PROC.indelay_4[3]\ : CFG4
      generic map(INIT => x"60A0")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \fsmsync[4]_net_1\, D => CO1, Y => \indelay_4[3]\);
    
    ack : SLE
      port map(D => ack_7, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \ack\);
    
    \fsmsync_ns_i_1[3]\ : CFG4
      generic map(INIT => x"FF40")

      port map(A => \fsmsync[4]_net_1\, B => \sercon[4]_net_1\, C
         => un70_fsmsta, D => \fsmsync_ns_i_0[3]_net_1\, Y => 
        \fsmsync_ns_i_1[3]_net_1\);
    
    \fsmsta[3]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[3]_net_1\);
    
    \fsmmod_ns_i_0_a3[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[3]_net_1\, C
         => N_413, Y => N_175);
    
    fsmsta_3_sqmuxa_RNI8I171 : CFG4
      generic map(INIT => x"5554")

      port map(A => \fsmsta_3_sqmuxa\, B => un133_framesync, C
         => \pedetect\, D => N_7, Y => un1_ens1_pre_1_sqmuxa_i_0);
    
    un2_fsmsta_9_RNIT0PE1 : CFG4
      generic map(INIT => x"005D")

      port map(A => un30_fsmsta, B => N_1020, C => un63_fsmsta, D
         => \un2_fsmsta_9\, Y => un2_fsmsta_12_s7_1);
    
    \serdat[2]\ : SLE
      port map(D => \serdat_9[2]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[2]_net_1\);
    
    \fsmsta_nxt_cnst_i_a2[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[4]_net_1\, B => N_1091, C => 
        \fsmsta[3]_net_1\, Y => N_1111);
    
    un63_fsmsta_0_a3 : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => \un63_fsmsta_0_a3_0\, Y => un63_fsmsta);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_am_RNO\ : CFG2
      generic map(INIT => x"4")

      port map(A => \COREI2C_0_0_INT[0]\, B => \nedetect\, Y => 
        bsd7_tmp_6_sn_m6_0);
    
    \FRAMESYNC_WRITE_PROC.framesync_7s2\ : CFG3
      generic map(INIT => x"CE")

      port map(A => \COREI2C_0_0_INT[0]\, B => un105_fsmdet_1, C
         => \SCLInt\, Y => framesync_7_sm0);
    
    \serDAT_WRITE_PROC.un134_fsmsta_i_o2_1\ : CFG4
      generic map(INIT => x"4500")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[3]_net_1\, Y => N_401);
    
    \ADRCOMP_WRITE_PROC.un23_fsmdet\ : CFG4
      generic map(INIT => x"CC8C")

      port map(A => un22_si_int, B => \COREI2C_0_0_INT[0]\, C => 
        un23_fsmdet_1, D => un21_fsmdet_2, Y => un23_fsmdet);
    
    \FSMSYNC_SYNC_PROC.un139_ens1\ : CFG4
      generic map(INIT => x"2220")

      port map(A => \COREI2C_0_0_INT[0]\, B => \SCLInt\, C => 
        un135_ens1_1_0, D => N_1217, Y => un139_ens1);
    
    \fsmsync_ns_0_o3_0[0]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => N_122, B => N_986_1, C => N_986_3, Y => N_966);
    
    un2_fsmsta_5_0 : CFG4
      generic map(INIT => x"3020")

      port map(A => N_444, B => \fsmsta[4]_net_1\, C => 
        un30_fsmsta, D => N_163, Y => un2_fsmsta_5);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_ns_1\ : CFG2
      generic map(INIT => x"7")

      port map(A => un105_ens1, B => serdat_0_sqmuxa_sn, Y => 
        bsd7_tmp_6_ns_1);
    
    \fsmmod_ns_i_0_0_0[2]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => \fsmmod[4]_net_1\, B => \nedetect\, C => 
        N_402, D => N_435, Y => \fsmmod_ns_i_0_0_0[2]_net_1\);
    
    \fsmsync_ns_i_o3[5]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_122, B => \fsmsync[5]_net_1\, Y => N_965);
    
    SDAO_int_RNO : CFG3
      generic map(INIT => x"FB")

      port map(A => N_132, B => SDAO_int_7_0_340_0_1, C => 
        \fsmmod[3]_net_1\, Y => N_1273);
    
    \PCLK_count1_RNO[2]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \PCLK_count1[1]_net_1\, B => 
        \PCLK_count1[2]_net_1\, C => \PCLK_count1[0]_net_1\, D
         => un7_counter_rst, Y => N_7_i_0);
    
    un2_fsmsta_9 : CFG4
      generic map(INIT => x"0400")

      port map(A => \fsmsta[4]_net_1\, B => un30_fsmsta, C => 
        \fsmsta[3]_net_1\, D => \fsmsta[1]_net_1\, Y => 
        \un2_fsmsta_9\);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        BIBUF_COREI2C_0_0_SDA_IO_Y, Y => \SDAI_ff_reg_4[0]\);
    
    \fsmsta_nxt_cnst_i_a6_0[0]\ : CFG4
      generic map(INIT => x"8880")

      port map(A => \fsmsta[4]_net_1\, B => N_1097_2, C => 
        \fsmsta[2]_net_1\, D => \fsmsta[1]_net_1\, Y => N_1097);
    
    SDAO_int_1_sqmuxa_i_0_1 : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \adrcomp\, B => \adrcompen\, C => N_402, D
         => N_389_3, Y => \SDAO_int_1_sqmuxa_i_0_1\);
    
    \fsmsta_nxt_cnst_0_o2[4]\ : CFG2
      generic map(INIT => x"7")

      port map(A => un20_sdao_int, B => \fsmsta[2]_net_1\, Y => 
        N_1087);
    
    \fsmsync_ns_i_a3_0[2]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => \fsmsync[5]_net_1\, B => N_122, C => 
        \fsmsync[6]_net_1\, D => \fsmsync[7]_net_1\, Y => N_985);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_1[3]\ : CFG4
      generic map(INIT => x"3111")

      port map(A => un2_fsmsta_8_s1, B => \fsmsta_8_0_iv_2[3]\, C
         => \ack\, D => \SDAInt\, Y => \fsmsta_8_0_iv_i_1[3]\);
    
    un2_fsmsta_6_0_o2 : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[3]_net_1\, Y => N_523);
    
    \serSTA_WRITE_PROC.sersta_32_0_a3_0[4]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[3]_net_1\, Y => N_163);
    
    \serCON_WRITE_PROC.sercon_9[3]\ : CFG4
      generic map(INIT => x"BBB8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        un5_penable, C => \COREI2C_0_0_INT[0]\, D => un97_ens1, Y
         => \sercon_9[3]\);
    
    \fsmmod_ns_0_0[5]\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \fsmmod[6]_net_1\, B => \SDAInt\, C => 
        N_425_2, D => \fsmmod_ns_0_0_0[5]_net_1\, Y => 
        \fsmmod_ns[5]\);
    
    \fsmmod[3]\ : SLE
      port map(D => \fsmmod_ns[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[3]_net_1\);
    
    SDAO_int_1_sqmuxa_i_o3 : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[0]_net_1\, Y
         => N_402);
    
    un1_rtn_4 : CFG3
      generic map(INIT => x"81")

      port map(A => \SDAI_ff_reg[2]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, C => \SDAI_ff_reg[0]_net_1\, Y
         => \un1_rtn_4\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_4_RNO[0]\ : CFG3
      generic map(INIT => x"8C")

      port map(A => \SDAInt\, B => un2_fsmsta_4_s6, C => 
        \sercon[2]_net_1\, Y => \fsmsta_nxt_60_i_m[0]\);
    
    \serdat[7]\ : SLE
      port map(D => \serdat_9[7]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[7]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m18\ : CFG4
      generic map(INIT => x"D48D")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        i4_mux_2);
    
    \sercon[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[2]_net_1\);
    
    SDAO_int_1_sqmuxa_i_0 : CFG4
      generic map(INIT => x"EFFF")

      port map(A => N_132, B => \SDAO_int_1_sqmuxa_i_0_1\, C => 
        N_136, D => N_124, Y => \SDAO_int_1_sqmuxa_i_0\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_0[4]\ : CFG4
      generic map(INIT => x"0F08")

      port map(A => un63_fsmsta, B => un30_fsmsta, C => 
        un136_framesync, D => un2_fsmsta_6, Y => 
        \fsmsta_8_1_iv_0[4]\);
    
    \STARTO_EN_WRITE_PROC.un8_busfree_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmmod[1]_net_1\, B => \busfree\, Y => 
        un8_busfree_0);
    
    SCLSCL_RNO : CFG1
      generic map(INIT => "01")

      port map(A => SCLSCL_1_sqmuxa, Y => SCLSCL_1_sqmuxa_i_0);
    
    \fsmmod_RNIPVGK[0]\ : CFG3
      generic map(INIT => x"37")

      port map(A => \fsmmod[5]_net_1\, B => \fsmdet[3]_net_1\, C
         => \fsmmod[0]_net_1\, Y => \fsmsta_cnst_m_2[4]\);
    
    \fsmmod_ns_0_0_a3_0[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmmod[1]_net_1\, B => \SCLSCL\, C => 
        \pedetect\, Y => N_174);
    
    \serCON_WRITE_PROC.sercon_8_2[4]\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \sercon[4]_net_1\, B => \fsmdet[1]_net_1\, C
         => un20_fsmmod, D => \sercon[6]_net_1\, Y => 
        \sercon_8_2[4]\);
    
    \un2_framesync_1_1.CO1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \framesync[0]_net_1\, B => 
        \framesync_1_sqmuxa\, C => \framesync[1]_net_1\, Y => 
        CO1_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \fsmmod_ns_i_0_a3_2_0[2]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \PCLKint\, B => N_402, C => \PCLKint_ff\, Y
         => \fsmmod_ns_i_0_a3_2_0[2]_net_1\);
    
    \serCON_WRITE_PROC.un76_ens1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un76_ens1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => un59_fsmdet, B => \adrcomp\, C => un54_fsmdet, 
        Y => fsmsta_0_sqmuxa);
    
    SCLSCL : SLE
      port map(D => \fsmmod[1]_net_1\, CLK => FAB_CCC_GL0, EN => 
        SCLSCL_1_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLSCL\);
    
    \fsmsta_nxt_cnst_i_1[0]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => \fsmsta_nxt_cnst_i_a6_1_0[0]_net_1\, B => 
        un30_fsmsta, C => N_1096, D => N_1097, Y => 
        \fsmsta_nxt_cnst_i_1[0]_net_1\);
    
    \serCON_WRITE_PROC.un60_ens1\ : CFG4
      generic map(INIT => x"5556")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un60_ens1);
    
    \fsmmod_ns_i_0_o2[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => \COREI2C_0_0_INT[0]\, B => \sercon_5\, Y => 
        N_119);
    
    \serDAT_WRITE_PROC.serdat_9[1]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(1), B => 
        un105_ens1, C => \serdat[0]_net_1\, Y => \serdat_9[1]\);
    
    busfree_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \fsmdet[3]_net_1\, Y => \fsmdet_i_0[3]\);
    
    \SCLI_ff_reg[0]\ : SLE
      port map(D => \SCLI_ff_reg_3[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[0]_net_1\);
    
    \fsmsync_ns_0_a3_2_2[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[5]_net_1\, B => \fsmmod[4]_net_1\, Y
         => N_986_3);
    
    \fsmsync_RNO[6]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsync[7]_net_1\, B => \SCLInt\, C => N_986, 
        Y => N_950_i_0);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO_0\ : CFG4
      generic map(INIT => x"CCCA")

      port map(A => \bsd7\, B => \bsd7_tmp\, C => 
        serdat_0_sqmuxa_sn, D => \fsmdet[3]_net_1\, Y => N_1123);
    
    \fsmsta_nxt_cnst_0_o2_0[4]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1091);
    
    \serCON_WRITE_PROC.un97_ens1\ : CFG4
      generic map(INIT => x"F0E0")

      port map(A => un81_ens1, B => un16_ens1_2, C => 
        \sercon[6]_net_1\, D => un16_ens1_0, Y => un97_ens1);
    
    SCLSCL_1_sqmuxa_0_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmmod[1]_net_1\, B => \pedetect\, Y => 
        SCLSCL_1_sqmuxa);
    
    \serSTA_WRITE_PROC.un32_si_int_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[2]_net_1\, Y
         => N_1217_1);
    
    PCLKint_RNO : CFG2
      generic map(INIT => x"E")

      port map(A => un7_counter_rst, B => \PCLK_count2_ov\, Y => 
        un1_pclkint4_i_0);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_a4_1\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        N_1217);
    
    \fsmmod_ns_0_0_o2[0]\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \starto_en\, B => N_122, C => N_123, Y => 
        N_127);
    
    \fsmsta_nxt_cnst_i_a6_1[1]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsta[3]_net_1\, B => un30_fsmsta, C => 
        N_1092, Y => N_1102);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[2]\ : CFG4
      generic map(INIT => x"7D28")

      port map(A => framesync_7_e2, B => CO1_0, C => 
        \framesync[2]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \framesync_7[2]\);
    
    \serSTA_WRITE_PROC.un25_si_int_0\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => un25_si_int_0);
    
    \PRDATA_0_iv_0[7]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        \sersta[4]_net_1\, C => \un3_prdata_0\, D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => PRDATA_0_iv_0(7));
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[1]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => un2_fsmsta_6, B => un133_framesync, C => 
        \COREI2C_0_0_SDAO[0]\, D => N_7, Y => SDAO_int_m);
    
    SDAO_int_RNIVKBB : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SDAO[0]\, Y => 
        COREI2C_0_0_SDAO_i(0));
    
    \fsmmod_ns_i_0_o2_0[2]\ : CFG3
      generic map(INIT => x"BF")

      port map(A => \COREI2C_0_0_INT[0]\, B => un70_fsmsta, C => 
        \sercon[4]_net_1\, Y => N_135);
    
    SCLO_int_RNO : CFG3
      generic map(INIT => x"57")

      port map(A => \sercon[6]_net_1\, B => un141_ens1_2, C => 
        un139_ens1, Y => un149_ens1_i_0);
    
    \PCLK_count2[0]\ : SLE
      port map(D => \PCLK_count2_3[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[0]_net_1\);
    
    \sersta[0]\ : SLE
      port map(D => \sersta_32[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[0]_net_1\);
    
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
    
    un63_fsmsta_0_a3_0 : CFG3
      generic map(INIT => x"E0")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => \un63_fsmsta_0_a3_0\);
    
    \fsmdet_RNO[5]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[5]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_916_i_0);
    
    \fsmsta_nxt_cnst_0_a6_0_0[4]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_525);
    
    \framesync[3]\ : SLE
      port map(D => \framesync_7[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[3]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m24_0\ : CFG4
      generic map(INIT => x"7FFE")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        i4_mux_4);
    
    \fsmmod_ns_0_0_a3_0_5[3]\ : CFG4
      generic map(INIT => x"2000")

      port map(A => N_1020, B => N_123, C => 
        \fsmmod_ns_0_0_a3_0_5_1[3]_net_1\, D => un70_fsmsta, Y
         => \fsmmod_ns_0_0_a3_0_4[3]\);
    
    framesync_1_sqmuxa : CFG3
      generic map(INIT => x"02")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        un30_fsmsta, Y => \framesync_1_sqmuxa\);
    
    \CLKINT_WRITE_PROC.PCLKint_ff_2\ : CFG2
      generic map(INIT => x"E")

      port map(A => un7_counter_rst, B => \PCLKint\, Y => 
        PCLKint_ff_2);
    
    un63_fsmsta_0_a3_RNI6JA91 : CFG4
      generic map(INIT => x"0008")

      port map(A => un30_fsmsta, B => un63_fsmsta, C => N_7, D
         => un133_framesync, Y => un2_fsmsta_4_s6);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, Y => \SCLI_ff_reg_3[0]\);
    
    \serCON_WRITE_PROC.un70_ens1_i_a3\ : CFG3
      generic map(INIT => x"54")

      port map(A => \adrcomp\, B => \fsmmod[1]_net_1\, C => 
        \fsmmod[6]_net_1\, Y => N_422);
    
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

      port map(A => \framesync[0]_net_1\, B => 
        \framesync_1_sqmuxa\, C => framesync_7_e2, D => 
        \framesync_7_m2[3]\, Y => \framesync_7[0]\);
    
    un2_fsmsta_5_0_RNI7V2K : CFG2
      generic map(INIT => x"E")

      port map(A => un2_fsmsta_6, B => un2_fsmsta_5, Y => N_1267);
    
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
      generic map(INIT => x"FEFC")

      port map(A => \fsmsta_nxt_60_i_m_0[3]\, B => N_1071_m, C
         => un2_fsmsta_9_s2, D => un2_fsmsta_4_s6, Y => 
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
    
    fsmsta_3_sqmuxa : CFG4
      generic map(INIT => x"0D00")

      port map(A => un60_ens1, B => N_422, C => un59_fsmdet, D
         => un54_fsmdet, Y => \fsmsta_3_sqmuxa\);
    
    \PRDATA_0_iv_1[4]\ : CFG4
      generic map(INIT => x"153F")

      port map(A => \sercon[4]_net_1\, B => \sersta[1]_net_1\, C
         => \N_10_0\, D => un3_wen_2, Y => 
        \PRDATA_0_iv_1[4]_net_1\);
    
    \FSMSTA_SYNC_PROC.un133_framesync_RNIE0AO3\ : CFG4
      generic map(INIT => x"0100")

      port map(A => N_7, B => un133_framesync, C => N_1267, D => 
        un2_fsmsta_12_s7_2, Y => un2_fsmsta_12_s7);
    
    \fsmmod_ns_0_0[1]\ : CFG4
      generic map(INIT => x"FF80")

      port map(A => \fsmmod[6]_net_1\, B => \SDAInt\, C => 
        N_425_2, D => N_164, Y => \fsmmod_ns[1]\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m14\ : CFG3
      generic map(INIT => x"1D")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_15);
    
    \serdat[0]\ : SLE
      port map(D => \serdat_9[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_RNO[1]\ : CFG4
      generic map(INIT => x"000E")

      port map(A => \fsmsta[1]_net_1\, B => N_429, C => N_1101, D
         => N_1102, Y => \fsmsta_nxt_cnst_m_1[1]\);
    
    \PRDATA_0_iv_1[3]\ : CFG4
      generic map(INIT => x"153F")

      port map(A => \sersta[0]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => un3_wen_2, D => \N_10_0\, Y => 
        \PRDATA_0_iv_1[3]_net_1\);
    
    \fsmsta_nxt_cnst_0_1[4]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_1103, B => un22_si_int_3, C => N_525, D => 
        N_1091, Y => \fsmsta_nxt_cnst_0_1[4]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_9\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \nedetect\, B => \serdat[0]_net_1\, C => 
        un27_adrcompen_8, D => un27_adrcompen_5, Y => 
        un27_adrcompen_9);
    
    \PRDATA_0_iv[1]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \sercon[1]_net_1\, B => \serdat[1]_net_1\, C
         => un6_penable, D => un106_ens1, Y => PRDATAi_0_1);
    
    \framesync[2]\ : SLE
      port map(D => \framesync_7[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[2]_net_1\);
    
    \PRDATA_0_iv[3]\ : CFG4
      generic map(INIT => x"B3A0")

      port map(A => un106_ens1, B => \PRDATA_0_iv_1[3]_net_1\, C
         => \serdat[3]_net_1\, D => \un3_prdata_0\, Y => 
        PRDATAi_0_3);
    
    \fsmmod_ns_0_0_o2_0[3]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_119, B => \sercon[4]_net_1\, Y => N_123);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \serDAT_WRITE_PROC.un133_fsmsta_0_0\ : CFG4
      generic map(INIT => x"AABA")

      port map(A => \fsmdet[3]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        un133_fsmsta_0_0);
    
    \fsmsta_RNO_2[2]\ : CFG4
      generic map(INIT => x"5702")

      port map(A => un136_framesync, B => N_1070, C => 
        un54_fsmdet, D => N_1267, Y => fsmsta_8_0_iv_0_0_312_i_0);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta_0_a3\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => N_395, Y => un1_fsmsta);
    
    SDAO_int_RNO_2 : CFG3
      generic map(INIT => x"10")

      port map(A => \ack_bit\, B => \fsmmod[2]_net_1\, C => 
        N_178_2, Y => SDAO_int_7_0_340_0_a3_1);
    
    \PRDATA_0_iv_1[6]\ : CFG4
      generic map(INIT => x"153F")

      port map(A => \sercon[6]_net_1\, B => \sersta[3]_net_1\, C
         => \N_10_0\, D => un3_wen_2, Y => 
        \PRDATA_0_iv_1[6]_net_1\);
    
    adrcomp_2_sqmuxa_i : CFG3
      generic map(INIT => x"FD")

      port map(A => \adrcomp_2_sqmuxa_0\, B => un23_fsmdet, C => 
        un105_fsmdet_1, Y => adrcomp_2_sqmuxa_i_0);
    
    \sersta[1]\ : SLE
      port map(D => \sersta_32[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[1]_net_1\);
    
    \fsmmod_ns_0_0_a3_0_0[5]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmmod[1]_net_1\, B => \SCLSCL\, Y => 
        \fsmmod_ns_0_0_a3_0_0[5]_net_1\);
    
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
    
    \serDAT_WRITE_PROC.un134_fsmsta_i\ : CFG4
      generic map(INIT => x"75FF")

      port map(A => N_395, B => N_401, C => N_1651_tz, D => 
        un134_fsmsta_i_1_0, Y => N_388);
    
    \indelay[0]\ : SLE
      port map(D => \indelay_4[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[0]_net_1\);
    
    \fsmmod_ns_i_0_o3[6]\ : CFG3
      generic map(INIT => x"F4")

      port map(A => N_397, B => \pedetect\, C => N_411, Y => 
        N_110);
    
    \fsmdet[0]\ : SLE
      port map(D => N_926_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[0]\ : CFG4
      generic map(INIT => x"F0E0")

      port map(A => N_1086, B => N_1099, C => un2_fsmsta_12_s7, D
         => \fsmsta_nxt_cnst_i_1[0]_net_1\, Y => N_1079_m);
    
    \serDAT_WRITE_PROC.un106_ens1\ : CFG4
      generic map(INIT => x"0004")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        un5_psel_0_0, C => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => un106_ens1);
    
    \serCON_WRITE_PROC.un81_ens1\ : CFG4
      generic map(INIT => x"8880")

      port map(A => \adrcomp\, B => un105_fsmdet_1, C => 
        un76_ens1, D => un70_fsmsta, Y => un81_ens1);
    
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
      port map(D => N_1266_i_0, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[2]_net_1\);
    
    \serCON_WRITE_PROC.un16_ens1_2\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \pedetect\, B => N_422, C => un30_fsmsta, D
         => un68_ens1, Y => un16_ens1_2);
    
    \SDAO_INT_WRITE_PROC.un27_fsmsta_3_0\ : CFG2
      generic map(INIT => x"2")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[1]_net_1\, Y
         => un27_fsmsta_3_0);
    
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
    
    \serSTA_WRITE_PROC.sersta_32[1]\ : CFG4
      generic map(INIT => x"7F2F")

      port map(A => \fsmsta[4]_net_1\, B => N_30_mux, C => 
        \COREI2C_0_0_INT[0]\, D => \fsmsta[0]_net_1\, Y => 
        \sersta_32[1]\);
    
    \fsmmod_ns_0_0_o2_2[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => N_122);
    
    \serDAT_WRITE_PROC.serdat_9[0]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => un105_ens1, B => \ack\, C => 
        CoreAPB3_0_APBmslave0_PWDATA(0), Y => \serdat_9[0]\);
    
    \fsmsta_cnst_i_a4[0]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmsta_cnst_i_o4_4[0]_net_1\, B => 
        \fsmsta_cnst_i_o4_5[0]_net_1\, C => N_7, D => 
        un133_framesync, Y => N_1070);
    
    \serSTA_WRITE_PROC.un22_si_int_3\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => 
        un22_si_int_3);
    
    \sercon[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[0]_net_1\);
    
    \fsmsync[1]\ : SLE
      port map(D => N_960_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[1]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_0[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => un59_fsmdet, B => \adrcomp\, C => un54_fsmdet, 
        Y => fsmsta_1_sqmuxa);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_0_a2[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un7_counter_rst, B => \PCLK_count1[0]_net_1\, 
        Y => \PCLK_count1_10[0]\);
    
    \serDAT_WRITE_PROC.serdat_9[4]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(4), B => 
        un105_ens1, C => \serdat[3]_net_1\, Y => \serdat_9[4]\);
    
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
    
    \fsmmod_ns_i_0_o2[6]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => \fsmdet[1]_net_1\, Y
         => N_411);
    
    \sercon[4]\ : SLE
      port map(D => \sercon_9[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sercon[4]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un53_fsmsta_2_0_a2\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1097_2);
    
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
    
    \serCON_WRITE_PROC.un16_ens1_0\ : CFG2
      generic map(INIT => x"B")

      port map(A => fsmmod_nxt_0_sqmuxa, B => 
        \fsmsta_cnst_m_2[4]\, Y => un16_ens1_0);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_2\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[2]_net_1\, C
         => un34_si_int, D => N_444, Y => un21_fsmdet_2);
    
    \sersta[3]\ : SLE
      port map(D => \sersta_32[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[3]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7[0]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => un25_framesync, B => un19_framesync, C => 
        un70_fsmsta, D => framesync_7_sm0, Y => 
        \framesync_7_m2[3]\);
    
    \fsmsync[6]\ : SLE
      port map(D => N_950_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[6]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am\ : CFG3
      generic map(INIT => x"AC")

      port map(A => N_1126, B => N_1123, C => bsd7_sn_N_4, Y => 
        bsd7_8_m_am);
    
    \SDAI_ff_reg[2]\ : SLE
      port map(D => \SDAI_ff_reg_4[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[2]_net_1\);
    
    \serDAT_WRITE_PROC.un133_fsmsta_0_a3_0\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[2]_net_1\, D => \fsmsta[3]_net_1\, Y => N_158);
    
    \serCON_WRITE_PROC.un6_penable\ : CFG4
      generic map(INIT => x"0004")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        un3_wen_2, C => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(1), Y => un6_penable);
    
    \PCLK_count1[0]\ : SLE
      port map(D => \PCLK_count1_10[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[0]_net_1\);
    
    \fsmsta_nxt_cnst_0_o2[3]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_1087, B => \fsmsta[4]_net_1\, Y => N_1092);
    
    \CLK_COUNTER1_PROC.PCLK_count1_ov_9\ : CFG4
      generic map(INIT => x"1000")

      port map(A => N_11, B => un7_counter_rst, C => 
        \PCLK_count1[3]_net_1\, D => \PCLK_count1[2]_net_1\, Y
         => PCLK_count1_ov_9);
    
    un2_fsmsta_5_0_o2_RNI7QP41 : CFG4
      generic map(INIT => x"0002")

      port map(A => N_440, B => \fsmsta[1]_net_1\, C => 
        un136_framesync, D => N_394, Y => un2_fsmsta_7_s3);
    
    un2_fsmsta_6_0_o2_0 : CFG4
      generic map(INIT => x"FF7F")

      port map(A => \fsmsta[3]_net_1\, B => un27_fsmsta_3_0, C
         => \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y => N_406);
    
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

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, Y
         => N_32);
    
    \serdat[3]\ : SLE
      port map(D => \serdat_9[3]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[3]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[6]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(6), B => 
        un105_ens1, C => \serdat_5\, Y => \serdat_9[6]\);
    
    \serSTA_WRITE_PROC.un22_si_int\ : CFG2
      generic map(INIT => x"2")

      port map(A => un22_si_int_3, B => \fsmsta[2]_net_1\, Y => 
        un22_si_int);
    
    nedetect : SLE
      port map(D => \nedetect_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => rtn_1_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \nedetect\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO[3]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \SDAInt\, B => \sercon[2]_net_1\, Y => 
        \fsmsta_nxt_60_i_m_0[3]\);
    
    adrcompen_2_sqmuxa_i : CFG4
      generic map(INIT => x"FFB3")

      port map(A => un30_fsmsta, B => N_387, C => \nedetect\, D
         => \fsmdet[3]_net_1\, Y => adrcompen_2_sqmuxa_i_0);
    
    \FSMSTA_SYNC_PROC.un59_fsmdet\ : CFG3
      generic map(INIT => x"54")

      port map(A => \COREI2C_0_0_INT[0]\, B => un76_ens1, C => 
        un70_fsmsta, Y => un59_fsmdet);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[1]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => CO0, B => framesync_7_e2, C => 
        \framesync[1]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \framesync_7[1]\);
    
    serdat_2_sqmuxa_1_0 : CFG4
      generic map(INIT => x"0040")

      port map(A => \COREI2C_0_0_INT[0]\, B => un57_fsmsta, C => 
        \pedetect\, D => \fsmdet[3]_net_1\, Y => 
        \serdat_2_sqmuxa_1_0\);
    
    \serCON_WRITE_PROC.sercon_9[4]\ : CFG4
      generic map(INIT => x"B888")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(4), B => 
        un5_penable, C => \sercon_8_2[4]\, D => N_387, Y => 
        \sercon_9[4]\);
    
    \fsmmod_RNIV4G6[6]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[6]_net_1\, Y
         => N_125);
    
    \fsmsync_ns_i_a3[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmsync[1]_net_1\, B => \sercon[4]_net_1\, C
         => \COREI2C_0_0_INT[0]\, Y => N_992);
    
    \fsmmod_ns_0_0_a2[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \SCLInt\, B => N_122, C => \fsmmod[2]_net_1\, 
        Y => fsmmod_nxt_0_sqmuxa);
    
    \fsmsync_ns_i_o3[3]\ : CFG4
      generic map(INIT => x"03AF")

      port map(A => N_122, B => N_971, C => \fsmsync[5]_net_1\, D
         => \fsmsync[4]_net_1\, Y => N_964);
    
    starto_en_1_sqmuxa_i : CFG2
      generic map(INIT => x"7")

      port map(A => un8_busfree, B => N_122, Y => 
        starto_en_1_sqmuxa_i_0);
    
    \FSMSTA_SYNC_PROC.un133_framesync\ : CFG4
      generic map(INIT => x"2000")

      port map(A => un30_fsmsta, B => un1_fsmsta, C => \pedetect\, 
        D => un133_framesync_0, Y => un133_framesync);
    
    \fsmsync_ns_i_a3_1[2]\ : CFG3
      generic map(INIT => x"40")

      port map(A => N_389_3, B => N_986_1, C => N_986_3, Y => 
        N_986);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta_0_o2\ : CFG4
      generic map(INIT => x"BFFF")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_410);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_0[3]\ : CFG4
      generic map(INIT => x"7F00")

      port map(A => un54_fsmdet, B => \adrcomp\, C => un59_fsmdet, 
        D => N_7, Y => N_1071_m);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[3]\ : CFG4
      generic map(INIT => x"7000")

      port map(A => N_1092, B => \fsmsta[3]_net_1\, C => 
        un2_fsmsta_12_s7, D => \fsmsta_nxt_cnst_i_m_0[3]\, Y => 
        \fsmsta_nxt_cnst_i_m[3]\);
    
    \serDAT_WRITE_PROC.un92_fsmsta\ : CFG3
      generic map(INIT => x"32")

      port map(A => un63_fsmsta, B => \fsmdet[3]_net_1\, C => 
        N_112, Y => un92_fsmsta);
    
    \INDELAY_WRITE_PROC.indelay_4[0]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \indelay[0]_net_1\, B => \fsmsync[4]_net_1\, 
        C => N_971, Y => \indelay_4[0]\);
    
    adrcompen_0_sqmuxa : CFG2
      generic map(INIT => x"8")

      port map(A => N_387, B => \fsmdet[3]_net_1\, Y => 
        \adrcompen_0_sqmuxa\);
    
    \serCON_WRITE_PROC.un20_fsmmod\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmmod[2]_net_1\, B => \PCLKint\, C => 
        \PCLKint_ff\, Y => un20_fsmmod);
    
    \fsmsta[1]\ : SLE
      port map(D => \fsmsta_8[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[1]_net_1\);
    
    \fsmsta_nxt_cnst_i_0[2]\ : CFG4
      generic map(INIT => x"F0F4")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[3]_net_1\, C
         => N_1103, D => un30_fsmsta, Y => 
        \fsmsta_nxt_cnst_i_0[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.un136_framesync\ : CFG4
      generic map(INIT => x"FEFF")

      port map(A => un105_fsmdet_1, B => un20_fsmmod, C => 
        un133_framesync, D => \fsmsta_cnst_m_2[4]\, Y => 
        un136_framesync);
    
    \framesync[0]\ : SLE
      port map(D => \framesync_7[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[0]_net_1\);
    
    \un2_framesync_1_1.CO0\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \nedetect\, B => \framesync[0]_net_1\, C => 
        un30_fsmsta, D => un70_fsmsta, Y => CO0);
    
    bsd7_tmp : SLE
      port map(D => bsd7_tmp_6, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \bsd7_tmp\);
    
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
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[6]_net_1\);
    
    \serCON_WRITE_PROC.un16_fsmmod_i_0\ : CFG2
      generic map(INIT => x"7")

      port map(A => N_125, B => \sercon[4]_net_1\, Y => N_387);
    
    \fsmdet_RNO[0]\ : CFG4
      generic map(INIT => x"E0A0")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_926_i_0);
    
    \ADRCOMP_WRITE_PROC.un21_fsmdet_0\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => un22_si_int_3, D => un36_si_int_1, Y => un21_fsmdet_0);
    
    \fsmmod_RNO[2]\ : CFG4
      generic map(INIT => x"00CE")

      port map(A => \fsmmod[4]_net_1\, B => \fsmmod[2]_net_1\, C
         => N_135, D => N_131, Y => N_1014_i_0);
    
    \fsmmod_ns_i_0_a3_2[2]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => N_119, B => un70_fsmsta, C => 
        \fsmmod_ns_i_0_a3_2_0[2]_net_1\, D => N_1020, Y => N_435);
    
    un2_fsmsta_5_0_o2_RNI7E0C2 : CFG4
      generic map(INIT => x"C8CC")

      port map(A => N_394, B => un2_fsmsta_12_s7_1, C => 
        \fsmsta[1]_net_1\, D => N_440, Y => un2_fsmsta_12_s7_2);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO_2\ : CFG3
      generic map(INIT => x"BF")

      port map(A => un92_fsmsta, B => un133_fsmsta, C => N_388, Y
         => un2_fsmsta_14_0);
    
    \serCON_WRITE_PROC.un5_penable\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un7_pseli, B => PWM_STRETCH_0_sqmuxa_0, C => 
        CoreAPB3_0_APBmslave0_PSELx, D => un6_penable, Y => 
        un5_penable);
    
    SDAO_int_1_sqmuxa_i_o3_1 : CFG3
      generic map(INIT => x"73")

      port map(A => \adrcomp\, B => \sercon[6]_net_1\, C => 
        \fsmmod[6]_net_1\, Y => N_132);
    
    \fsmmod_ns_0_0_o2[3]\ : CFG3
      generic map(INIT => x"B7")

      port map(A => \PCLKint\, B => \SCLInt\, C => \PCLKint_ff\, 
        Y => N_413);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[1]\ : CFG4
      generic map(INIT => x"EAAA")

      port map(A => SDAO_int_m, B => un2_fsmsta_7_s3, C => 
        \COREI2C_0_0_SDAO[0]\, D => \SDAInt\, Y => 
        \fsmsta_8_0_iv_1[1]\);
    
    \serDAT_WRITE_PROC.serdat_9[3]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(3), B => 
        un105_ens1, C => \serdat[2]_net_1\, Y => \serdat_9[3]\);
    
    bsd7 : SLE
      port map(D => bsd7_8, CLK => FAB_CCC_GL0, EN => 
        \sercon[6]_net_1\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \bsd7\);
    
    PCLKint : SLE
      port map(D => PCLKint_3, CLK => FAB_CCC_GL0, EN => 
        un1_pclkint4_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint\);
    
    adrcompen_RNIH92P : CFG3
      generic map(INIT => x"13")

      port map(A => \adrcomp\, B => N_402, C => \adrcompen\, Y
         => N_178_2);
    
    un2_fsmsta_6_0 : CFG4
      generic map(INIT => x"40F0")

      port map(A => \fsmsta[4]_net_1\, B => N_523, C => 
        un30_fsmsta, D => N_406, Y => un2_fsmsta_6);
    
    \PCLK_count1[1]\ : SLE
      port map(D => N_295_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[1]_net_1\);
    
    un2_fsmsta_5_0_a2 : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, Y => N_444);
    
    \serdat[5]\ : SLE
      port map(D => \serdat_9[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat_5\);
    
    \APB_read.APB_read.un2_prdata_2\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(1), C => 
        CoreAPB3_0_APBmslave0_PADDR(0), Y => \un3_prdata_0\);
    
    \sersta_RNINO3E[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \N_10_0\, B => \un3_prdata_0\, C => 
        \sersta[2]_net_1\, Y => sersta_m(2));
    
    \fsmsync_ns_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_986, B => \fsmsync_ns_0_1[0]_net_1\, C => 
        \fsmsync[3]_net_1\, D => \SCLInt\, Y => \fsmsync_ns[0]\);
    
    \serDAT_WRITE_PROC.serdat_9[7]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(7), B => 
        un105_ens1, C => \serdat[6]_net_1\, Y => \serdat_9[7]\);
    
    \serSTA_WRITE_PROC.un34_si_int\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[4]_net_1\, B => N_1217_1, C => 
        \fsmsta[0]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        un34_si_int);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m5\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1091, B => \fsmsta[1]_net_1\, Y => N_6);
    
    \fsmsync_RNO[4]\ : CFG4
      generic map(INIT => x"002F")

      port map(A => \fsmsync[2]_net_1\, B => \sercon[4]_net_1\, C
         => N_964, D => \fsmsync_ns_i_1[3]_net_1\, Y => N_954_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_0[4]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => un2_fsmsta_5, B => un133_framesync, C => 
        \COREI2C_0_0_SDAO[0]\, D => N_7, Y => SDAO_int_m_0);
    
    \fsmsta_nxt_cnst_i_a6[0]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_1090, D => \fsmsta[1]_net_1\, Y => N_1096);
    
    \SDAI_ff_reg[0]\ : SLE
      port map(D => \SDAI_ff_reg_4[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[0]_net_1\);
    
    \fsmsync_RNO[5]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmsync[7]_net_1\, B => N_985, C => N_986, D
         => N_978, Y => N_952_i_0);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst_1_0\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => \fsmsync[2]_net_1\, B => \fsmdet[3]_net_1\, C
         => \fsmsync[3]_net_1\, D => \fsmdet[1]_net_1\, Y => 
        un7_counter_rst_1_0);
    
    \FSMSTA_SYNC_PROC.un53_fsmdet\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \fsmsta_cnst_m_2[4]\, B => un20_fsmmod, C => 
        un105_fsmdet_1, Y => N_7);
    
    adrcomp : SLE
      port map(D => \un1_adrcomp5\, CLK => FAB_CCC_GL0, EN => 
        adrcomp_2_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \adrcomp\);
    
    \fsmmod_ns_0_0_a3[1]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmmod[5]_net_1\, B => \nedetect\, C => 
        N_110, Y => N_164);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m7x\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_32, Y => N_32_mux_i);
    
    \serSTA_WRITE_PROC.un32_si_int_0_RNIINEB\ : CFG3
      generic map(INIT => x"84")

      port map(A => \fsmsta[3]_net_1\, B => N_1217_1, C => 
        \fsmsta[0]_net_1\, Y => N_440);
    
    \serCON_WRITE_PROC.un68_ens1\ : CFG3
      generic map(INIT => x"20")

      port map(A => un60_ens1, B => N_422, C => un105_fsmdet_1, Y
         => un68_ens1);
    
    SCLO_int_RNI96C8 : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SCLO[0]\, Y => 
        COREI2C_0_0_SCLO_i(0));
    
    \fsmsta_nxt_cnst_i_a6_0[1]\ : CFG3
      generic map(INIT => x"20")

      port map(A => N_1113, B => \fsmsta[3]_net_1\, C => 
        un20_sdao_int, Y => N_1101);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_5\ : CFG4
      generic map(INIT => x"1000")

      port map(A => \serdat_5\, B => \serdat[4]_net_1\, C => 
        \sercon[2]_net_1\, D => \adrcompen\, Y => 
        un27_adrcompen_5);
    
    adrcompen : SLE
      port map(D => \adrcompen_0_sqmuxa\, CLK => FAB_CCC_GL0, EN
         => adrcompen_2_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcompen\);
    
    \PRDATA_0_iv_1[7]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \sercon[7]_net_1\, B => \serdat[7]_net_1\, C
         => un6_penable, D => un106_ens1, Y => PRDATA_0_iv_1_4);
    
    \fsmsync_ns_i_0[3]\ : CFG3
      generic map(INIT => x"CE")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_986, C => 
        \fsmsync[4]_net_1\, Y => \fsmsync_ns_i_0[3]_net_1\);
    
    \serDAT_WRITE_PROC.un133_fsmsta_0_4\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => N_112, B => un133_fsmsta_0_1, C => 
        un133_fsmsta_0_0, D => N_158, Y => un133_fsmsta_0_4);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO[1]\ : CFG4
      generic map(INIT => x"5040")

      port map(A => fsmsta_1_sqmuxa, B => un133_framesync, C => 
        \fsmsta_cnst_m_2[4]\, D => N_7, Y => \fsmsta_cnst_m[1]\);
    
    un2_fsmsta_5_0_o2 : CFG2
      generic map(INIT => x"D")

      port map(A => un30_fsmsta, B => \fsmsta[4]_net_1\, Y => 
        N_394);
    
    \indelay[3]\ : SLE
      port map(D => \indelay_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[3]_net_1\);
    
    \SDAI_ff_reg[1]\ : SLE
      port map(D => \SDAI_ff_reg_4[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[1]_net_1\);
    
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
    
    \serDAT_WRITE_PROC.un133_fsmsta_0_1\ : CFG4
      generic map(INIT => x"CCEC")

      port map(A => N_1097_2, B => N_160, C => \fsmsta[2]_net_1\, 
        D => \fsmsta[4]_net_1\, Y => un133_fsmsta_0_1);
    
    \fsmsync_ns_i_o3[4]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_971, B => \fsmsync[4]_net_1\, Y => N_976);
    
    \PCLK_count1_RNO[1]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \PCLK_count1[1]_net_1\, B => 
        \PCLK_count1[0]_net_1\, C => un7_counter_rst, Y => 
        N_295_i_0);
    
    \fsmsta_nxt_cnst_i_a6[2]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_1103);
    
    \fsmmod_ns_0_0_0[5]\ : CFG4
      generic map(INIT => x"0E0C")

      port map(A => \fsmmod_ns_0_0_a3_0_0[5]_net_1\, B => 
        SCLSCL_1_sqmuxa, C => N_411, D => N_397, Y => 
        \fsmmod_ns_0_0_0[5]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_3\ : CFG2
      generic map(INIT => x"8")

      port map(A => \serdat[1]_net_1\, B => \serdat[6]_net_1\, Y
         => un27_adrcompen_3);
    
    ack_bit_1_sqmuxa : CFG4
      generic map(INIT => x"4000")

      port map(A => N_388, B => un5_penable, C => 
        \COREI2C_0_0_INT[0]\, D => \sercon[6]_net_1\, Y => 
        \ack_bit_1_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.un133_framesync_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \adrcomp\, B => \adrcompen\, Y => 
        un133_framesync_0);
    
    pedetect_0_sqmuxa : CFG4
      generic map(INIT => x"2000")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \pedetect_0_sqmuxa\);
    
    \fsmmod_ns_0_0_o3[0]\ : CFG4
      generic map(INIT => x"FCFE")

      port map(A => \pedetect\, B => N_411, C => 
        fsmmod_nxt_0_sqmuxa, D => N_397, Y => N_131);
    
    adrcomp_2_sqmuxa_0 : CFG4
      generic map(INIT => x"0A2A")

      port map(A => N_387, B => N_125, C => un27_adrcompen_9, D
         => un1_fsmsta, Y => \adrcomp_2_sqmuxa_0\);
    
    \fsmsta_nxt_cnst_i_a6_1_0[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un20_sdao_int, B => \fsmsta[0]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_a6_1_0[0]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_0_o3\ : CFG4
      generic map(INIT => x"0023")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[2]_net_1\, D => \fsmsta[3]_net_1\, Y => N_112);
    
    \fsmsync_ns_0_a3_2_1[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[0]_net_1\, Y
         => N_986_1);
    
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
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[3]\ : CFG4
      generic map(INIT => x"0222")

      port map(A => \fsmsta_8_0_iv_i_1[3]\, B => 
        \fsmsta_nxt_cnst_i_m[3]\, C => un20_sdao_int, D => 
        un2_fsmsta_7_s3, Y => \fsmsta_8_0_iv_i_0[3]\);
    
    \fsmmod_RNO[0]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => \nedetect\, B => \fsmmod[3]_net_1\, C => 
        N_110, D => N_175, Y => N_1017_i_0);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m20\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_21);
    
    \serDAT_WRITE_PROC.un134_fsmsta_i_o2_1_RNIUP0F1\ : CFG4
      generic map(INIT => x"32FF")

      port map(A => N_401, B => \fsmsta[4]_net_1\, C => N_120, D
         => N_406, Y => N_124);
    
    un1_serdat_2_sqmuxa : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \serdat_2_sqmuxa_1_0\, B => \sercon[6]_net_1\, 
        C => un105_ens1, D => \serdat_1_sqmuxa_1\, Y => 
        \un1_serdat_2_sqmuxa\);
    
    \serDAT_WRITE_PROC.un134_fsmsta_i_a2_0\ : CFG4
      generic map(INIT => x"007F")

      port map(A => \fsmsta[3]_net_1\, B => un27_fsmsta_3_0, C
         => \fsmsta[0]_net_1\, D => \fsmsta[2]_net_1\, Y => N_187);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, Y => \SDAI_ff_reg_4[2]\);
    
    \PRDATA_0_iv[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \sercon[0]_net_1\, B => \serdat[0]_net_1\, C
         => un6_penable, D => un106_ens1, Y => PRDATAi_0_0);
    
    PCLK_count2_ov : SLE
      port map(D => \PCLK_count2_ov_0_sqmuxa\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2_ov\);
    
    un2_fsmsta_5_0_a2_RNINLCQ : CFG2
      generic map(INIT => x"E")

      port map(A => N_440, B => N_444, Y => N_120);
    
    \fsmsync_RNO[2]\ : CFG4
      generic map(INIT => x"008C")

      port map(A => \fsmsync[2]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_965, D => N_986, Y => N_958_i_0);
    
    \fsmsta_RNO_1[2]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => un136_framesync, B => N_1070, C => \adrcomp\, 
        D => un78_fsmdet, Y => N_1272);
    
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
      generic map(INIT => x"FFBF")

      port map(A => un105_fsmdet_1, B => \sercon[6]_net_1\, C => 
        N_387, D => fsmmod_nxt_0_sqmuxa, Y => un105_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[1]\ : CFG4
      generic map(INIT => x"FFBA")

      port map(A => \fsmsta_cnst_m[1]\, B => \ack\, C => 
        un2_fsmsta_8_s1, D => un2_fsmsta_9_s2, Y => 
        \fsmsta_8_0_iv_2[1]\);
    
    \fsmmod[5]\ : SLE
      port map(D => \fsmmod_ns[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un25_framesync\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_1020, C => 
        \sercon_5\, D => \sercon[4]_net_1\, Y => un25_framesync);
    
    un1_serdat_2_sqmuxa_1 : CFG4
      generic map(INIT => x"0E0A")

      port map(A => \serdat_2_sqmuxa_1_0\, B => \pedetect\, C => 
        un105_ens1, D => \un1_serdat36\, Y => 
        \un1_serdat_2_sqmuxa_1\);
    
    \fsmmod_ns_0_o3[3]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[2]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        N_1020);
    
    \fsmmod_ns_0_0_o2[5]\ : CFG4
      generic map(INIT => x"FFFB")

      port map(A => N_395, B => un30_fsmsta, C => 
        \fsmsta[1]_net_1\, D => \fsmsta[4]_net_1\, Y => N_397);
    
    SDAO_int_RNO_1 : CFG4
      generic map(INIT => x"4044")

      port map(A => \fsmmod[2]_net_1\, B => N_178_2, C => 
        SDAO_int_7_0_340_o4_0_0, D => un57_fsmsta, Y => 
        SDAO_int_7_0_340_a3_0_1);
    
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
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO[4]\ : CFG4
      generic map(INIT => x"C888")

      port map(A => \fsmsta_nxt_cnst_0_2[4]_net_1\, B => 
        un2_fsmsta_12_s7, C => \ack\, D => N_429, Y => 
        \fsmsta_nxt_cnst_m[4]\);
    
    \fsmsync[4]\ : SLE
      port map(D => N_954_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[4]_net_1\);
    
    \ADRCOMP_WRITE_PROC.un27_adrcompen_8\ : CFG4
      generic map(INIT => x"0002")

      port map(A => un27_adrcompen_3, B => N_410, C => 
        \serdat[3]_net_1\, D => \serdat[2]_net_1\, Y => 
        un27_adrcompen_8);
    
    \serDAT_WRITE_PROC.bsd7_8_m_bm\ : CFG4
      generic map(INIT => x"4450")

      port map(A => \fsmdet[3]_net_1\, B => \bsd7\, C => 
        bsd7_0_m0, D => serdat_0_sqmuxa_sn, Y => bsd7_8_m_bm);
    
    \fsmmod_ns_0_0_a3_0_5_1[3]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmmod[4]_net_1\, B => \PCLKint_ff\, C => 
        \PCLKint\, Y => \fsmmod_ns_0_0_a3_0_5_1[3]_net_1\);
    
    \sercon[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_5\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_0\ : CFG2
      generic map(INIT => x"E")

      port map(A => un63_fsmsta, B => N_112, Y => un57_fsmsta);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[0]\ : CFG4
      generic map(INIT => x"FE30")

      port map(A => \ack\, B => \SDAInt\, C => un2_fsmsta_9_s2, D
         => un2_fsmsta_8_s1, Y => \fsmsta_8_0_iv_3[0]\);
    
    \fsmsta_nxt_cnst_i_a2_1[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un30_fsmsta, B => \fsmsta[4]_net_1\, Y => 
        N_1113);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst\ : CFG4
      generic map(INIT => x"FFDF")

      port map(A => un7_counter_rst_1_0, B => \fsmsync[6]_net_1\, 
        C => N_387, D => un7_counter_rst_4, Y => un7_counter_rst);
    
    \serDAT_WRITE_PROC.serdat_9[5]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(5), B => 
        un105_ens1, C => \serdat[4]_net_1\, Y => \serdat_9[5]\);
    
    nedetect_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1_i_0);
    
    \fsmsta_nxt_cnst_0_2[4]\ : CFG4
      generic map(INIT => x"CCEC")

      port map(A => N_1087, B => \fsmsta_nxt_cnst_0_1[4]_net_1\, 
        C => \fsmsta[4]_net_1\, D => un30_fsmsta, Y => 
        \fsmsta_nxt_cnst_0_2[4]_net_1\);
    
    \PRDATA_0_iv_RNO[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => un3_wen_2, B => \un3_prdata_0\, C => 
        \sercon[2]_net_1\, Y => \sercon_m[2]\);
    
    \serSTA_WRITE_PROC.sersta_32_0[4]\ : CFG4
      generic map(INIT => x"FFB3")

      port map(A => \fsmsta[4]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_415, D => N_163, Y => \sersta_32[4]\);
    
    \SDAO_INT_WRITE_PROC.un70_fsmsta\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un70_fsmsta);
    
    serdat_1_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \pedetect\, B => \sercon[6]_net_1\, C => 
        \un1_serdat36\, Y => \serdat_1_sqmuxa_1\);
    
    \fsmmod_RNO[4]\ : CFG4
      generic map(INIT => x"000E")

      port map(A => N_402, B => N_135, C => N_110, D => 
        \fsmmod_ns_i_0_0_0[2]_net_1\, Y => N_1011_i_0);
    
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
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_am\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => un57_fsmsta, B => un105_ens1, C => \bsd7_tmp\, 
        D => bsd7_tmp_6_sn_m6_0, Y => bsd7_tmp_6_am);
    
    \fsmsync[3]\ : SLE
      port map(D => N_956_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un30_fsmsta\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un30_fsmsta);
    
    \serSTA_WRITE_PROC.un36_si_int_1\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[4]_net_1\, Y => un36_si_int_1);
    
    \PCLK_count2[1]\ : SLE
      port map(D => \PCLK_count2_3[1]_net_1\, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[1]_net_1\);
    
    \PRDATA_0_iv[6]\ : CFG4
      generic map(INIT => x"B3A0")

      port map(A => un106_ens1, B => \PRDATA_0_iv_1[6]_net_1\, C
         => \serdat[6]_net_1\, D => \un3_prdata_0\, Y => 
        PRDATAi_0_6);
    
    \fsmsta_nxt_cnst_i_o2_i_a3[1]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \adrcompen\, B => \adrcomp\, C => un30_fsmsta, 
        Y => N_429);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => fsmsta_0_sqmuxa, B => N_1070, C => 
        \fsmmod[5]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \fsmsta_8_0_iv_1[0]\);
    
    SDAO_int_RNO_3 : CFG3
      generic map(INIT => x"F2")

      port map(A => \framesync[3]_net_1\, B => un70_fsmsta, C => 
        \bsd7\, Y => SDAO_int_7_0_340_o4_0_0);
    
    busfree : SLE
      port map(D => \fsmdet_i_0[3]\, CLK => FAB_CCC_GL0, EN => 
        un105_fsmdet, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \busfree\);
    
    \SDAO_INT_WRITE_PROC.un1_fsmsta_0_o2\ : CFG3
      generic map(INIT => x"F7")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[3]_net_1\, Y => N_395);
    
    \fsmmod_ns_0_0[3]\ : CFG4
      generic map(INIT => x"3222")

      port map(A => \fsmmod_ns_0_0_a3_0_4[3]\, B => N_110, C => 
        \fsmmod[3]_net_1\, D => N_413, Y => \fsmmod_ns[3]\);
    
    \PRDATA_0_iv[2]\ : CFG4
      generic map(INIT => x"FFEA")

      port map(A => \sercon_m[2]\, B => un106_ens1, C => 
        \serdat[2]_net_1\, D => un3_prdata, Y => PRDATAi_0_2);
    
    \PCLK_count1[2]\ : SLE
      port map(D => N_7_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[2]_net_1\);
    
    \serDAT_WRITE_PROC.un134_fsmsta_i_RNO\ : CFG4
      generic map(INIT => x"AFA4")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_187, Y => N_1651_tz);
    
    \serDAT_WRITE_PROC.un133_fsmsta_0_a3_2\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[3]_net_1\, Y => N_160);
    
    \serSTA_WRITE_PROC.un32_si_int\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \fsmsta[4]_net_1\, B => N_1217_1, C => 
        \fsmsta[0]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        un32_si_int);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10_i_o2[2]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1[1]_net_1\, Y => N_11);
    
    \sercon[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon[6]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta_8_0_iv_4[0]\, B => 
        \fsmsta_8_0_iv_3[0]\, C => N_1079_m, Y => 
        \fsmsta_8_0_iv_i_0[0]\);
    
    SDAO_int : SLE
      port map(D => N_1273, CLK => FAB_CCC_GL0, EN => 
        \SDAO_int_1_sqmuxa_i_0\, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \COREI2C_0_0_SDAO[0]\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_e2\ : CFG4
      generic map(INIT => x"0013")

      port map(A => \nedetect\, B => un70_fsmsta, C => 
        un30_fsmsta, D => framesync_7_sm0, Y => framesync_7_e2);
    
    un1_adrcomp5 : CFG3
      generic map(INIT => x"02")

      port map(A => N_387, B => un23_fsmdet, C => un105_fsmdet_1, 
        Y => \un1_adrcomp5\);
    
    \COUNTER_RST_WRITE.COUNTER_RST_WRITE.un7_counter_rst_4\ : 
        CFG4
      generic map(INIT => x"00F8")

      port map(A => \fsmmod[2]_net_1\, B => \COREI2C_0_0_SCLO[0]\, 
        C => un8_busfree_0, D => \SCLInt\, Y => un7_counter_rst_4);
    
    \PRDATA_0_iv[4]\ : CFG4
      generic map(INIT => x"B3A0")

      port map(A => un106_ens1, B => \PRDATA_0_iv_1[4]_net_1\, C
         => \serdat[4]_net_1\, D => \un3_prdata_0\, Y => 
        PRDATAi_0_4);
    
    \serDAT_WRITE_PROC.un134_fsmsta_i_1_0\ : CFG4
      generic map(INIT => x"0105")

      port map(A => \fsmdet[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => N_112, D => N_406, Y => un134_fsmsta_i_1_0);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon[6]_net_1\, B => 
        \SDAI_ff_reg[0]_net_1\, Y => \SDAI_ff_reg_4[1]\);
    
    \fsmsta_RNO[2]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => un2_fsmsta_8_s1, B => \ack\, C => 
        fsmsta_8_0_iv_0_0_312_i_2, D => N_1272, Y => N_1266_i_0);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO\ : CFG4
      generic map(INIT => x"EF20")

      port map(A => \serdat[7]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => un92_fsmsta, D => un2_fsmsta_14_0, Y => N_1126);
    
    \FSMSTA_SYNC_PROC.un78_fsmdet\ : CFG2
      generic map(INIT => x"2")

      port map(A => un60_ens1, B => N_422, Y => un78_fsmdet);
    
    \serDAT_WRITE_PROC.bsd7_8_m_am_RNO_1\ : CFG4
      generic map(INIT => x"CAFF")

      port map(A => \nedetect\, B => \SCLInt\, C => 
        \COREI2C_0_0_INT[0]\, D => un92_fsmsta, Y => bsd7_sn_N_4);
    
    \fsmdet_RNO[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \SCLInt\, Y => SCLInt_i_0);
    
    \serSTA_WRITE_PROC.sersta_32[3]\ : CFG4
      generic map(INIT => x"DF8F")

      port map(A => N_32, B => i4_mux_4, C => 
        \COREI2C_0_0_INT[0]\, D => N_21, Y => \sersta_32[3]\);
    
    \serSTA_WRITE_PROC.sersta_32[0]\ : CFG4
      generic map(INIT => x"5D7F")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_525, C => N_6, D
         => N_32_mux_i, Y => \sersta_32[0]\);
    
    \serdat[1]\ : SLE
      port map(D => \serdat_9[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \serdat[1]_net_1\);
    
    \PCLK_count2_3[0]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \PCLK_count2[0]_net_1\, B => \PCLK_count1_ov\, 
        C => un7_counter_rst, Y => \PCLK_count2_3[0]_net_1\);
    
    SDAO_int_1_sqmuxa_i_0_3 : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[2]_net_1\, B => \fsmmod[3]_net_1\, Y
         => N_389_3);
    
    \FSMSTA_COMB_PROC.un20_sdao_int\ : CFG2
      generic map(INIT => x"4")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, Y => 
        un20_sdao_int);
    
    \serDAT_WRITE_PROC.un105_ens1\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un7_pseli, B => PWM_STRETCH_0_sqmuxa_0, C => 
        CoreAPB3_0_APBmslave0_PSELx, D => un106_ens1, Y => 
        un105_ens1);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, Y => \SCLI_ff_reg_3[2]\);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[1]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon[6]_net_1\, B => 
        \SCLI_ff_reg[0]_net_1\, Y => \SCLI_ff_reg_3[1]\);
    
    \fsmsta_cnst_i_o4_4[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat_5\, B => \serdat[4]_net_1\, C => 
        \serdat[3]_net_1\, D => \serdat[1]_net_1\, Y => 
        \fsmsta_cnst_i_o4_4[0]_net_1\);
    
    \or_br.rtn_1\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1);
    
    \serSTA_WRITE_PROC.sersta_32_0_o2[4]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_395, B => \fsmsta[1]_net_1\, Y => N_415);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv[1]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => un2_fsmsta_12_s7, B => \fsmsta_8_0_iv_1[1]\, 
        C => \fsmsta_nxt_cnst_m_1[1]\, D => \fsmsta_8_0_iv_2[1]\, 
        Y => \fsmsta_8[1]\);
    
    \fsmdet_RNO[3]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[5]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_920_i_0);
    
    \fsmsync_RNO[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_992, B => N_994, C => N_993, D => N_986, Y
         => N_960_i_0);
    
    \serSTA_WRITE_PROC.un25_si_int\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, C
         => un25_si_int_0, Y => un25_si_int);
    
    \fsmsta_cnst_i_o4_5[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[6]_net_1\, B => \serdat[2]_net_1\, C
         => \serdat[0]_net_1\, D => \ack\, Y => 
        \fsmsta_cnst_i_o4_5[0]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un57_fsmsta_0_o3_RNI2NAU\ : CFG3
      generic map(INIT => x"E0")

      port map(A => N_112, B => un63_fsmsta, C => 
        \COREI2C_0_0_INT[0]\, Y => serdat_0_sqmuxa_sn);
    
    \fsmsync[5]\ : SLE
      port map(D => N_952_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[5]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_31_4_0_.m10\ : CFG4
      generic map(INIT => x"33C2")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[1]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        N_30_mux);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[3]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => \framesync[3]_net_1\, B => framesync_7_e2, C
         => CO2, D => \framesync_7_m2[3]\, Y => \framesync_7[3]\);
    
    \fsmsync_ns_0_1[0]\ : CFG4
      generic map(INIT => x"8A0A")

      port map(A => \SCLInt\, B => \fsmsync[7]_net_1\, C => N_976, 
        D => N_966, Y => \fsmsync_ns_0_1[0]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9[2]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => CoreAPB3_0_APBmslave0_PWDATA(2), B => 
        un105_ens1, C => \serdat[1]_net_1\, Y => \serdat_9[2]\);
    
    SDAO_int_1_sqmuxa_i_m2 : CFG3
      generic map(INIT => x"8D")

      port map(A => N_410, B => un30_fsmsta, C => \nedetect\, Y
         => N_136);
    
    un2_fsmsta_9_RNI86Q71 : CFG3
      generic map(INIT => x"10")

      port map(A => un133_framesync, B => N_7, C => 
        \un2_fsmsta_9\, Y => un2_fsmsta_9_s2);
    
    \FSMSYNC_SYNC_PROC.un141_ens1_2\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \fsmsync[6]_net_1\, D => \fsmsync[1]_net_1\, Y => 
        un141_ens1_2);
    
    \fsmsta_nxt_cnst_i_o2_0[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => un30_fsmsta, B => \fsmsta[3]_net_1\, Y => 
        N_1090);
    
    \fsmsta_RNO_0[2]\ : CFG4
      generic map(INIT => x"EEEA")

      port map(A => fsmsta_8_0_iv_0_0_312_i_0, B => 
        un2_fsmsta_12_s7, C => N_1086, D => 
        \fsmsta_nxt_cnst_i_1[2]_net_1\, Y => 
        fsmsta_8_0_iv_0_0_312_i_2);
    
    \indelay_RNIE61F[1]\ : CFG3
      generic map(INIT => x"82")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => N_971, Y => CO1);
    
    \ADRCOMP_WRITE_PROC.un23_fsmdet_1\ : CFG3
      generic map(INIT => x"01")

      port map(A => un25_si_int, B => un1_fsmsta, C => 
        un21_fsmdet_0, Y => un23_fsmdet_1);
    
    \sersta[2]\ : SLE
      port map(D => \sersta_32[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \sersta[2]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv[4]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \fsmsta_8_1_iv_0[4]\, B => 
        \fsmsta_nxt_cnst_m[4]\, C => SDAO_int_m_0, D => 
        \fsmsta_cnst_m[4]\, Y => \fsmsta_8[4]\);
    
    \fsmsta_nxt_cnst_i_o6[0]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => N_1111, B => N_429, C => \ack\, Y => N_1086);
    
    un1_rtn_3 : CFG3
      generic map(INIT => x"81")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => \un1_rtn_3\);
    
    SDAO_int_RNO_0 : CFG4
      generic map(INIT => x"313B")

      port map(A => N_124, B => SDAO_int_7_0_340_a3_0_1, C => 
        N_410, D => SDAO_int_7_0_340_0_a3_1, Y => 
        SDAO_int_7_0_340_0_1);
    
    nedetect_0_sqmuxa : CFG4
      generic map(INIT => x"0004")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => \nedetect_0_sqmuxa\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_0\ : CFG4
      generic map(INIT => x"FFC4")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[4]_net_1\, D => N_444, Y => un135_ens1_1_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREI2C is

    port( CoreAPB3_0_APBmslave0_PRDATA : out   std_logic_vector(5 to 5);
          COREI2C_0_0_SDAO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT              : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(8 downto 0);
          PRDATA_0_iv_1                : out   std_logic_vector(7 to 7);
          PRDATA_0_iv_0                : out   std_logic_vector(7 to 7);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0);
          PRDATAi_0_3                  : out   std_logic;
          PRDATAi_0_4                  : out   std_logic;
          PRDATAi_0_6                  : out   std_logic;
          PRDATAi_0_1                  : out   std_logic;
          PRDATAi_0_0                  : out   std_logic;
          PRDATAi_0_2                  : out   std_logic;
          un7_pseli                    : out   std_logic;
          un5_psel_0_0                 : in    std_logic;
          un3_wen_2                    : in    std_logic;
          MSS_READY                    : in    std_logic;
          FAB_CCC_GL0                  : in    std_logic;
          N_10_0                       : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y   : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y   : in    std_logic;
          un13_psel_0_0                : in    std_logic;
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic;
          CoreAPB3_0_APBmslave0_PSELx  : in    std_logic
        );

end COREI2C;

architecture DEF_ARCH of COREI2C is 

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

  component COREI2CREAL
    port( COREI2C_0_0_SDAO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT              : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 0) := (others => 'U');
          sersta_m                     : out   std_logic_vector(2 to 2);
          PRDATA_0_iv_0                : out   std_logic_vector(7 to 7);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          serdat_5                     : out   std_logic;
          sercon_5                     : out   std_logic;
          PRDATA_0_iv_1_4              : out   std_logic;
          PRDATAi_0_3                  : out   std_logic;
          PRDATAi_0_4                  : out   std_logic;
          PRDATAi_0_6                  : out   std_logic;
          PRDATAi_0_1                  : out   std_logic;
          PRDATAi_0_0                  : out   std_logic;
          PRDATAi_0_2                  : out   std_logic;
          MSS_READY                    : in    std_logic := 'U';
          FAB_CCC_GL0                  : in    std_logic := 'U';
          un3_prdata_0                 : out   std_logic;
          un3_wen_2                    : in    std_logic := 'U';
          N_10_0                       : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y   : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y   : in    std_logic := 'U';
          un5_psel_0_0                 : in    std_logic := 'U';
          un13_psel_0_0                : in    std_logic := 'U';
          un7_pseli                    : in    std_logic := 'U';
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PSELx  : in    std_logic := 'U'
        );
  end component;

    signal un3_prdata_0, \un7_pseli\, \sersta_m[2]\, 
        \PRDATA_1[5]_net_1\, \sercon[5]\, \serdat[5]\, GND_net_1, 
        VCC_net_1 : std_logic;

    for all : COREI2CREAL
	Use entity work.COREI2CREAL(DEF_ARCH);
begin 

    un7_pseli <= \un7_pseli\;

    \G0b.0.un7_pseli\ : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(8), D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => \un7_pseli\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA[5]\ : CFG4
      generic map(INIT => x"C0C8")

      port map(A => un3_prdata_0, B => \un7_pseli\, C => 
        \sersta_m[2]\, D => \PRDATA_1[5]_net_1\, Y => 
        CoreAPB3_0_APBmslave0_PRDATA(5));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
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
        CoreAPB3_0_APBmslave0_PADDR(0), sersta_m(2) => 
        \sersta_m[2]\, PRDATA_0_iv_0(7) => PRDATA_0_iv_0(7), 
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
        CoreAPB3_0_APBmslave0_PWDATA(0), serdat_5 => \serdat[5]\, 
        sercon_5 => \sercon[5]\, PRDATA_0_iv_1_4 => 
        PRDATA_0_iv_1(7), PRDATAi_0_3 => PRDATAi_0_3, PRDATAi_0_4
         => PRDATAi_0_4, PRDATAi_0_6 => PRDATAi_0_6, PRDATAi_0_1
         => PRDATAi_0_1, PRDATAi_0_0 => PRDATAi_0_0, PRDATAi_0_2
         => PRDATAi_0_2, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, un3_prdata_0 => un3_prdata_0, un3_wen_2 => 
        un3_wen_2, N_10_0 => N_10_0, BIBUF_COREI2C_0_0_SCL_IO_Y
         => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        BIBUF_COREI2C_0_0_SDA_IO_Y => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        un5_psel_0_0 => un5_psel_0_0, un13_psel_0_0 => 
        un13_psel_0_0, un7_pseli => \un7_pseli\, 
        PWM_STRETCH_0_sqmuxa_0 => PWM_STRETCH_0_sqmuxa_0, 
        CoreAPB3_0_APBmslave0_PSELx => 
        CoreAPB3_0_APBmslave0_PSELx);
    
    \PRDATA_1[5]\ : CFG4
      generic map(INIT => x"153F")

      port map(A => \sercon[5]\, B => \serdat[5]\, C => 
        un5_psel_0_0, D => un3_wen_2, Y => \PRDATA_1[5]_net_1\);
    

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
        \POWER_ON_RESET_N_q1\, \RESET_N_M2F_q1\, 
        \FIC_2_APB_M_PRESET_N_clk_base\, 
        \FIC_2_APB_M_PRESET_N_q1\, \MSS_HPMS_READY_int_3\
         : std_logic;

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

entity mss_top_sb_CoreUARTapb_0_0_Rx_async is

    port( rx_state                    : out   std_logic_vector(1 downto 0);
          rx_byte                     : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(4 downto 2);
          nxtprdata_xhdl7_1_0         : out   std_logic_vector(0 to 0);
          rx_dout_reg_0               : in    std_logic_vector(0 to 0);
          controlReg2_0               : in    std_logic_vector(0 to 0);
          controlReg1_0               : in    std_logic_vector(0 to 0);
          nxtprdata_xhdl7_1_1         : out   std_logic;
          nxtprdata_xhdl7_1_4         : out   std_logic;
          nxtprdata_xhdl7_1_0_d0      : out   std_logic;
          rx_dout_reg_1               : in    std_logic;
          rx_dout_reg_4               : in    std_logic;
          rx_dout_reg_0_d0            : in    std_logic;
          controlReg2_4               : in    std_logic;
          controlReg2_1               : in    std_logic;
          controlReg2_0_d0            : in    std_logic;
          controlReg1_4               : in    std_logic;
          controlReg1_1               : in    std_logic;
          controlReg1_0_d0            : in    std_logic;
          clear_parity_reg            : in    std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          baud_clock                  : in    std_logic;
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          RX_c                        : in    std_logic;
          clear_parity_en             : out   std_logic;
          fifo_write                  : out   std_logic;
          CoreUARTapb_0_0_RXRDY       : in    std_logic;
          CoreUARTapb_1_0_FRAMING_ERR : in    std_logic;
          CoreUARTapb_1_0_TXRDY       : in    std_logic;
          CoreUARTapb_0_0_TXRDY       : in    std_logic
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

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal clear_parity_reg_i_0, rx_byte_xhdl5_1_sqmuxa, 
        rx_byte_xhdl5_1_sqmuxa_i_0, \rx_state[1]_net_1\, 
        VCC_net_1, N_147_i_0, GND_net_1, \rx_state[0]_net_1\, 
        \rx_state_ns[0]\, \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        \un1_samples8_1_0\, \rx_shift[1]_net_1\, \rx_shift_12[1]\, 
        \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, \rx_shift_12[7]\, 
        \receive_count[0]_net_1\, \receive_count_3[0]\, 
        \receive_count[1]_net_1\, \receive_count_3[1]\, 
        \receive_count[2]_net_1\, \receive_count_3[2]\, 
        \receive_count[3]_net_1\, \receive_count_3[3]\, 
        \framing_error_int\, \framing_error_int_0_sqmuxa\, 
        framing_error_int_2_sqmuxa, un1_framing_error_i4_i_0, 
        \samples[0]_net_1\, \samples[1]_net_1\, 
        \samples[2]_net_1\, \rx_bit_cnt[0]_net_1\, 
        \rx_bit_cnt_4[0]\, \rx_bit_cnt[1]_net_1\, 
        \rx_bit_cnt_4[1]\, \rx_bit_cnt[2]_net_1\, 
        \rx_bit_cnt_4[2]\, \rx_bit_cnt[3]_net_1\, 
        \rx_bit_cnt_4[3]\, i12_mux, \m29_ns_1\, \m8_ns_1_1\, 
        \m8_ns_1\, i16_mux, \m18_ns_1\, i11_mux, \m39_ns_1\, 
        N_152_1, \framing_error_int_0_sqmuxa_1\, 
        un24_baud_clock_li, N_150_4, rx_bit_cnt_0_sqmuxa, i1_mux, 
        rx_bit_cnt_1_sqmuxa, un6_baud_clock, CO1 : std_logic;

begin 

    rx_state(1) <= \rx_state[1]_net_1\;
    rx_state(0) <= \rx_state[0]_net_1\;

    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(0));
    
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
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(6));
    
    framing_error_int_0_sqmuxa : CFG4
      generic map(INIT => x"0080")

      port map(A => i1_mux, B => \framing_error_int_0_sqmuxa_1\, 
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
    
    m18_ns_1 : CFG4
      generic map(INIT => x"0A3F")

      port map(A => CoreUARTapb_1_0_TXRDY, B => rx_dout_reg_0_d0, 
        C => CoreAPB3_0_APBmslave0_PADDR(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \m18_ns_1\);
    
    clear_parity_en_xhdl3 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_en);
    
    m15 : CFG3
      generic map(INIT => x"53")

      port map(A => controlReg2_0_d0, B => controlReg1_0_d0, C
         => CoreAPB3_0_APBmslave0_PADDR(2), Y => i16_mux);
    
    \rcv_sm.un24_baud_clock_NE\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => un24_baud_clock_li);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    m39_ns : CFG4
      generic map(INIT => x"AE15")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => i11_mux, D => 
        \m39_ns_1\, Y => nxtprdata_xhdl7_1_0(0));
    
    \rcv_cnt.receive_count_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un6_baud_clock, B => \receive_count[0]_net_1\, 
        Y => \receive_count_3[0]\);
    
    fifo_write_xhdl6_RNO : CFG1
      generic map(INIT => "01")

      port map(A => rx_byte_xhdl5_1_sqmuxa, Y => 
        rx_byte_xhdl5_1_sqmuxa_i_0);
    
    \rcv_cnt.receive_count_3[1]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[0]_net_1\, C => un6_baud_clock, Y => 
        \receive_count_3[1]\);
    
    \receive_shift.rx_shift_12[0]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[0]\);
    
    \rcv_cnt.receive_count_3[2]\ : CFG3
      generic map(INIT => x"14")

      port map(A => un6_baud_clock, B => \receive_count[2]_net_1\, 
        C => N_152_1, Y => \receive_count_3[2]\);
    
    rx_bit_cnt_0_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"04")

      port map(A => \rx_state[1]_net_1\, B => baud_clock, C => 
        \rx_state[0]_net_1\, Y => rx_bit_cnt_0_sqmuxa);
    
    framing_error_i : SLE
      port map(D => clear_parity_reg_i_0, CLK => FAB_CCC_GL0, EN
         => un1_framing_error_i4_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_0_0_FRAMING_ERR);
    
    \un1_rx_bit_cnt_1_1.CO1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_1_sqmuxa, C => \rx_bit_cnt[1]_net_1\, Y => CO1);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(7));
    
    \receive_count[3]\ : SLE
      port map(D => \receive_count_3[3]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
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
    
    m29_ns : CFG4
      generic map(INIT => x"AE15")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => i12_mux, D => 
        \m29_ns_1\, Y => nxtprdata_xhdl7_1_1);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => \rx_bit_cnt_4[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \rx_state_ns_0_a3_0_4[0]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[3]_net_1\, C => \receive_count[0]_net_1\, 
        D => \receive_count[2]_net_1\, Y => N_150_4);
    
    \rcv_cnt.un6_baud_clock\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_150_4, D => i1_mux, Y => un6_baud_clock);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    m18_ns : CFG4
      generic map(INIT => x"AE15")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => i16_mux, D => 
        \m18_ns_1\, Y => nxtprdata_xhdl7_1_0_d0);
    
    \rx_state_RNO[1]\ : CFG4
      generic map(INIT => x"0A0E")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => framing_error_int_2_sqmuxa, D => un24_baud_clock_li, 
        Y => N_147_i_0);
    
    framing_error_i_RNO_0 : CFG3
      generic map(INIT => x"EC")

      port map(A => \framing_error_int\, B => clear_parity_reg, C
         => baud_clock, Y => un1_framing_error_i4_i_0);
    
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
      generic map(INIT => x"A8")

      port map(A => \rx_shift[3]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[6]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_147_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    m8_ns_1_1 : CFG3
      generic map(INIT => x"53")

      port map(A => rx_dout_reg_4, B => controlReg1_4, C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \m8_ns_1_1\);
    
    m26 : CFG3
      generic map(INIT => x"53")

      port map(A => controlReg2_1, B => controlReg1_1, C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => i12_mux);
    
    \receive_shift.rx_bit_cnt_4[2]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => CO1, Y => \rx_bit_cnt_4[2]\);
    
    m8_ns_1 : CFG4
      generic map(INIT => x"8D0A")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        controlReg2_4, C => \m8_ns_1_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \m8_ns_1\);
    
    rx_bit_cnt_1_sqmuxa_0_a3 : CFG4
      generic map(INIT => x"8000")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => N_152_1, D => baud_clock, 
        Y => rx_bit_cnt_1_sqmuxa);
    
    \receive_shift.rx_shift_12[1]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[2]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[1]\);
    
    m29_ns_1 : CFG4
      generic map(INIT => x"0A3F")

      port map(A => CoreUARTapb_0_0_RXRDY, B => rx_dout_reg_1, C
         => CoreAPB3_0_APBmslave0_PADDR(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \m29_ns_1\);
    
    fifo_write_xhdl6 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa_i_0, CLK => 
        FAB_CCC_GL0, EN => VCC_net_1, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => fifo_write);
    
    framing_error_i_RNO : CFG1
      generic map(INIT => "01")

      port map(A => clear_parity_reg, Y => clear_parity_reg_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(4));
    
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
    
    m8_ns : CFG4
      generic map(INIT => x"50D8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreUARTapb_1_0_FRAMING_ERR, C => \m8_ns_1\, D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => nxtprdata_xhdl7_1_4);
    
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
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(2));
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \samples[2]\ : SLE
      port map(D => RX_c, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[7]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[6]\);
    
    \rcv_cnt.receive_count_3[3]\ : CFG4
      generic map(INIT => x"060C")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => un6_baud_clock, D => 
        N_152_1, Y => \receive_count_3[3]\);
    
    un1_samples8_1_0 : CFG2
      generic map(INIT => x"E")

      port map(A => rx_bit_cnt_1_sqmuxa, B => rx_bit_cnt_0_sqmuxa, 
        Y => \un1_samples8_1_0\);
    
    \receive_count[0]\ : SLE
      port map(D => \receive_count_3[0]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(3));
    
    \rx_state_ns_i_a3_0[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \rx_state[1]_net_1\, B => N_152_1, C => 
        \receive_count[3]_net_1\, D => \receive_count[2]_net_1\, 
        Y => framing_error_int_2_sqmuxa);
    
    \receive_shift.rx_shift_12[4]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[5]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4[0]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => rx_bit_cnt_1_sqmuxa, Y => 
        \rx_bit_cnt_4[0]\);
    
    \receive_shift.rx_shift_12[3]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[4]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rx_state_ns_0[0]\ : CFG4
      generic map(INIT => x"DC10")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_150_4, D => un24_baud_clock_li, Y => 
        \rx_state_ns[0]\);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => \rx_bit_cnt_4[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \rx_state_ns_i_a3_0_1[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \receive_count[0]_net_1\, B => 
        \receive_count[1]_net_1\, Y => N_152_1);
    
    m39_ns_1 : CFG4
      generic map(INIT => x"0A3F")

      port map(A => CoreUARTapb_0_0_TXRDY, B => rx_dout_reg_0(0), 
        C => CoreAPB3_0_APBmslave0_PADDR(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \m39_ns_1\);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(1));
    
    framing_error_int_0_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[2]_net_1\, C => \rx_state[1]_net_1\, Y => 
        \framing_error_int_0_sqmuxa_1\);
    
    \rx_filtered.m3\ : CFG3
      generic map(INIT => x"17")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => i1_mux);
    
    \receive_shift.rx_shift_12[7]\ : CFG3
      generic map(INIT => x"32")

      port map(A => \rx_state[1]_net_1\, B => i1_mux, C => 
        \rx_state[0]_net_1\, Y => \rx_shift_12[7]\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"40")

      port map(A => un24_baud_clock_li, B => \rx_state[0]_net_1\, 
        C => baud_clock, Y => rx_byte_xhdl5_1_sqmuxa);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => \rx_bit_cnt_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    m36 : CFG3
      generic map(INIT => x"53")

      port map(A => controlReg2_0(0), B => controlReg1_0(0), C
         => CoreAPB3_0_APBmslave0_PADDR(2), Y => i11_mux);
    
    \receive_shift.rx_bit_cnt_4[1]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => rx_bit_cnt_1_sqmuxa, D => 
        rx_bit_cnt_0_sqmuxa, Y => \rx_bit_cnt_4[1]\);
    

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
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNI2T7H_Y, 
        un2_baud_cntr_1, un2_baud_cntr_7, un2_baud_cntr_8, 
        \baud_cntr_cry[0]\, \baud_cntr_qxu_1[0]_net_1\, 
        \baud_cntr_cry[1]\, \baud_cntr_cry[2]\, 
        \baud_cntr_cry[3]\, \baud_cntr_cry[4]\, 
        \baud_cntr_cry[5]\, \baud_cntr_cry[6]\, 
        \baud_cntr_cry[7]\, \baud_cntr_cry[8]\, 
        \baud_cntr_cry[9]\, \baud_cntr_cry[10]\, 
        \baud_cntr_cry[11]\, un2_baud_cntr_7_x_0, 
        un2_baud_cntr_1_x_0, CO0 : std_logic;

begin 

    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

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
    
    \baud_cntr_RNIIG1D2[1]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNI2T7H_Y, C
         => \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \make_xmit_clock.un7_baud_clock_int\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un7_baud_clock_int);
    
    \baud_cntr_RNIQKT23[2]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[0]_net_1\, Y => un2_baud_cntr_1);
    
    \baud_cntr_RNI5OVI8[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"4BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[12]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_RNIEF3S7[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, D => 
        \baud_cntr[2]_net_1\, Y => un2_baud_cntr_7);
    
    \baud_cntr_RNIO7I45[5]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \baud_cntr_RNI3QPO3[3]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
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
    
    \make_xmit_clock.xmit_cntr_3_1.SUM[3]\ : CFG4
      generic map(INIT => x"6AAA")

      port map(A => \xmit_cntr[3]_net_1\, B => 
        \xmit_cntr[2]_net_1\, C => \xmit_cntr[1]_net_1\, D => CO0, 
        Y => \xmit_cntr_3[3]\);
    
    \baud_cntr_RNI4GEQ5[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_s[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    \baud_cntr_RNIV3767[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7_x\ : CFG3
      generic map(INIT => x"01")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, Y => 
        un2_baud_cntr_7_x_0);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[9]_net_1\, B => 
        \baud_cntr[8]_net_1\, C => \baud_cntr[7]_net_1\, D => 
        \baud_cntr[6]_net_1\, Y => un2_baud_cntr_8);
    
    \baud_cntr_RNIT1S99[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
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
    
    \baud_cntr_RNIHPAG6[7]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[7]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]\, S => \baud_cntr_s[7]\, Y => OPEN, FCO
         => \baud_cntr_cry[7]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_x\ : CFG3
      generic map(INIT => x"01")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[1]_net_1\, Y => 
        un2_baud_cntr_1_x_0);
    
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
    
    \baud_cntr_qxu_1[0]\ : CFG4
      generic map(INIT => x"EFFF")

      port map(A => \baud_cntr[2]_net_1\, B => 
        \baud_cntr[0]_net_1\, C => un2_baud_cntr_7_x_0, D => 
        un2_baud_cntr_1_x_0, Y => \baud_cntr_qxu_1[0]_net_1\);
    
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
    
    \baud_cntr_qxu_1_RNIVH8F1[0]\ : ARI1
      generic map(INIT => x"63331")

      port map(A => \baud_cntr_qxu_1[0]_net_1\, B => 
        un2_baud_cntr_8, C => \baud_cntr[0]_net_1\, D => 
        \baud_cntr[12]_net_1\, FCI => \baud_cntr_cry_cy[0]\, S
         => \baud_cntr_s[0]\, Y => OPEN, FCO => 
        \baud_cntr_cry[0]\);
    
    \baud_cntr_RNID0ME4[4]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
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

entity mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4 is

    port( data_out_0    : out   std_logic_vector(7 downto 0);
          rd_pointer    : in    std_logic_vector(6 downto 0);
          wr_pointer    : in    std_logic_vector(6 downto 0);
          tx_hold_reg   : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0   : in    std_logic;
          MSS_READY     : in    std_logic;
          fifo_write_tx : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4 is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, GND_net_1, INV_0_Y : std_logic;
    signal nc24, nc1, nc8, nc13, nc16, nc19, nc25, nc20, nc27, 
        nc9, nc22, nc28, nc14, nc5, nc21, nc15, nc3, nc10, nc7, 
        nc17, nc4, nc12, nc2, nc23, nc18, nc26, nc6, nc11
         : std_logic;

begin 


    RAM_128x8_Q_0_inst : RAM64x18
      port map(A_DOUT(17) => nc24, A_DOUT(16) => nc1, A_DOUT(15)
         => nc8, A_DOUT(14) => nc13, A_DOUT(13) => nc16, 
        A_DOUT(12) => nc19, A_DOUT(11) => nc25, A_DOUT(10) => 
        nc20, A_DOUT(9) => nc27, A_DOUT(8) => nc9, A_DOUT(7) => 
        data_out_0(7), A_DOUT(6) => data_out_0(6), A_DOUT(5) => 
        data_out_0(5), A_DOUT(4) => data_out_0(4), A_DOUT(3) => 
        data_out_0(3), A_DOUT(2) => data_out_0(2), A_DOUT(1) => 
        data_out_0(1), A_DOUT(0) => data_out_0(0), B_DOUT(17) => 
        nc22, B_DOUT(16) => nc28, B_DOUT(15) => nc14, B_DOUT(14)
         => nc5, B_DOUT(13) => nc21, B_DOUT(12) => nc15, 
        B_DOUT(11) => nc3, B_DOUT(10) => nc10, B_DOUT(9) => nc7, 
        B_DOUT(8) => nc17, B_DOUT(7) => nc4, B_DOUT(6) => nc12, 
        B_DOUT(5) => nc2, B_DOUT(4) => nc23, B_DOUT(3) => nc18, 
        B_DOUT(2) => nc26, B_DOUT(1) => nc6, B_DOUT(0) => nc11, 
        BUSY => OPEN, A_ADDR_CLK => FAB_CCC_GL0, A_DOUT_CLK => 
        VCC_net_1, A_ADDR_SRST_N => VCC_net_1, A_DOUT_SRST_N => 
        VCC_net_1, A_ADDR_ARST_N => MSS_READY, A_DOUT_ARST_N => 
        VCC_net_1, A_ADDR_EN => VCC_net_1, A_DOUT_EN => VCC_net_1, 
        A_BLK(1) => VCC_net_1, A_BLK(0) => VCC_net_1, A_ADDR(9)
         => rd_pointer(6), A_ADDR(8) => rd_pointer(5), A_ADDR(7)
         => rd_pointer(4), A_ADDR(6) => rd_pointer(3), A_ADDR(5)
         => rd_pointer(2), A_ADDR(4) => rd_pointer(1), A_ADDR(3)
         => rd_pointer(0), A_ADDR(2) => GND_net_1, A_ADDR(1) => 
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
        FAB_CCC_GL0, C_ADDR(9) => wr_pointer(6), C_ADDR(8) => 
        wr_pointer(5), C_ADDR(7) => wr_pointer(4), C_ADDR(6) => 
        wr_pointer(3), C_ADDR(5) => wr_pointer(2), C_ADDR(4) => 
        wr_pointer(1), C_ADDR(3) => wr_pointer(0), C_ADDR(2) => 
        GND_net_1, C_ADDR(1) => GND_net_1, C_ADDR(0) => GND_net_1, 
        C_DIN(17) => GND_net_1, C_DIN(16) => GND_net_1, C_DIN(15)
         => GND_net_1, C_DIN(14) => GND_net_1, C_DIN(13) => 
        GND_net_1, C_DIN(12) => GND_net_1, C_DIN(11) => GND_net_1, 
        C_DIN(10) => GND_net_1, C_DIN(9) => GND_net_1, C_DIN(8)
         => GND_net_1, C_DIN(7) => tx_hold_reg(7), C_DIN(6) => 
        tx_hold_reg(6), C_DIN(5) => tx_hold_reg(5), C_DIN(4) => 
        tx_hold_reg(4), C_DIN(3) => tx_hold_reg(3), C_DIN(2) => 
        tx_hold_reg(2), C_DIN(1) => tx_hold_reg(1), C_DIN(0) => 
        tx_hold_reg(0), C_WEN => INV_0_Y, C_BLK(1) => VCC_net_1, 
        C_BLK(0) => VCC_net_1, A_EN => VCC_net_1, A_ADDR_LAT => 
        GND_net_1, A_DOUT_LAT => VCC_net_1, A_WIDTH(2) => 
        GND_net_1, A_WIDTH(1) => VCC_net_1, A_WIDTH(0) => 
        VCC_net_1, B_EN => GND_net_1, B_ADDR_LAT => GND_net_1, 
        B_DOUT_LAT => VCC_net_1, B_WIDTH(2) => GND_net_1, 
        B_WIDTH(1) => VCC_net_1, B_WIDTH(0) => VCC_net_1, C_EN
         => VCC_net_1, C_WIDTH(2) => GND_net_1, C_WIDTH(1) => 
        VCC_net_1, C_WIDTH(0) => VCC_net_1, SII_LOCK => GND_net_1);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    INV_0 : INV
      port map(A => fifo_write_tx, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128 is

    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0);
          fifo_write_tx    : in    std_logic;
          FAB_CCC_GL0      : in    std_logic;
          MSS_READY        : in    std_logic;
          fifo_read_tx     : in    std_logic;
          fifo_read_tx_i_0 : in    std_logic;
          fifo_full_tx_i_0 : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128 is 

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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4
    port( data_out_0    : out   std_logic_vector(7 downto 0);
          rd_pointer    : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer    : in    std_logic_vector(6 downto 0) := (others => 'U');
          tx_hold_reg   : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0   : in    std_logic := 'U';
          MSS_READY     : in    std_logic := 'U';
          fifo_write_tx : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1714_i_0\, 
        VCC_net_1, \data_out_0[0]\, \data_out_xhdl1_0_sqmuxa\, 
        GND_net_1, \data_out_0[1]\, \data_out_0[2]\, 
        \data_out_0[3]\, \data_out_0[4]\, \data_out_0[5]\, 
        \data_out_0[6]\, \data_out_0[7]\, \counter[0]_net_1\, 
        un1_counter_1_cry_0_Y, \counter[1]_net_1\, 
        un1_counter_1_cry_1_0_S, \counter[2]_net_1\, 
        un1_counter_1_cry_2_0_S, \counter[3]_net_1\, 
        un1_counter_1_cry_3_0_S, \counter[4]_net_1\, 
        un1_counter_1_cry_4_0_S, \counter[5]_net_1\, 
        un1_counter_1_cry_5_0_S, \counter[6]_net_1\, 
        un1_counter_1_s_6_S, \read_n_hold\, \wr_pointer[1]_net_1\, 
        \wr_pointer_s[1]\, \wr_pointer[2]_net_1\, 
        \wr_pointer_s[2]\, \wr_pointer[3]_net_1\, 
        \wr_pointer_s[3]\, \wr_pointer[4]_net_1\, 
        \wr_pointer_s[4]\, \wr_pointer[5]_net_1\, 
        \wr_pointer_s[5]\, \wr_pointer[6]_net_1\, 
        \wr_pointer_s[6]_net_1\, \rd_pointer[1]_net_1\, 
        \rd_pointer_s[1]\, \rd_pointer[2]_net_1\, 
        \rd_pointer_s[2]\, \rd_pointer[3]_net_1\, 
        \rd_pointer_s[3]\, \rd_pointer[4]_net_1\, 
        \rd_pointer_s[4]\, \rd_pointer[5]_net_1\, 
        \rd_pointer_s[5]\, \rd_pointer[6]_net_1\, 
        \rd_pointer_s[6]_net_1\, \un1_counter_1_cry_0\, 
        un1_counter_1_cry_1, un1_counter_1_cry_2, 
        un1_counter_1_cry_3, un1_counter_1_cry_4, 
        un1_counter_1_cry_5, rd_pointer_s_113_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_114_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, \un2_temp_xhdl5_0_a2_4\
         : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4(DEF_ARCH);
begin 

    counter(6) <= \counter[6]_net_1\;
    counter(5) <= \counter[5]_net_1\;
    counter(4) <= \counter[4]_net_1\;
    counter(3) <= \counter[3]_net_1\;
    counter(2) <= \counter[2]_net_1\;
    counter(1) <= \counter[1]_net_1\;
    counter(0) <= \counter[0]_net_1\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_114_FCO, S
         => \wr_pointer_s[1]\, Y => OPEN, FCO => 
        \wr_pointer_cry[1]_net_1\);
    
    un2_temp_xhdl5_0_a2_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[1]_net_1\, B => \counter[5]_net_1\, 
        C => \counter[3]_net_1\, D => \counter[2]_net_1\, Y => 
        \un2_temp_xhdl5_0_a2_4\);
    
    \wr_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[2]_net_1\, S => \wr_pointer_s[3]\, Y => 
        OPEN, FCO => \wr_pointer_cry[3]_net_1\);
    
    data_out_xhdl1_0_sqmuxa : CFG2
      generic map(INIT => x"2")

      port map(A => MSS_READY, B => \read_n_hold\, Y => 
        \data_out_xhdl1_0_sqmuxa\);
    
    \wr_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[1]_net_1\, S => \wr_pointer_s[2]\, Y => 
        OPEN, FCO => \wr_pointer_cry[2]_net_1\);
    
    \rd_pointer[2]\ : SLE
      port map(D => \rd_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_0_S, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[2]_net_1\);
    
    \wr_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[4]_net_1\, S => \wr_pointer_s[5]\, Y => 
        OPEN, FCO => \wr_pointer_cry[5]_net_1\);
    
    un1_counter_1_s_6 : ARI1
      generic map(INIT => x"46A00")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => 
        fifo_read_tx_i_0, D => fifo_write_tx, FCI => 
        un1_counter_1_cry_5, S => un1_counter_1_s_6_S, Y => OPEN, 
        FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[5]_net_1\);
    
    \data_out_xhdl1[2]\ : SLE
      port map(D => \data_out_0[2]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(2));
    
    \counter[6]\ : SLE
      port map(D => un1_counter_1_s_6_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[6]_net_1\);
    
    read_n_hold : SLE
      port map(D => fifo_read_tx, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[1]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    rd_pointer_s_113 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_113_FCO);
    
    \rd_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[5]_net_1\, S => \rd_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_113_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(0));
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"59966")

      port map(A => \counter[0]_net_1\, B => fifo_read_tx, C => 
        fifo_write_tx, D => GND_net_1, FCI => GND_net_1, S => 
        OPEN, Y => un1_counter_1_cry_0_Y, FCO => 
        \un1_counter_1_cry_0\);
    
    \data_out_xhdl1[7]\ : SLE
      port map(D => \data_out_0[7]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(7));
    
    \data_out_xhdl1[1]\ : SLE
      port map(D => \data_out_0[1]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(1));
    
    \wr_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[5]_net_1\, S => \wr_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \wr_pointer[3]\ : SLE
      port map(D => \wr_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_0_S, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_0_S, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    un1_counter_1_cry_4_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[4]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_3, S => un1_counter_1_cry_4_0_S, Y => 
        OPEN, FCO => un1_counter_1_cry_4);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[0]_net_1\);
    
    \rd_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[2]_net_1\, S => \rd_pointer_s[3]\, Y => 
        OPEN, FCO => \rd_pointer_cry[3]_net_1\);
    
    wr_pointer_s_114 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_114_FCO);
    
    \wr_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[3]_net_1\, S => \wr_pointer_s[4]\, Y => 
        OPEN, FCO => \wr_pointer_cry[4]_net_1\);
    
    \wr_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \wr_pointer[0]_net_1\, Y => \wr_pointer_s[0]\);
    
    \wr_pointer[6]\ : SLE
      port map(D => \wr_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \wr_pointer[6]_net_1\);
    
    un1_counter_1_cry_2_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[2]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_1, S => un1_counter_1_cry_2_0_S, Y => 
        OPEN, FCO => un1_counter_1_cry_2);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_0_S, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[3]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_2, S => un1_counter_1_cry_3_0_S, Y => 
        OPEN, FCO => un1_counter_1_cry_3);
    
    N_1714_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => fifo_write_tx, Y => \N_1714_i_0\);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_0_S, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[3]_net_1\);
    
    \data_out_xhdl1[4]\ : SLE
      port map(D => \data_out_0[4]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
    un2_temp_xhdl5_0_a2_4_RNICBMP : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[0]_net_1\, B => 
        \un2_temp_xhdl5_0_a2_4\, C => \counter[6]_net_1\, D => 
        \counter[4]_net_1\, Y => fifo_full_tx_i_0);
    
    \data_out_xhdl1[5]\ : SLE
      port map(D => \data_out_0[5]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(5));
    
    \rd_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[4]_net_1\, S => \rd_pointer_s[5]\, Y => 
        OPEN, FCO => \rd_pointer_cry[5]_net_1\);
    
    \data_out_xhdl1[6]\ : SLE
      port map(D => \data_out_0[6]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(6));
    
    un1_counter_1_cry_1_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[1]_net_1\, D => GND_net_1, FCI => 
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1714_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => fifo_read_tx_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[1]_net_1\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(3));
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[3]_net_1\);
    
    \rd_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[1]_net_1\, S => \rd_pointer_s[2]\, Y => 
        OPEN, FCO => \rd_pointer_cry[2]_net_1\);
    
    un1_counter_1_cry_5_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[5]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_4, S => un1_counter_1_cry_5_0_S, Y => 
        OPEN, FCO => un1_counter_1_cry_5);
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[4]_net_1\);
    
    ram128_8_pa4 : mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4
      port map(data_out_0(7) => \data_out_0[7]\, data_out_0(6)
         => \data_out_0[6]\, data_out_0(5) => \data_out_0[5]\, 
        data_out_0(4) => \data_out_0[4]\, data_out_0(3) => 
        \data_out_0[3]\, data_out_0(2) => \data_out_0[2]\, 
        data_out_0(1) => \data_out_0[1]\, data_out_0(0) => 
        \data_out_0[0]\, rd_pointer(6) => \rd_pointer[6]_net_1\, 
        rd_pointer(5) => \rd_pointer[5]_net_1\, rd_pointer(4) => 
        \rd_pointer[4]_net_1\, rd_pointer(3) => 
        \rd_pointer[3]_net_1\, rd_pointer(2) => 
        \rd_pointer[2]_net_1\, rd_pointer(1) => 
        \rd_pointer[1]_net_1\, rd_pointer(0) => 
        \rd_pointer[0]_net_1\, wr_pointer(6) => 
        \wr_pointer[6]_net_1\, wr_pointer(5) => 
        \wr_pointer[5]_net_1\, wr_pointer(4) => 
        \wr_pointer[4]_net_1\, wr_pointer(3) => 
        \wr_pointer[3]_net_1\, wr_pointer(2) => 
        \wr_pointer[2]_net_1\, wr_pointer(1) => 
        \wr_pointer[1]_net_1\, wr_pointer(0) => 
        \wr_pointer[0]_net_1\, tx_hold_reg(7) => tx_hold_reg(7), 
        tx_hold_reg(6) => tx_hold_reg(6), tx_hold_reg(5) => 
        tx_hold_reg(5), tx_hold_reg(4) => tx_hold_reg(4), 
        tx_hold_reg(3) => tx_hold_reg(3), tx_hold_reg(2) => 
        tx_hold_reg(2), tx_hold_reg(1) => tx_hold_reg(1), 
        tx_hold_reg(0) => tx_hold_reg(0), FAB_CCC_GL0 => 
        FAB_CCC_GL0, MSS_READY => MSS_READY, fifo_write_tx => 
        fifo_write_tx);
    
    \rd_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[3]_net_1\, S => \rd_pointer_s[4]\, Y => 
        OPEN, FCO => \rd_pointer_cry[4]_net_1\);
    
    \counter[0]\ : SLE
      port map(D => un1_counter_1_cry_0_Y, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_fifo_256x8 is

    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0);
          fifo_write_tx    : in    std_logic;
          FAB_CCC_GL0      : in    std_logic;
          MSS_READY        : in    std_logic;
          fifo_read_tx     : in    std_logic;
          fifo_read_tx_i_0 : in    std_logic;
          fifo_full_tx_i_0 : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_fifo_256x8;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_fifo_256x8 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128
    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0) := (others => 'U');
          fifo_write_tx    : in    std_logic := 'U';
          FAB_CCC_GL0      : in    std_logic := 'U';
          MSS_READY        : in    std_logic := 'U';
          fifo_read_tx     : in    std_logic := 'U';
          fifo_read_tx_i_0 : in    std_logic := 'U';
          fifo_full_tx_i_0 : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    mss_top_sb_CoreUARTapb_0_0_fifo_128x8_pa4 : 
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128
      port map(tx_dout_reg(7) => tx_dout_reg(7), tx_dout_reg(6)
         => tx_dout_reg(6), tx_dout_reg(5) => tx_dout_reg(5), 
        tx_dout_reg(4) => tx_dout_reg(4), tx_dout_reg(3) => 
        tx_dout_reg(3), tx_dout_reg(2) => tx_dout_reg(2), 
        tx_dout_reg(1) => tx_dout_reg(1), tx_dout_reg(0) => 
        tx_dout_reg(0), counter(6) => counter(6), counter(5) => 
        counter(5), counter(4) => counter(4), counter(3) => 
        counter(3), counter(2) => counter(2), counter(1) => 
        counter(1), counter(0) => counter(0), tx_hold_reg(7) => 
        tx_hold_reg(7), tx_hold_reg(6) => tx_hold_reg(6), 
        tx_hold_reg(5) => tx_hold_reg(5), tx_hold_reg(4) => 
        tx_hold_reg(4), tx_hold_reg(3) => tx_hold_reg(3), 
        tx_hold_reg(2) => tx_hold_reg(2), tx_hold_reg(1) => 
        tx_hold_reg(1), tx_hold_reg(0) => tx_hold_reg(0), 
        fifo_write_tx => fifo_write_tx, FAB_CCC_GL0 => 
        FAB_CCC_GL0, MSS_READY => MSS_READY, fifo_read_tx => 
        fifo_read_tx, fifo_read_tx_i_0 => fifo_read_tx_i_0, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_Tx_async is

    port( tx_dout_reg           : in    std_logic_vector(7 downto 0);
          counter               : in    std_logic_vector(6 downto 0);
          fifo_read_tx          : out   std_logic;
          fifo_read_tx_i_0      : out   std_logic;
          TX_c                  : out   std_logic;
          MSS_READY             : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          xmit_pulse            : in    std_logic;
          CoreUARTapb_0_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic;
          baud_clock            : in    std_logic;
          xmit_clock            : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_Tx_async;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_Tx_async is 

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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \fifo_read_tx\, N_25, N_25_i_0, GND_net_1, 
        tx_xhdl2_3_iv_i_a2_0, N_127_i_0, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_111_i_0, 
        \xmit_bit_sel[2]_net_1\, N_113_i_0, 
        \xmit_bit_sel[3]_net_1\, N_115_i_0, \tx_byte[0]_net_1\, 
        N_119_i_0, \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, \xmit_state[6]_net_1\, 
        \xmit_state_ns[0]\, \xmit_state[5]_net_1\, 
        \xmit_state[0]_net_1\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[2]\, \xmit_state[3]_net_1\, N_101_i_0, 
        \xmit_state[1]_net_1\, \xmit_state_ns[5]\, 
        tx_xhdl2_1_7_i_m2_am_1_1, tx_xhdl2_1_7_i_m2_am, 
        tx_xhdl2_1_7_i_m2_bm_1_1, tx_xhdl2_1_7_i_m2_bm, N_507, 
        N_246_3, \xmit_state_ns_0_a2_0_1[0]_net_1\, N_244_5, 
        N_222, N_239 : std_logic;

begin 

    fifo_read_tx <= \fifo_read_tx\;

    txrdy_int : SLE
      port map(D => fifo_full_tx_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_TXRDY);
    
    \xmit_cnt.xmit_bit_sel_3_i_0_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, C => \xmit_bit_sel[0]_net_1\, Y
         => N_222);
    
    \xmit_state[3]\ : SLE
      port map(D => N_101_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \xmit_state_RNI8UMV[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[4]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_119_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_bm_1_1);
    
    \xmit_state_RNIPFK01[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \xmit_state[0]_net_1\, B => xmit_pulse, C => 
        \xmit_state[5]_net_1\, D => \xmit_state[6]_net_1\, Y => 
        N_127_i_0);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_dout_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => N_25_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_dout_reg(4), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
    \xmit_state_ns_0[5]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \xmit_state[1]_net_1\, B => xmit_pulse, C => 
        N_239, Y => \xmit_state_ns[5]\);
    
    \xmit_state_ns_0[2]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \xmit_state[4]_net_1\, B => xmit_pulse, C => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[2]\);
    
    \xmit_cnt.xmit_bit_sel_3_a3_0_a2[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[3]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"28")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_111_i_0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_dout_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_am_1_1);
    
    \xmit_state_ns_0_a2[5]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[3]_net_1\, C => xmit_pulse, D => N_222, Y
         => N_239);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_115_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    fifo_read_en0_RNIH9V8 : CFG1
      generic map(INIT => "01")

      port map(A => \fifo_read_tx\, Y => fifo_read_tx_i_0);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_i_a2_0, CLK => FAB_CCC_GL0, EN
         => N_127_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        TX_c);
    
    \xmit_state_ns_0[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \xmit_state_ns_0_a2_0_1[0]_net_1\, B => 
        xmit_pulse, C => \xmit_state[1]_net_1\, D => N_244_5, Y
         => \xmit_state_ns[0]\);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_113_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_dout_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \xmit_state_ns_0_a2_0_1[0]\ : CFG3
      generic map(INIT => x"40")

      port map(A => counter(5), B => N_246_3, C => 
        \xmit_state[6]_net_1\, Y => 
        \xmit_state_ns_0_a2_0_1[0]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_dout_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    \xmit_state_RNO[3]\ : CFG4
      generic map(INIT => x"0E0A")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[4]_net_1\, C => N_239, D => xmit_pulse, Y => 
        N_101_i_0);
    
    \xmit_state_ns_0_a2_0_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => counter(4), B => counter(6), Y => N_246_3);
    
    \xmit_bit_sel_RNO[2]\ : CFG4
      generic map(INIT => x"28A0")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[2]_net_1\, D
         => \xmit_bit_sel[1]_net_1\, Y => N_113_i_0);
    
    \xmit_state_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => N_25, Y => N_25_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_bm\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[5]_net_1\, B => \tx_byte[7]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_bm_1_1, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_bm);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_ns\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        tx_xhdl2_1_7_i_m2_bm, C => tx_xhdl2_1_7_i_m2_am, Y => 
        N_507);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_am_1_1, D => 
        \xmit_bit_sel[1]_net_1\, Y => tx_xhdl2_1_7_i_m2_am);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_dout_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    fifo_read_en0_1_i_a3_i_a2_4 : CFG4
      generic map(INIT => x"0001")

      port map(A => counter(3), B => counter(2), C => counter(1), 
        D => counter(0), Y => N_244_5);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_111_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_state[1]\ : SLE
      port map(D => \xmit_state_ns[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \xmit_sel.tx_xhdl2_3_iv_i_a2\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \xmit_state[3]_net_1\, B => N_507, C => 
        \xmit_state[4]_net_1\, Y => tx_xhdl2_3_iv_i_a2_0);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_dout_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    fifo_read_en0 : SLE
      port map(D => N_25, CLK => FAB_CCC_GL0, EN => N_127_i_0, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \fifo_read_tx\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_dout_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[4]_net_1\);
    
    \xmit_bit_sel_RNO[3]\ : CFG3
      generic map(INIT => x"84")

      port map(A => \xmit_bit_sel[3]_net_1\, B => 
        \xmit_state[3]_net_1\, C => N_222, Y => N_115_i_0);
    
    \xmit_state[6]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[6]_net_1\);
    
    fifo_read_en0_1_i_a3_i : CFG4
      generic map(INIT => x"7555")

      port map(A => \xmit_state[6]_net_1\, B => counter(5), C => 
        N_246_3, D => N_244_5, Y => N_25);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0 is

    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0);
          wr_pointer  : in    std_logic_vector(6 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic;
          temp_xhdl17 : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0 is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, GND_net_1, INV_0_Y : std_logic;
    signal nc24, nc1, nc8, nc13, nc16, nc19, nc25, nc20, nc27, 
        nc9, nc22, nc28, nc14, nc5, nc21, nc15, nc3, nc10, nc7, 
        nc17, nc4, nc12, nc2, nc23, nc18, nc26, nc6, nc11
         : std_logic;

begin 


    RAM_128x8_Q_0_inst : RAM64x18
      port map(A_DOUT(17) => nc24, A_DOUT(16) => nc1, A_DOUT(15)
         => nc8, A_DOUT(14) => nc13, A_DOUT(13) => nc16, 
        A_DOUT(12) => nc19, A_DOUT(11) => nc25, A_DOUT(10) => 
        nc20, A_DOUT(9) => nc27, A_DOUT(8) => nc9, A_DOUT(7) => 
        data_out_0(7), A_DOUT(6) => data_out_0(6), A_DOUT(5) => 
        data_out_0(5), A_DOUT(4) => data_out_0(4), A_DOUT(3) => 
        data_out_0(3), A_DOUT(2) => data_out_0(2), A_DOUT(1) => 
        data_out_0(1), A_DOUT(0) => data_out_0(0), B_DOUT(17) => 
        nc22, B_DOUT(16) => nc28, B_DOUT(15) => nc14, B_DOUT(14)
         => nc5, B_DOUT(13) => nc21, B_DOUT(12) => nc15, 
        B_DOUT(11) => nc3, B_DOUT(10) => nc10, B_DOUT(9) => nc7, 
        B_DOUT(8) => nc17, B_DOUT(7) => nc4, B_DOUT(6) => nc12, 
        B_DOUT(5) => nc2, B_DOUT(4) => nc23, B_DOUT(3) => nc18, 
        B_DOUT(2) => nc26, B_DOUT(1) => nc6, B_DOUT(0) => nc11, 
        BUSY => OPEN, A_ADDR_CLK => FAB_CCC_GL0, A_DOUT_CLK => 
        VCC_net_1, A_ADDR_SRST_N => VCC_net_1, A_DOUT_SRST_N => 
        VCC_net_1, A_ADDR_ARST_N => MSS_READY, A_DOUT_ARST_N => 
        VCC_net_1, A_ADDR_EN => VCC_net_1, A_DOUT_EN => VCC_net_1, 
        A_BLK(1) => VCC_net_1, A_BLK(0) => VCC_net_1, A_ADDR(9)
         => rd_pointer(6), A_ADDR(8) => rd_pointer(5), A_ADDR(7)
         => rd_pointer(4), A_ADDR(6) => rd_pointer(3), A_ADDR(5)
         => rd_pointer(2), A_ADDR(4) => rd_pointer(1), A_ADDR(3)
         => rd_pointer(0), A_ADDR(2) => GND_net_1, A_ADDR(1) => 
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
        FAB_CCC_GL0, C_ADDR(9) => wr_pointer(6), C_ADDR(8) => 
        wr_pointer(5), C_ADDR(7) => wr_pointer(4), C_ADDR(6) => 
        wr_pointer(3), C_ADDR(5) => wr_pointer(2), C_ADDR(4) => 
        wr_pointer(1), C_ADDR(3) => wr_pointer(0), C_ADDR(2) => 
        GND_net_1, C_ADDR(1) => GND_net_1, C_ADDR(0) => GND_net_1, 
        C_DIN(17) => GND_net_1, C_DIN(16) => GND_net_1, C_DIN(15)
         => GND_net_1, C_DIN(14) => GND_net_1, C_DIN(13) => 
        GND_net_1, C_DIN(12) => GND_net_1, C_DIN(11) => GND_net_1, 
        C_DIN(10) => GND_net_1, C_DIN(9) => GND_net_1, C_DIN(8)
         => GND_net_1, C_DIN(7) => rx_byte(7), C_DIN(6) => 
        rx_byte(6), C_DIN(5) => rx_byte(5), C_DIN(4) => 
        rx_byte(4), C_DIN(3) => rx_byte(3), C_DIN(2) => 
        rx_byte(2), C_DIN(1) => rx_byte(1), C_DIN(0) => 
        rx_byte(0), C_WEN => INV_0_Y, C_BLK(1) => VCC_net_1, 
        C_BLK(0) => VCC_net_1, A_EN => VCC_net_1, A_ADDR_LAT => 
        GND_net_1, A_DOUT_LAT => VCC_net_1, A_WIDTH(2) => 
        GND_net_1, A_WIDTH(1) => VCC_net_1, A_WIDTH(0) => 
        VCC_net_1, B_EN => GND_net_1, B_ADDR_LAT => GND_net_1, 
        B_DOUT_LAT => VCC_net_1, B_WIDTH(2) => GND_net_1, 
        B_WIDTH(1) => VCC_net_1, B_WIDTH(0) => VCC_net_1, C_EN
         => VCC_net_1, C_WIDTH(2) => GND_net_1, C_WIDTH(1) => 
        VCC_net_1, C_WIDTH(0) => VCC_net_1, SII_LOCK => GND_net_1);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    INV_0 : INV
      port map(A => temp_xhdl17, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0 is

    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0);
          temp_xhdl17           : in    std_logic;
          fifo_read_rx_0_sqmuxa : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          MSS_READY             : in    std_logic;
          fifo_write            : in    std_logic;
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0 is 

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

  component VCC
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0
    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U';
          temp_xhdl17 : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1697_i_0\, 
        N_1696_i_0, VCC_net_1, \data_out_0[0]\, 
        \data_out_xhdl1_0_sqmuxa\, GND_net_1, \data_out_0[1]\, 
        \data_out_0[2]\, \data_out_0[3]\, \data_out_0[4]\, 
        \data_out_0[5]\, \data_out_0[6]\, \data_out_0[7]\, 
        \counter[0]_net_1\, un1_counter_1_cry_0_Y_0, 
        \counter[1]_net_1\, un1_counter_1_cry_1_0_S_0, 
        \counter[2]_net_1\, un1_counter_1_cry_2_0_S_0, 
        \counter[3]_net_1\, un1_counter_1_cry_3_0_S_0, 
        \counter[4]_net_1\, un1_counter_1_cry_4_0_S_0, 
        \counter[5]_net_1\, un1_counter_1_cry_5_0_S_0, 
        \counter[6]_net_1\, un1_counter_1_s_6_S_0, \read_n_hold\, 
        \wr_pointer[1]_net_1\, \wr_pointer_s[1]\, 
        \wr_pointer[2]_net_1\, \wr_pointer_s[2]\, 
        \wr_pointer[3]_net_1\, \wr_pointer_s[3]\, 
        \wr_pointer[4]_net_1\, \wr_pointer_s[4]\, 
        \wr_pointer[5]_net_1\, \wr_pointer_s[5]\, 
        \wr_pointer[6]_net_1\, \wr_pointer_s[6]_net_1\, 
        \rd_pointer[1]_net_1\, \rd_pointer_s[1]\, 
        \rd_pointer[2]_net_1\, \rd_pointer_s[2]\, 
        \rd_pointer[3]_net_1\, \rd_pointer_s[3]\, 
        \rd_pointer[4]_net_1\, \rd_pointer_s[4]\, 
        \rd_pointer[5]_net_1\, \rd_pointer_s[5]\, 
        \rd_pointer[6]_net_1\, \rd_pointer_s[6]_net_1\, 
        \un1_counter_1_cry_0\, \fifo_full_rx\, 
        un1_counter_1_cry_1, un1_counter_1_cry_2, 
        un1_counter_1_cry_3, un1_counter_1_cry_4, 
        un1_counter_1_cry_5, rd_pointer_s_115_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_116_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, \un2_temp_xhdl5_4\, 
        \un1_temp_xhdl6_4\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0(DEF_ARCH);
begin 

    fifo_full_rx <= \fifo_full_rx\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_116_FCO, S
         => \wr_pointer_s[1]\, Y => OPEN, FCO => 
        \wr_pointer_cry[1]_net_1\);
    
    \wr_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[2]_net_1\, S => \wr_pointer_s[3]\, Y => 
        OPEN, FCO => \wr_pointer_cry[3]_net_1\);
    
    data_out_xhdl1_0_sqmuxa : CFG2
      generic map(INIT => x"2")

      port map(A => MSS_READY, B => \read_n_hold\, Y => 
        \data_out_xhdl1_0_sqmuxa\);
    
    \wr_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[1]_net_1\, S => \wr_pointer_s[2]\, Y => 
        OPEN, FCO => \wr_pointer_cry[2]_net_1\);
    
    \rd_pointer[2]\ : SLE
      port map(D => \rd_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[2]_net_1\);
    
    \wr_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[4]_net_1\, S => \wr_pointer_s[5]\, Y => 
        OPEN, FCO => \wr_pointer_cry[5]_net_1\);
    
    un1_counter_1_s_6 : ARI1
      generic map(INIT => x"46A00")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => 
        fifo_read_rx_0_sqmuxa, D => temp_xhdl17, FCI => 
        un1_counter_1_cry_5, S => un1_counter_1_s_6_S_0, Y => 
        OPEN, FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[5]_net_1\);
    
    \data_out_xhdl1[2]\ : SLE
      port map(D => \data_out_0[2]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(2));
    
    \counter[6]\ : SLE
      port map(D => un1_counter_1_s_6_S_0, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[6]_net_1\);
    
    read_n_hold : SLE
      port map(D => N_1696_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[1]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    un1_temp_xhdl6 : CFG4
      generic map(INIT => x"0004")

      port map(A => \counter[0]_net_1\, B => \un1_temp_xhdl6_4\, 
        C => \counter[6]_net_1\, D => \counter[5]_net_1\, Y => 
        fifo_empty_rx);
    
    \rd_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[5]_net_1\, S => \rd_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_115_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(0));
    
    read_n_hold_RNO : CFG1
      generic map(INIT => "01")

      port map(A => fifo_read_rx_0_sqmuxa, Y => N_1696_i_0);
    
    un2_temp_xhdl5_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[4]_net_1\, B => \counter[3]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[1]_net_1\, Y => 
        \un2_temp_xhdl5_4\);
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"556A9")

      port map(A => \counter[0]_net_1\, B => 
        fifo_read_rx_0_sqmuxa, C => fifo_write, D => 
        \fifo_full_rx\, FCI => GND_net_1, S => OPEN, Y => 
        un1_counter_1_cry_0_Y_0, FCO => \un1_counter_1_cry_0\);
    
    \data_out_xhdl1[7]\ : SLE
      port map(D => \data_out_0[7]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(7));
    
    \data_out_xhdl1[1]\ : SLE
      port map(D => \data_out_0[1]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(1));
    
    \wr_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[5]_net_1\, S => \wr_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \wr_pointer[3]\ : SLE
      port map(D => \wr_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    un1_counter_1_cry_4_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[4]_net_1\, FCI => 
        un1_counter_1_cry_3, S => un1_counter_1_cry_4_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_4);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[0]_net_1\);
    
    \rd_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[2]_net_1\, S => \rd_pointer_s[3]\, Y => 
        OPEN, FCO => \rd_pointer_cry[3]_net_1\);
    
    \wr_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[3]_net_1\, S => \wr_pointer_s[4]\, Y => 
        OPEN, FCO => \wr_pointer_cry[4]_net_1\);
    
    \wr_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \wr_pointer[0]_net_1\, Y => \wr_pointer_s[0]\);
    
    \wr_pointer[6]\ : SLE
      port map(D => \wr_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \wr_pointer[6]_net_1\);
    
    un1_counter_1_cry_2_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[2]_net_1\, FCI => 
        un1_counter_1_cry_1, S => un1_counter_1_cry_2_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_2);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[3]_net_1\, FCI => 
        un1_counter_1_cry_2, S => un1_counter_1_cry_3_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_3);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[3]_net_1\);
    
    \data_out_xhdl1[4]\ : SLE
      port map(D => \data_out_0[4]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
    un2_temp_xhdl5 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[0]_net_1\, B => \un2_temp_xhdl5_4\, 
        C => \counter[6]_net_1\, D => \counter[5]_net_1\, Y => 
        \fifo_full_rx\);
    
    N_1697_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => temp_xhdl17, Y => \N_1697_i_0\);
    
    wr_pointer_s_116 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_116_FCO);
    
    \data_out_xhdl1[5]\ : SLE
      port map(D => \data_out_0[5]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(5));
    
    \rd_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[4]_net_1\, S => \rd_pointer_s[5]\, Y => 
        OPEN, FCO => \rd_pointer_cry[5]_net_1\);
    
    \data_out_xhdl1[6]\ : SLE
      port map(D => \data_out_0[6]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(6));
    
    un1_counter_1_cry_1_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[1]_net_1\, FCI => 
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1697_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[1]_net_1\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(3));
    
    un1_temp_xhdl6_4 : CFG4
      generic map(INIT => x"0001")

      port map(A => \counter[4]_net_1\, B => \counter[3]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[1]_net_1\, Y => 
        \un1_temp_xhdl6_4\);
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[3]_net_1\);
    
    \rd_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[1]_net_1\, S => \rd_pointer_s[2]\, Y => 
        OPEN, FCO => \rd_pointer_cry[2]_net_1\);
    
    rd_pointer_s_115 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_115_FCO);
    
    un1_counter_1_cry_5_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[5]_net_1\, FCI => 
        un1_counter_1_cry_4, S => un1_counter_1_cry_5_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_5);
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[4]_net_1\);
    
    ram128_8_pa4 : mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0
      port map(data_out_0(7) => \data_out_0[7]\, data_out_0(6)
         => \data_out_0[6]\, data_out_0(5) => \data_out_0[5]\, 
        data_out_0(4) => \data_out_0[4]\, data_out_0(3) => 
        \data_out_0[3]\, data_out_0(2) => \data_out_0[2]\, 
        data_out_0(1) => \data_out_0[1]\, data_out_0(0) => 
        \data_out_0[0]\, rd_pointer(6) => \rd_pointer[6]_net_1\, 
        rd_pointer(5) => \rd_pointer[5]_net_1\, rd_pointer(4) => 
        \rd_pointer[4]_net_1\, rd_pointer(3) => 
        \rd_pointer[3]_net_1\, rd_pointer(2) => 
        \rd_pointer[2]_net_1\, rd_pointer(1) => 
        \rd_pointer[1]_net_1\, rd_pointer(0) => 
        \rd_pointer[0]_net_1\, wr_pointer(6) => 
        \wr_pointer[6]_net_1\, wr_pointer(5) => 
        \wr_pointer[5]_net_1\, wr_pointer(4) => 
        \wr_pointer[4]_net_1\, wr_pointer(3) => 
        \wr_pointer[3]_net_1\, wr_pointer(2) => 
        \wr_pointer[2]_net_1\, wr_pointer(1) => 
        \wr_pointer[1]_net_1\, wr_pointer(0) => 
        \wr_pointer[0]_net_1\, rx_byte(7) => rx_byte(7), 
        rx_byte(6) => rx_byte(6), rx_byte(5) => rx_byte(5), 
        rx_byte(4) => rx_byte(4), rx_byte(3) => rx_byte(3), 
        rx_byte(2) => rx_byte(2), rx_byte(1) => rx_byte(1), 
        rx_byte(0) => rx_byte(0), FAB_CCC_GL0 => FAB_CCC_GL0, 
        MSS_READY => MSS_READY, temp_xhdl17 => temp_xhdl17);
    
    \rd_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[3]_net_1\, S => \rd_pointer_s[4]\, Y => 
        OPEN, FCO => \rd_pointer_cry[4]_net_1\);
    
    \counter[0]\ : SLE
      port map(D => un1_counter_1_cry_0_Y_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0 is

    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0);
          temp_xhdl17           : in    std_logic;
          fifo_read_rx_0_sqmuxa : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          MSS_READY             : in    std_logic;
          fifo_write            : in    std_logic;
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0
    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0) := (others => 'U');
          temp_xhdl17           : in    std_logic := 'U';
          fifo_read_rx_0_sqmuxa : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          MSS_READY             : in    std_logic := 'U';
          fifo_write            : in    std_logic := 'U';
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    mss_top_sb_CoreUARTapb_0_0_fifo_128x8_pa4 : 
        mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0
      port map(rx_dout(7) => rx_dout(7), rx_dout(6) => rx_dout(6), 
        rx_dout(5) => rx_dout(5), rx_dout(4) => rx_dout(4), 
        rx_dout(3) => rx_dout(3), rx_dout(2) => rx_dout(2), 
        rx_dout(1) => rx_dout(1), rx_dout(0) => rx_dout(0), 
        rx_byte(7) => rx_byte(7), rx_byte(6) => rx_byte(6), 
        rx_byte(5) => rx_byte(5), rx_byte(4) => rx_byte(4), 
        rx_byte(3) => rx_byte(3), rx_byte(2) => rx_byte(2), 
        rx_byte(1) => rx_byte(1), rx_byte(0) => rx_byte(0), 
        temp_xhdl17 => temp_xhdl17, fifo_read_rx_0_sqmuxa => 
        fifo_read_rx_0_sqmuxa, FAB_CCC_GL0 => FAB_CCC_GL0, 
        MSS_READY => MSS_READY, fifo_write => fifo_write, 
        fifo_full_rx => fifo_full_rx, fifo_empty_rx => 
        fifo_empty_rx);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 2);
          nxtprdata_xhdl7_1_0          : out   std_logic_vector(0 to 0);
          controlReg2_0                : in    std_logic_vector(0 to 0);
          controlReg1_0                : in    std_logic_vector(0 to 0);
          rx_dout_reg_2                : out   std_logic;
          rx_dout_reg_3                : out   std_logic;
          rx_dout_reg_4                : out   std_logic;
          rx_dout_reg_5                : out   std_logic;
          rx_dout_reg_6                : out   std_logic;
          rx_dout_reg_7                : out   std_logic;
          nxtprdata_xhdl7_1_1          : out   std_logic;
          nxtprdata_xhdl7_1_4          : out   std_logic;
          nxtprdata_xhdl7_1_0_d0       : out   std_logic;
          rx_dout_reg_0_4              : in    std_logic;
          rx_dout_reg_0_0              : in    std_logic;
          controlReg2_4                : in    std_logic;
          controlReg2_1                : in    std_logic;
          controlReg2_0_d0             : in    std_logic;
          controlReg1_4                : in    std_logic;
          controlReg1_1                : in    std_logic;
          controlReg1_0_d0             : in    std_logic;
          MSS_READY                    : in    std_logic;
          FAB_CCC_GL0                  : in    std_logic;
          CoreUARTapb_0_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_0_0_RXRDY        : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx  : in    std_logic;
          un3_wen                      : in    std_logic;
          un3_oen                      : in    std_logic;
          TX_c                         : out   std_logic;
          CoreUARTapb_0_0_TXRDY        : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR  : out   std_logic;
          RX_c                         : in    std_logic;
          CoreUARTapb_1_0_FRAMING_ERR  : in    std_logic;
          CoreUARTapb_1_0_TXRDY        : in    std_logic
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

  component mss_top_sb_CoreUARTapb_0_0_Rx_async
    port( rx_state                    : out   std_logic_vector(1 downto 0);
          rx_byte                     : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR : in    std_logic_vector(4 downto 2) := (others => 'U');
          nxtprdata_xhdl7_1_0         : out   std_logic_vector(0 to 0);
          rx_dout_reg_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          controlReg2_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          controlReg1_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          nxtprdata_xhdl7_1_1         : out   std_logic;
          nxtprdata_xhdl7_1_4         : out   std_logic;
          nxtprdata_xhdl7_1_0_d0      : out   std_logic;
          rx_dout_reg_1               : in    std_logic := 'U';
          rx_dout_reg_4               : in    std_logic := 'U';
          rx_dout_reg_0_d0            : in    std_logic := 'U';
          controlReg2_4               : in    std_logic := 'U';
          controlReg2_1               : in    std_logic := 'U';
          controlReg2_0_d0            : in    std_logic := 'U';
          controlReg1_4               : in    std_logic := 'U';
          controlReg1_1               : in    std_logic := 'U';
          controlReg1_0_d0            : in    std_logic := 'U';
          clear_parity_reg            : in    std_logic := 'U';
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          baud_clock                  : in    std_logic := 'U';
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          RX_c                        : in    std_logic := 'U';
          clear_parity_en             : out   std_logic;
          fifo_write                  : out   std_logic;
          CoreUARTapb_0_0_RXRDY       : in    std_logic := 'U';
          CoreUARTapb_1_0_FRAMING_ERR : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY       : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY       : in    std_logic := 'U'
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
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

  component mss_top_sb_CoreUARTapb_0_0_fifo_256x8
    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0) := (others => 'U');
          fifo_write_tx    : in    std_logic := 'U';
          FAB_CCC_GL0      : in    std_logic := 'U';
          MSS_READY        : in    std_logic := 'U';
          fifo_read_tx     : in    std_logic := 'U';
          fifo_read_tx_i_0 : in    std_logic := 'U';
          fifo_full_tx_i_0 : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_Tx_async
    port( tx_dout_reg           : in    std_logic_vector(7 downto 0) := (others => 'U');
          counter               : in    std_logic_vector(6 downto 0) := (others => 'U');
          fifo_read_tx          : out   std_logic;
          fifo_read_tx_i_0      : out   std_logic;
          TX_c                  : out   std_logic;
          MSS_READY             : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          xmit_pulse            : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic := 'U';
          baud_clock            : in    std_logic := 'U';
          xmit_clock            : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0
    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0) := (others => 'U');
          temp_xhdl17           : in    std_logic := 'U';
          fifo_read_rx_0_sqmuxa : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          MSS_READY             : in    std_logic := 'U';
          fifo_write            : in    std_logic := 'U';
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );
  end component;

    signal \rx_dout_reg_empty\, rx_dout_reg_empty_i_0, 
        rx_dout_reg3, rx_dout_reg3_i_0, GND_net_1, 
        rx_dout_reg_empty_1_sqmuxa_i_0, VCC_net_1, 
        \un1_fifo_write\, \un9_clear_overflow\, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        \CoreUARTapb_0_0_RXRDY\, un3_stop_strobe, 
        \rx_dout_reg[0]_net_1\, \rx_dout[0]\, 
        \rx_dout_reg[1]_net_1\, \rx_dout[1]\, \rx_dout[2]\, 
        \rx_dout[3]\, \rx_dout[4]\, \rx_dout[5]\, \rx_dout[6]\, 
        \rx_dout[7]\, \rx_state[0]_net_1\, \rx_state_ns[0]\, 
        \rx_state[1]_net_1\, N_108_i, \clear_parity_reg\, 
        clear_parity_reg0, clear_parity_en, \fifo_write_tx\, 
        un1_csn_i_0, stop_strobe, \rx_state_0[1]\, 
        \rx_state_0[0]\, fifo_full_rx, fifo_write, \temp_xhdl17\, 
        fifo_empty_rx, fifo_read_rx_0_sqmuxa, xmit_clock, 
        baud_clock, xmit_pulse, \tx_dout_reg[0]\, 
        \tx_dout_reg[1]\, \tx_dout_reg[2]\, \tx_dout_reg[3]\, 
        \tx_dout_reg[4]\, \tx_dout_reg[5]\, \tx_dout_reg[6]\, 
        \tx_dout_reg[7]\, \counter[0]\, \counter[1]\, 
        \counter[2]\, \counter[3]\, \counter[4]\, \counter[5]\, 
        \counter[6]\, fifo_read_tx, fifo_read_tx_i_0, 
        \CoreUARTapb_0_0_TXRDY\, fifo_full_tx_i_0, \rx_byte[0]\, 
        \rx_byte[1]\, \rx_byte[2]\, \rx_byte[3]\, \rx_byte[4]\, 
        \rx_byte[5]\, \rx_byte[6]\, \rx_byte[7]\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_Rx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Rx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Clock_gen
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Clock_gen(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_fifo_256x8
	Use entity work.mss_top_sb_CoreUARTapb_0_0_fifo_256x8(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_Tx_async
	Use entity work.mss_top_sb_CoreUARTapb_0_0_Tx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0(DEF_ARCH);
begin 

    CoreUARTapb_0_0_RXRDY <= \CoreUARTapb_0_0_RXRDY\;
    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;

    \reg_write.un1_csn\ : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave1_PSELx, B => un3_wen, Y
         => un1_csn);
    
    \tx_hold_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \rx_dout_reg[0]\ : SLE
      port map(D => \rx_dout[0]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_dout_reg[0]_net_1\);
    
    un1_fifo_write : CFG2
      generic map(INIT => x"2")

      port map(A => fifo_full_rx, B => fifo_write, Y => 
        \un1_fifo_write\);
    
    \rx_state_ns_0_x3[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_108_i);
    
    make_RX : mss_top_sb_CoreUARTapb_0_0_Rx_async
      port map(rx_state(1) => \rx_state_0[1]\, rx_state(0) => 
        \rx_state_0[0]\, rx_byte(7) => \rx_byte[7]\, rx_byte(6)
         => \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4)
         => \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2)
         => \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0)
         => \rx_byte[0]\, CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), nxtprdata_xhdl7_1_0(0)
         => nxtprdata_xhdl7_1_0(0), rx_dout_reg_0(0) => 
        \rx_dout_reg[0]_net_1\, controlReg2_0(0) => 
        controlReg2_0(0), controlReg1_0(0) => controlReg1_0(0), 
        nxtprdata_xhdl7_1_1 => nxtprdata_xhdl7_1_1, 
        nxtprdata_xhdl7_1_4 => nxtprdata_xhdl7_1_4, 
        nxtprdata_xhdl7_1_0_d0 => nxtprdata_xhdl7_1_0_d0, 
        rx_dout_reg_1 => \rx_dout_reg[1]_net_1\, rx_dout_reg_4
         => rx_dout_reg_0_4, rx_dout_reg_0_d0 => rx_dout_reg_0_0, 
        controlReg2_4 => controlReg2_4, controlReg2_1 => 
        controlReg2_1, controlReg2_0_d0 => controlReg2_0_d0, 
        controlReg1_4 => controlReg1_4, controlReg1_1 => 
        controlReg1_1, controlReg1_0_d0 => controlReg1_0_d0, 
        clear_parity_reg => \clear_parity_reg\, MSS_READY => 
        MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => 
        baud_clock, stop_strobe => stop_strobe, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, RX_c => RX_c, 
        clear_parity_en => clear_parity_en, fifo_write => 
        fifo_write, CoreUARTapb_0_0_RXRDY => 
        \CoreUARTapb_0_0_RXRDY\, CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, CoreUARTapb_1_0_TXRDY => 
        CoreUARTapb_1_0_TXRDY, CoreUARTapb_0_0_TXRDY => 
        \CoreUARTapb_0_0_TXRDY\);
    
    rx_dout_reg3_0_RNITAV3 : CFG1
      generic map(INIT => "01")

      port map(A => rx_dout_reg3, Y => rx_dout_reg3_i_0);
    
    make_mss_top_sb_CoreUARTapb_0_0_Clock_gen : 
        mss_top_sb_CoreUARTapb_0_0_Clock_gen
      port map(xmit_clock => xmit_clock, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => baud_clock, 
        xmit_pulse => xmit_pulse);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \rx_state_ns_0_a2[0]\ : CFG4
      generic map(INIT => x"2232")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, D => fifo_empty_rx, Y => 
        \rx_state_ns[0]\);
    
    \rx_dout_reg[3]\ : SLE
      port map(D => \rx_dout[3]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_3);
    
    clear_framing_error_reg0 : SLE
      port map(D => clear_parity_en, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_reg0);
    
    un9_clear_overflow : CFG3
      generic map(INIT => x"F8")

      port map(A => un3_oen, B => CoreAPB3_0_APBmslave1_PSELx, C
         => \un1_fifo_write\, Y => \un9_clear_overflow\);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    rx_dout_reg_empty : SLE
      port map(D => rx_dout_reg3, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg_empty_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_dout_reg_empty\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    fifo_read_rx_0_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"0010")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, D => fifo_empty_rx, Y => 
        fifo_read_rx_0_sqmuxa);
    
    \UG06.tx_fifo_xhdl79\ : mss_top_sb_CoreUARTapb_0_0_fifo_256x8
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter[6]\, counter(5)
         => \counter[5]\, counter(4) => \counter[4]\, counter(3)
         => \counter[3]\, counter(2) => \counter[2]\, counter(1)
         => \counter[1]\, counter(0) => \counter[0]\, 
        tx_hold_reg(7) => \tx_hold_reg[7]_net_1\, tx_hold_reg(6)
         => \tx_hold_reg[6]_net_1\, tx_hold_reg(5) => 
        \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, fifo_write_tx => \fifo_write_tx\, 
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, 
        fifo_read_tx => fifo_read_tx, fifo_read_tx_i_0 => 
        fifo_read_tx_i_0, fifo_full_tx_i_0 => fifo_full_tx_i_0);
    
    fifo_write_tx_RNO : CFG2
      generic map(INIT => x"7")

      port map(A => CoreAPB3_0_APBmslave1_PSELx, B => un3_wen, Y
         => un1_csn_i_0);
    
    make_TX : mss_top_sb_CoreUARTapb_0_0_Tx_async
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter[6]\, counter(5)
         => \counter[5]\, counter(4) => \counter[4]\, counter(3)
         => \counter[3]\, counter(2) => \counter[2]\, counter(1)
         => \counter[1]\, counter(0) => \counter[0]\, 
        fifo_read_tx => fifo_read_tx, fifo_read_tx_i_0 => 
        fifo_read_tx_i_0, TX_c => TX_c, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, xmit_pulse => xmit_pulse, 
        CoreUARTapb_0_0_TXRDY => \CoreUARTapb_0_0_TXRDY\, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0, baud_clock => 
        baud_clock, xmit_clock => xmit_clock);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    \rx_dout_reg[4]\ : SLE
      port map(D => \rx_dout[4]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_4);
    
    \rx_state[1]\ : SLE
      port map(D => N_108_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    rx_dout_reg3_0 : CFG2
      generic map(INIT => x"7")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => rx_dout_reg3);
    
    \rx_dout_reg[7]\ : SLE
      port map(D => \rx_dout[7]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_7);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_dout_reg[1]\ : SLE
      port map(D => \rx_dout[1]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_dout_reg[1]_net_1\);
    
    rxrdy_xhdl4_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \rx_dout_reg_empty\, Y => 
        rx_dout_reg_empty_i_0);
    
    clear_parity_reg : SLE
      port map(D => clear_parity_reg0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \clear_parity_reg\);
    
    \UG07.rx_fifo_xhdl80\ : 
        mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0
      port map(rx_dout(7) => \rx_dout[7]\, rx_dout(6) => 
        \rx_dout[6]\, rx_dout(5) => \rx_dout[5]\, rx_dout(4) => 
        \rx_dout[4]\, rx_dout(3) => \rx_dout[3]\, rx_dout(2) => 
        \rx_dout[2]\, rx_dout(1) => \rx_dout[1]\, rx_dout(0) => 
        \rx_dout[0]\, rx_byte(7) => \rx_byte[7]\, rx_byte(6) => 
        \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4) => 
        \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2) => 
        \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0) => 
        \rx_byte[0]\, temp_xhdl17 => \temp_xhdl17\, 
        fifo_read_rx_0_sqmuxa => fifo_read_rx_0_sqmuxa, 
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, 
        fifo_write => fifo_write, fifo_full_rx => fifo_full_rx, 
        fifo_empty_rx => fifo_empty_rx);
    
    \rx_dout_reg[5]\ : SLE
      port map(D => \rx_dout[5]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_5);
    
    overflow_reg : SLE
      port map(D => \un1_fifo_write\, CLK => FAB_CCC_GL0, EN => 
        \un9_clear_overflow\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => CoreUARTapb_0_0_OVERFLOW);
    
    \RXRDY_NEW.un3_stop_strobe\ : CFG4
      generic map(INIT => x"EEEF")

      port map(A => \rx_dout_reg_empty\, B => stop_strobe, C => 
        \rx_state_0[1]\, D => \rx_state_0[0]\, Y => 
        un3_stop_strobe);
    
    \rx_dout_reg[6]\ : SLE
      port map(D => \rx_dout[6]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_6);
    
    rxrdy_xhdl4 : SLE
      port map(D => rx_dout_reg_empty_i_0, CLK => FAB_CCC_GL0, EN
         => un3_stop_strobe, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \CoreUARTapb_0_0_RXRDY\);
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    temp_xhdl17 : CFG2
      generic map(INIT => x"E")

      port map(A => fifo_full_rx, B => fifo_write, Y => 
        \temp_xhdl17\);
    
    fifo_write_tx : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fifo_write_tx\);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    rx_dout_reg_empty_1_sqmuxa_i : CFG3
      generic map(INIT => x"8F")

      port map(A => un3_oen, B => CoreAPB3_0_APBmslave1_PSELx, C
         => rx_dout_reg3, Y => rx_dout_reg_empty_1_sqmuxa_i_0);
    
    \rx_dout_reg[2]\ : SLE
      port map(D => \rx_dout[2]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg_2);
    
    \tx_hold_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[4]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_CoreUARTapb is

    port( CoreAPB3_0_APBmslave1_PRDATA  : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA  : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR   : in    std_logic_vector(4 downto 2);
          rx_dout_reg_0                 : in    std_logic_vector(4 to 4);
          nxtprdata_xhdl7_1_0_4         : out   std_logic;
          nxtprdata_xhdl7_1_0_0         : out   std_logic;
          rx_dout_reg_0_d0              : in    std_logic;
          controlReg2_0_4               : in    std_logic;
          controlReg2_0_0               : in    std_logic;
          controlReg1_0_4               : in    std_logic;
          controlReg1_0_0               : in    std_logic;
          MSS_READY                     : in    std_logic;
          FAB_CCC_GL0                   : in    std_logic;
          CoreUARTapb_0_0_FRAMING_ERR   : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW      : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE  : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE : in    std_logic;
          N_10_0                        : in    std_logic;
          un3_oen                       : out   std_logic;
          un5_psel_0_0                  : out   std_logic;
          un13_psel_0_0                 : out   std_logic;
          un1_nxtprdata_xhdl722_0       : out   std_logic;
          un3_wen_2                     : in    std_logic;
          PWM_STRETCH_0_sqmuxa_0        : in    std_logic;
          un3_wen                       : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx   : in    std_logic;
          CoreUARTapb_0_0_RXRDY         : out   std_logic;
          TX_c                          : out   std_logic;
          CoreUARTapb_0_0_TXRDY         : out   std_logic;
          RX_c                          : in    std_logic;
          CoreUARTapb_1_0_FRAMING_ERR   : in    std_logic;
          CoreUARTapb_1_0_TXRDY         : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_CoreUARTapb;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_CoreUARTapb is 

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
    port( CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 2) := (others => 'U');
          nxtprdata_xhdl7_1_0          : out   std_logic_vector(0 to 0);
          controlReg2_0                : in    std_logic_vector(0 to 0) := (others => 'U');
          controlReg1_0                : in    std_logic_vector(0 to 0) := (others => 'U');
          rx_dout_reg_2                : out   std_logic;
          rx_dout_reg_3                : out   std_logic;
          rx_dout_reg_4                : out   std_logic;
          rx_dout_reg_5                : out   std_logic;
          rx_dout_reg_6                : out   std_logic;
          rx_dout_reg_7                : out   std_logic;
          nxtprdata_xhdl7_1_1          : out   std_logic;
          nxtprdata_xhdl7_1_4          : out   std_logic;
          nxtprdata_xhdl7_1_0_d0       : out   std_logic;
          rx_dout_reg_0_4              : in    std_logic := 'U';
          rx_dout_reg_0_0              : in    std_logic := 'U';
          controlReg2_4                : in    std_logic := 'U';
          controlReg2_1                : in    std_logic := 'U';
          controlReg2_0_d0             : in    std_logic := 'U';
          controlReg1_4                : in    std_logic := 'U';
          controlReg1_1                : in    std_logic := 'U';
          controlReg1_0_d0             : in    std_logic := 'U';
          MSS_READY                    : in    std_logic := 'U';
          FAB_CCC_GL0                  : in    std_logic := 'U';
          CoreUARTapb_0_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_0_0_RXRDY        : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx  : in    std_logic := 'U';
          un3_wen                      : in    std_logic := 'U';
          un3_oen                      : in    std_logic := 'U';
          TX_c                         : out   std_logic;
          CoreUARTapb_0_0_TXRDY        : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR  : out   std_logic;
          RX_c                         : in    std_logic := 'U';
          CoreUARTapb_1_0_FRAMING_ERR  : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY        : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, 
        un1_nxtprdata_xhdl722_i_0, GND_net_1, 
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
        \controlReg1[7]_net_1\, \rx_dout_reg[7]\, 
        \nxtprdata_xhdl7_1_5_1[7]\, \rx_dout_reg[5]\, 
        \nxtprdata_xhdl7_1_5_1[5]\, \nxtprdata_xhdl7_1_5_1[2]\, 
        \rx_dout_reg[2]\, \nxtprdata_xhdl7_1_5_1[6]\, 
        \rx_dout_reg[6]\, \nxtprdata_xhdl7_1_5_ns_1[4]\, N_42, 
        \CoreUARTapb_0_0_FRAMING_ERR\, 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, N_41, 
        \CoreUARTapb_0_0_OVERFLOW\, un3_oen_net_1, \un5_psel_0_0\, 
        \un13_psel_0_0\, \rx_dout_reg[4]\, \rx_dout_reg[3]\, 
        un1_nxtprdata_xhdl722_0_net_1, un3_wen_net_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_0_0_COREUART(DEF_ARCH);
begin 

    CoreUARTapb_0_0_FRAMING_ERR <= \CoreUARTapb_0_0_FRAMING_ERR\;
    CoreUARTapb_0_0_OVERFLOW <= \CoreUARTapb_0_0_OVERFLOW\;
    un3_oen <= un3_oen_net_1;
    un5_psel_0_0 <= \un5_psel_0_0\;
    un13_psel_0_0 <= \un13_psel_0_0\;
    un1_nxtprdata_xhdl722_0 <= un1_nxtprdata_xhdl722_0_net_1;
    un3_wen <= un3_wen_net_1;

    un1_nxtprdata_xhdl722_0_RNI0DDJ : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave1_PSELx, B => 
        un1_nxtprdata_xhdl722_0_net_1, Y => 
        un1_nxtprdata_xhdl722_i_0);
    
    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[5]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => \controlReg2[5]_net_1\, B => 
        \controlReg1[5]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[5]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \rx_dout_reg[3]\, B => \controlReg2[3]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_41);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[4]_net_1\);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[4]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(4));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \un3_wen\ : CFG3
      generic map(INIT => x"40")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        un3_wen_2, C => PWM_STRETCH_0_sqmuxa_0, Y => 
        un3_wen_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[7]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => \controlReg2[7]_net_1\, B => 
        \controlReg1[7]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[7]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(3));
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[4]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \rx_dout_reg[4]\, B => \controlReg2[4]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_42);
    
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
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[4]_net_1\);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(5));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[7]\ : CFG4
      generic map(INIT => x"0504")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        \rx_dout_reg[7]\, C => \nxtprdata_xhdl7_1_5_1[7]\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \nxtprdata_xhdl7_1[7]\);
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(7));
    
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
    
    \p_CtrlReg2Seq.un13_psel\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \un13_psel_0_0\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave1_PSELx, D => PWM_STRETCH_0_sqmuxa_0, 
        Y => un13_psel);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[2]\ : CFG4
      generic map(INIT => x"350F")

      port map(A => \rx_dout_reg[2]\, B => \controlReg2[2]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
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
    
    \p_CtrlReg2Seq.un13_psel_0_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un13_psel_0_0\);
    
    \un1_nxtprdata_xhdl722_0\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PWRITE, D => 
        CoreAPB3_0_APBmslave0_PENABLE, Y => 
        un1_nxtprdata_xhdl722_0_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[6]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[6]\, C => \controlReg1[6]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[6]\);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[5]\ : CFG4
      generic map(INIT => x"0504")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        \rx_dout_reg[5]\, C => \nxtprdata_xhdl7_1_5_1[5]\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \nxtprdata_xhdl7_1[5]\);
    
    \iPRDATA[0]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(0));
    
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
        CoreAPB3_0_APBmslave0_PADDR(2), nxtprdata_xhdl7_1_0(0)
         => \nxtprdata_xhdl7_1[0]\, controlReg2_0(0) => 
        \controlReg2[0]_net_1\, controlReg1_0(0) => 
        \controlReg1[0]_net_1\, rx_dout_reg_2 => \rx_dout_reg[2]\, 
        rx_dout_reg_3 => \rx_dout_reg[3]\, rx_dout_reg_4 => 
        \rx_dout_reg[4]\, rx_dout_reg_5 => \rx_dout_reg[5]\, 
        rx_dout_reg_6 => \rx_dout_reg[6]\, rx_dout_reg_7 => 
        \rx_dout_reg[7]\, nxtprdata_xhdl7_1_1 => 
        \nxtprdata_xhdl7_1[1]\, nxtprdata_xhdl7_1_4 => 
        nxtprdata_xhdl7_1_0_4, nxtprdata_xhdl7_1_0_d0 => 
        nxtprdata_xhdl7_1_0_0, rx_dout_reg_0_4 => 
        rx_dout_reg_0(4), rx_dout_reg_0_0 => rx_dout_reg_0_d0, 
        controlReg2_4 => controlReg2_0_4, controlReg2_1 => 
        \controlReg2[1]_net_1\, controlReg2_0_d0 => 
        controlReg2_0_0, controlReg1_4 => controlReg1_0_4, 
        controlReg1_1 => \controlReg1[1]_net_1\, controlReg1_0_d0
         => controlReg1_0_0, MSS_READY => MSS_READY, FAB_CCC_GL0
         => FAB_CCC_GL0, CoreUARTapb_0_0_OVERFLOW => 
        \CoreUARTapb_0_0_OVERFLOW\, CoreUARTapb_0_0_RXRDY => 
        CoreUARTapb_0_0_RXRDY, CoreAPB3_0_APBmslave1_PSELx => 
        CoreAPB3_0_APBmslave1_PSELx, un3_wen => un3_wen_net_1, 
        un3_oen => un3_oen_net_1, TX_c => TX_c, 
        CoreUARTapb_0_0_TXRDY => CoreUARTapb_0_0_TXRDY, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        \CoreUARTapb_0_0_FRAMING_ERR\, RX_c => RX_c, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, CoreUARTapb_1_0_TXRDY => 
        CoreUARTapb_1_0_TXRDY);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[4]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[4]\, D => N_42, Y => 
        \nxtprdata_xhdl7_1[4]\);
    
    \p_CtrlReg1Seq.un5_psel_0_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un5_psel_0_0\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[6]\ : CFG4
      generic map(INIT => x"350F")

      port map(A => \rx_dout_reg[6]\, B => \controlReg2[6]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[6]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    \un3_oen\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PWRITE, C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => N_10_0, Y => 
        un3_oen_net_1);
    
    \p_CtrlReg1Seq.un5_psel\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \un5_psel_0_0\, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave1_PSELx, D => PWM_STRETCH_0_sqmuxa_0, 
        Y => un5_psel);
    
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

entity mss_top_sb_CoreUARTapb_1_0_Rx_async is

    port( rx_state                    : out   std_logic_vector(1 downto 0);
          rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          baud_clock                  : in    std_logic;
          stop_strobe                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR : out   std_logic;
          RX2_c                       : in    std_logic;
          clear_parity_en             : out   std_logic;
          fifo_write                  : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_Rx_async;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_Rx_async is 

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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal clear_parity_reg_i_0, rx_byte_xhdl5_1_sqmuxa, 
        rx_byte_xhdl5_1_sqmuxa_i_0, \rx_state[1]_net_1\, 
        VCC_net_1, N_147_i_0, GND_net_1, \rx_state[0]_net_1\, 
        \rx_state_ns[0]\, \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        un1_samples8_1_0_0, \rx_shift[1]_net_1\, \rx_shift_12[1]\, 
        \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, \rx_shift_12[7]\, 
        \receive_count[0]_net_1\, \receive_count_3[0]\, 
        \receive_count[1]_net_1\, \receive_count_3[1]\, 
        \receive_count[2]_net_1\, \receive_count_3[2]\, 
        \receive_count[3]_net_1\, \receive_count_3[3]\, 
        \framing_error_int\, \framing_error_int_0_sqmuxa\, 
        framing_error_int_2_sqmuxa, un1_framing_error_i4_i_0, 
        \samples[0]_net_1\, \samples[1]_net_1\, 
        \samples[2]_net_1\, \rx_bit_cnt[0]_net_1\, 
        \rx_bit_cnt_4[0]\, \rx_bit_cnt[1]_net_1\, 
        \rx_bit_cnt_4[1]\, \rx_bit_cnt[2]_net_1\, 
        \rx_bit_cnt_4[2]\, \rx_bit_cnt[3]_net_1\, 
        \rx_bit_cnt_4[3]\, N_152_1, 
        \framing_error_int_0_sqmuxa_1\, N_150_4, 
        un24_baud_clock_li, rx_bit_cnt_0_sqmuxa, i1_mux, 
        rx_bit_cnt_1_sqmuxa, un6_baud_clock, CO1 : std_logic;

begin 

    rx_state(1) <= \rx_state[1]_net_1\;
    rx_state(0) <= \rx_state[0]_net_1\;

    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(0));
    
    \samples[0]\ : SLE
      port map(D => \samples[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[0]_net_1\);
    
    \rx_shift[2]\ : SLE
      port map(D => \rx_shift_12[2]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(6));
    
    framing_error_int_0_sqmuxa : CFG4
      generic map(INIT => x"0080")

      port map(A => i1_mux, B => \framing_error_int_0_sqmuxa_1\, 
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
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[7]_net_1\);
    
    clear_parity_en_xhdl3 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_en);
    
    \rcv_sm.un24_baud_clock_NE\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => un24_baud_clock_li);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    \rcv_cnt.receive_count_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un6_baud_clock, B => \receive_count[0]_net_1\, 
        Y => \receive_count_3[0]\);
    
    fifo_write_xhdl6_RNO : CFG1
      generic map(INIT => "01")

      port map(A => rx_byte_xhdl5_1_sqmuxa, Y => 
        rx_byte_xhdl5_1_sqmuxa_i_0);
    
    \rcv_cnt.receive_count_3[1]\ : CFG3
      generic map(INIT => x"06")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[0]_net_1\, C => un6_baud_clock, Y => 
        \receive_count_3[1]\);
    
    \receive_shift.rx_shift_12[0]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[0]\);
    
    \rcv_cnt.receive_count_3[2]\ : CFG3
      generic map(INIT => x"14")

      port map(A => un6_baud_clock, B => \receive_count[2]_net_1\, 
        C => N_152_1, Y => \receive_count_3[2]\);
    
    rx_bit_cnt_0_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"04")

      port map(A => \rx_state[1]_net_1\, B => baud_clock, C => 
        \rx_state[0]_net_1\, Y => rx_bit_cnt_0_sqmuxa);
    
    framing_error_i : SLE
      port map(D => clear_parity_reg_i_0, CLK => FAB_CCC_GL0, EN
         => un1_framing_error_i4_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_1_0_FRAMING_ERR);
    
    \un1_rx_bit_cnt_1_1.CO1\ : CFG3
      generic map(INIT => x"80")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_1_sqmuxa, C => \rx_bit_cnt[1]_net_1\, Y => CO1);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(7));
    
    \receive_count[3]\ : SLE
      port map(D => \receive_count_3[3]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
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
      generic map(INIT => x"0004")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[3]_net_1\, C => \receive_count[0]_net_1\, 
        D => \receive_count[2]_net_1\, Y => N_150_4);
    
    \rcv_cnt.un6_baud_clock\ : CFG4
      generic map(INIT => x"1011")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_150_4, D => i1_mux, Y => un6_baud_clock);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    \rx_state_RNO[1]\ : CFG4
      generic map(INIT => x"0A0E")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => framing_error_int_2_sqmuxa, D => un24_baud_clock_li, 
        Y => N_147_i_0);
    
    framing_error_i_RNO_0 : CFG3
      generic map(INIT => x"EC")

      port map(A => \framing_error_int\, B => clear_parity_reg, C
         => baud_clock, Y => un1_framing_error_i4_i_0);
    
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
      generic map(INIT => x"A8")

      port map(A => \rx_shift[3]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[6]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_147_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    \receive_shift.rx_bit_cnt_4[2]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => CO1, Y => \rx_bit_cnt_4[2]\);
    
    rx_bit_cnt_1_sqmuxa_0_a3 : CFG4
      generic map(INIT => x"8000")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => N_152_1, D => baud_clock, 
        Y => rx_bit_cnt_1_sqmuxa);
    
    \receive_shift.rx_shift_12[1]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[2]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[1]\);
    
    fifo_write_xhdl6 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa_i_0, CLK => 
        FAB_CCC_GL0, EN => VCC_net_1, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => fifo_write);
    
    framing_error_i_RNO : CFG1
      generic map(INIT => "01")

      port map(A => clear_parity_reg, Y => clear_parity_reg_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[6]_net_1\);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[1]_net_1\);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[3]_net_1\);
    
    framing_error_int : SLE
      port map(D => \framing_error_int_0_sqmuxa\, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \framing_error_int\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(2));
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \samples[2]\ : SLE
      port map(D => RX2_c, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[7]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[6]\);
    
    \rcv_cnt.receive_count_3[3]\ : CFG4
      generic map(INIT => x"060C")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => un6_baud_clock, D => 
        N_152_1, Y => \receive_count_3[3]\);
    
    un1_samples8_1_0 : CFG2
      generic map(INIT => x"E")

      port map(A => rx_bit_cnt_1_sqmuxa, B => rx_bit_cnt_0_sqmuxa, 
        Y => un1_samples8_1_0_0);
    
    \receive_count[0]\ : SLE
      port map(D => \receive_count_3[0]\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(3));
    
    \rx_state_ns_i_a3_0[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \rx_state[1]_net_1\, B => N_152_1, C => 
        \receive_count[3]_net_1\, D => \receive_count[2]_net_1\, 
        Y => framing_error_int_2_sqmuxa);
    
    \receive_shift.rx_shift_12[4]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[5]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4[0]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        rx_bit_cnt_0_sqmuxa, C => rx_bit_cnt_1_sqmuxa, Y => 
        \rx_bit_cnt_4[0]\);
    
    \receive_shift.rx_shift_12[3]\ : CFG3
      generic map(INIT => x"A8")

      port map(A => \rx_shift[4]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_state[1]_net_1\, Y => \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rx_state_ns_0[0]\ : CFG4
      generic map(INIT => x"DC10")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_150_4, D => un24_baud_clock_li, Y => 
        \rx_state_ns[0]\);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => \rx_bit_cnt_4[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \rx_state_ns_i_a3_0_1[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \receive_count[0]_net_1\, B => 
        \receive_count[1]_net_1\, Y => N_152_1);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(1));
    
    framing_error_int_0_sqmuxa_1 : CFG3
      generic map(INIT => x"80")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[2]_net_1\, C => \rx_state[1]_net_1\, Y => 
        \framing_error_int_0_sqmuxa_1\);
    
    \rx_filtered.m3\ : CFG3
      generic map(INIT => x"17")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => i1_mux);
    
    \receive_shift.rx_shift_12[7]\ : CFG3
      generic map(INIT => x"32")

      port map(A => \rx_state[1]_net_1\, B => i1_mux, C => 
        \rx_state[0]_net_1\, Y => \rx_shift_12[7]\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"40")

      port map(A => un24_baud_clock_li, B => \rx_state[0]_net_1\, 
        C => baud_clock, Y => rx_byte_xhdl5_1_sqmuxa);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => \rx_bit_cnt_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \receive_shift.rx_bit_cnt_4[1]\ : CFG4
      generic map(INIT => x"006C")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => rx_bit_cnt_1_sqmuxa, D => 
        rx_bit_cnt_0_sqmuxa, Y => \rx_bit_cnt_4[1]\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4 is

    port( data_out_0    : out   std_logic_vector(7 downto 0);
          rd_pointer    : in    std_logic_vector(6 downto 0);
          wr_pointer    : in    std_logic_vector(6 downto 0);
          tx_hold_reg   : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0   : in    std_logic;
          MSS_READY     : in    std_logic;
          fifo_write_tx : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4 is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, GND_net_1, INV_0_Y : std_logic;
    signal nc24, nc1, nc8, nc13, nc16, nc19, nc25, nc20, nc27, 
        nc9, nc22, nc28, nc14, nc5, nc21, nc15, nc3, nc10, nc7, 
        nc17, nc4, nc12, nc2, nc23, nc18, nc26, nc6, nc11
         : std_logic;

begin 


    RAM_128x8_Q_0_inst : RAM64x18
      port map(A_DOUT(17) => nc24, A_DOUT(16) => nc1, A_DOUT(15)
         => nc8, A_DOUT(14) => nc13, A_DOUT(13) => nc16, 
        A_DOUT(12) => nc19, A_DOUT(11) => nc25, A_DOUT(10) => 
        nc20, A_DOUT(9) => nc27, A_DOUT(8) => nc9, A_DOUT(7) => 
        data_out_0(7), A_DOUT(6) => data_out_0(6), A_DOUT(5) => 
        data_out_0(5), A_DOUT(4) => data_out_0(4), A_DOUT(3) => 
        data_out_0(3), A_DOUT(2) => data_out_0(2), A_DOUT(1) => 
        data_out_0(1), A_DOUT(0) => data_out_0(0), B_DOUT(17) => 
        nc22, B_DOUT(16) => nc28, B_DOUT(15) => nc14, B_DOUT(14)
         => nc5, B_DOUT(13) => nc21, B_DOUT(12) => nc15, 
        B_DOUT(11) => nc3, B_DOUT(10) => nc10, B_DOUT(9) => nc7, 
        B_DOUT(8) => nc17, B_DOUT(7) => nc4, B_DOUT(6) => nc12, 
        B_DOUT(5) => nc2, B_DOUT(4) => nc23, B_DOUT(3) => nc18, 
        B_DOUT(2) => nc26, B_DOUT(1) => nc6, B_DOUT(0) => nc11, 
        BUSY => OPEN, A_ADDR_CLK => FAB_CCC_GL0, A_DOUT_CLK => 
        VCC_net_1, A_ADDR_SRST_N => VCC_net_1, A_DOUT_SRST_N => 
        VCC_net_1, A_ADDR_ARST_N => MSS_READY, A_DOUT_ARST_N => 
        VCC_net_1, A_ADDR_EN => VCC_net_1, A_DOUT_EN => VCC_net_1, 
        A_BLK(1) => VCC_net_1, A_BLK(0) => VCC_net_1, A_ADDR(9)
         => rd_pointer(6), A_ADDR(8) => rd_pointer(5), A_ADDR(7)
         => rd_pointer(4), A_ADDR(6) => rd_pointer(3), A_ADDR(5)
         => rd_pointer(2), A_ADDR(4) => rd_pointer(1), A_ADDR(3)
         => rd_pointer(0), A_ADDR(2) => GND_net_1, A_ADDR(1) => 
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
        FAB_CCC_GL0, C_ADDR(9) => wr_pointer(6), C_ADDR(8) => 
        wr_pointer(5), C_ADDR(7) => wr_pointer(4), C_ADDR(6) => 
        wr_pointer(3), C_ADDR(5) => wr_pointer(2), C_ADDR(4) => 
        wr_pointer(1), C_ADDR(3) => wr_pointer(0), C_ADDR(2) => 
        GND_net_1, C_ADDR(1) => GND_net_1, C_ADDR(0) => GND_net_1, 
        C_DIN(17) => GND_net_1, C_DIN(16) => GND_net_1, C_DIN(15)
         => GND_net_1, C_DIN(14) => GND_net_1, C_DIN(13) => 
        GND_net_1, C_DIN(12) => GND_net_1, C_DIN(11) => GND_net_1, 
        C_DIN(10) => GND_net_1, C_DIN(9) => GND_net_1, C_DIN(8)
         => GND_net_1, C_DIN(7) => tx_hold_reg(7), C_DIN(6) => 
        tx_hold_reg(6), C_DIN(5) => tx_hold_reg(5), C_DIN(4) => 
        tx_hold_reg(4), C_DIN(3) => tx_hold_reg(3), C_DIN(2) => 
        tx_hold_reg(2), C_DIN(1) => tx_hold_reg(1), C_DIN(0) => 
        tx_hold_reg(0), C_WEN => INV_0_Y, C_BLK(1) => VCC_net_1, 
        C_BLK(0) => VCC_net_1, A_EN => VCC_net_1, A_ADDR_LAT => 
        GND_net_1, A_DOUT_LAT => VCC_net_1, A_WIDTH(2) => 
        GND_net_1, A_WIDTH(1) => VCC_net_1, A_WIDTH(0) => 
        VCC_net_1, B_EN => GND_net_1, B_ADDR_LAT => GND_net_1, 
        B_DOUT_LAT => VCC_net_1, B_WIDTH(2) => GND_net_1, 
        B_WIDTH(1) => VCC_net_1, B_WIDTH(0) => VCC_net_1, C_EN
         => VCC_net_1, C_WIDTH(2) => GND_net_1, C_WIDTH(1) => 
        VCC_net_1, C_WIDTH(0) => VCC_net_1, SII_LOCK => GND_net_1);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    INV_0 : INV
      port map(A => fifo_write_tx, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128 is

    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0);
          fifo_write_tx    : in    std_logic;
          FAB_CCC_GL0      : in    std_logic;
          MSS_READY        : in    std_logic;
          fifo_read_tx     : in    std_logic;
          fifo_read_tx_i_0 : in    std_logic;
          fifo_full_tx_i_0 : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128 is 

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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4
    port( data_out_0    : out   std_logic_vector(7 downto 0);
          rd_pointer    : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer    : in    std_logic_vector(6 downto 0) := (others => 'U');
          tx_hold_reg   : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0   : in    std_logic := 'U';
          MSS_READY     : in    std_logic := 'U';
          fifo_write_tx : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1680_i_0\, 
        VCC_net_1, \data_out_0[0]\, \data_out_xhdl1_0_sqmuxa\, 
        GND_net_1, \data_out_0[1]\, \data_out_0[2]\, 
        \data_out_0[3]\, \data_out_0[4]\, \data_out_0[5]\, 
        \data_out_0[6]\, \data_out_0[7]\, \counter[0]_net_1\, 
        un1_counter_1_cry_0_Y_1, \counter[1]_net_1\, 
        un1_counter_1_cry_1_0_S_1, \counter[2]_net_1\, 
        un1_counter_1_cry_2_0_S_1, \counter[3]_net_1\, 
        un1_counter_1_cry_3_0_S_1, \counter[4]_net_1\, 
        un1_counter_1_cry_4_0_S_1, \counter[5]_net_1\, 
        un1_counter_1_cry_5_0_S_1, \counter[6]_net_1\, 
        un1_counter_1_s_6_S_1, \read_n_hold\, 
        \wr_pointer[1]_net_1\, \wr_pointer_s[1]\, 
        \wr_pointer[2]_net_1\, \wr_pointer_s[2]\, 
        \wr_pointer[3]_net_1\, \wr_pointer_s[3]\, 
        \wr_pointer[4]_net_1\, \wr_pointer_s[4]\, 
        \wr_pointer[5]_net_1\, \wr_pointer_s[5]\, 
        \wr_pointer[6]_net_1\, \wr_pointer_s[6]_net_1\, 
        \rd_pointer[1]_net_1\, \rd_pointer_s[1]\, 
        \rd_pointer[2]_net_1\, \rd_pointer_s[2]\, 
        \rd_pointer[3]_net_1\, \rd_pointer_s[3]\, 
        \rd_pointer[4]_net_1\, \rd_pointer_s[4]\, 
        \rd_pointer[5]_net_1\, \rd_pointer_s[5]\, 
        \rd_pointer[6]_net_1\, \rd_pointer_s[6]_net_1\, 
        \un1_counter_1_cry_0\, un1_counter_1_cry_1, 
        un1_counter_1_cry_2, un1_counter_1_cry_3, 
        un1_counter_1_cry_4, un1_counter_1_cry_5, 
        rd_pointer_s_109_FCO, \rd_pointer_cry[1]_net_1\, 
        \rd_pointer_cry[2]_net_1\, \rd_pointer_cry[3]_net_1\, 
        \rd_pointer_cry[4]_net_1\, \rd_pointer_cry[5]_net_1\, 
        wr_pointer_s_110_FCO, \wr_pointer_cry[1]_net_1\, 
        \wr_pointer_cry[2]_net_1\, \wr_pointer_cry[3]_net_1\, 
        \wr_pointer_cry[4]_net_1\, \wr_pointer_cry[5]_net_1\, 
        \un2_temp_xhdl5_0_a2_4\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4(DEF_ARCH);
begin 

    counter(6) <= \counter[6]_net_1\;
    counter(5) <= \counter[5]_net_1\;
    counter(4) <= \counter[4]_net_1\;
    counter(3) <= \counter[3]_net_1\;
    counter(2) <= \counter[2]_net_1\;
    counter(1) <= \counter[1]_net_1\;
    counter(0) <= \counter[0]_net_1\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_110_FCO, S
         => \wr_pointer_s[1]\, Y => OPEN, FCO => 
        \wr_pointer_cry[1]_net_1\);
    
    un2_temp_xhdl5_0_a2_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[1]_net_1\, B => \counter[5]_net_1\, 
        C => \counter[3]_net_1\, D => \counter[2]_net_1\, Y => 
        \un2_temp_xhdl5_0_a2_4\);
    
    \wr_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[2]_net_1\, S => \wr_pointer_s[3]\, Y => 
        OPEN, FCO => \wr_pointer_cry[3]_net_1\);
    
    data_out_xhdl1_0_sqmuxa : CFG2
      generic map(INIT => x"2")

      port map(A => MSS_READY, B => \read_n_hold\, Y => 
        \data_out_xhdl1_0_sqmuxa\);
    
    \wr_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[1]_net_1\, S => \wr_pointer_s[2]\, Y => 
        OPEN, FCO => \wr_pointer_cry[2]_net_1\);
    
    \rd_pointer[2]\ : SLE
      port map(D => \rd_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_0_S_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[2]_net_1\);
    
    \wr_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[4]_net_1\, S => \wr_pointer_s[5]\, Y => 
        OPEN, FCO => \wr_pointer_cry[5]_net_1\);
    
    un1_counter_1_s_6 : ARI1
      generic map(INIT => x"46A00")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => 
        fifo_read_tx_i_0, D => fifo_write_tx, FCI => 
        un1_counter_1_cry_5, S => un1_counter_1_s_6_S_1, Y => 
        OPEN, FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[5]_net_1\);
    
    \data_out_xhdl1[2]\ : SLE
      port map(D => \data_out_0[2]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(2));
    
    \counter[6]\ : SLE
      port map(D => un1_counter_1_s_6_S_1, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[6]_net_1\);
    
    read_n_hold : SLE
      port map(D => fifo_read_tx, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[1]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rd_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[5]_net_1\, S => \rd_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_109_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(0));
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"59966")

      port map(A => \counter[0]_net_1\, B => fifo_read_tx, C => 
        fifo_write_tx, D => GND_net_1, FCI => GND_net_1, S => 
        OPEN, Y => un1_counter_1_cry_0_Y_1, FCO => 
        \un1_counter_1_cry_0\);
    
    \data_out_xhdl1[7]\ : SLE
      port map(D => \data_out_0[7]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(7));
    
    \data_out_xhdl1[1]\ : SLE
      port map(D => \data_out_0[1]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(1));
    
    \wr_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[5]_net_1\, S => \wr_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \wr_pointer[3]\ : SLE
      port map(D => \wr_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_0_S_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_0_S_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    un1_counter_1_cry_4_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[4]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_3, S => un1_counter_1_cry_4_0_S_1, Y
         => OPEN, FCO => un1_counter_1_cry_4);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[0]_net_1\);
    
    \rd_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[2]_net_1\, S => \rd_pointer_s[3]\, Y => 
        OPEN, FCO => \rd_pointer_cry[3]_net_1\);
    
    \wr_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[3]_net_1\, S => \wr_pointer_s[4]\, Y => 
        OPEN, FCO => \wr_pointer_cry[4]_net_1\);
    
    \wr_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \wr_pointer[0]_net_1\, Y => \wr_pointer_s[0]\);
    
    \wr_pointer[6]\ : SLE
      port map(D => \wr_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \wr_pointer[6]_net_1\);
    
    un1_counter_1_cry_2_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[2]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_1, S => un1_counter_1_cry_2_0_S_1, Y
         => OPEN, FCO => un1_counter_1_cry_2);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_0_S_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un2_temp_xhdl5_0_a2_4_RNIKL921 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[0]_net_1\, B => 
        \un2_temp_xhdl5_0_a2_4\, C => \counter[6]_net_1\, D => 
        \counter[4]_net_1\, Y => fifo_full_tx_i_0);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[3]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_2, S => un1_counter_1_cry_3_0_S_1, Y
         => OPEN, FCO => un1_counter_1_cry_3);
    
    rd_pointer_s_109 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_109_FCO);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_0_S_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[3]_net_1\);
    
    \data_out_xhdl1[4]\ : SLE
      port map(D => \data_out_0[4]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
    \data_out_xhdl1[5]\ : SLE
      port map(D => \data_out_0[5]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(5));
    
    \rd_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[4]_net_1\, S => \rd_pointer_s[5]\, Y => 
        OPEN, FCO => \rd_pointer_cry[5]_net_1\);
    
    \data_out_xhdl1[6]\ : SLE
      port map(D => \data_out_0[6]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(6));
    
    un1_counter_1_cry_1_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[1]_net_1\, D => GND_net_1, FCI => 
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S_1, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1680_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => fifo_read_tx_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[1]_net_1\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_dout_reg(3));
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[3]_net_1\);
    
    wr_pointer_s_110 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_110_FCO);
    
    \rd_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[1]_net_1\, S => \rd_pointer_s[2]\, Y => 
        OPEN, FCO => \rd_pointer_cry[2]_net_1\);
    
    un1_counter_1_cry_5_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[5]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_4, S => un1_counter_1_cry_5_0_S_1, Y
         => OPEN, FCO => un1_counter_1_cry_5);
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[4]_net_1\);
    
    ram128_8_pa4 : mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4
      port map(data_out_0(7) => \data_out_0[7]\, data_out_0(6)
         => \data_out_0[6]\, data_out_0(5) => \data_out_0[5]\, 
        data_out_0(4) => \data_out_0[4]\, data_out_0(3) => 
        \data_out_0[3]\, data_out_0(2) => \data_out_0[2]\, 
        data_out_0(1) => \data_out_0[1]\, data_out_0(0) => 
        \data_out_0[0]\, rd_pointer(6) => \rd_pointer[6]_net_1\, 
        rd_pointer(5) => \rd_pointer[5]_net_1\, rd_pointer(4) => 
        \rd_pointer[4]_net_1\, rd_pointer(3) => 
        \rd_pointer[3]_net_1\, rd_pointer(2) => 
        \rd_pointer[2]_net_1\, rd_pointer(1) => 
        \rd_pointer[1]_net_1\, rd_pointer(0) => 
        \rd_pointer[0]_net_1\, wr_pointer(6) => 
        \wr_pointer[6]_net_1\, wr_pointer(5) => 
        \wr_pointer[5]_net_1\, wr_pointer(4) => 
        \wr_pointer[4]_net_1\, wr_pointer(3) => 
        \wr_pointer[3]_net_1\, wr_pointer(2) => 
        \wr_pointer[2]_net_1\, wr_pointer(1) => 
        \wr_pointer[1]_net_1\, wr_pointer(0) => 
        \wr_pointer[0]_net_1\, tx_hold_reg(7) => tx_hold_reg(7), 
        tx_hold_reg(6) => tx_hold_reg(6), tx_hold_reg(5) => 
        tx_hold_reg(5), tx_hold_reg(4) => tx_hold_reg(4), 
        tx_hold_reg(3) => tx_hold_reg(3), tx_hold_reg(2) => 
        tx_hold_reg(2), tx_hold_reg(1) => tx_hold_reg(1), 
        tx_hold_reg(0) => tx_hold_reg(0), FAB_CCC_GL0 => 
        FAB_CCC_GL0, MSS_READY => MSS_READY, fifo_write_tx => 
        fifo_write_tx);
    
    N_1680_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => fifo_write_tx, Y => \N_1680_i_0\);
    
    \rd_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[3]_net_1\, S => \rd_pointer_s[4]\, Y => 
        OPEN, FCO => \rd_pointer_cry[4]_net_1\);
    
    \counter[0]\ : SLE
      port map(D => un1_counter_1_cry_0_Y_1, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_256x8 is

    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0);
          fifo_write_tx    : in    std_logic;
          FAB_CCC_GL0      : in    std_logic;
          MSS_READY        : in    std_logic;
          fifo_read_tx     : in    std_logic;
          fifo_read_tx_i_0 : in    std_logic;
          fifo_full_tx_i_0 : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_fifo_256x8;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_fifo_256x8 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128
    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0) := (others => 'U');
          fifo_write_tx    : in    std_logic := 'U';
          FAB_CCC_GL0      : in    std_logic := 'U';
          MSS_READY        : in    std_logic := 'U';
          fifo_read_tx     : in    std_logic := 'U';
          fifo_read_tx_i_0 : in    std_logic := 'U';
          fifo_full_tx_i_0 : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    mss_top_sb_CoreUARTapb_1_0_fifo_128x8_pa4 : 
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128
      port map(tx_dout_reg(7) => tx_dout_reg(7), tx_dout_reg(6)
         => tx_dout_reg(6), tx_dout_reg(5) => tx_dout_reg(5), 
        tx_dout_reg(4) => tx_dout_reg(4), tx_dout_reg(3) => 
        tx_dout_reg(3), tx_dout_reg(2) => tx_dout_reg(2), 
        tx_dout_reg(1) => tx_dout_reg(1), tx_dout_reg(0) => 
        tx_dout_reg(0), counter(6) => counter(6), counter(5) => 
        counter(5), counter(4) => counter(4), counter(3) => 
        counter(3), counter(2) => counter(2), counter(1) => 
        counter(1), counter(0) => counter(0), tx_hold_reg(7) => 
        tx_hold_reg(7), tx_hold_reg(6) => tx_hold_reg(6), 
        tx_hold_reg(5) => tx_hold_reg(5), tx_hold_reg(4) => 
        tx_hold_reg(4), tx_hold_reg(3) => tx_hold_reg(3), 
        tx_hold_reg(2) => tx_hold_reg(2), tx_hold_reg(1) => 
        tx_hold_reg(1), tx_hold_reg(0) => tx_hold_reg(0), 
        fifo_write_tx => fifo_write_tx, FAB_CCC_GL0 => 
        FAB_CCC_GL0, MSS_READY => MSS_READY, fifo_read_tx => 
        fifo_read_tx, fifo_read_tx_i_0 => fifo_read_tx_i_0, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_Tx_async is

    port( tx_dout_reg           : in    std_logic_vector(7 downto 0);
          counter               : in    std_logic_vector(6 downto 0);
          fifo_read_tx          : out   std_logic;
          fifo_read_tx_i_0      : out   std_logic;
          TX2_c                 : out   std_logic;
          MSS_READY             : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          xmit_pulse            : in    std_logic;
          CoreUARTapb_1_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic;
          baud_clock            : in    std_logic;
          xmit_clock            : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_Tx_async;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_Tx_async is 

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

    signal \fifo_read_tx\, \fifo_read_en0_1_i_a3_i\, N_251_i_0, 
        GND_net_1, tx_xhdl2_3_iv_i_a2, N_127_i_0, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_111_i_0, 
        \xmit_bit_sel[2]_net_1\, N_113_i_0, 
        \xmit_bit_sel[3]_net_1\, N_115_i_0, \tx_byte[0]_net_1\, 
        N_119_i_0, \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, \xmit_state[6]_net_1\, 
        \xmit_state_ns[0]\, \xmit_state[5]_net_1\, 
        \xmit_state[0]_net_1\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[2]\, \xmit_state[3]_net_1\, N_101_i_0, 
        \xmit_state[1]_net_1\, \xmit_state_ns[5]\, 
        tx_xhdl2_1_7_i_m2_am_1_1, tx_xhdl2_1_7_i_m2_am_0, 
        tx_xhdl2_1_7_i_m2_bm_1_1, tx_xhdl2_1_7_i_m2_bm_0, N_514, 
        N_279_3, \xmit_state_ns_0_a2_0_1[0]_net_1\, N_277_5, 
        N_253, N_272 : std_logic;

begin 

    fifo_read_tx <= \fifo_read_tx\;

    txrdy_int : SLE
      port map(D => fifo_full_tx_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_1_0_TXRDY);
    
    \xmit_state_RNIUTLF[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \xmit_state[0]_net_1\, B => xmit_pulse, C => 
        \xmit_state[5]_net_1\, D => \xmit_state[6]_net_1\, Y => 
        N_127_i_0);
    
    \xmit_cnt.xmit_bit_sel_3_i_0_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, C => \xmit_bit_sel[0]_net_1\, Y
         => N_253);
    
    \xmit_state_RNIDCIK[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[4]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_119_i_0);
    
    \xmit_state[3]\ : SLE
      port map(D => N_101_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_bm_1_1);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_dout_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => N_251_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_dout_reg(4), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
    \xmit_state_ns_0[5]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \xmit_state[1]_net_1\, B => xmit_pulse, C => 
        N_272, Y => \xmit_state_ns[5]\);
    
    \xmit_state_ns_0[2]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \xmit_state[4]_net_1\, B => xmit_pulse, C => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[2]\);
    
    \xmit_cnt.xmit_bit_sel_3_a3_0_a2[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[3]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"28")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_111_i_0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_dout_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_am_1_1);
    
    \xmit_state_ns_0_a2[5]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[3]_net_1\, C => xmit_pulse, D => N_253, Y
         => N_272);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_115_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_i_a2, CLK => FAB_CCC_GL0, EN
         => N_127_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        TX2_c);
    
    \xmit_state_ns_0[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \xmit_state_ns_0_a2_0_1[0]_net_1\, B => 
        xmit_pulse, C => \xmit_state[1]_net_1\, D => N_277_5, Y
         => \xmit_state_ns[0]\);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_113_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_dout_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \xmit_state_ns_0_a2_0_1[0]\ : CFG3
      generic map(INIT => x"40")

      port map(A => counter(5), B => N_279_3, C => 
        \xmit_state[6]_net_1\, Y => 
        \xmit_state_ns_0_a2_0_1[0]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_dout_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    \xmit_state_RNO[3]\ : CFG4
      generic map(INIT => x"0E0A")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[4]_net_1\, C => N_272, D => xmit_pulse, Y => 
        N_101_i_0);
    
    \xmit_state_ns_0_a2_0_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => counter(4), B => counter(6), Y => N_279_3);
    
    \xmit_bit_sel_RNO[2]\ : CFG4
      generic map(INIT => x"28A0")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[2]_net_1\, D
         => \xmit_bit_sel[1]_net_1\, Y => N_113_i_0);
    
    \xmit_state_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \fifo_read_en0_1_i_a3_i\, Y => N_251_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_bm\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[5]_net_1\, B => \tx_byte[7]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_bm_1_1, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_bm_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_ns\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        tx_xhdl2_1_7_i_m2_bm_0, C => tx_xhdl2_1_7_i_m2_am_0, Y
         => N_514);
    
    fifo_read_en0_RNII7J2 : CFG1
      generic map(INIT => "01")

      port map(A => \fifo_read_tx\, Y => fifo_read_tx_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_am_1_1, D => 
        \xmit_bit_sel[1]_net_1\, Y => tx_xhdl2_1_7_i_m2_am_0);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_dout_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    fifo_read_en0_1_i_a3_i_a2_4 : CFG4
      generic map(INIT => x"0001")

      port map(A => counter(3), B => counter(2), C => counter(1), 
        D => counter(0), Y => N_277_5);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_111_i_0, CLK => FAB_CCC_GL0, EN => 
        xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_state[1]\ : SLE
      port map(D => \xmit_state_ns[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => xmit_pulse, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \xmit_sel.tx_xhdl2_3_iv_i_a2\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \xmit_state[3]_net_1\, B => N_514, C => 
        \xmit_state[4]_net_1\, Y => tx_xhdl2_3_iv_i_a2);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_dout_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    fifo_read_en0 : SLE
      port map(D => \fifo_read_en0_1_i_a3_i\, CLK => FAB_CCC_GL0, 
        EN => N_127_i_0, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fifo_read_tx\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_dout_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_119_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[4]_net_1\);
    
    \xmit_bit_sel_RNO[3]\ : CFG3
      generic map(INIT => x"84")

      port map(A => \xmit_bit_sel[3]_net_1\, B => 
        \xmit_state[3]_net_1\, C => N_253, Y => N_115_i_0);
    
    \xmit_state[6]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[6]_net_1\);
    
    fifo_read_en0_1_i_a3_i : CFG4
      generic map(INIT => x"7555")

      port map(A => \xmit_state[6]_net_1\, B => counter(5), C => 
        N_279_3, D => N_277_5, Y => \fifo_read_en0_1_i_a3_i\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0 is

    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0);
          wr_pointer  : in    std_logic_vector(6 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic;
          temp_xhdl17 : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0 is 

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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal VCC_net_1, GND_net_1, INV_0_Y : std_logic;
    signal nc24, nc1, nc8, nc13, nc16, nc19, nc25, nc20, nc27, 
        nc9, nc22, nc28, nc14, nc5, nc21, nc15, nc3, nc10, nc7, 
        nc17, nc4, nc12, nc2, nc23, nc18, nc26, nc6, nc11
         : std_logic;

begin 


    RAM_128x8_Q_0_inst : RAM64x18
      port map(A_DOUT(17) => nc24, A_DOUT(16) => nc1, A_DOUT(15)
         => nc8, A_DOUT(14) => nc13, A_DOUT(13) => nc16, 
        A_DOUT(12) => nc19, A_DOUT(11) => nc25, A_DOUT(10) => 
        nc20, A_DOUT(9) => nc27, A_DOUT(8) => nc9, A_DOUT(7) => 
        data_out_0(7), A_DOUT(6) => data_out_0(6), A_DOUT(5) => 
        data_out_0(5), A_DOUT(4) => data_out_0(4), A_DOUT(3) => 
        data_out_0(3), A_DOUT(2) => data_out_0(2), A_DOUT(1) => 
        data_out_0(1), A_DOUT(0) => data_out_0(0), B_DOUT(17) => 
        nc22, B_DOUT(16) => nc28, B_DOUT(15) => nc14, B_DOUT(14)
         => nc5, B_DOUT(13) => nc21, B_DOUT(12) => nc15, 
        B_DOUT(11) => nc3, B_DOUT(10) => nc10, B_DOUT(9) => nc7, 
        B_DOUT(8) => nc17, B_DOUT(7) => nc4, B_DOUT(6) => nc12, 
        B_DOUT(5) => nc2, B_DOUT(4) => nc23, B_DOUT(3) => nc18, 
        B_DOUT(2) => nc26, B_DOUT(1) => nc6, B_DOUT(0) => nc11, 
        BUSY => OPEN, A_ADDR_CLK => FAB_CCC_GL0, A_DOUT_CLK => 
        VCC_net_1, A_ADDR_SRST_N => VCC_net_1, A_DOUT_SRST_N => 
        VCC_net_1, A_ADDR_ARST_N => MSS_READY, A_DOUT_ARST_N => 
        VCC_net_1, A_ADDR_EN => VCC_net_1, A_DOUT_EN => VCC_net_1, 
        A_BLK(1) => VCC_net_1, A_BLK(0) => VCC_net_1, A_ADDR(9)
         => rd_pointer(6), A_ADDR(8) => rd_pointer(5), A_ADDR(7)
         => rd_pointer(4), A_ADDR(6) => rd_pointer(3), A_ADDR(5)
         => rd_pointer(2), A_ADDR(4) => rd_pointer(1), A_ADDR(3)
         => rd_pointer(0), A_ADDR(2) => GND_net_1, A_ADDR(1) => 
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
        FAB_CCC_GL0, C_ADDR(9) => wr_pointer(6), C_ADDR(8) => 
        wr_pointer(5), C_ADDR(7) => wr_pointer(4), C_ADDR(6) => 
        wr_pointer(3), C_ADDR(5) => wr_pointer(2), C_ADDR(4) => 
        wr_pointer(1), C_ADDR(3) => wr_pointer(0), C_ADDR(2) => 
        GND_net_1, C_ADDR(1) => GND_net_1, C_ADDR(0) => GND_net_1, 
        C_DIN(17) => GND_net_1, C_DIN(16) => GND_net_1, C_DIN(15)
         => GND_net_1, C_DIN(14) => GND_net_1, C_DIN(13) => 
        GND_net_1, C_DIN(12) => GND_net_1, C_DIN(11) => GND_net_1, 
        C_DIN(10) => GND_net_1, C_DIN(9) => GND_net_1, C_DIN(8)
         => GND_net_1, C_DIN(7) => rx_byte(7), C_DIN(6) => 
        rx_byte(6), C_DIN(5) => rx_byte(5), C_DIN(4) => 
        rx_byte(4), C_DIN(3) => rx_byte(3), C_DIN(2) => 
        rx_byte(2), C_DIN(1) => rx_byte(1), C_DIN(0) => 
        rx_byte(0), C_WEN => INV_0_Y, C_BLK(1) => VCC_net_1, 
        C_BLK(0) => VCC_net_1, A_EN => VCC_net_1, A_ADDR_LAT => 
        GND_net_1, A_DOUT_LAT => VCC_net_1, A_WIDTH(2) => 
        GND_net_1, A_WIDTH(1) => VCC_net_1, A_WIDTH(0) => 
        VCC_net_1, B_EN => GND_net_1, B_ADDR_LAT => GND_net_1, 
        B_DOUT_LAT => VCC_net_1, B_WIDTH(2) => GND_net_1, 
        B_WIDTH(1) => VCC_net_1, B_WIDTH(0) => VCC_net_1, C_EN
         => VCC_net_1, C_WIDTH(2) => GND_net_1, C_WIDTH(1) => 
        VCC_net_1, C_WIDTH(0) => VCC_net_1, SII_LOCK => GND_net_1);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    INV_0 : INV
      port map(A => temp_xhdl17, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0 is

    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0);
          temp_xhdl17           : in    std_logic;
          fifo_read_rx_0_sqmuxa : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          MSS_READY             : in    std_logic;
          fifo_write            : in    std_logic;
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0;

architecture DEF_ARCH of 
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0 is 

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

  component VCC
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0
    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U';
          temp_xhdl17 : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1663_i_0\, 
        N_1662_i_0, VCC_net_1, \data_out_0[0]\, 
        \data_out_xhdl1_0_sqmuxa\, GND_net_1, \data_out_0[1]\, 
        \data_out_0[2]\, \data_out_0[3]\, \data_out_0[4]\, 
        \data_out_0[5]\, \data_out_0[6]\, \data_out_0[7]\, 
        \counter[0]_net_1\, un1_counter_1_cry_0_Y_2, 
        \counter[1]_net_1\, un1_counter_1_cry_1_0_S_2, 
        \counter[2]_net_1\, un1_counter_1_cry_2_0_S_2, 
        \counter[3]_net_1\, un1_counter_1_cry_3_0_S_2, 
        \counter[4]_net_1\, un1_counter_1_cry_4_0_S_2, 
        \counter[5]_net_1\, un1_counter_1_cry_5_0_S_2, 
        \counter[6]_net_1\, un1_counter_1_s_6_S_2, \read_n_hold\, 
        \wr_pointer[1]_net_1\, \wr_pointer_s[1]\, 
        \wr_pointer[2]_net_1\, \wr_pointer_s[2]\, 
        \wr_pointer[3]_net_1\, \wr_pointer_s[3]\, 
        \wr_pointer[4]_net_1\, \wr_pointer_s[4]\, 
        \wr_pointer[5]_net_1\, \wr_pointer_s[5]\, 
        \wr_pointer[6]_net_1\, \wr_pointer_s[6]_net_1\, 
        \rd_pointer[1]_net_1\, \rd_pointer_s[1]\, 
        \rd_pointer[2]_net_1\, \rd_pointer_s[2]\, 
        \rd_pointer[3]_net_1\, \rd_pointer_s[3]\, 
        \rd_pointer[4]_net_1\, \rd_pointer_s[4]\, 
        \rd_pointer[5]_net_1\, \rd_pointer_s[5]\, 
        \rd_pointer[6]_net_1\, \rd_pointer_s[6]_net_1\, 
        \un1_counter_1_cry_0\, \fifo_full_rx\, 
        un1_counter_1_cry_1, un1_counter_1_cry_2, 
        un1_counter_1_cry_3, un1_counter_1_cry_4, 
        un1_counter_1_cry_5, rd_pointer_s_111_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_112_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, \un2_temp_xhdl5_4\, 
        \un1_temp_xhdl6_4\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0(DEF_ARCH);
begin 

    fifo_full_rx <= \fifo_full_rx\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_112_FCO, S
         => \wr_pointer_s[1]\, Y => OPEN, FCO => 
        \wr_pointer_cry[1]_net_1\);
    
    \wr_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[2]_net_1\, S => \wr_pointer_s[3]\, Y => 
        OPEN, FCO => \wr_pointer_cry[3]_net_1\);
    
    data_out_xhdl1_0_sqmuxa : CFG2
      generic map(INIT => x"2")

      port map(A => MSS_READY, B => \read_n_hold\, Y => 
        \data_out_xhdl1_0_sqmuxa\);
    
    \wr_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[1]_net_1\, S => \wr_pointer_s[2]\, Y => 
        OPEN, FCO => \wr_pointer_cry[2]_net_1\);
    
    rd_pointer_s_111 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_111_FCO);
    
    \rd_pointer[2]\ : SLE
      port map(D => \rd_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_0_S_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[2]_net_1\);
    
    \wr_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[4]_net_1\, S => \wr_pointer_s[5]\, Y => 
        OPEN, FCO => \wr_pointer_cry[5]_net_1\);
    
    un1_counter_1_s_6 : ARI1
      generic map(INIT => x"46A00")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => 
        fifo_read_rx_0_sqmuxa, D => temp_xhdl17, FCI => 
        un1_counter_1_cry_5, S => un1_counter_1_s_6_S_2, Y => 
        OPEN, FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[5]_net_1\);
    
    \data_out_xhdl1[2]\ : SLE
      port map(D => \data_out_0[2]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(2));
    
    \counter[6]\ : SLE
      port map(D => un1_counter_1_s_6_S_2, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[6]_net_1\);
    
    wr_pointer_s_112 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_112_FCO);
    
    read_n_hold : SLE
      port map(D => N_1662_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[1]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    un1_temp_xhdl6 : CFG4
      generic map(INIT => x"0004")

      port map(A => \counter[0]_net_1\, B => \un1_temp_xhdl6_4\, 
        C => \counter[6]_net_1\, D => \counter[4]_net_1\, Y => 
        fifo_empty_rx);
    
    N_1663_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => temp_xhdl17, Y => \N_1663_i_0\);
    
    \rd_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[5]_net_1\, S => \rd_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_111_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(0));
    
    read_n_hold_RNO : CFG1
      generic map(INIT => "01")

      port map(A => fifo_read_rx_0_sqmuxa, Y => N_1662_i_0);
    
    un2_temp_xhdl5_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[5]_net_1\, B => \counter[3]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[1]_net_1\, Y => 
        \un2_temp_xhdl5_4\);
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"556A9")

      port map(A => \counter[0]_net_1\, B => 
        fifo_read_rx_0_sqmuxa, C => fifo_write, D => 
        \fifo_full_rx\, FCI => GND_net_1, S => OPEN, Y => 
        un1_counter_1_cry_0_Y_2, FCO => \un1_counter_1_cry_0\);
    
    \data_out_xhdl1[7]\ : SLE
      port map(D => \data_out_0[7]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(7));
    
    \data_out_xhdl1[1]\ : SLE
      port map(D => \data_out_0[1]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(1));
    
    \wr_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[5]_net_1\, S => \wr_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \wr_pointer[3]\ : SLE
      port map(D => \wr_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_0_S_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_0_S_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    un1_counter_1_cry_4_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[4]_net_1\, FCI => 
        un1_counter_1_cry_3, S => un1_counter_1_cry_4_0_S_2, Y
         => OPEN, FCO => un1_counter_1_cry_4);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[0]_net_1\);
    
    \rd_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[2]_net_1\, S => \rd_pointer_s[3]\, Y => 
        OPEN, FCO => \rd_pointer_cry[3]_net_1\);
    
    \wr_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[3]_net_1\, S => \wr_pointer_s[4]\, Y => 
        OPEN, FCO => \wr_pointer_cry[4]_net_1\);
    
    \wr_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \wr_pointer[0]_net_1\, Y => \wr_pointer_s[0]\);
    
    \wr_pointer[6]\ : SLE
      port map(D => \wr_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \wr_pointer[6]_net_1\);
    
    un1_counter_1_cry_2_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[2]_net_1\, FCI => 
        un1_counter_1_cry_1, S => un1_counter_1_cry_2_0_S_2, Y
         => OPEN, FCO => un1_counter_1_cry_2);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_0_S_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[3]_net_1\, FCI => 
        un1_counter_1_cry_2, S => un1_counter_1_cry_3_0_S_2, Y
         => OPEN, FCO => un1_counter_1_cry_3);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_0_S_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[3]_net_1\);
    
    \data_out_xhdl1[4]\ : SLE
      port map(D => \data_out_0[4]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
    un2_temp_xhdl5 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[0]_net_1\, B => \un2_temp_xhdl5_4\, 
        C => \counter[6]_net_1\, D => \counter[4]_net_1\, Y => 
        \fifo_full_rx\);
    
    \data_out_xhdl1[5]\ : SLE
      port map(D => \data_out_0[5]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(5));
    
    \rd_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[4]_net_1\, S => \rd_pointer_s[5]\, Y => 
        OPEN, FCO => \rd_pointer_cry[5]_net_1\);
    
    \data_out_xhdl1[6]\ : SLE
      port map(D => \data_out_0[6]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(6));
    
    un1_counter_1_cry_1_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[1]_net_1\, FCI => 
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S_2, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1663_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[1]_net_1\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(3));
    
    un1_temp_xhdl6_4 : CFG4
      generic map(INIT => x"0001")

      port map(A => \counter[5]_net_1\, B => \counter[3]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[1]_net_1\, Y => 
        \un1_temp_xhdl6_4\);
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[3]_net_1\);
    
    \rd_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[1]_net_1\, S => \rd_pointer_s[2]\, Y => 
        OPEN, FCO => \rd_pointer_cry[2]_net_1\);
    
    un1_counter_1_cry_5_0 : ARI1
      generic map(INIT => x"51EF0")

      port map(A => fifo_read_rx_0_sqmuxa, B => \fifo_full_rx\, C
         => fifo_write, D => \counter[5]_net_1\, FCI => 
        un1_counter_1_cry_4, S => un1_counter_1_cry_5_0_S_2, Y
         => OPEN, FCO => un1_counter_1_cry_5);
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        fifo_read_rx_0_sqmuxa, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rd_pointer[4]_net_1\);
    
    ram128_8_pa4 : mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0
      port map(data_out_0(7) => \data_out_0[7]\, data_out_0(6)
         => \data_out_0[6]\, data_out_0(5) => \data_out_0[5]\, 
        data_out_0(4) => \data_out_0[4]\, data_out_0(3) => 
        \data_out_0[3]\, data_out_0(2) => \data_out_0[2]\, 
        data_out_0(1) => \data_out_0[1]\, data_out_0(0) => 
        \data_out_0[0]\, rd_pointer(6) => \rd_pointer[6]_net_1\, 
        rd_pointer(5) => \rd_pointer[5]_net_1\, rd_pointer(4) => 
        \rd_pointer[4]_net_1\, rd_pointer(3) => 
        \rd_pointer[3]_net_1\, rd_pointer(2) => 
        \rd_pointer[2]_net_1\, rd_pointer(1) => 
        \rd_pointer[1]_net_1\, rd_pointer(0) => 
        \rd_pointer[0]_net_1\, wr_pointer(6) => 
        \wr_pointer[6]_net_1\, wr_pointer(5) => 
        \wr_pointer[5]_net_1\, wr_pointer(4) => 
        \wr_pointer[4]_net_1\, wr_pointer(3) => 
        \wr_pointer[3]_net_1\, wr_pointer(2) => 
        \wr_pointer[2]_net_1\, wr_pointer(1) => 
        \wr_pointer[1]_net_1\, wr_pointer(0) => 
        \wr_pointer[0]_net_1\, rx_byte(7) => rx_byte(7), 
        rx_byte(6) => rx_byte(6), rx_byte(5) => rx_byte(5), 
        rx_byte(4) => rx_byte(4), rx_byte(3) => rx_byte(3), 
        rx_byte(2) => rx_byte(2), rx_byte(1) => rx_byte(1), 
        rx_byte(0) => rx_byte(0), FAB_CCC_GL0 => FAB_CCC_GL0, 
        MSS_READY => MSS_READY, temp_xhdl17 => temp_xhdl17);
    
    \rd_pointer_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[3]_net_1\, S => \rd_pointer_s[4]\, Y => 
        OPEN, FCO => \rd_pointer_cry[4]_net_1\);
    
    \counter[0]\ : SLE
      port map(D => un1_counter_1_cry_0_Y_2, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0 is

    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0);
          temp_xhdl17           : in    std_logic;
          fifo_read_rx_0_sqmuxa : in    std_logic;
          FAB_CCC_GL0           : in    std_logic;
          MSS_READY             : in    std_logic;
          fifo_write            : in    std_logic;
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0
    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0) := (others => 'U');
          temp_xhdl17           : in    std_logic := 'U';
          fifo_read_rx_0_sqmuxa : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          MSS_READY             : in    std_logic := 'U';
          fifo_write            : in    std_logic := 'U';
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    mss_top_sb_CoreUARTapb_1_0_fifo_128x8_pa4 : 
        mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0
      port map(rx_dout(7) => rx_dout(7), rx_dout(6) => rx_dout(6), 
        rx_dout(5) => rx_dout(5), rx_dout(4) => rx_dout(4), 
        rx_dout(3) => rx_dout(3), rx_dout(2) => rx_dout(2), 
        rx_dout(1) => rx_dout(1), rx_dout(0) => rx_dout(0), 
        rx_byte(7) => rx_byte(7), rx_byte(6) => rx_byte(6), 
        rx_byte(5) => rx_byte(5), rx_byte(4) => rx_byte(4), 
        rx_byte(3) => rx_byte(3), rx_byte(2) => rx_byte(2), 
        rx_byte(1) => rx_byte(1), rx_byte(0) => rx_byte(0), 
        temp_xhdl17 => temp_xhdl17, fifo_read_rx_0_sqmuxa => 
        fifo_read_rx_0_sqmuxa, FAB_CCC_GL0 => FAB_CCC_GL0, 
        MSS_READY => MSS_READY, fifo_write => fifo_write, 
        fifo_full_rx => fifo_full_rx, fifo_empty_rx => 
        fifo_empty_rx);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_Clock_gen is

    port( xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_Clock_gen;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_Clock_gen is 

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
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNIAFRO1_Y, 
        un2_baud_cntr_1, un2_baud_cntr_7, un2_baud_cntr_8, 
        \baud_cntr_cry[0]\, \baud_cntr_qxu_1[0]_net_1\, 
        \baud_cntr_cry[1]\, \baud_cntr_cry[2]\, 
        \baud_cntr_cry[3]\, \baud_cntr_cry[4]\, 
        \baud_cntr_cry[5]\, \baud_cntr_cry[6]\, 
        \baud_cntr_cry[7]\, \baud_cntr_cry[8]\, 
        \baud_cntr_cry[9]\, \baud_cntr_cry[10]\, 
        \baud_cntr_cry[11]\, un2_baud_cntr_7_x, un2_baud_cntr_1_x, 
        CO0 : std_logic;

begin 

    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

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
    
    \baud_cntr_qxu_1_RNIF2B73[0]\ : ARI1
      generic map(INIT => x"63331")

      port map(A => \baud_cntr_qxu_1[0]_net_1\, B => 
        un2_baud_cntr_8, C => \baud_cntr[0]_net_1\, D => 
        \baud_cntr[12]_net_1\, FCI => \baud_cntr_cry_cy[0]\, S
         => \baud_cntr_s[0]\, Y => OPEN, FCO => 
        \baud_cntr_cry[0]\);
    
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
    
    \baud_cntr_RNICB7E5[1]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNIAFRO1_Y, C
         => \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \make_xmit_clock.un7_baud_clock_int\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un7_baud_clock_int);
    
    \baud_cntr_RNI5DTH6[3]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
    \baud_cntr_RNI3T9P8[7]\ : ARI1
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
    
    \baud_cntr_RNIL35B9[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"4BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[12]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_RNIJFO37[4]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, D => 
        \baud_cntr[2]_net_1\, Y => un2_baud_cntr_7);
    
    \baud_cntr_RNIVP62B[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
    \baud_cntr_RNIOB206[2]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
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
    
    \baud_cntr_RNI2JJL7[5]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7_x\ : CFG3
      generic map(INIT => x"01")

      port map(A => \baud_cntr[5]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[3]_net_1\, Y => 
        un2_baud_cntr_7_x);
    
    \baud_cntr_RNIINE78[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[9]_net_1\, B => 
        \baud_cntr[8]_net_1\, C => \baud_cntr[7]_net_1\, D => 
        \baud_cntr[6]_net_1\, Y => un2_baud_cntr_8);
    
    \baud_cntr_RNI3IJFA[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNIAFRO1\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[12]_net_1\, B => un2_baud_cntr_1, 
        C => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNIAFRO1_Y, 
        FCO => \baud_cntr_cry_cy[0]\);
    
    \baud_cntr_RNI8B0T9[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
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
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_x\ : CFG3
      generic map(INIT => x"01")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[1]_net_1\, Y => 
        un2_baud_cntr_1_x);
    
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
    
    \baud_cntr_qxu_1[0]\ : CFG4
      generic map(INIT => x"EFFF")

      port map(A => \baud_cntr[2]_net_1\, B => 
        \baud_cntr[0]_net_1\, C => un2_baud_cntr_7_x, D => 
        un2_baud_cntr_1_x, Y => \baud_cntr_qxu_1[0]_net_1\);
    
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

entity mss_top_sb_CoreUARTapb_1_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0);
          rx_dout_reg                  : out   std_logic_vector(7 downto 0);
          MSS_READY                    : in    std_logic;
          FAB_CCC_GL0                  : in    std_logic;
          CoreUARTapb_1_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_1_0_RXRDY        : out   std_logic;
          CoreAPB3_0_APBmslave3_PSELx  : in    std_logic;
          un3_wen                      : in    std_logic;
          un3_oen                      : in    std_logic;
          TX2_c                        : out   std_logic;
          CoreUARTapb_1_0_TXRDY        : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR  : out   std_logic;
          RX2_c                        : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_COREUART;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_COREUART is 

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

  component mss_top_sb_CoreUARTapb_1_0_Rx_async
    port( rx_state                    : out   std_logic_vector(1 downto 0);
          rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic := 'U';
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          baud_clock                  : in    std_logic := 'U';
          stop_strobe                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR : out   std_logic;
          RX2_c                       : in    std_logic := 'U';
          clear_parity_en             : out   std_logic;
          fifo_write                  : out   std_logic
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

  component mss_top_sb_CoreUARTapb_1_0_fifo_256x8
    port( tx_dout_reg      : out   std_logic_vector(7 downto 0);
          counter          : out   std_logic_vector(6 downto 0);
          tx_hold_reg      : in    std_logic_vector(7 downto 0) := (others => 'U');
          fifo_write_tx    : in    std_logic := 'U';
          FAB_CCC_GL0      : in    std_logic := 'U';
          MSS_READY        : in    std_logic := 'U';
          fifo_read_tx     : in    std_logic := 'U';
          fifo_read_tx_i_0 : in    std_logic := 'U';
          fifo_full_tx_i_0 : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_Tx_async
    port( tx_dout_reg           : in    std_logic_vector(7 downto 0) := (others => 'U');
          counter               : in    std_logic_vector(6 downto 0) := (others => 'U');
          fifo_read_tx          : out   std_logic;
          fifo_read_tx_i_0      : out   std_logic;
          TX2_c                 : out   std_logic;
          MSS_READY             : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          xmit_pulse            : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic := 'U';
          baud_clock            : in    std_logic := 'U';
          xmit_clock            : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0
    port( rx_dout               : out   std_logic_vector(7 downto 0);
          rx_byte               : in    std_logic_vector(7 downto 0) := (others => 'U');
          temp_xhdl17           : in    std_logic := 'U';
          fifo_read_rx_0_sqmuxa : in    std_logic := 'U';
          FAB_CCC_GL0           : in    std_logic := 'U';
          MSS_READY             : in    std_logic := 'U';
          fifo_write            : in    std_logic := 'U';
          fifo_full_rx          : out   std_logic;
          fifo_empty_rx         : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_Clock_gen
    port( xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          baud_clock  : out   std_logic;
          xmit_pulse  : out   std_logic
        );
  end component;

    signal \rx_dout_reg_empty\, rx_dout_reg_empty_i_0, 
        rx_dout_reg3, rx_dout_reg3_i_0, un1_csn, un1_csn_i_0, 
        GND_net_1, rx_dout_reg_empty_1_sqmuxa_i_0, VCC_net_1, 
        \un1_fifo_write\, un9_clear_overflow_0, 
        \tx_hold_reg[0]_net_1\, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        un3_stop_strobe, \rx_dout[0]\, \rx_dout[1]\, \rx_dout[2]\, 
        \rx_dout[3]\, \rx_dout[4]\, \rx_dout[5]\, \rx_dout[6]\, 
        \rx_dout[7]\, \rx_state[0]_net_1\, \rx_state_ns[0]\, 
        \rx_state[1]_net_1\, N_108_i, \clear_parity_reg\, 
        clear_parity_reg0, clear_parity_en, \fifo_write_tx\, 
        stop_strobe, \rx_state_0[1]\, \rx_state_0[0]\, 
        fifo_full_rx, fifo_write, \temp_xhdl17\, fifo_empty_rx, 
        fifo_read_rx_0_sqmuxa, xmit_clock, baud_clock, xmit_pulse, 
        \tx_dout_reg[0]\, \tx_dout_reg[1]\, \tx_dout_reg[2]\, 
        \tx_dout_reg[3]\, \tx_dout_reg[4]\, \tx_dout_reg[5]\, 
        \tx_dout_reg[6]\, \tx_dout_reg[7]\, \counter[0]\, 
        \counter[1]\, \counter[2]\, \counter[3]\, \counter[4]\, 
        \counter[5]\, \counter[6]\, fifo_read_tx, 
        fifo_read_tx_i_0, fifo_full_tx_i_0, \rx_byte[0]\, 
        \rx_byte[1]\, \rx_byte[2]\, \rx_byte[3]\, \rx_byte[4]\, 
        \rx_byte[5]\, \rx_byte[6]\, \rx_byte[7]\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_Rx_async
	Use entity work.mss_top_sb_CoreUARTapb_1_0_Rx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_1_0_fifo_256x8
	Use entity work.mss_top_sb_CoreUARTapb_1_0_fifo_256x8(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_1_0_Tx_async
	Use entity work.mss_top_sb_CoreUARTapb_1_0_Tx_async(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_1_0_Clock_gen
	Use entity work.mss_top_sb_CoreUARTapb_1_0_Clock_gen(DEF_ARCH);
begin 


    \reg_write.un1_csn\ : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave3_PSELx, B => un3_wen, Y
         => un1_csn);
    
    \tx_hold_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \rx_dout_reg[0]\ : SLE
      port map(D => \rx_dout[0]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(0));
    
    un1_fifo_write : CFG2
      generic map(INIT => x"2")

      port map(A => fifo_full_rx, B => fifo_write, Y => 
        \un1_fifo_write\);
    
    \rx_state_ns_0_x3[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_108_i);
    
    make_RX : mss_top_sb_CoreUARTapb_1_0_Rx_async
      port map(rx_state(1) => \rx_state_0[1]\, rx_state(0) => 
        \rx_state_0[0]\, rx_byte(7) => \rx_byte[7]\, rx_byte(6)
         => \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4)
         => \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2)
         => \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0)
         => \rx_byte[0]\, clear_parity_reg => \clear_parity_reg\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        baud_clock => baud_clock, stop_strobe => stop_strobe, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, RX2_c => RX2_c, 
        clear_parity_en => clear_parity_en, fifo_write => 
        fifo_write);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \rx_state_ns_0_a2[0]\ : CFG4
      generic map(INIT => x"2232")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, D => fifo_empty_rx, Y => 
        \rx_state_ns[0]\);
    
    \rx_dout_reg[3]\ : SLE
      port map(D => \rx_dout[3]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(3));
    
    clear_framing_error_reg0 : SLE
      port map(D => clear_parity_en, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_reg0);
    
    un9_clear_overflow : CFG3
      generic map(INIT => x"EA")

      port map(A => \un1_fifo_write\, B => un3_oen, C => 
        CoreAPB3_0_APBmslave3_PSELx, Y => un9_clear_overflow_0);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    rx_dout_reg_empty : SLE
      port map(D => rx_dout_reg3, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg_empty_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_dout_reg_empty\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    fifo_read_rx_0_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"0010")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, D => fifo_empty_rx, Y => 
        fifo_read_rx_0_sqmuxa);
    
    \UG06.tx_fifo_xhdl79\ : mss_top_sb_CoreUARTapb_1_0_fifo_256x8
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter[6]\, counter(5)
         => \counter[5]\, counter(4) => \counter[4]\, counter(3)
         => \counter[3]\, counter(2) => \counter[2]\, counter(1)
         => \counter[1]\, counter(0) => \counter[0]\, 
        tx_hold_reg(7) => \tx_hold_reg[7]_net_1\, tx_hold_reg(6)
         => \tx_hold_reg[6]_net_1\, tx_hold_reg(5) => 
        \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, fifo_write_tx => \fifo_write_tx\, 
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, 
        fifo_read_tx => fifo_read_tx, fifo_read_tx_i_0 => 
        fifo_read_tx_i_0, fifo_full_tx_i_0 => fifo_full_tx_i_0);
    
    fifo_write_tx_RNO : CFG1
      generic map(INIT => "01")

      port map(A => un1_csn, Y => un1_csn_i_0);
    
    make_TX : mss_top_sb_CoreUARTapb_1_0_Tx_async
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter[6]\, counter(5)
         => \counter[5]\, counter(4) => \counter[4]\, counter(3)
         => \counter[3]\, counter(2) => \counter[2]\, counter(1)
         => \counter[1]\, counter(0) => \counter[0]\, 
        fifo_read_tx => fifo_read_tx, fifo_read_tx_i_0 => 
        fifo_read_tx_i_0, TX2_c => TX2_c, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, xmit_pulse => xmit_pulse, 
        CoreUARTapb_1_0_TXRDY => CoreUARTapb_1_0_TXRDY, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0, baud_clock => 
        baud_clock, xmit_clock => xmit_clock);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    rx_dout_reg3_0_RNIU1T6 : CFG1
      generic map(INIT => "01")

      port map(A => rx_dout_reg3, Y => rx_dout_reg3_i_0);
    
    \rx_dout_reg[4]\ : SLE
      port map(D => \rx_dout[4]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(4));
    
    \rx_state[1]\ : SLE
      port map(D => N_108_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    rx_dout_reg3_0 : CFG2
      generic map(INIT => x"7")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => rx_dout_reg3);
    
    \rx_dout_reg[7]\ : SLE
      port map(D => \rx_dout[7]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(7));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_dout_reg[1]\ : SLE
      port map(D => \rx_dout[1]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(1));
    
    rxrdy_xhdl4_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \rx_dout_reg_empty\, Y => 
        rx_dout_reg_empty_i_0);
    
    clear_parity_reg : SLE
      port map(D => clear_parity_reg0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \clear_parity_reg\);
    
    \UG07.rx_fifo_xhdl80\ : 
        mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0
      port map(rx_dout(7) => \rx_dout[7]\, rx_dout(6) => 
        \rx_dout[6]\, rx_dout(5) => \rx_dout[5]\, rx_dout(4) => 
        \rx_dout[4]\, rx_dout(3) => \rx_dout[3]\, rx_dout(2) => 
        \rx_dout[2]\, rx_dout(1) => \rx_dout[1]\, rx_dout(0) => 
        \rx_dout[0]\, rx_byte(7) => \rx_byte[7]\, rx_byte(6) => 
        \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4) => 
        \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2) => 
        \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0) => 
        \rx_byte[0]\, temp_xhdl17 => \temp_xhdl17\, 
        fifo_read_rx_0_sqmuxa => fifo_read_rx_0_sqmuxa, 
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, 
        fifo_write => fifo_write, fifo_full_rx => fifo_full_rx, 
        fifo_empty_rx => fifo_empty_rx);
    
    \rx_dout_reg[5]\ : SLE
      port map(D => \rx_dout[5]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(5));
    
    overflow_reg : SLE
      port map(D => \un1_fifo_write\, CLK => FAB_CCC_GL0, EN => 
        un9_clear_overflow_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => CoreUARTapb_1_0_OVERFLOW);
    
    \RXRDY_NEW.un3_stop_strobe\ : CFG4
      generic map(INIT => x"EEEF")

      port map(A => \rx_dout_reg_empty\, B => stop_strobe, C => 
        \rx_state_0[1]\, D => \rx_state_0[0]\, Y => 
        un3_stop_strobe);
    
    \rx_dout_reg[6]\ : SLE
      port map(D => \rx_dout[6]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(6));
    
    rxrdy_xhdl4 : SLE
      port map(D => rx_dout_reg_empty_i_0, CLK => FAB_CCC_GL0, EN
         => un3_stop_strobe, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => CoreUARTapb_1_0_RXRDY);
    
    make_mss_top_sb_CoreUARTapb_1_0_Clock_gen : 
        mss_top_sb_CoreUARTapb_1_0_Clock_gen
      port map(xmit_clock => xmit_clock, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => baud_clock, 
        xmit_pulse => xmit_pulse);
    
    \rx_state[0]\ : SLE
      port map(D => \rx_state_ns[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    temp_xhdl17 : CFG2
      generic map(INIT => x"E")

      port map(A => fifo_full_rx, B => fifo_write, Y => 
        \temp_xhdl17\);
    
    fifo_write_tx : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fifo_write_tx\);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    rx_dout_reg_empty_1_sqmuxa_i : CFG3
      generic map(INIT => x"D5")

      port map(A => rx_dout_reg3, B => un3_oen, C => 
        CoreAPB3_0_APBmslave3_PSELx, Y => 
        rx_dout_reg_empty_1_sqmuxa_i_0);
    
    \rx_dout_reg[2]\ : SLE
      port map(D => \rx_dout[2]\, CLK => FAB_CCC_GL0, EN => 
        rx_dout_reg3_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        rx_dout_reg(2));
    
    \tx_hold_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[4]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_CoreUARTapb is

    port( CoreAPB3_0_APBmslave3_PRDATA : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 2);
          nxtprdata_xhdl7_1_0          : in    std_logic;
          nxtprdata_xhdl7_1_4          : in    std_logic;
          controlReg2_0                : out   std_logic;
          controlReg2_4                : out   std_logic;
          controlReg1_0                : out   std_logic;
          controlReg1_4                : out   std_logic;
          rx_dout_reg_0                : out   std_logic;
          rx_dout_reg_4                : out   std_logic;
          MSS_READY                    : in    std_logic;
          FAB_CCC_GL0                  : in    std_logic;
          CoreUARTapb_1_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_1_0_RXRDY        : out   std_logic;
          un13_psel_0_0                : in    std_logic;
          CoreAPB3_0_APBmslave3_PSELx  : in    std_logic;
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic;
          un5_psel_0_0                 : in    std_logic;
          un1_nxtprdata_xhdl722_0      : in    std_logic;
          un3_wen                      : in    std_logic;
          un3_oen                      : in    std_logic;
          TX2_c                        : out   std_logic;
          CoreUARTapb_1_0_TXRDY        : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR  : out   std_logic;
          RX2_c                        : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_CoreUARTapb;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_CoreUARTapb is 

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

  component mss_top_sb_CoreUARTapb_1_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          rx_dout_reg                  : out   std_logic_vector(7 downto 0);
          MSS_READY                    : in    std_logic := 'U';
          FAB_CCC_GL0                  : in    std_logic := 'U';
          CoreUARTapb_1_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_1_0_RXRDY        : out   std_logic;
          CoreAPB3_0_APBmslave3_PSELx  : in    std_logic := 'U';
          un3_wen                      : in    std_logic := 'U';
          un3_oen                      : in    std_logic := 'U';
          TX2_c                        : out   std_logic;
          CoreUARTapb_1_0_TXRDY        : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR  : out   std_logic;
          RX2_c                        : in    std_logic := 'U'
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, un1_nxtprdata_xhdl722_i_0, GND_net_1, 
        \nxtprdata_xhdl7_1[1]\, \nxtprdata_xhdl7_1[2]\, 
        \nxtprdata_xhdl7_1[3]\, \nxtprdata_xhdl7_1[5]\, 
        \nxtprdata_xhdl7_1[6]\, \nxtprdata_xhdl7_1[7]\, un13_psel, 
        \controlReg2[1]_net_1\, \controlReg2[2]_net_1\, 
        \controlReg2[3]_net_1\, \controlReg2[5]_net_1\, 
        \controlReg2[6]_net_1\, \controlReg2[7]_net_1\, un5_psel, 
        \controlReg1[1]_net_1\, \controlReg1[2]_net_1\, 
        \controlReg1[3]_net_1\, \controlReg1[5]_net_1\, 
        \controlReg1[6]_net_1\, \controlReg1[7]_net_1\, 
        \rx_dout_reg[7]\, \nxtprdata_xhdl7_1_5_1[7]\, 
        \rx_dout_reg[2]\, \nxtprdata_xhdl7_1_5_1[2]\, 
        \nxtprdata_xhdl7_1_5_1[6]\, \rx_dout_reg[6]\, 
        \nxtprdata_xhdl7_1_5_1[5]\, \rx_dout_reg[5]\, 
        \nxtprdata_xhdl7_1_5_ns_1[3]\, N_41, 
        \CoreUARTapb_1_0_OVERFLOW\, \nxtprdata_xhdl7_1_5_ns_1[1]\, 
        N_39, \CoreUARTapb_1_0_RXRDY\, \rx_dout_reg[3]\, 
        \rx_dout_reg[1]\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_1_0_COREUART(DEF_ARCH);
begin 

    CoreUARTapb_1_0_OVERFLOW <= \CoreUARTapb_1_0_OVERFLOW\;
    CoreUARTapb_1_0_RXRDY <= \CoreUARTapb_1_0_RXRDY\;

    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[1]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_1_0_RXRDY\, B => 
        \controlReg1[1]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_5_ns_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[5]\ : CFG4
      generic map(INIT => x"350F")

      port map(A => \rx_dout_reg[5]\, B => \controlReg2[5]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[5]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_2[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \rx_dout_reg[3]\, B => \controlReg2[3]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_41);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => controlReg2_4);
    
    \iPRDATA[4]\ : SLE
      port map(D => nxtprdata_xhdl7_1_4, CLK => FAB_CCC_GL0, EN
         => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(4));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[7]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => \controlReg2[7]_net_1\, B => 
        \controlReg1[7]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[7]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(3));
    
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

      port map(A => \rx_dout_reg[1]\, B => \controlReg2[1]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => N_39);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[2]\ : CFG4
      generic map(INIT => x"0504")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        \rx_dout_reg[2]\, C => \nxtprdata_xhdl7_1_5_1[2]\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
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
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => controlReg1_4);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(5));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[7]\ : CFG4
      generic map(INIT => x"0504")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        \rx_dout_reg[7]\, C => \nxtprdata_xhdl7_1_5_1[7]\, D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \nxtprdata_xhdl7_1[7]\);
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(7));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns_1[3]\ : CFG4
      generic map(INIT => x"553F")

      port map(A => \CoreUARTapb_1_0_OVERFLOW\, B => 
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
    
    \p_CtrlReg2Seq.un13_psel\ : CFG4
      generic map(INIT => x"2000")

      port map(A => un13_psel_0_0, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => PWM_STRETCH_0_sqmuxa_0, 
        Y => un13_psel);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[2]\ : CFG4
      generic map(INIT => x"503F")

      port map(A => \controlReg2[2]_net_1\, B => 
        \controlReg1[2]_net_1\, C => 
        CoreAPB3_0_APBmslave0_PADDR(3), D => 
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_ns[1]\ : CFG4
      generic map(INIT => x"2705")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \nxtprdata_xhdl7_1_5_ns_1[1]\, D => N_39, Y => 
        \nxtprdata_xhdl7_1[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[6]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[6]\, C => \controlReg1[6]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[6]\);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5[5]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        \nxtprdata_xhdl7_1_5_1[5]\, C => \controlReg1[5]_net_1\, 
        D => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1[5]\);
    
    \iPRDATA[0]\ : SLE
      port map(D => nxtprdata_xhdl7_1_0, CLK => FAB_CCC_GL0, EN
         => un1_nxtprdata_xhdl722_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreAPB3_0_APBmslave3_PRDATA(0));
    
    uUART : mss_top_sb_CoreUARTapb_1_0_COREUART
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
        CoreAPB3_0_APBmslave0_PWDATA(0), rx_dout_reg(7) => 
        \rx_dout_reg[7]\, rx_dout_reg(6) => \rx_dout_reg[6]\, 
        rx_dout_reg(5) => \rx_dout_reg[5]\, rx_dout_reg(4) => 
        rx_dout_reg_4, rx_dout_reg(3) => \rx_dout_reg[3]\, 
        rx_dout_reg(2) => \rx_dout_reg[2]\, rx_dout_reg(1) => 
        \rx_dout_reg[1]\, rx_dout_reg(0) => rx_dout_reg_0, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreUARTapb_1_0_OVERFLOW => \CoreUARTapb_1_0_OVERFLOW\, 
        CoreUARTapb_1_0_RXRDY => \CoreUARTapb_1_0_RXRDY\, 
        CoreAPB3_0_APBmslave3_PSELx => 
        CoreAPB3_0_APBmslave3_PSELx, un3_wen => un3_wen, un3_oen
         => un3_oen, TX2_c => TX2_c, CoreUARTapb_1_0_TXRDY => 
        CoreUARTapb_1_0_TXRDY, CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, RX2_c => RX2_c);
    
    un1_nxtprdata_xhdl722_i : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave3_PSELx, B => 
        un1_nxtprdata_xhdl722_0, Y => un1_nxtprdata_xhdl722_i_0);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_5_1[6]\ : CFG4
      generic map(INIT => x"350F")

      port map(A => \rx_dout_reg[6]\, B => \controlReg2[6]_net_1\, 
        C => CoreAPB3_0_APBmslave0_PADDR(3), D => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \nxtprdata_xhdl7_1_5_1[6]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => controlReg2_0);
    
    \p_CtrlReg1Seq.un5_psel\ : CFG4
      generic map(INIT => x"2000")

      port map(A => un5_psel_0_0, B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave3_PSELx, D => PWM_STRETCH_0_sqmuxa_0, 
        Y => un5_psel);
    
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
    
    \controlReg1[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => controlReg1_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity pwm_gen is

    port( period_cnt      : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg : in    std_logic_vector(128 downto 1);
          prescale_cnt    : in    std_logic_vector(0 to 0);
          pwm_enable_reg  : in    std_logic_vector(4 downto 1);
          pwm_out_4_c     : out   std_logic;
          MSS_READY       : in    std_logic;
          FAB_CCC_GL0     : in    std_logic;
          pwm_out_3_c     : out   std_logic;
          pwm_out_2_c     : out   std_logic;
          pwm_out_1_c     : out   std_logic;
          N_197           : out   std_logic;
          N_204           : out   std_logic;
          N_59            : in    std_logic;
          N_114           : in    std_logic
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

    signal \pwm_out_4_c\, VCC_net_1, N_327_i_0, 
        \un1_pwm_enable_reg_i_0[0]\, GND_net_1, \pwm_out_3_c\, 
        \PWM_int_RNO[3]_net_1\, \un1_pwm_enable_reg_1_i_0[0]\, 
        \pwm_out_2_c\, N_345_i_0, \un1_pwm_enable_reg_2_i_0[0]\, 
        \pwm_out_1_c\, N_354_i_0, \un1_pwm_enable_reg_3_i_0[0]\, 
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
        un145_pwm_enable_reg, PWM_int_17_f0_27_i_a4_0, \N_197\, 
        PWM_int_37_f0_7_i_a4_23, PWM_int_37_f0_7_i_a4_22, 
        PWM_int_37_f0_7_i_a4_21, PWM_int_37_f0_7_i_a4_20, 
        PWM_int_37_f0_7_i_a4_19, PWM_int_37_f0_7_i_a4_18, 
        PWM_int_37_f0_7_i_a4_17, PWM_int_37_f0_7_i_a4_16, 
        un14_pwm_enable_reg_NE_i_i_o3_9, 
        un14_pwm_enable_reg_NE_i_i_o3_8, 
        un14_pwm_enable_reg_NE_i_i_o3_7, 
        PWM_int_7_f0_37_i_0_a3_0_23, PWM_int_7_f0_37_i_0_a3_0_22, 
        PWM_int_7_f0_37_i_0_a3_0_21, PWM_int_7_f0_37_i_0_a3_0_20, 
        PWM_int_7_f0_37_i_0_a3_0_19, PWM_int_7_f0_37_i_0_a3_0_18, 
        PWM_int_7_f0_37_i_0_a3_0_17, PWM_int_7_f0_37_i_0_a3_0_16, 
        PWM_int_17_f0_27_i_a4_23, PWM_int_17_f0_27_i_a4_22, 
        PWM_int_17_f0_27_i_a4_21, PWM_int_17_f0_27_i_a4_20, 
        PWM_int_17_f0_27_i_a4_19, PWM_int_17_f0_27_i_a4_18, 
        PWM_int_17_f0_27_i_a4_17, un88_pwm_enable_reg_3_0_23, 
        un88_pwm_enable_reg_3_0_22, un88_pwm_enable_reg_3_0_21, 
        un88_pwm_enable_reg_3_0_20, un88_pwm_enable_reg_3_0_19, 
        un88_pwm_enable_reg_3_0_18, un88_pwm_enable_reg_3_0_17, 
        un88_pwm_enable_reg_3_0_16, 
        un14_pwm_enable_reg_NE_i_i_o2_11, 
        un14_pwm_enable_reg_NE_i_i_o2_10, 
        un14_pwm_enable_reg_NE_i_i_o2_9, 
        un14_pwm_enable_reg_NE_i_i_o2_8, 
        un14_pwm_enable_reg_NE_i_i_o3_12, 
        PWM_int_17_f0_27_i_a4_24, PWM_int_37_f0_7_i_a4_29, 
        PWM_int_37_f0_7_i_a4_28, PWM_int_7_f0_37_i_0_a3_0_29, 
        PWM_int_7_f0_37_i_0_a3_0_28, PWM_int_17_f0_27_i_a4_29, 
        un88_pwm_enable_reg_3_0_29, un88_pwm_enable_reg_3_0_28, 
        \N_204\, PWM_int_37_f0_7_i_a4_30, 
        PWM_int_17_f0_27_i_a4_30, un14_pwm_enable_reg_NE, N_213, 
        N_115, N_210, N_212 : std_logic;

begin 

    pwm_out_4_c <= \pwm_out_4_c\;
    pwm_out_3_c <= \pwm_out_3_c\;
    pwm_out_2_c <= \pwm_out_2_c\;
    pwm_out_1_c <= \pwm_out_1_c\;
    N_197 <= \N_197\;
    N_204 <= \N_204\;

    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_20\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(80), B => pwm_negedge_reg(79), 
        C => pwm_negedge_reg(78), D => pwm_negedge_reg(77), Y => 
        un88_pwm_enable_reg_3_0_20);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(58), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(57), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_23\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(68), B => pwm_negedge_reg(67), 
        C => pwm_negedge_reg(66), D => pwm_negedge_reg(65), Y => 
        un88_pwm_enable_reg_3_0_23);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(94), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(93), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[14]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(26), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(25), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(6), B => period_cnt(4), C => 
        period_cnt(5), D => pwm_negedge_reg(5), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_11\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(31), B => period_cnt(30), C => 
        period_cnt(28), D => period_cnt(17), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_11);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(66), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(65), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un107_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(124), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(123), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(98), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(97), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un145_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(48), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(47), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[7]\);
    
    \PWM_int_RNO_5[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(42), B => pwm_negedge_reg(41), 
        C => pwm_negedge_reg(40), D => pwm_negedge_reg(39), Y => 
        PWM_int_17_f0_27_i_a4_18);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(24), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(23), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[11]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(50), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(49), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[8]\);
    
    \PWM_int_RNO_11[2]\ : CFG2
      generic map(INIT => x"1")

      port map(A => pwm_negedge_reg(33), B => pwm_negedge_reg(34), 
        Y => PWM_int_17_f0_27_i_a4_0);
    
    \PWM_int_RNO_0[2]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un69_pwm_enable_reg, B => pwm_enable_reg(2), 
        C => N_114, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_2_i_0[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(60), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(59), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_9\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(24), B => period_cnt(23), C => 
        period_cnt(22), D => period_cnt(20), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_9);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_28\ : 
        CFG4
      generic map(INIT => x"8000")

      port map(A => un88_pwm_enable_reg_3_0_19, B => 
        un88_pwm_enable_reg_3_0_18, C => 
        un88_pwm_enable_reg_3_0_17, D => 
        un88_pwm_enable_reg_3_0_16, Y => 
        un88_pwm_enable_reg_3_0_28);
    
    \PWM_int_RNO_10[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(117), B => 
        pwm_negedge_reg(116), C => pwm_negedge_reg(115), D => 
        pwm_negedge_reg(114), Y => PWM_int_37_f0_7_i_a4_23);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(128), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(127), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un145_pwm_enable_reg);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_21\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(76), B => pwm_negedge_reg(75), 
        C => pwm_negedge_reg(74), D => pwm_negedge_reg(73), Y => 
        un88_pwm_enable_reg_3_0_21);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(8), B => period_cnt(6), C => 
        period_cnt(7), D => pwm_negedge_reg(7), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_10[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(14), B => pwm_negedge_reg(13), 
        C => pwm_negedge_reg(12), D => pwm_negedge_reg(11), Y => 
        PWM_int_7_f0_37_i_0_a3_0_17);
    
    \PWM_int_RNO_9[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(10), B => pwm_negedge_reg(9), 
        C => pwm_negedge_reg(8), D => pwm_negedge_reg(7), Y => 
        PWM_int_7_f0_37_i_0_a3_0_18);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_19\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(84), B => pwm_negedge_reg(83), 
        C => pwm_negedge_reg(82), D => pwm_negedge_reg(81), Y => 
        un88_pwm_enable_reg_3_0_19);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(62), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(61), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_0[1]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un31_pwm_enable_reg, B => pwm_enable_reg(1), 
        C => N_114, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_3_i_0[0]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(108), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(107), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[5]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_int_RNO_3[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(50), B => pwm_negedge_reg(49), 
        C => pwm_negedge_reg(48), D => pwm_negedge_reg(47), Y => 
        PWM_int_17_f0_27_i_a4_20);
    
    \PWM_int_RNO_0[3]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un107_pwm_enable_reg, B => pwm_enable_reg(3), 
        C => N_114, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_1_i_0[0]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_8\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(21), B => period_cnt(19), C => 
        period_cnt(18), D => period_cnt(16), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_8);
    
    \PWM_int_RNO_6[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(38), B => pwm_negedge_reg(37), 
        C => pwm_negedge_reg(36), D => pwm_negedge_reg(35), Y => 
        PWM_int_17_f0_27_i_a4_17);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(92), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(91), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(114), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(113), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[8]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(54), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(53), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[10]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(76), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(75), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[5]\);
    
    \PWM_int_RNO_12[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(15), B => \pwm_out_1_c\, C
         => pwm_negedge_reg(16), Y => PWM_int_7_f0_37_i_0_a3_0_16);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(106), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(105), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(78), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(77), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(82), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(81), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[8]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(74), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(73), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[4]\);
    
    
        \PWM_output_select.3.PWM_output_generation.PWM_int_27_f0_17_i_i_o2\ : 
        CFG3
      generic map(INIT => x"CD")

      port map(A => N_59, B => un14_pwm_enable_reg_NE, C => 
        prescale_cnt(0), Y => N_115);
    
    \PWM_int_RNO_4[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(109), B => 
        pwm_negedge_reg(108), C => pwm_negedge_reg(107), D => 
        pwm_negedge_reg(106), Y => PWM_int_37_f0_7_i_a4_19);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(22), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(21), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[10]\);
    
    \PWM_int_RNO_7[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(24), B => pwm_negedge_reg(23), 
        C => pwm_negedge_reg(2), D => pwm_negedge_reg(1), Y => 
        PWM_int_7_f0_37_i_0_a3_0_20);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(102), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(101), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(36), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(35), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un14_pwm_enable_reg_NE_i_i_o3_12, B => 
        \N_204\, C => un14_pwm_enable_reg_NE_i_i_o3_8, D => 
        un14_pwm_enable_reg_NE_i_i_o3_7, Y => 
        un14_pwm_enable_reg_NE);
    
    \PWM_int_RNO_6[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(26), B => pwm_negedge_reg(25), 
        C => PWM_int_7_f0_37_i_0_a3_0_23, D => 
        PWM_int_7_f0_37_i_0_a3_0_16, Y => 
        PWM_int_7_f0_37_i_0_a3_0_28);
    
    \PWM_int_RNO[4]\ : CFG4
      generic map(INIT => x"040C")

      port map(A => PWM_int_37_f0_7_i_a4_29, B => 
        pwm_enable_reg(4), C => un14_pwm_enable_reg_NE, D => 
        PWM_int_37_f0_7_i_a4_30, Y => N_327_i_0);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_29\ : 
        CFG4
      generic map(INIT => x"8000")

      port map(A => un88_pwm_enable_reg_3_0_23, B => 
        un88_pwm_enable_reg_3_0_22, C => 
        un88_pwm_enable_reg_3_0_21, D => 
        un88_pwm_enable_reg_3_0_20, Y => 
        un88_pwm_enable_reg_3_0_29);
    
    \PWM_int[4]\ : SLE
      port map(D => N_327_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_4_c\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(90), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(89), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(64), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(63), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un69_pwm_enable_reg);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(14), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(13), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(116), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(115), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[9]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(84), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(83), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[9]\);
    
    \PWM_int_RNO_9[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(127), B => 
        pwm_negedge_reg(126), C => pwm_negedge_reg(113), D => 
        pwm_negedge_reg(112), Y => PWM_int_37_f0_7_i_a4_22);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(12), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(11), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(2), B => period_cnt(0), C => 
        period_cnt(1), D => pwm_negedge_reg(1), FCI => VCC_net_1, 
        S => OPEN, Y => OPEN, FCO => 
        \un31_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_7\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(9), B => period_cnt(2), C => 
        period_cnt(7), D => period_cnt(0), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_7);
    
    \PWM_int_RNO_7[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(54), B => pwm_negedge_reg(53), 
        C => pwm_negedge_reg(52), D => pwm_negedge_reg(51), Y => 
        PWM_int_17_f0_27_i_a4_21);
    
    \PWM_int[1]\ : SLE
      port map(D => N_354_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_3_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_1_c\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(118), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(117), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[10]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(56), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(55), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[11]\);
    
    \PWM_int_RNO_6[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(103), B => 
        pwm_negedge_reg(102), C => pwm_negedge_reg(99), D => 
        pwm_negedge_reg(98), Y => PWM_int_37_f0_7_i_a4_17);
    
    \PWM_int_RNO[1]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un14_pwm_enable_reg_NE, B => N_212, C => 
        pwm_enable_reg(1), D => N_213, Y => N_354_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PWM_int_RNO_3[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(121), B => 
        pwm_negedge_reg(120), C => pwm_negedge_reg(105), D => 
        pwm_negedge_reg(104), Y => PWM_int_37_f0_7_i_a4_20);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_12\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => \N_197\, B => un14_pwm_enable_reg_NE_i_i_o3_9, 
        C => period_cnt(6), D => period_cnt(5), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_12);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(110), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(109), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_8[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(64), B => pwm_negedge_reg(63), 
        C => \pwm_out_2_c\, D => PWM_int_17_f0_27_i_a4_0, Y => 
        PWM_int_17_f0_27_i_a4_24);
    
    \PWM_int[2]\ : SLE
      port map(D => N_345_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_2_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_2_c\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(112), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(111), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[7]\);
    
    \PWM_int_RNO_3[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(28), B => pwm_negedge_reg(27), 
        C => pwm_negedge_reg(18), D => pwm_negedge_reg(17), Y => 
        PWM_int_7_f0_37_i_0_a3_0_22);
    
    \PWM_int_RNO_11[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(32), B => pwm_negedge_reg(31), 
        C => pwm_negedge_reg(30), D => pwm_negedge_reg(29), Y => 
        PWM_int_7_f0_37_i_0_a3_0_23);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(46), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(45), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[6]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(16), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(15), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[7]\);
    
    \PWM_int_RNO_11[4]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(97), B => \pwm_out_4_c\, C
         => pwm_negedge_reg(128), Y => PWM_int_37_f0_7_i_a4_16);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(100), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(99), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_16\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(96), B => pwm_negedge_reg(95), 
        C => pwm_negedge_reg(94), D => pwm_negedge_reg(93), Y => 
        un88_pwm_enable_reg_3_0_16);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(68), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(67), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[1]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(20), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(19), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[9]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(28), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(27), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[13]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(70), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(69), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_9\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(12), B => period_cnt(11), C => 
        period_cnt(10), D => period_cnt(8), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_9);
    
    \PWM_int_RNO[2]\ : CFG4
      generic map(INIT => x"040C")

      port map(A => PWM_int_17_f0_27_i_a4_29, B => 
        pwm_enable_reg(2), C => un14_pwm_enable_reg_NE, D => 
        PWM_int_17_f0_27_i_a4_30, Y => N_345_i_0);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(72), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(71), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_8[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(6), B => pwm_negedge_reg(5), 
        C => pwm_negedge_reg(4), D => pwm_negedge_reg(3), Y => 
        PWM_int_7_f0_37_i_0_a3_0_19);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(122), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(121), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[12]\);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_21\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(80), B => period_cnt(14), C
         => period_cnt(15), D => pwm_negedge_reg(79), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[6]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[7]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(4), B => period_cnt(2), C => 
        period_cnt(3), D => pwm_negedge_reg(3), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[1]\);
    
    \PWM_int_RNO_1[3]\ : CFG4
      generic map(INIT => x"040C")

      port map(A => un88_pwm_enable_reg_3_0_29, B => 
        pwm_enable_reg(3), C => N_115, D => 
        un88_pwm_enable_reg_3_0_28, Y => N_210);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_10\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(29), B => period_cnt(27), C => 
        period_cnt(26), D => period_cnt(25), Y => 
        un14_pwm_enable_reg_NE_i_i_o2_10);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(32), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(31), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un31_pwm_enable_reg);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(120), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(119), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[11]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(38), B => period_cnt(4), C
         => period_cnt(5), D => pwm_negedge_reg(37), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[2]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(104), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(103), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[3]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(40), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(39), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_1[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_37_f0_7_i_a4_20, B => 
        PWM_int_37_f0_7_i_a4_19, C => PWM_int_37_f0_7_i_a4_18, D
         => PWM_int_37_f0_7_i_a4_17, Y => PWM_int_37_f0_7_i_a4_29);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_22\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(72), B => pwm_negedge_reg(71), 
        C => pwm_negedge_reg(70), D => pwm_negedge_reg(69), Y => 
        un88_pwm_enable_reg_3_0_22);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(86), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(85), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[10]\);
    
    \PWM_int_RNO_0[4]\ : CFG4
      generic map(INIT => x"3B3F")

      port map(A => un145_pwm_enable_reg, B => pwm_enable_reg(4), 
        C => N_114, D => un14_pwm_enable_reg_NE, Y => 
        \un1_pwm_enable_reg_i_0[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(52), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(51), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[9]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un14_pwm_enable_reg_NE_i_i_o2_11, B => 
        un14_pwm_enable_reg_NE_i_i_o2_10, C => 
        un14_pwm_enable_reg_NE_i_i_o2_8, D => 
        un14_pwm_enable_reg_NE_i_i_o2_9, Y => \N_204\);
    
    \PWM_int_RNO_4[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(46), B => pwm_negedge_reg(45), 
        C => pwm_negedge_reg(44), D => pwm_negedge_reg(43), Y => 
        PWM_int_17_f0_27_i_a4_19);
    
    \PWM_int_RNO_1[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_115, B => \pwm_out_1_c\, Y => N_212);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(10), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(9), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_4[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(22), B => pwm_negedge_reg(21), 
        C => pwm_negedge_reg(20), D => pwm_negedge_reg(19), Y => 
        PWM_int_7_f0_37_i_0_a3_0_21);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_45\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(88), B => period_cnt(22), C
         => period_cnt(23), D => pwm_negedge_reg(87), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[10]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[11]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_1\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(34), B => period_cnt(0), C
         => period_cnt(1), D => pwm_negedge_reg(33), FCI => 
        VCC_net_1, S => OPEN, Y => OPEN, FCO => 
        \un69_pwm_enable_reg_0_data_tmp[0]\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(30), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(29), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un31_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_2[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_a4_21, B => 
        PWM_int_17_f0_27_i_a4_24, C => PWM_int_17_f0_27_i_a4_23, 
        D => PWM_int_17_f0_27_i_a4_22, Y => 
        PWM_int_17_f0_27_i_a4_30);
    
    \PWM_int_RNO_10[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(58), B => pwm_negedge_reg(57), 
        C => pwm_negedge_reg(56), D => pwm_negedge_reg(55), Y => 
        PWM_int_17_f0_27_i_a4_22);
    
    \PWM_int_RNO_2[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => PWM_int_37_f0_7_i_a4_21, B => 
        PWM_int_37_f0_7_i_a4_28, C => PWM_int_37_f0_7_i_a4_22, Y
         => PWM_int_37_f0_7_i_a4_30);
    
    \PWM_int_RNO[3]\ : CFG4
      generic map(INIT => x"F0F4")

      port map(A => \pwm_out_3_c\, B => pwm_enable_reg(3), C => 
        N_210, D => un14_pwm_enable_reg_NE, Y => 
        \PWM_int_RNO[3]_net_1\);
    
    \PWM_int_RNO_8[4]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(119), B => 
        pwm_negedge_reg(118), C => PWM_int_37_f0_7_i_a4_23, D => 
        PWM_int_37_f0_7_i_a4_16, Y => PWM_int_37_f0_7_i_a4_28);
    
    \PWM_int_RNO_2[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a3_0_22, B => 
        PWM_int_7_f0_37_i_0_a3_0_21, C => 
        PWM_int_7_f0_37_i_0_a3_0_29, D => 
        PWM_int_7_f0_37_i_0_a3_0_28, Y => N_213);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(44), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(43), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[5]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(126), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(125), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_7[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(125), B => 
        pwm_negedge_reg(124), C => pwm_negedge_reg(123), D => 
        pwm_negedge_reg(122), Y => PWM_int_37_f0_7_i_a4_21);
    
    \PWM_int_RNO_1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_a4_20, B => 
        PWM_int_17_f0_27_i_a4_19, C => PWM_int_17_f0_27_i_a4_18, 
        D => PWM_int_17_f0_27_i_a4_17, Y => 
        PWM_int_17_f0_27_i_a4_29);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(42), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(41), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_9[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(62), B => pwm_negedge_reg(61), 
        C => pwm_negedge_reg(60), D => pwm_negedge_reg(59), Y => 
        PWM_int_17_f0_27_i_a4_23);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_17\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(92), B => pwm_negedge_reg(91), 
        C => pwm_negedge_reg(90), D => pwm_negedge_reg(89), Y => 
        un88_pwm_enable_reg_3_0_17);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(96), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(95), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un107_pwm_enable_reg);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o3_8\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(15), B => period_cnt(14), C => 
        period_cnt(13), D => period_cnt(1), Y => 
        un14_pwm_enable_reg_NE_i_i_o3_8);
    
    \PWM_int_RNO_5[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a3_0_20, B => 
        PWM_int_7_f0_37_i_0_a3_0_19, C => 
        PWM_int_7_f0_37_i_0_a3_0_18, D => 
        PWM_int_7_f0_37_i_0_a3_0_17, Y => 
        PWM_int_7_f0_37_i_0_a3_0_29);
    
    
        \PWM_output_select.3.PWM_output_generation.un88_pwm_enable_reg_3_0_18\ : 
        CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(88), B => pwm_negedge_reg(87), 
        C => pwm_negedge_reg(86), D => pwm_negedge_reg(85), Y => 
        un88_pwm_enable_reg_3_0_18);
    
    
        \PWM_output_select.1.PWM_output_generation.un14_pwm_enable_reg_NE_i_i_o2_5\ : 
        CFG2
      generic map(INIT => x"E")

      port map(A => period_cnt(3), B => period_cnt(4), Y => 
        \N_197\);
    
    \PWM_int[3]\ : SLE
      port map(D => \PWM_int_RNO[3]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_pwm_enable_reg_1_i_0[0]\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \pwm_out_3_c\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(18), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(17), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[8]\);
    
    \PWM_int_RNO_5[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(111), B => 
        pwm_negedge_reg(110), C => pwm_negedge_reg(101), D => 
        pwm_negedge_reg(100), Y => PWM_int_37_f0_7_i_a4_18);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity reg_if is

    port( CoreAPB3_0_APBmslave0_PWDATA   : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg                : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                 : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave2_PRDATA_1 : out   std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_1            : out   std_logic_vector(0 to 0);
          PRDATA_regif_1_iv_xx           : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR    : in    std_logic_vector(7 downto 2);
          PWM_STRETCH                    : in    std_logic_vector(3 downto 0);
          pwm_enable_reg_m_2             : out   std_logic;
          PRDATA_regif_1_0_iv_yy_1       : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_4 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0 : out   std_logic;
          MSS_READY                      : in    std_logic;
          FAB_CCC_GL0                    : in    std_logic;
          PRDATA_generated_sn_m5_0       : out   std_logic;
          N_26_0                         : out   std_logic;
          prdata_typ21                   : out   std_logic;
          N_339                          : out   std_logic;
          N_322                          : out   std_logic;
          N_323                          : out   std_logic;
          N_324                          : out   std_logic;
          N_325                          : out   std_logic;
          N_326                          : out   std_logic;
          N_327                          : out   std_logic;
          N_329                          : out   std_logic;
          N_330                          : out   std_logic;
          N_331                          : out   std_logic;
          N_332                          : out   std_logic;
          N_333                          : out   std_logic;
          N_334                          : out   std_logic;
          N_335                          : out   std_logic;
          N_336                          : out   std_logic;
          N_340                          : out   std_logic;
          N_341                          : out   std_logic;
          N_342                          : out   std_logic;
          N_343                          : out   std_logic;
          N_344                          : out   std_logic;
          N_345                          : out   std_logic;
          N_338                          : out   std_logic;
          N_328                          : out   std_logic;
          PWM_STRETCH_0_sqmuxa_3         : in    std_logic;
          N_10_0                         : in    std_logic;
          un13_psel_0_0                  : in    std_logic;
          N_240                          : out   std_logic;
          PWM_STRETCH_0_sqmuxa_0         : in    std_logic;
          CoreAPB3_0_APBmslave2_PSELx    : in    std_logic;
          PRDATA_generated_sn_N_7_mux    : out   std_logic;
          N_337                          : out   std_logic;
          N_23_0                         : out   std_logic;
          N_316                          : out   std_logic
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

    signal \pwm_negedge_reg[97]\, VCC_net_1, 
        psh_negedge_reg_1_sqmuxa, GND_net_1, 
        \pwm_negedge_reg[98]\, \pwm_negedge_reg[99]\, 
        \pwm_negedge_reg[100]\, \pwm_negedge_reg[101]\, 
        \pwm_negedge_reg[102]\, \pwm_negedge_reg[103]\, 
        \pwm_negedge_reg[104]\, \pwm_negedge_reg[105]\, 
        \pwm_negedge_reg[106]\, \pwm_negedge_reg[107]\, 
        \pwm_negedge_reg[108]\, \pwm_negedge_reg[109]\, 
        \pwm_negedge_reg[110]\, \pwm_negedge_reg[111]\, 
        \pwm_negedge_reg[112]\, \pwm_negedge_reg[113]\, 
        \pwm_negedge_reg[114]\, \pwm_negedge_reg[115]\, 
        \pwm_negedge_reg[116]\, \pwm_negedge_reg[117]\, 
        \pwm_negedge_reg[118]\, \pwm_negedge_reg[119]\, 
        \pwm_negedge_reg[120]\, \pwm_negedge_reg[121]\, 
        \pwm_negedge_reg[122]\, \pwm_negedge_reg[123]\, 
        \pwm_negedge_reg[124]\, \pwm_negedge_reg[125]\, 
        \pwm_negedge_reg[126]\, \pwm_negedge_reg[127]\, 
        \pwm_negedge_reg[128]\, \pwm_negedge_reg[65]\, 
        psh_negedge_reg_1_sqmuxa_1, \pwm_negedge_reg[66]\, 
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
        \pwm_negedge_reg[33]\, psh_negedge_reg_1_sqmuxa_2, 
        \pwm_negedge_reg[34]\, \pwm_negedge_reg[35]\, 
        \pwm_negedge_reg[36]\, \pwm_negedge_reg[37]\, 
        \pwm_negedge_reg[38]\, \pwm_negedge_reg[39]\, 
        \pwm_negedge_reg[40]\, \pwm_negedge_reg[41]\, 
        \pwm_negedge_reg[42]\, \pwm_negedge_reg[43]\, 
        \pwm_negedge_reg[44]\, \pwm_negedge_reg[45]\, 
        \pwm_negedge_reg[46]\, \pwm_negedge_reg[47]\, 
        \pwm_negedge_reg[48]\, \pwm_negedge_reg[49]\, 
        \pwm_negedge_reg[50]\, \pwm_negedge_reg[51]\, 
        \pwm_negedge_reg[52]\, \pwm_negedge_reg[53]\, 
        \pwm_negedge_reg[54]\, \pwm_negedge_reg[55]\, 
        \pwm_negedge_reg[56]\, \pwm_negedge_reg[57]\, 
        \pwm_negedge_reg[58]\, \pwm_negedge_reg[59]\, 
        \pwm_negedge_reg[60]\, \pwm_negedge_reg[61]\, 
        \pwm_negedge_reg[62]\, \pwm_negedge_reg[63]\, 
        \pwm_negedge_reg[64]\, \pwm_negedge_reg[1]\, 
        psh_negedge_reg_1_sqmuxa_3, \pwm_negedge_reg[2]\, 
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
        \sync_update\, sync_update_0_sqmuxa, \pwm_enable_reg[1]\, 
        \psh_enable_reg1_1_sqmuxa\, \pwm_enable_reg[2]\, 
        \pwm_enable_reg[3]\, \pwm_enable_reg[4]\, 
        PRDATA_generated_sn_m5_0_net_1, \N_26_0\, N_319, 
        \prdata_typ21\, N_320, \PRDATA_generated_3_am[4]_net_1\, 
        \PRDATA_generated_3_bm[4]_net_1\, N_64, N_246, N_73, 
        N_280, \PRDATA_regif_1_iv_1[0]_net_1\, 
        \PRDATA_generated_3_bm[7]_net_1\, 
        \PRDATA_generated_3_am[7]_net_1\, N_321, 
        \PRDATA_generated_3_bm[25]_net_1\, 
        \PRDATA_generated_3_am[25]_net_1\, 
        \PRDATA_generated_3_bm[3]_net_1\, 
        \PRDATA_generated_3_am[3]_net_1\, N_317, 
        \PRDATA_generated_3_bm[5]_net_1\, 
        \PRDATA_generated_3_am[5]_net_1\, 
        \PRDATA_generated_3_bm[6]_net_1\, 
        \PRDATA_generated_3_am[6]_net_1\, 
        \PRDATA_generated_3_bm[8]_net_1\, 
        \PRDATA_generated_3_am[8]_net_1\, 
        \PRDATA_generated_3_bm[9]_net_1\, 
        \PRDATA_generated_3_am[9]_net_1\, 
        \PRDATA_generated_3_bm[10]_net_1\, 
        \PRDATA_generated_3_am[10]_net_1\, 
        \PRDATA_generated_3_bm[11]_net_1\, 
        \PRDATA_generated_3_am[11]_net_1\, 
        \PRDATA_generated_3_bm[12]_net_1\, 
        \PRDATA_generated_3_am[12]_net_1\, 
        \PRDATA_generated_3_bm[13]_net_1\, 
        \PRDATA_generated_3_am[13]_net_1\, 
        \PRDATA_generated_3_bm[15]_net_1\, 
        \PRDATA_generated_3_am[15]_net_1\, 
        \PRDATA_generated_3_bm[16]_net_1\, 
        \PRDATA_generated_3_am[16]_net_1\, 
        \PRDATA_generated_3_bm[17]_net_1\, 
        \PRDATA_generated_3_am[17]_net_1\, 
        \PRDATA_generated_3_bm[18]_net_1\, 
        \PRDATA_generated_3_am[18]_net_1\, 
        \PRDATA_generated_3_bm[19]_net_1\, 
        \PRDATA_generated_3_am[19]_net_1\, 
        \PRDATA_generated_3_bm[20]_net_1\, 
        \PRDATA_generated_3_am[20]_net_1\, 
        \PRDATA_generated_3_bm[21]_net_1\, 
        \PRDATA_generated_3_am[21]_net_1\, 
        \PRDATA_generated_3_bm[22]_net_1\, 
        \PRDATA_generated_3_am[22]_net_1\, 
        \PRDATA_generated_3_bm[26]_net_1\, 
        \PRDATA_generated_3_am[26]_net_1\, 
        \PRDATA_generated_3_bm[27]_net_1\, 
        \PRDATA_generated_3_am[27]_net_1\, 
        \PRDATA_generated_3_bm[28]_net_1\, 
        \PRDATA_generated_3_am[28]_net_1\, 
        \PRDATA_generated_3_bm[29]_net_1\, 
        \PRDATA_generated_3_am[29]_net_1\, 
        \PRDATA_generated_3_bm[30]_net_1\, 
        \PRDATA_generated_3_am[30]_net_1\, 
        \PRDATA_generated_3_bm[31]_net_1\, 
        \PRDATA_generated_3_am[31]_net_1\, 
        \PRDATA_generated_3_bm[24]_net_1\, 
        \PRDATA_generated_3_am[24]_net_1\, 
        \PRDATA_generated_3_bm[14]_net_1\, 
        \PRDATA_generated_3_am[14]_net_1\, \m17_0\, N_75, N_63, 
        prdata_typ21_0, un11_psel_0_0, prdata_typ20_0, N_64_mux, 
        un59_psel_4, prdata_generated48, un59_psel, un97_psel, 
        N_21_0, N_243, \pwm_enable_reg_m[2]\, sync_update_m, 
        \pwm_enable_reg_m[1]\, \pwm_enable_reg_m_2\, N_303, N_281, 
        N_269, N_247, N_248, N_282, \PRDATA_generated_sn_N_7_mux\, 
        \PRDATA_regif_1_0_iv_yy[1]_net_1\, 
        \PRDATA_regif_1_0_iv_0[3]_net_1\, N_315 : std_logic;

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
    PRDATA_regif_1_iv_1(0) <= \PRDATA_regif_1_iv_1[0]_net_1\;
    pwm_enable_reg_m_2 <= \pwm_enable_reg_m_2\;
    PRDATA_generated_sn_m5_0 <= PRDATA_generated_sn_m5_0_net_1;
    N_26_0 <= \N_26_0\;
    prdata_typ21 <= \prdata_typ21\;
    PRDATA_generated_sn_N_7_mux <= \PRDATA_generated_sn_N_7_mux\;

    \psh_negedge_reg[110]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[110]\);
    
    m15_e : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_64);
    
    \PRDATA_generated_2[23]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[88]\, B => un97_psel, C => 
        \pwm_negedge_reg[120]\, Y => N_303);
    
    \psh_negedge_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[4]\);
    
    \PRDATA_generated_3_am[14]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \pwm_negedge_reg[111]\, B => 
        \pwm_negedge_reg[79]\, C => N_64_mux, Y => 
        \PRDATA_generated_3_am[14]_net_1\);
    
    \psh_negedge_reg[99]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[99]\);
    
    \PRDATA_generated_3_am[24]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \pwm_negedge_reg[121]\, B => 
        \pwm_negedge_reg[89]\, C => N_64_mux, Y => 
        \PRDATA_generated_3_am[24]_net_1\);
    
    \psh_negedge_reg[124]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[124]\);
    
    \PRDATA_generated_3_bm[8]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[73]\, B => un97_psel, C => 
        \pwm_negedge_reg[105]\, Y => 
        \PRDATA_generated_3_bm[8]_net_1\);
    
    \psh_negedge_reg[126]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[126]\);
    
    \psh_negedge_reg[95]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[95]\);
    
    \PRDATA_generated_3_ns[12]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[12]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[12]_net_1\, Y => 
        N_326);
    
    \psh_negedge_reg[123]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[123]\);
    
    \psh_negedge_reg[79]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[79]\);
    
    \psh_negedge_reg[66]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[66]\);
    
    \PRDATA_generated_3_bm_RNI1GSR1[4]\ : CFG4
      generic map(INIT => x"C0CA")

      port map(A => \PRDATA_generated_3_am[4]_net_1\, B => 
        \PRDATA_generated_3_bm[4]_net_1\, C => \N_26_0\, D => 
        PRDATA_generated_sn_m5_0_net_1, Y => 
        CoreAPB3_0_APBmslave2_PRDATA_1(4));
    
    \PRDATA_regif_1_0_iv[6]\ : CFG4
      generic map(INIT => x"FFD0")

      port map(A => PRDATA_generated_sn_m5_0_net_1, B => \N_26_0\, 
        C => N_320, D => \prdata_typ21\, Y => 
        CoreAPB3_0_APBmslave2_PRDATA_5);
    
    \psh_negedge_reg[39]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[39]\);
    
    \psh_negedge_reg[82]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[82]\);
    
    \psh_negedge_reg[80]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[80]\);
    
    \psh_negedge_reg[48]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[48]\);
    
    \psh_negedge_reg[8]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[8]\);
    
    \psh_negedge_reg[29]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[29]\);
    
    \PRDATA_generated_0[3]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(3), C => PWM_STRETCH_0_sqmuxa_3, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_243);
    
    \psh_negedge_reg[111]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[111]\);
    
    \psh_negedge_reg[75]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[75]\);
    
    \psh_negedge_reg[61]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[61]\);
    
    \psh_negedge_reg[35]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[35]\);
    
    \PRDATA_regif_1_iv_1_RNO_0[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_75, B => un11_psel_0_0, C => 
        \pwm_enable_reg[1]\, Y => \pwm_enable_reg_m[1]\);
    
    \psh_negedge_reg[19]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[19]\);
    
    \PRDATA_regif_1_0_iv_0[3]\ : CFG4
      generic map(INIT => x"AA80")

      port map(A => N_75, B => un11_psel_0_0, C => 
        \pwm_enable_reg[4]\, D => prdata_typ21_0, Y => 
        \PRDATA_regif_1_0_iv_0[3]_net_1\);
    
    \psh_enable_reg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[4]\);
    
    \psh_negedge_reg[25]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[25]\);
    
    \psh_negedge_reg[120]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[120]\);
    
    \PRDATA_generated_3_ns[3]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[3]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[3]_net_1\, Y => 
        N_317);
    
    \psh_negedge_reg[15]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[15]\);
    
    \PRDATA_generated_3_ns[6]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[6]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[6]_net_1\, Y => 
        N_320);
    
    \psh_negedge_reg[119]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[119]\);
    
    \PRDATA_generated_1[0]\ : CFG4
      generic map(INIT => x"F780")

      port map(A => N_75, B => un59_psel_4, C => 
        \pwm_negedge_reg[33]\, D => \pwm_negedge_reg[1]\, Y => 
        N_246);
    
    m2 : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(7), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => N_63, D => 
        un13_psel_0_0, Y => un59_psel);
    
    \PRDATA_generated_3_am[9]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[10]\, B => un59_psel, C => 
        \pwm_negedge_reg[42]\, Y => 
        \PRDATA_generated_3_am[9]_net_1\);
    
    PRDATA_generated_sn_m5 : CFG2
      generic map(INIT => x"2")

      port map(A => PRDATA_generated_sn_m5_0_net_1, B => \N_26_0\, 
        Y => \PRDATA_generated_sn_N_7_mux\);
    
    \G1.2.un59_psel_4\ : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => un59_psel_4);
    
    m6 : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(7), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => N_64, D => 
        un13_psel_0_0, Y => un97_psel);
    
    \G60b.prdata_typ21\ : CFG4
      generic map(INIT => x"1000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => N_10_0, D => N_75, Y
         => \prdata_typ21\);
    
    \psh_negedge_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[3]\);
    
    \PRDATA_generated_1[23]\ : CFG4
      generic map(INIT => x"F780")

      port map(A => N_75, B => un59_psel_4, C => 
        \pwm_negedge_reg[56]\, D => \pwm_negedge_reg[24]\, Y => 
        N_269);
    
    m13_e : CFG4
      generic map(INIT => x"0010")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => N_73);
    
    \PRDATA_generated_2[2]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[67]\, B => un97_psel, C => 
        \pwm_negedge_reg[99]\, Y => N_282);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA_generated_3_ns[29]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[29]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[29]_net_1\, Y => 
        N_343);
    
    \PRDATA_generated_3[23]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \N_26_0\, B => N_303, C => N_269, Y => N_337);
    
    \PRDATA_generated_3_ns[20]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[20]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[20]_net_1\, Y => 
        N_334);
    
    \PRDATA_generated_3_am[18]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[19]\, B => un59_psel, C => 
        \pwm_negedge_reg[51]\, Y => 
        \PRDATA_generated_3_am[18]_net_1\);
    
    \psh_negedge_reg[96]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[96]\);
    
    \psh_negedge_reg[121]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[121]\);
    
    \PRDATA_generated_3_am[28]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[29]\, B => un59_psel, C => 
        \pwm_negedge_reg[61]\, Y => 
        \PRDATA_generated_3_am[28]_net_1\);
    
    \psh_negedge_reg[108]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[108]\);
    
    \psh_negedge_reg[52]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[52]\);
    
    \psh_negedge_reg[50]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[50]\);
    
    \PRDATA_generated_3_ns[26]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[26]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[26]_net_1\, Y => 
        N_340);
    
    \PRDATA_generated_3_ns[17]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[17]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[17]_net_1\, Y => 
        N_331);
    
    m58 : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_STRETCH_0_sqmuxa_0, B => N_75, C => 
        N_64_mux, D => CoreAPB3_0_APBmslave2_PSELx, Y => 
        psh_negedge_reg_1_sqmuxa_1);
    
    \PRDATA_generated_3[1]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \N_26_0\, B => N_281, C => N_247, Y => N_315);
    
    \PRDATA_generated_3_bm[3]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[68]\, B => un97_psel, C => 
        \pwm_negedge_reg[100]\, Y => 
        \PRDATA_generated_3_bm[3]_net_1\);
    
    \psh_negedge_reg[63]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[63]\);
    
    m1 : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => N_75);
    
    \PRDATA_regif_1_iv_1_RNO[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \sync_update\, B => N_64, C => \m17_0\, D => 
        N_10_0, Y => sync_update_m);
    
    \psh_negedge_reg[91]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[91]\);
    
    \psh_negedge_reg[89]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[89]\);
    
    \PRDATA_generated_3_bm[7]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[72]\, B => un97_psel, C => 
        \pwm_negedge_reg[104]\, Y => 
        \PRDATA_generated_3_bm[7]_net_1\);
    
    \PRDATA_regif_1_0_iv_yy[2]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => PWM_STRETCH(2), B => \pwm_enable_reg_m_2\, C
         => prdata_generated48, Y => PRDATA_regif_1_0_iv_yy_1);
    
    \PRDATA_generated_3_am[5]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[6]\, B => un59_psel, C => 
        \pwm_negedge_reg[38]\, Y => 
        \PRDATA_generated_3_am[5]_net_1\);
    
    \PRDATA_generated_3_ns[21]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[21]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[21]_net_1\, Y => 
        N_335);
    
    \PRDATA_generated_3_ns[30]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[30]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[30]_net_1\, Y => 
        N_344);
    
    \psh_negedge_reg[76]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[76]\);
    
    \psh_negedge_reg[85]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[85]\);
    
    \psh_negedge_reg[36]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[36]\);
    
    \PRDATA_generated_3_ns[15]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[15]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[15]_net_1\, Y => 
        N_329);
    
    \PRDATA_generated_3_am[6]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[7]\, B => un59_psel, C => 
        \pwm_negedge_reg[39]\, Y => 
        \PRDATA_generated_3_am[6]_net_1\);
    
    \psh_negedge_reg[67]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[67]\);
    
    \psh_negedge_reg[26]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[26]\);
    
    \PRDATA_generated_sn_m5_0\ : CFG4
      generic map(INIT => x"3F7F")

      port map(A => un13_psel_0_0, B => N_63, C => N_75, D => 
        N_10_0, Y => PRDATA_generated_sn_m5_0_net_1);
    
    \psh_negedge_reg[71]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[71]\);
    
    \PRDATA_generated_3_ns[28]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[28]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[28]_net_1\, Y => 
        N_342);
    
    \psh_negedge_reg[31]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[31]\);
    
    \psh_negedge_reg[105]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[105]\);
    
    \psh_negedge_reg[16]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[16]\);
    
    \PRDATA_generated_3_ns[13]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[13]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[13]_net_1\, Y => 
        N_327);
    
    \PRDATA_generated_3_ns[31]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[31]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[31]_net_1\, Y => 
        N_345);
    
    \PRDATA_generated_3_bm[16]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[81]\, B => un97_psel, C => 
        \pwm_negedge_reg[113]\, Y => 
        \PRDATA_generated_3_bm[16]_net_1\);
    
    \psh_negedge_reg[21]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[21]\);
    
    \PRDATA_generated_3_bm[26]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[91]\, B => un97_psel, C => 
        \pwm_negedge_reg[123]\, Y => 
        \PRDATA_generated_3_bm[26]_net_1\);
    
    \psh_negedge_reg[64]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[64]\);
    
    \PRDATA_generated_1[2]\ : CFG4
      generic map(INIT => x"F780")

      port map(A => N_75, B => un59_psel_4, C => 
        \pwm_negedge_reg[35]\, D => \pwm_negedge_reg[3]\, Y => 
        N_248);
    
    \psh_negedge_reg[112]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(15), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[112]\);
    
    \psh_negedge_reg[107]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[107]\);
    
    \psh_negedge_reg[42]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[42]\);
    
    \psh_negedge_reg[40]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[40]\);
    
    \psh_negedge_reg[11]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[11]\);
    
    \PRDATA_regif_1_iv_xx[0]\ : CFG4
      generic map(INIT => x"FFB8")

      port map(A => N_246, B => N_73, C => N_280, D => 
        \PRDATA_regif_1_iv_1[0]_net_1\, Y => 
        PRDATA_regif_1_iv_xx(0));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \psh_negedge_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[2]\);
    
    m22 : CFG4
      generic map(INIT => x"084C")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => N_64_mux, D => 
        N_21_0, Y => N_23_0);
    
    m15 : CFG4
      generic map(INIT => x"0008")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_64_mux);
    
    \PRDATA_generated_3_bm[15]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[80]\, B => un97_psel, C => 
        \pwm_negedge_reg[112]\, Y => 
        \PRDATA_generated_3_bm[15]_net_1\);
    
    \psh_negedge_reg[93]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[93]\);
    
    \psh_negedge_reg[59]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[59]\);
    
    \PRDATA_generated_3_bm[25]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[90]\, B => un97_psel, C => 
        \pwm_negedge_reg[122]\, Y => 
        \PRDATA_generated_3_bm[25]_net_1\);
    
    \PRDATA_generated_3_am[4]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[5]\, B => un59_psel, C => 
        \pwm_negedge_reg[37]\, Y => 
        \PRDATA_generated_3_am[4]_net_1\);
    
    \psh_negedge_reg[104]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[104]\);
    
    \PRDATA_generated_3_ns[9]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[9]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[9]_net_1\, Y => 
        N_323);
    
    \psh_enable_reg1_RNI50TL[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_75, B => un11_psel_0_0, C => 
        \pwm_enable_reg[3]\, Y => \pwm_enable_reg_m_2\);
    
    \psh_negedge_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[5]\);
    
    \psh_negedge_reg[106]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[106]\);
    
    \PRDATA_generated_3_am[13]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[14]\, B => un59_psel, C => 
        \pwm_negedge_reg[46]\, Y => 
        \PRDATA_generated_3_am[13]_net_1\);
    
    \psh_negedge_reg[68]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[68]\);
    
    \psh_negedge_reg[55]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[55]\);
    
    \psh_negedge_reg[103]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[103]\);
    
    \psh_negedge_reg[97]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[97]\);
    
    \PRDATA_regif_1_0_iv[5]\ : CFG4
      generic map(INIT => x"FFD0")

      port map(A => PRDATA_generated_sn_m5_0_net_1, B => \N_26_0\, 
        C => N_319, D => \prdata_typ21\, Y => 
        CoreAPB3_0_APBmslave2_PRDATA_4);
    
    sync_update : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => sync_update_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \sync_update\);
    
    \psh_negedge_reg[73]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[73]\);
    
    \psh_negedge_reg[86]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[86]\);
    
    \psh_negedge_reg[33]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[33]\);
    
    \psh_negedge_reg[122]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[122]\);
    
    \psh_negedge_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[7]\);
    
    \psh_negedge_reg[23]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[23]\);
    
    \psh_negedge_reg[94]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[94]\);
    
    \PRDATA_generated_3_ns[8]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[8]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[8]_net_1\, Y => 
        N_322);
    
    \PRDATA_generated_3_am[12]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[13]\, B => un59_psel, C => 
        \pwm_negedge_reg[45]\, Y => 
        \PRDATA_generated_3_am[12]_net_1\);
    
    \PRDATA_generated_3_am[22]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[23]\, B => un59_psel, C => 
        \pwm_negedge_reg[55]\, Y => 
        \PRDATA_generated_3_am[22]_net_1\);
    
    \psh_negedge_reg[81]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[81]\);
    
    psh_enable_reg1_1_sqmuxa : CFG4
      generic map(INIT => x"8000")

      port map(A => un11_psel_0_0, B => 
        CoreAPB3_0_APBmslave2_PSELx, C => PWM_STRETCH_0_sqmuxa_0, 
        D => N_75, Y => \psh_enable_reg1_1_sqmuxa\);
    
    \psh_negedge_reg[77]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[77]\);
    
    \psh_negedge_reg[13]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[13]\);
    
    \psh_negedge_reg[100]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[100]\);
    
    \PRDATA_generated_3_ns[24]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => N_73, B => \PRDATA_generated_3_bm[24]_net_1\, 
        C => \PRDATA_generated_3_am[24]_net_1\, Y => N_338);
    
    \psh_negedge_reg[37]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[37]\);
    
    \PRDATA_generated_3_bm[10]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[75]\, B => un97_psel, C => 
        \pwm_negedge_reg[107]\, Y => 
        \PRDATA_generated_3_bm[10]_net_1\);
    
    \psh_negedge_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[1]\);
    
    \PRDATA_generated_3_bm[20]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[85]\, B => un97_psel, C => 
        \pwm_negedge_reg[117]\, Y => 
        \PRDATA_generated_3_bm[20]_net_1\);
    
    \psh_negedge_reg[49]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[49]\);
    
    \psh_negedge_reg[27]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(26), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[27]\);
    
    \PRDATA_generated_1[1]\ : CFG4
      generic map(INIT => x"F780")

      port map(A => N_75, B => un59_psel_4, C => 
        \pwm_negedge_reg[34]\, D => \pwm_negedge_reg[2]\, Y => 
        N_247);
    
    \PRDATA_generated_3_am[15]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[16]\, B => un59_psel, C => 
        \pwm_negedge_reg[48]\, Y => 
        \PRDATA_generated_3_am[15]_net_1\);
    
    \psh_negedge_reg[74]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[74]\);
    
    \psh_negedge_reg[17]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[17]\);
    
    \PRDATA_generated_3_am[25]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[26]\, B => un59_psel, C => 
        \pwm_negedge_reg[58]\, Y => 
        \PRDATA_generated_3_am[25]_net_1\);
    
    \psh_negedge_reg[34]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[34]\);
    
    \PRDATA_regif_1_0_iv_0_RNI12RF2[3]\ : CFG4
      generic map(INIT => x"FEF4")

      port map(A => \PRDATA_generated_sn_N_7_mux\, B => N_317, C
         => \PRDATA_regif_1_0_iv_0[3]_net_1\, D => N_243, Y => 
        CoreAPB3_0_APBmslave2_PRDATA_2);
    
    \psh_negedge_reg[45]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[45]\);
    
    \psh_negedge_reg[24]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[24]\);
    
    \psh_negedge_reg[98]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[98]\);
    
    \PRDATA_generated_3_bm[9]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[74]\, B => un97_psel, C => 
        \pwm_negedge_reg[106]\, Y => 
        \PRDATA_generated_3_bm[9]_net_1\);
    
    m20 : CFG4
      generic map(INIT => x"0313")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => N_21_0);
    
    \psh_negedge_reg[14]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[14]\);
    
    \PRDATA_generated_3_ns[19]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[19]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[19]_net_1\, Y => 
        N_333);
    
    m17_0 : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \m17_0\);
    
    un11_psel_0 : CFG4
      generic map(INIT => x"0100")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => un11_psel_0_0);
    
    \psh_negedge_reg[101]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[101]\);
    
    \PRDATA_generated_3_ns[10]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[10]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[10]_net_1\, Y => 
        N_324);
    
    \PRDATA_generated_3_bm[30]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[95]\, B => un97_psel, C => 
        \pwm_negedge_reg[127]\, Y => 
        \PRDATA_generated_3_bm[30]_net_1\);
    
    \psh_negedge_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[6]\);
    
    \psh_negedge_reg[56]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[56]\);
    
    \PRDATA_regif_1_0_iv[7]\ : CFG3
      generic map(INIT => x"F4")

      port map(A => \PRDATA_generated_sn_N_7_mux\, B => N_321, C
         => \prdata_typ21\, Y => CoreAPB3_0_APBmslave2_PRDATA_6);
    
    \PRDATA_generated_3_ns[16]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[16]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[16]_net_1\, Y => 
        N_330);
    
    \PRDATA_generated_3_am[8]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[9]\, B => un59_psel, C => 
        \pwm_negedge_reg[41]\, Y => 
        \PRDATA_generated_3_am[8]_net_1\);
    
    \PRDATA_generated_3_bm[12]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[77]\, B => un97_psel, C => 
        \pwm_negedge_reg[109]\, Y => 
        \PRDATA_generated_3_bm[12]_net_1\);
    
    \psh_negedge_reg[78]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[78]\);
    
    \PRDATA_generated_3_bm[14]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[15]\, B => un59_psel_4, C
         => \pwm_negedge_reg[47]\, Y => 
        \PRDATA_generated_3_bm[14]_net_1\);
    
    \psh_negedge_reg[83]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[83]\);
    
    \psh_negedge_reg[51]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[51]\);
    
    \PRDATA_generated_3_bm[22]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[87]\, B => un97_psel, C => 
        \pwm_negedge_reg[119]\, Y => 
        \PRDATA_generated_3_bm[22]_net_1\);
    
    \PRDATA_generated_3_bm[24]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[25]\, B => un59_psel_4, C
         => \pwm_negedge_reg[57]\, Y => 
        \PRDATA_generated_3_bm[24]_net_1\);
    
    \psh_negedge_reg[38]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[38]\);
    
    \PRDATA_generated_3_am[16]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[17]\, B => un59_psel, C => 
        \pwm_negedge_reg[49]\, Y => 
        \PRDATA_generated_3_am[16]_net_1\);
    
    \psh_negedge_reg[109]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(12), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[109]\);
    
    \PRDATA_regif_1_iv_1[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_75, B => prdata_typ20_0, C => sync_update_m, 
        D => \pwm_enable_reg_m[1]\, Y => 
        \PRDATA_regif_1_iv_1[0]_net_1\);
    
    \PRDATA_generated_3_ns[11]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[11]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[11]_net_1\, Y => 
        N_325);
    
    \PRDATA_generated_3_am[26]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[27]\, B => un59_psel, C => 
        \pwm_negedge_reg[59]\, Y => 
        \PRDATA_generated_3_am[26]_net_1\);
    
    \PRDATA_generated_3_bm[13]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[78]\, B => un97_psel, C => 
        \pwm_negedge_reg[110]\, Y => 
        \PRDATA_generated_3_bm[13]_net_1\);
    
    \psh_negedge_reg[28]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[28]\);
    
    \PRDATA_generated_3_ns[22]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[22]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[22]_net_1\, Y => 
        N_336);
    
    \PRDATA_generated_3_bm[5]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[70]\, B => un97_psel, C => 
        \pwm_negedge_reg[102]\, Y => 
        \PRDATA_generated_3_bm[5]_net_1\);
    
    \psh_negedge_reg[18]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[18]\);
    
    \psh_negedge_reg[87]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(22), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[87]\);
    
    \PRDATA_generated_3_ns[18]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[18]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[18]_net_1\, Y => 
        N_332);
    
    \psh_enable_reg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \psh_enable_reg1_1_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_enable_reg[1]\);
    
    \psh_negedge_reg[62]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[62]\);
    
    \psh_negedge_reg[60]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[60]\);
    
    \PRDATA_generated_3_bm[6]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[71]\, B => un97_psel, C => 
        \pwm_negedge_reg[103]\, Y => 
        \PRDATA_generated_3_bm[6]_net_1\);
    
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
    
    \psh_negedge_reg[84]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[84]\);
    
    \psh_negedge_reg[46]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(13), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[46]\);
    
    \psh_negedge_reg[118]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[118]\);
    
    \PRDATA_generated_3_ns[5]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[5]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[5]_net_1\, Y => 
        N_319);
    
    \PRDATA_generated_3_am[17]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[18]\, B => un59_psel, C => 
        \pwm_negedge_reg[50]\, Y => 
        \PRDATA_generated_3_am[17]_net_1\);
    
    \PRDATA_generated_3_am[27]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[28]\, B => un59_psel, C => 
        \pwm_negedge_reg[60]\, Y => 
        \PRDATA_generated_3_am[27]_net_1\);
    
    m59 : CFG3
      generic map(INIT => x"80")

      port map(A => un97_psel, B => CoreAPB3_0_APBmslave2_PSELx, 
        C => PWM_STRETCH_0_sqmuxa_0, Y => 
        psh_negedge_reg_1_sqmuxa);
    
    \G60b.prdata_typ21_0\ : CFG4
      generic map(INIT => x"0002")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => prdata_typ21_0);
    
    \psh_negedge_reg[41]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[41]\);
    
    \psh_negedge_reg[9]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(8), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[9]\);
    
    \psh_negedge_reg[53]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[53]\);
    
    \G1.2.un59_psel_4_RNIFLPS\ : CFG4
      generic map(INIT => x"8000")

      port map(A => un59_psel_4, B => CoreAPB3_0_APBmslave2_PSELx, 
        C => PWM_STRETCH_0_sqmuxa_0, D => N_75, Y => 
        psh_negedge_reg_1_sqmuxa_2);
    
    sync_update_RNO : CFG4
      generic map(INIT => x"8000")

      port map(A => \m17_0\, B => PWM_STRETCH_0_sqmuxa_0, C => 
        N_64_mux, D => CoreAPB3_0_APBmslave2_PSELx, Y => 
        sync_update_0_sqmuxa);
    
    \PRDATA_generated_3_am[10]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[11]\, B => un59_psel, C => 
        \pwm_negedge_reg[43]\, Y => 
        \PRDATA_generated_3_am[10]_net_1\);
    
    \PRDATA_generated_3_ns[7]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[7]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[7]_net_1\, Y => 
        N_321);
    
    \PRDATA_generated_3_am[20]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[21]\, B => un59_psel, C => 
        \pwm_negedge_reg[53]\, Y => 
        \PRDATA_generated_3_am[20]_net_1\);
    
    \PRDATA_generated_3_bm[4]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[69]\, B => un97_psel, C => 
        \pwm_negedge_reg[101]\, Y => 
        \PRDATA_generated_3_bm[4]_net_1\);
    
    \psh_negedge_reg[88]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[88]\);
    
    m25_0 : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => N_64, C
         => CoreAPB3_0_APBmslave0_PADDR(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => \N_26_0\);
    
    m56 : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_STRETCH_0_sqmuxa_0, B => N_10_0, C => 
        CoreAPB3_0_APBmslave2_PSELx, D => N_73, Y => 
        psh_negedge_reg_1_sqmuxa_3);
    
    \psh_negedge_reg[57]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(24), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[57]\);
    
    \psh_negedge_reg[115]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(18), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[115]\);
    
    \psh_negedge_reg[102]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[102]\);
    
    \PRDATA_generated_3_am[3]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[4]\, B => un59_psel, C => 
        \pwm_negedge_reg[36]\, Y => 
        \PRDATA_generated_3_am[3]_net_1\);
    
    \psh_negedge_reg[92]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(27), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[92]\);
    
    \psh_negedge_reg[90]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[90]\);
    
    \psh_negedge_reg[117]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[117]\);
    
    \PRDATA_generated_3_am[7]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[8]\, B => un59_psel, C => 
        \pwm_negedge_reg[40]\, Y => 
        \PRDATA_generated_3_am[7]_net_1\);
    
    \psh_negedge_reg[128]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[128]\);
    
    \PRDATA_generated_3_ns[27]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[27]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[27]_net_1\, Y => 
        N_341);
    
    \PRDATA_regif_1_0_iv_yy[1]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => PWM_STRETCH(1), B => \pwm_enable_reg_m[2]\, C
         => prdata_generated48, Y => 
        \PRDATA_regif_1_0_iv_yy[1]_net_1\);
    
    \psh_negedge_reg[69]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[69]\);
    
    \psh_negedge_reg[54]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[54]\);
    
    m11_e : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_63);
    
    \PRDATA_generated_3_ns[14]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => N_73, B => \PRDATA_generated_3_bm[14]_net_1\, 
        C => \PRDATA_generated_3_am[14]_net_1\, Y => N_328);
    
    \PRDATA_generated_3_am[19]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[20]\, B => un59_psel, C => 
        \pwm_negedge_reg[52]\, Y => 
        \PRDATA_generated_3_am[19]_net_1\);
    
    \PRDATA_generated_3_am[11]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[12]\, B => un59_psel, C => 
        \pwm_negedge_reg[44]\, Y => 
        \PRDATA_generated_3_am[11]_net_1\);
    
    \psh_enable_reg1_RNI4VSL[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_75, B => un11_psel_0_0, C => 
        \pwm_enable_reg[2]\, Y => \pwm_enable_reg_m[2]\);
    
    \PRDATA_generated_3_am[29]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[30]\, B => un59_psel, C => 
        \pwm_negedge_reg[62]\, Y => 
        \PRDATA_generated_3_am[29]_net_1\);
    
    \PRDATA_generated_3_am[21]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[22]\, B => un59_psel, C => 
        \pwm_negedge_reg[54]\, Y => 
        \PRDATA_generated_3_am[21]_net_1\);
    
    \PRDATA_generated_3_am[30]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[31]\, B => un59_psel, C => 
        \pwm_negedge_reg[63]\, Y => 
        \PRDATA_generated_3_am[30]_net_1\);
    
    \PRDATA_generated_2[1]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[66]\, B => un97_psel, C => 
        \pwm_negedge_reg[98]\, Y => N_281);
    
    \psh_negedge_reg[65]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[65]\);
    
    \PRDATA_generated_3_bm[11]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[76]\, B => un97_psel, C => 
        \pwm_negedge_reg[108]\, Y => 
        \PRDATA_generated_3_bm[11]_net_1\);
    
    \psh_negedge_reg[72]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[72]\);
    
    \psh_negedge_reg[70]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[70]\);
    
    \PRDATA_generated_2[0]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[65]\, B => un97_psel, C => 
        \pwm_negedge_reg[97]\, Y => N_280);
    
    \psh_negedge_reg[43]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(10), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[43]\);
    
    \PRDATA_generated_3_bm[21]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[86]\, B => un97_psel, C => 
        \pwm_negedge_reg[118]\, Y => 
        \PRDATA_generated_3_bm[21]_net_1\);
    
    \psh_negedge_reg[32]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(31), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[32]\);
    
    \psh_negedge_reg[30]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(29), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[30]\);
    
    \PRDATA_generated_3_ns[25]\ : CFG3
      generic map(INIT => x"B8")

      port map(A => \PRDATA_generated_3_bm[25]_net_1\, B => 
        \N_26_0\, C => \PRDATA_generated_3_am[25]_net_1\, Y => 
        N_339);
    
    \psh_negedge_reg[114]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(17), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[114]\);
    
    \PRDATA_generated_3_bm[18]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[83]\, B => un97_psel, C => 
        \pwm_negedge_reg[115]\, Y => 
        \PRDATA_generated_3_bm[18]_net_1\);
    
    \PRDATA_generated_3_bm[28]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[93]\, B => un97_psel, C => 
        \pwm_negedge_reg[125]\, Y => 
        \PRDATA_generated_3_bm[28]_net_1\);
    
    \psh_negedge_reg[116]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[116]\);
    
    \G60b.prdata_typ20_0\ : CFG4
      generic map(INIT => x"0001")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => prdata_typ20_0);
    
    \psh_negedge_reg[22]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(21), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[22]\);
    
    \psh_negedge_reg[20]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(19), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[20]\);
    
    \PRDATA_generated_3_bm[19]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[84]\, B => un97_psel, C => 
        \pwm_negedge_reg[116]\, Y => 
        \PRDATA_generated_3_bm[19]_net_1\);
    
    \psh_negedge_reg[113]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(16), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[113]\);
    
    \PRDATA_generated_3_bm[29]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[94]\, B => un97_psel, C => 
        \pwm_negedge_reg[126]\, Y => 
        \PRDATA_generated_3_bm[29]_net_1\);
    
    \psh_negedge_reg[12]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[12]\);
    
    \psh_negedge_reg[10]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(9), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[10]\);
    
    \psh_negedge_reg[47]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(14), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[47]\);
    
    \psh_negedge_reg[125]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(28), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[125]\);
    
    \G64.prdata_generated48\ : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        PWM_STRETCH_0_sqmuxa_3, Y => prdata_generated48);
    
    \PRDATA_generated_0[0]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        PWM_STRETCH(0), C => PWM_STRETCH_0_sqmuxa_3, D => 
        CoreAPB3_0_APBmslave0_PADDR(6), Y => N_240);
    
    \psh_negedge_reg[58]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(25), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[58]\);
    
    \psh_negedge_reg[127]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(30), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[127]\);
    
    \PRDATA_generated_3_RNIU4E82[1]\ : CFG4
      generic map(INIT => x"F3E2")

      port map(A => \pwm_enable_reg_m[2]\, B => 
        \PRDATA_generated_sn_N_7_mux\, C => 
        \PRDATA_regif_1_0_iv_yy[1]_net_1\, D => N_315, Y => 
        CoreAPB3_0_APBmslave2_PRDATA_0);
    
    \PRDATA_generated_3_bm[17]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[82]\, B => un97_psel, C => 
        \pwm_negedge_reg[114]\, Y => 
        \PRDATA_generated_3_bm[17]_net_1\);
    
    \PRDATA_generated_3_am[31]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[32]\, B => un59_psel, C => 
        \pwm_negedge_reg[64]\, Y => 
        \PRDATA_generated_3_am[31]_net_1\);
    
    \PRDATA_generated_3_bm[27]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[92]\, B => un97_psel, C => 
        \pwm_negedge_reg[124]\, Y => 
        \PRDATA_generated_3_bm[27]_net_1\);
    
    \PRDATA_generated_3_bm[31]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \pwm_negedge_reg[96]\, B => un97_psel, C => 
        \pwm_negedge_reg[128]\, Y => 
        \PRDATA_generated_3_bm[31]_net_1\);
    
    \psh_negedge_reg[44]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(11), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \pwm_negedge_reg[44]\);
    
    \PRDATA_generated_3[2]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \N_26_0\, B => N_282, C => N_248, Y => N_316);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity timebase is

    port( period_cnt     : out   std_logic_vector(31 downto 0);
          prescale_cnt_0 : out   std_logic;
          MSS_READY      : in    std_logic;
          FAB_CCC_GL0    : in    std_logic;
          N_114          : out   std_logic;
          N_204          : in    std_logic;
          N_197          : in    std_logic;
          N_59           : out   std_logic
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

    signal \period_cnt[0]\, VCC_net_1, \period_cnt_int_lm[0]\, 
        N_22_i_0, GND_net_1, \period_cnt[1]\, 
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
        \period_cnt_int_lm[31]\, \prescale_cnt_0\, 
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
        prescale_cnt_s_117_FCO, \prescale_cnt_cry[1]_net_1\, 
        \prescale_cnt_s[1]\, \prescale_cnt_cry[2]_net_1\, 
        \prescale_cnt_s[2]\, \prescale_cnt_cry[3]_net_1\, 
        \prescale_cnt_s[3]\, \prescale_cnt_cry[4]_net_1\, 
        \prescale_cnt_s[4]\, \prescale_cnt_cry[5]_net_1\, 
        \prescale_cnt_s[5]\, \prescale_cnt_cry[6]_net_1\, 
        \prescale_cnt_s[6]\, \prescale_cnt_s[8]_net_1\, 
        \prescale_cnt_cry[7]_net_1\, \prescale_cnt_s[7]\, 
        period_cnt_int_s_118_FCO, \period_cnt_int_cry[1]_net_1\, 
        \period_cnt_int_s[1]\, \period_cnt_int_cry[2]_net_1\, 
        \period_cnt_int_s[2]\, \period_cnt_int_cry[3]_net_1\, 
        \period_cnt_int_s[3]\, \period_cnt_int_cry[4]_net_1\, 
        \period_cnt_int_s[4]\, \period_cnt_int_cry[5]_net_1\, 
        \period_cnt_int_s[5]\, \period_cnt_int_cry[6]_net_1\, 
        \period_cnt_int_s[6]\, \period_cnt_int_s[8]_net_1\, 
        \period_cnt_int_cry[7]_net_1\, \period_cnt_int_s[7]\, 
        \N_114\, \period_cnt_int7_i_a2_5\, 
        period_cnt_intlde_i_o2_4, \period_cnt_int7_i_a2_3\, 
        period_cnt_intlde_i_o2_22, period_cnt_intlde_i_o2_21, 
        period_cnt_intlde_i_o2_20, period_cnt_intlde_i_o2_19, 
        period_cnt_intlde_i_o2_18, period_cnt_intlde_i_o2_16, 
        period_cnt_intlde_i_o2_15, \period_cnt_int7_i_o2_3\, 
        period_cnt_intlde_i_o2_24, N_29, 
        period_cnt_intlde_i_o2_28, \N_59\ : std_logic;

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
    prescale_cnt_0 <= \prescale_cnt_0\;
    N_114 <= \N_114\;
    N_59 <= \N_59\;

    period_cnt_int7_i_o2_3 : CFG3
      generic map(INIT => x"7F")

      port map(A => \period_cnt[8]\, B => \period_cnt[5]\, C => 
        N_197, Y => \period_cnt_int7_i_o2_3\);
    
    \period_cnt_int_lm_0[5]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[5]\, C => N_204, Y => 
        \period_cnt_int_lm[5]\);
    
    \period_cnt_int[2]\ : SLE
      port map(D => \period_cnt_int_lm[2]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[2]\);
    
    \prescale_cnt_cry_1_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => \prescale_cnt_0\, S
         => OPEN, Y => OPEN, FCO => 
        \prescale_cnt_cry_1_0_FCO[30]\);
    
    period_cnt_int7_i_a2_3 : CFG4
      generic map(INIT => x"0001")

      port map(A => \period_cnt[14]\, B => \period_cnt[13]\, C
         => \period_cnt[12]\, D => \period_cnt[11]\, Y => 
        \period_cnt_int7_i_a2_3\);
    
    \prescale_cnt[27]\ : SLE
      port map(D => \prescale_cnt_lm[27]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[27]_net_1\);
    
    period_cnt_int_s_118 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[0]\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => period_cnt_int_s_118_FCO);
    
    \period_cnt_int[20]\ : SLE
      port map(D => \period_cnt_int_lm[20]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[20]\);
    
    \prescale_cnt_lm_0[18]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[18]\, Y => 
        \prescale_cnt_lm[18]\);
    
    \period_cnt_int_lm_0[14]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[14]\, C => N_204, Y => 
        \period_cnt_int_lm[14]\);
    
    period_cnt_int7_i_o2 : CFG4
      generic map(INIT => x"FF7F")

      port map(A => \period_cnt[9]\, B => \period_cnt[7]\, C => 
        \period_cnt[6]\, D => \period_cnt_int7_i_o2_3\, Y => N_29);
    
    \prescale_cnt_lm_0[27]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[27]\, Y => 
        \prescale_cnt_lm[27]\);
    
    \prescale_cnt_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[27]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[26]_net_1\, S => \prescale_cnt_s[27]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[27]_net_1\);
    
    \prescale_cnt_lm_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[3]\, Y => 
        \prescale_cnt_lm[3]\);
    
    \period_cnt_int_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[13]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[12]_net_1\, S => 
        \period_cnt_int_s[13]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[13]_net_1\);
    
    \prescale_cnt_lm_0[14]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[14]\, Y => 
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[23]\, Y => 
        \prescale_cnt_lm[23]\);
    
    \prescale_cnt[0]\ : SLE
      port map(D => \prescale_cnt_lm[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt_0\);
    
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[28]\);
    
    \period_cnt_int[10]\ : SLE
      port map(D => \period_cnt_int_lm[10]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[10]\);
    
    \period_cnt_int_lm_0[28]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[28]\, C => N_204, Y => 
        \period_cnt_int_lm[28]\);
    
    \period_cnt_int_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[7]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[6]_net_1\, S => \period_cnt_int_s[7]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[7]_net_1\);
    
    \period_cnt_int_lm_0[16]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[16]_net_1\, C => N_204, Y => 
        \period_cnt_int_lm[16]\);
    
    \prescale_cnt_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[4]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[3]_net_1\, S => \prescale_cnt_s[4]\, Y
         => OPEN, FCO => \prescale_cnt_cry[4]_net_1\);
    
    \period_cnt_int[0]\ : SLE
      port map(D => \period_cnt_int_lm[0]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[18]\);
    
    \period_cnt_int_lm_0[4]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[4]\, C => N_204, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[23]\);
    
    \prescale_cnt_RNIK9U11[25]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[27]_net_1\, B => 
        \prescale_cnt[26]_net_1\, C => \prescale_cnt[25]_net_1\, 
        D => \prescale_cnt[22]_net_1\, Y => 
        period_cnt_intlde_i_o2_20);
    
    \period_cnt_int_lm_0[7]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[7]\, C => N_204, Y => 
        \period_cnt_int_lm[7]\);
    
    \period_cnt_int_lm_0[9]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[9]\, C => N_204, Y => 
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
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[29]\, C => N_204, Y => 
        \period_cnt_int_lm[29]\);
    
    \period_cnt_int_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[6]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[5]_net_1\, S => \period_cnt_int_s[6]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[6]_net_1\);
    
    \period_cnt_int[25]\ : SLE
      port map(D => \period_cnt_int_lm[25]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[25]\);
    
    \prescale_cnt_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[6]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[5]_net_1\, S => \prescale_cnt_s[6]\, Y
         => OPEN, FCO => \prescale_cnt_cry[6]_net_1\);
    
    \period_cnt_int_lm_0[8]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[8]_net_1\, C => N_204, Y => 
        \period_cnt_int_lm[8]\);
    
    \prescale_cnt_lm_0[28]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[28]\, Y => 
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[11]\, Y => 
        \prescale_cnt_lm[11]\);
    
    prescale_cnt_s_117 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt_0\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => prescale_cnt_s_117_FCO);
    
    \prescale_cnt_RNITIR11[12]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[15]_net_1\, B => 
        \prescale_cnt[13]_net_1\, C => \prescale_cnt[12]_net_1\, 
        D => \prescale_cnt[8]_net_1\, Y => 
        period_cnt_intlde_i_o2_18);
    
    \prescale_cnt_lm_0[24]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[24]_net_1\, Y
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
    
    \prescale_cnt_lm_0[31]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[31]_net_1\, Y
         => \prescale_cnt_lm[31]\);
    
    \prescale_cnt_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[12]\, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[13]\);
    
    \prescale_cnt[14]\ : SLE
      port map(D => \prescale_cnt_lm[14]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[14]_net_1\);
    
    \period_cnt_int[24]\ : SLE
      port map(D => \period_cnt_int_lm[24]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[24]\);
    
    \prescale_cnt[5]\ : SLE
      port map(D => \prescale_cnt_lm[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[5]_net_1\);
    
    \period_cnt_int_lm_0[18]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[18]\, C => N_204, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[15]\);
    
    \period_cnt_int[22]\ : SLE
      port map(D => \period_cnt_int_lm[22]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[9]\);
    
    \prescale_cnt[29]\ : SLE
      port map(D => \prescale_cnt_lm[29]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[29]_net_1\);
    
    \period_cnt_int_lm_0[22]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[22]\, C => N_204, Y => 
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
    
    \prescale_cnt_RNI4HUG[11]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \prescale_cnt[6]_net_1\, B => 
        \prescale_cnt[11]_net_1\, Y => period_cnt_intlde_i_o2_4);
    
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
        period_cnt_int_s_118_FCO, S => \period_cnt_int_s[1]\, Y
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
    
    \prescale_cnt_RNIQEQ32[9]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[9]_net_1\, C => period_cnt_intlde_i_o2_18, 
        D => period_cnt_intlde_i_o2_4, Y => 
        period_cnt_intlde_i_o2_24);
    
    \period_cnt_int[26]\ : SLE
      port map(D => \period_cnt_int_lm[26]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[26]\);
    
    \prescale_cnt_lm_0[19]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[19]\, Y => 
        \prescale_cnt_lm[19]\);
    
    \period_cnt_int[12]\ : SLE
      port map(D => \period_cnt_int_lm[12]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[12]\);
    
    \period_cnt_int_lm_0[3]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[3]\, C => N_204, Y => 
        \period_cnt_int_lm[3]\);
    
    \period_cnt_int_lm_0[23]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[23]\, C => N_204, Y => 
        \period_cnt_int_lm[23]\);
    
    \period_cnt_int_lm_0[19]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[19]\, C => N_204, Y => 
        \period_cnt_int_lm[19]\);
    
    \prescale_cnt_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[10]\, Y => 
        \prescale_cnt_lm[10]\);
    
    \period_cnt_int[1]\ : SLE
      port map(D => \period_cnt_int_lm[1]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[1]\);
    
    \prescale_cnt_lm_0[30]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[30]\, Y => 
        \prescale_cnt_lm[30]\);
    
    \period_cnt_int_lm_0[25]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[25]\, C => N_204, Y => 
        \period_cnt_int_lm[25]\);
    
    \period_cnt_int_lm_0[0]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt[0]\, C => N_204, Y => \period_cnt_int_lm[0]\);
    
    \prescale_cnt_lm_0[21]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[21]\, Y => 
        \prescale_cnt_lm[21]\);
    
    \prescale_cnt_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[29]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[28]_net_1\, S => \prescale_cnt_s[29]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[29]_net_1\);
    
    \period_cnt_int_lm_0[20]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[20]\, C => N_204, Y => 
        \period_cnt_int_lm[20]\);
    
    \prescale_cnt_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[2]\, Y => 
        \prescale_cnt_lm[2]\);
    
    \prescale_cnt[9]\ : SLE
      port map(D => \prescale_cnt_lm[9]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[9]_net_1\);
    
    \period_cnt_int[3]\ : SLE
      port map(D => \period_cnt_int_lm[3]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[16]\);
    
    \period_cnt_int[31]\ : SLE
      port map(D => \period_cnt_int_lm[31]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[31]\);
    
    \prescale_cnt_lm_0[22]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[22]\, Y => 
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[7]\, Y => 
        \prescale_cnt_lm[7]\);
    
    \period_cnt_int_lm_0[12]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[12]\, C => N_204, Y => 
        \period_cnt_int_lm[12]\);
    
    \period_cnt_int_cry_5[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[12]\, B => \period_cnt[9]\, C => 
        \period_cnt[10]\, D => \period_cnt[11]\, FCI => 
        \period_cnt_int_cry_3_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_5_FCO[30]\);
    
    \prescale_cnt_lm_0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[1]\, Y => 
        \prescale_cnt_lm[1]\);
    
    \prescale_cnt_lm_0[15]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[15]\, Y => 
        \prescale_cnt_lm[15]\);
    
    \period_cnt_int_lm_0[27]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[27]\, C => N_204, Y => 
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
      generic map(INIT => x"2")

      port map(A => \N_114\, B => \prescale_cnt_0\, Y => 
        \prescale_cnt_lm[0]\);
    
    \period_cnt_int_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[27]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[26]_net_1\, S => 
        \period_cnt_int_s[27]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[27]_net_1\);
    
    \prescale_cnt[17]\ : SLE
      port map(D => \prescale_cnt_lm[17]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[17]_net_1\);
    
    \period_cnt_int_lm_0[21]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[21]\, C => N_204, Y => 
        \period_cnt_int_lm[21]\);
    
    \prescale_cnt_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[5]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[4]_net_1\, S => \prescale_cnt_s[5]\, Y
         => OPEN, FCO => \prescale_cnt_cry[5]_net_1\);
    
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
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[13]\, C => N_204, Y => 
        \period_cnt_int_lm[13]\);
    
    \period_cnt_int[5]\ : SLE
      port map(D => \period_cnt_int_lm[5]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[29]\, Y => 
        \prescale_cnt_lm[29]\);
    
    \prescale_cnt_lm_0[20]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[20]\, Y => 
        \prescale_cnt_lm[20]\);
    
    \prescale_cnt[21]\ : SLE
      port map(D => \prescale_cnt_lm[21]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[21]_net_1\);
    
    \period_cnt_int_lm_0[15]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[15]\, C => N_204, Y => 
        \period_cnt_int_lm[15]\);
    
    \period_cnt_int[30]\ : SLE
      port map(D => \period_cnt_int_lm[30]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[30]\);
    
    \prescale_cnt_lm_0[16]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[16]_net_1\, Y
         => \prescale_cnt_lm[16]\);
    
    \prescale_cnt_lm_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[4]\, Y => 
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
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[1]\, C => N_204, Y => 
        \period_cnt_int_lm[1]\);
    
    \prescale_cnt_cry_1[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => \prescale_cnt_0\, S
         => OPEN, Y => OPEN, FCO => \prescale_cnt_cry_1_FCO[15]\);
    
    \period_cnt_int[4]\ : SLE
      port map(D => \period_cnt_int_lm[4]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[4]\);
    
    \prescale_cnt_RNI9TS11[20]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[23]_net_1\, B => 
        \prescale_cnt[21]_net_1\, C => \prescale_cnt[20]_net_1\, 
        D => \prescale_cnt[16]_net_1\, Y => 
        period_cnt_intlde_i_o2_22);
    
    \period_cnt_int[8]\ : SLE
      port map(D => \period_cnt_int_lm[8]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[8]\);
    
    \period_cnt_int[6]\ : SLE
      port map(D => \period_cnt_int_lm[6]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[6]\);
    
    \prescale_cnt_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[1]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        prescale_cnt_s_117_FCO, S => \prescale_cnt_s[1]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[1]_net_1\);
    
    \period_cnt_int_lm_0[6]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[6]\, C => N_204, Y => 
        \period_cnt_int_lm[6]\);
    
    \period_cnt_int_lm_0[10]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[10]\, C => N_204, Y => 
        \period_cnt_int_lm[10]\);
    
    period_cnt_int7_i_a2_5_RNIT1KBN : CFG4
      generic map(INIT => x"00BF")

      port map(A => N_204, B => \N_59\, C => 
        \period_cnt_int7_i_a2_5\, D => \N_114\, Y => N_22_i_0);
    
    \prescale_cnt_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[9]\, Y => 
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
    
    \prescale_cnt_RNI4MK74[17]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_intlde_i_o2_22, B => 
        period_cnt_intlde_i_o2_20, C => period_cnt_intlde_i_o2_19, 
        D => period_cnt_intlde_i_o2_21, Y => 
        period_cnt_intlde_i_o2_28);
    
    \period_cnt_int_cry_3[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[8]\, B => \period_cnt[5]\, C => 
        \period_cnt[6]\, D => \period_cnt[7]\, FCI => 
        \period_cnt_int_cry_1_FCO[15]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_3_FCO[15]\);
    
    \prescale_cnt_lm_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[6]\, Y => 
        \prescale_cnt_lm[6]\);
    
    \period_cnt_int[27]\ : SLE
      port map(D => \period_cnt_int_lm[27]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[27]\);
    
    \period_cnt_int_lm_0[17]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[17]\, C => N_204, Y => 
        \period_cnt_int_lm[17]\);
    
    \period_cnt_int[29]\ : SLE
      port map(D => \period_cnt_int_lm[29]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[29]\);
    
    \prescale_cnt_RNIMJU68[18]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_intlde_i_o2_15, B => 
        period_cnt_intlde_i_o2_16, C => period_cnt_intlde_i_o2_24, 
        D => period_cnt_intlde_i_o2_28, Y => \N_59\);
    
    \prescale_cnt_RNIVKEP[18]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \prescale_cnt[18]_net_1\, B => 
        \prescale_cnt[3]_net_1\, C => \prescale_cnt[1]_net_1\, Y
         => period_cnt_intlde_i_o2_15);
    
    \prescale_cnt_lm_0[25]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[25]\, Y => 
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
    
    \period_cnt_int_lm_0[11]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[11]\, C => N_204, Y => 
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
    
    period_cnt_int7_i_a2_5 : CFG4
      generic map(INIT => x"1000")

      port map(A => \period_cnt[15]\, B => \period_cnt[10]\, C
         => \period_cnt_int7_i_a2_3\, D => N_29, Y => 
        \period_cnt_int7_i_a2_5\);
    
    \period_cnt_int_lm_0[30]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[30]\, C => N_204, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[17]\);
    
    \prescale_cnt_lm_0[17]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[17]\, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[19]\);
    
    \prescale_cnt_cry_1[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => \prescale_cnt_0\, S
         => OPEN, Y => OPEN, FCO => \prescale_cnt_cry_1_FCO[30]\);
    
    \period_cnt_int_lm_0[24]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[24]_net_1\, C => N_204, Y => 
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[8]_net_1\, Y
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[5]\, Y => 
        \prescale_cnt_lm[5]\);
    
    \period_cnt_int_cry[22]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[22]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[21]_net_1\, S => 
        \period_cnt_int_s[22]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[22]_net_1\);
    
    \prescale_cnt_lm_0[26]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[26]\, Y => 
        \prescale_cnt_lm[26]\);
    
    \prescale_cnt_RNIPP021[30]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[30]_net_1\, B => 
        \prescale_cnt[7]_net_1\, C => \prescale_cnt[5]_net_1\, D
         => \prescale_cnt[2]_net_1\, Y => 
        period_cnt_intlde_i_o2_16);
    
    \prescale_cnt_cry_3[15]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[8]_net_1\, B => 
        \prescale_cnt[5]_net_1\, C => \prescale_cnt[6]_net_1\, D
         => \prescale_cnt[7]_net_1\, FCI => 
        \prescale_cnt_cry_1_FCO[15]\, S => OPEN, Y => OPEN, FCO
         => \prescale_cnt_cry_3_FCO[15]\);
    
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
      generic map(INIT => x"8")

      port map(A => \N_114\, B => \prescale_cnt_s[13]\, Y => 
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
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[21]\);
    
    \prescale_cnt_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[28]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[27]_net_1\, S => \prescale_cnt_s[28]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[28]_net_1\);
    
    \period_cnt_int_lm_0[31]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[31]_net_1\, C => N_204, Y => 
        \period_cnt_int_lm[31]\);
    
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
    
    \prescale_cnt_RNIL7R11[17]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[24]_net_1\, B => 
        \prescale_cnt[19]_net_1\, C => \prescale_cnt[17]_net_1\, 
        D => \prescale_cnt[14]_net_1\, Y => 
        period_cnt_intlde_i_o2_21);
    
    \prescale_cnt[10]\ : SLE
      port map(D => \prescale_cnt_lm[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[10]_net_1\);
    
    \period_cnt_int_lm_0[26]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[26]\, C => N_204, Y => 
        \period_cnt_int_lm[26]\);
    
    \prescale_cnt_RNICIEF8[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \N_59\, B => \prescale_cnt_0\, Y => \N_114\);
    
    \period_cnt_int_cry_7_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[16]\, B => \period_cnt[13]\, C
         => \period_cnt[14]\, D => \period_cnt[15]\, FCI => 
        \period_cnt_int_cry_5_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_7_0_FCO[30]\);
    
    \period_cnt_int_lm_0[2]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \period_cnt_int7_i_a2_5\, B => 
        \period_cnt_int_s[2]\, C => N_204, Y => 
        \period_cnt_int_lm[2]\);
    
    \prescale_cnt_RNII7U11[28]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[31]_net_1\, B => 
        \prescale_cnt[29]_net_1\, C => \prescale_cnt[28]_net_1\, 
        D => \prescale_cnt[10]_net_1\, Y => 
        period_cnt_intlde_i_o2_19);
    
    \prescale_cnt[23]\ : SLE
      port map(D => \prescale_cnt_lm[23]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[23]_net_1\);
    
    \period_cnt_int[7]\ : SLE
      port map(D => \period_cnt_int_lm[7]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[7]\);
    
    \period_cnt_int[11]\ : SLE
      port map(D => \period_cnt_int_lm[11]\, CLK => FAB_CCC_GL0, 
        EN => N_22_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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

    port( CoreAPB3_0_APBmslave0_PADDR    : in    std_logic_vector(7 downto 2);
          CoreAPB3_0_APBmslave0_PWDATA   : in    std_logic_vector(31 downto 0);
          CoreAPB3_0_APBmslave2_PRDATA_1 : out   std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_1            : out   std_logic_vector(0 to 0);
          PRDATA_regif_1_iv_xx           : out   std_logic_vector(0 to 0);
          pwm_enable_reg_m               : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_yy         : out   std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave2_PRDATA_4 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0 : out   std_logic;
          MSS_READY                      : in    std_logic;
          FAB_CCC_GL0                    : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE  : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE   : in    std_logic;
          PWM_STRETCH_0_sqmuxa_0         : out   std_logic;
          un3_wen_2                      : out   std_logic;
          CoreAPB3_0_APBmslave2_PSELx    : in    std_logic;
          PRDATA_generated_sn_m5_0       : out   std_logic;
          N_26_0                         : out   std_logic;
          prdata_typ21                   : out   std_logic;
          N_339                          : out   std_logic;
          N_322                          : out   std_logic;
          N_323                          : out   std_logic;
          N_324                          : out   std_logic;
          N_325                          : out   std_logic;
          N_326                          : out   std_logic;
          N_327                          : out   std_logic;
          N_329                          : out   std_logic;
          N_330                          : out   std_logic;
          N_331                          : out   std_logic;
          N_332                          : out   std_logic;
          N_333                          : out   std_logic;
          N_334                          : out   std_logic;
          N_335                          : out   std_logic;
          N_336                          : out   std_logic;
          N_340                          : out   std_logic;
          N_341                          : out   std_logic;
          N_342                          : out   std_logic;
          N_343                          : out   std_logic;
          N_344                          : out   std_logic;
          N_345                          : out   std_logic;
          N_338                          : out   std_logic;
          N_328                          : out   std_logic;
          N_10_0                         : in    std_logic;
          un13_psel_0_0                  : in    std_logic;
          N_240                          : out   std_logic;
          PRDATA_generated_sn_N_7_mux    : out   std_logic;
          N_337                          : out   std_logic;
          N_23_0                         : out   std_logic;
          N_316                          : out   std_logic;
          pwm_out_4_c                    : out   std_logic;
          pwm_out_3_c                    : out   std_logic;
          pwm_out_2_c                    : out   std_logic;
          pwm_out_1_c                    : out   std_logic
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

  component pwm_gen
    port( period_cnt      : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg : in    std_logic_vector(128 downto 1) := (others => 'U');
          prescale_cnt    : in    std_logic_vector(0 to 0) := (others => 'U');
          pwm_enable_reg  : in    std_logic_vector(4 downto 1) := (others => 'U');
          pwm_out_4_c     : out   std_logic;
          MSS_READY       : in    std_logic := 'U';
          FAB_CCC_GL0     : in    std_logic := 'U';
          pwm_out_3_c     : out   std_logic;
          pwm_out_2_c     : out   std_logic;
          pwm_out_1_c     : out   std_logic;
          N_197           : out   std_logic;
          N_204           : out   std_logic;
          N_59            : in    std_logic := 'U';
          N_114           : in    std_logic := 'U'
        );
  end component;

  component reg_if
    port( CoreAPB3_0_APBmslave0_PWDATA   : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg                : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                 : out   std_logic_vector(4 downto 1);
          CoreAPB3_0_APBmslave2_PRDATA_1 : out   std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_1            : out   std_logic_vector(0 to 0);
          PRDATA_regif_1_iv_xx           : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR    : in    std_logic_vector(7 downto 2) := (others => 'U');
          PWM_STRETCH                    : in    std_logic_vector(3 downto 0) := (others => 'U');
          pwm_enable_reg_m_2             : out   std_logic;
          PRDATA_regif_1_0_iv_yy_1       : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_4 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0 : out   std_logic;
          MSS_READY                      : in    std_logic := 'U';
          FAB_CCC_GL0                    : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0       : out   std_logic;
          N_26_0                         : out   std_logic;
          prdata_typ21                   : out   std_logic;
          N_339                          : out   std_logic;
          N_322                          : out   std_logic;
          N_323                          : out   std_logic;
          N_324                          : out   std_logic;
          N_325                          : out   std_logic;
          N_326                          : out   std_logic;
          N_327                          : out   std_logic;
          N_329                          : out   std_logic;
          N_330                          : out   std_logic;
          N_331                          : out   std_logic;
          N_332                          : out   std_logic;
          N_333                          : out   std_logic;
          N_334                          : out   std_logic;
          N_335                          : out   std_logic;
          N_336                          : out   std_logic;
          N_340                          : out   std_logic;
          N_341                          : out   std_logic;
          N_342                          : out   std_logic;
          N_343                          : out   std_logic;
          N_344                          : out   std_logic;
          N_345                          : out   std_logic;
          N_338                          : out   std_logic;
          N_328                          : out   std_logic;
          PWM_STRETCH_0_sqmuxa_3         : in    std_logic := 'U';
          N_10_0                         : in    std_logic := 'U';
          un13_psel_0_0                  : in    std_logic := 'U';
          N_240                          : out   std_logic;
          PWM_STRETCH_0_sqmuxa_0         : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PSELx    : in    std_logic := 'U';
          PRDATA_generated_sn_N_7_mux    : out   std_logic;
          N_337                          : out   std_logic;
          N_23_0                         : out   std_logic;
          N_316                          : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component timebase
    port( period_cnt     : out   std_logic_vector(31 downto 0);
          prescale_cnt_0 : out   std_logic;
          MSS_READY      : in    std_logic := 'U';
          FAB_CCC_GL0    : in    std_logic := 'U';
          N_114          : out   std_logic;
          N_204          : in    std_logic := 'U';
          N_197          : in    std_logic := 'U';
          N_59           : out   std_logic
        );
  end component;

    signal \PWM_STRETCH[0]_net_1\, VCC_net_1, 
        \PWM_STRETCH_0_sqmuxa\, GND_net_1, \PWM_STRETCH[1]_net_1\, 
        \PWM_STRETCH[2]_net_1\, \PWM_STRETCH[3]_net_1\, 
        PWM_STRETCH_0_sqmuxa_0_net_1, \un3_wen_2\, 
        \PWM_STRETCH_0_sqmuxa_3\, \PWM_STRETCH_0_sqmuxa_2\, 
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
        \period_cnt[31]\, \prescale_cnt[0]\, N_114, N_204, N_197, 
        N_59 : std_logic;

    for all : pwm_gen
	Use entity work.pwm_gen(DEF_ARCH);
    for all : reg_if
	Use entity work.reg_if(DEF_ARCH);
    for all : timebase
	Use entity work.timebase(DEF_ARCH);
begin 

    PWM_STRETCH_0_sqmuxa_0 <= PWM_STRETCH_0_sqmuxa_0_net_1;
    un3_wen_2 <= \un3_wen_2\;

    \PWM_STRETCH[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => \PWM_STRETCH_0_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \PWM_STRETCH[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PWM_STRETCH[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => \PWM_STRETCH_0_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \PWM_STRETCH[0]_net_1\);
    
    PWM_STRETCH_0_sqmuxa_2 : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(6), C => 
        PWM_STRETCH_0_sqmuxa_0_net_1, Y => 
        \PWM_STRETCH_0_sqmuxa_2\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_STRETCH[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => \PWM_STRETCH_0_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \PWM_STRETCH[2]_net_1\);
    
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
        \pwm_negedge_reg[1]\, prescale_cnt(0) => 
        \prescale_cnt[0]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, pwm_out_4_c => pwm_out_4_c, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        pwm_out_3_c => pwm_out_3_c, pwm_out_2_c => pwm_out_2_c, 
        pwm_out_1_c => pwm_out_1_c, N_197 => N_197, N_204 => 
        N_204, N_59 => N_59, N_114 => N_114);
    
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
        \pwm_enable_reg[1]\, CoreAPB3_0_APBmslave2_PRDATA_1(4)
         => CoreAPB3_0_APBmslave2_PRDATA_1(4), 
        PRDATA_regif_1_iv_1(0) => PRDATA_regif_1_iv_1(0), 
        PRDATA_regif_1_iv_xx(0) => PRDATA_regif_1_iv_xx(0), 
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
        CoreAPB3_0_APBmslave0_PADDR(2), PWM_STRETCH(3) => 
        \PWM_STRETCH[3]_net_1\, PWM_STRETCH(2) => 
        \PWM_STRETCH[2]_net_1\, PWM_STRETCH(1) => 
        \PWM_STRETCH[1]_net_1\, PWM_STRETCH(0) => 
        \PWM_STRETCH[0]_net_1\, pwm_enable_reg_m_2 => 
        pwm_enable_reg_m(3), PRDATA_regif_1_0_iv_yy_1 => 
        PRDATA_regif_1_0_iv_yy(2), CoreAPB3_0_APBmslave2_PRDATA_4
         => CoreAPB3_0_APBmslave2_PRDATA_4, 
        CoreAPB3_0_APBmslave2_PRDATA_5 => 
        CoreAPB3_0_APBmslave2_PRDATA_5, 
        CoreAPB3_0_APBmslave2_PRDATA_6 => 
        CoreAPB3_0_APBmslave2_PRDATA_6, 
        CoreAPB3_0_APBmslave2_PRDATA_2 => 
        CoreAPB3_0_APBmslave2_PRDATA_2, 
        CoreAPB3_0_APBmslave2_PRDATA_0 => 
        CoreAPB3_0_APBmslave2_PRDATA_0, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, PRDATA_generated_sn_m5_0 => 
        PRDATA_generated_sn_m5_0, N_26_0 => N_26_0, prdata_typ21
         => prdata_typ21, N_339 => N_339, N_322 => N_322, N_323
         => N_323, N_324 => N_324, N_325 => N_325, N_326 => N_326, 
        N_327 => N_327, N_329 => N_329, N_330 => N_330, N_331 => 
        N_331, N_332 => N_332, N_333 => N_333, N_334 => N_334, 
        N_335 => N_335, N_336 => N_336, N_340 => N_340, N_341 => 
        N_341, N_342 => N_342, N_343 => N_343, N_344 => N_344, 
        N_345 => N_345, N_338 => N_338, N_328 => N_328, 
        PWM_STRETCH_0_sqmuxa_3 => \PWM_STRETCH_0_sqmuxa_3\, 
        N_10_0 => N_10_0, un13_psel_0_0 => un13_psel_0_0, N_240
         => N_240, PWM_STRETCH_0_sqmuxa_0 => 
        PWM_STRETCH_0_sqmuxa_0_net_1, CoreAPB3_0_APBmslave2_PSELx
         => CoreAPB3_0_APBmslave2_PSELx, 
        PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_337 => N_337, N_23_0 => 
        N_23_0, N_316 => N_316);
    
    PWM_STRETCH_0_sqmuxa_0_0 : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => 
        PWM_STRETCH_0_sqmuxa_0_net_1);
    
    \PWM_STRETCH_0_sqmuxa_0\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => \un3_wen_2\);
    
    \PWM_STRETCH[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => \PWM_STRETCH_0_sqmuxa\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => \PWM_STRETCH[3]_net_1\);
    
    PWM_STRETCH_0_sqmuxa_3 : CFG3
      generic map(INIT => x"80")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => \un3_wen_2\, Y => 
        \PWM_STRETCH_0_sqmuxa_3\);
    
    PWM_STRETCH_0_sqmuxa : CFG3
      generic map(INIT => x"80")

      port map(A => \PWM_STRETCH_0_sqmuxa_3\, B => 
        \PWM_STRETCH_0_sqmuxa_2\, C => 
        CoreAPB3_0_APBmslave2_PSELx, Y => \PWM_STRETCH_0_sqmuxa\);
    
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
        \period_cnt[0]\, prescale_cnt_0 => \prescale_cnt[0]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, N_114
         => N_114, N_204 => N_204, N_197 => N_197, N_59 => N_59);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_MSS is

    port( CoreAPB3_0_APBmslave0_PADDR                  : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                 : out   std_logic_vector(31 downto 0);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : in    std_logic_vector(31 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N    : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                 : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F         : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                  : in    std_logic;
          CoreUARTapb_1_0_intr_or_2_Y                  : in    std_logic;
          FAB_CCC_LOCK                                 : in    std_logic;
          FAB_CCC_GL0                                  : in    std_logic
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

              generic map(INIT => "00" & x"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00000000F000000000000000000000000000000007FFFFFFFB000001007C33C000000006090C0104003FFFFE400000000000010000000000F01C000001FEDFFC010842108421000001FE34001FF8000000400000000020071007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
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
        CoreUARTapb_1_0_intr_or_2_Y, F2H_INTERRUPT(2) => 
        GND_net_1, F2H_INTERRUPT(1) => 
        CoreUARTapb_0_0_intr_or_2_Y, F2H_INTERRUPT(0) => 
        COREI2C_0_0_INT(0), F2HCALIB => VCC_net_1, F_DMAREADY(1)
         => VCC_net_1, F_DMAREADY(0) => VCC_net_1, F_FM0_ADDR(31)
         => GND_net_1, F_FM0_ADDR(30) => GND_net_1, 
        F_FM0_ADDR(29) => GND_net_1, F_FM0_ADDR(28) => GND_net_1, 
        F_FM0_ADDR(27) => GND_net_1, F_FM0_ADDR(26) => GND_net_1, 
        F_FM0_ADDR(25) => GND_net_1, F_FM0_ADDR(24) => GND_net_1, 
        F_FM0_ADDR(23) => GND_net_1, F_FM0_ADDR(22) => GND_net_1, 
        F_FM0_ADDR(21) => GND_net_1, F_FM0_ADDR(20) => GND_net_1, 
        F_FM0_ADDR(19) => GND_net_1, F_FM0_ADDR(18) => GND_net_1, 
        F_FM0_ADDR(17) => GND_net_1, F_FM0_ADDR(16) => GND_net_1, 
        F_FM0_ADDR(15) => GND_net_1, F_FM0_ADDR(14) => GND_net_1, 
        F_FM0_ADDR(13) => GND_net_1, F_FM0_ADDR(12) => GND_net_1, 
        F_FM0_ADDR(11) => GND_net_1, F_FM0_ADDR(10) => GND_net_1, 
        F_FM0_ADDR(9) => GND_net_1, F_FM0_ADDR(8) => GND_net_1, 
        F_FM0_ADDR(7) => GND_net_1, F_FM0_ADDR(6) => GND_net_1, 
        F_FM0_ADDR(5) => GND_net_1, F_FM0_ADDR(4) => GND_net_1, 
        F_FM0_ADDR(3) => GND_net_1, F_FM0_ADDR(2) => GND_net_1, 
        F_FM0_ADDR(1) => GND_net_1, F_FM0_ADDR(0) => GND_net_1, 
        F_FM0_ENABLE => GND_net_1, F_FM0_MASTLOCK => GND_net_1, 
        F_FM0_READY => VCC_net_1, F_FM0_SEL => GND_net_1, 
        F_FM0_SIZE(1) => GND_net_1, F_FM0_SIZE(0) => GND_net_1, 
        F_FM0_TRANS1 => GND_net_1, F_FM0_WDATA(31) => GND_net_1, 
        F_FM0_WDATA(30) => GND_net_1, F_FM0_WDATA(29) => 
        GND_net_1, F_FM0_WDATA(28) => GND_net_1, F_FM0_WDATA(27)
         => GND_net_1, F_FM0_WDATA(26) => GND_net_1, 
        F_FM0_WDATA(25) => GND_net_1, F_FM0_WDATA(24) => 
        GND_net_1, F_FM0_WDATA(23) => GND_net_1, F_FM0_WDATA(22)
         => GND_net_1, F_FM0_WDATA(21) => GND_net_1, 
        F_FM0_WDATA(20) => GND_net_1, F_FM0_WDATA(19) => 
        GND_net_1, F_FM0_WDATA(18) => GND_net_1, F_FM0_WDATA(17)
         => GND_net_1, F_FM0_WDATA(16) => GND_net_1, 
        F_FM0_WDATA(15) => GND_net_1, F_FM0_WDATA(14) => 
        GND_net_1, F_FM0_WDATA(13) => GND_net_1, F_FM0_WDATA(12)
         => GND_net_1, F_FM0_WDATA(11) => GND_net_1, 
        F_FM0_WDATA(10) => GND_net_1, F_FM0_WDATA(9) => GND_net_1, 
        F_FM0_WDATA(8) => GND_net_1, F_FM0_WDATA(7) => GND_net_1, 
        F_FM0_WDATA(6) => GND_net_1, F_FM0_WDATA(5) => GND_net_1, 
        F_FM0_WDATA(4) => GND_net_1, F_FM0_WDATA(3) => GND_net_1, 
        F_FM0_WDATA(2) => GND_net_1, F_FM0_WDATA(1) => GND_net_1, 
        F_FM0_WDATA(0) => GND_net_1, F_FM0_WRITE => GND_net_1, 
        F_HM0_RDATA(31) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31), 
        F_HM0_RDATA(30) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30), 
        F_HM0_RDATA(29) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29), 
        F_HM0_RDATA(28) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28), 
        F_HM0_RDATA(27) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27), 
        F_HM0_RDATA(26) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26), 
        F_HM0_RDATA(25) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25), 
        F_HM0_RDATA(24) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24), 
        F_HM0_RDATA(23) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23), 
        F_HM0_RDATA(22) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22), 
        F_HM0_RDATA(21) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21), 
        F_HM0_RDATA(20) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20), 
        F_HM0_RDATA(19) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19), 
        F_HM0_RDATA(18) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18), 
        F_HM0_RDATA(17) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17), 
        F_HM0_RDATA(16) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16), 
        F_HM0_RDATA(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15), 
        F_HM0_RDATA(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14), 
        F_HM0_RDATA(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13), 
        F_HM0_RDATA(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12), 
        F_HM0_RDATA(11) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11), 
        F_HM0_RDATA(10) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10), 
        F_HM0_RDATA(9) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9), 
        F_HM0_RDATA(8) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8), 
        F_HM0_RDATA(7) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7), 
        F_HM0_RDATA(6) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6), 
        F_HM0_RDATA(5) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5), 
        F_HM0_RDATA(4) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4), 
        F_HM0_RDATA(3) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3), 
        F_HM0_RDATA(2) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2), 
        F_HM0_RDATA(1) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1), 
        F_HM0_RDATA(0) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0), 
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

              generic map(INIT => "00" & x"000007FA8000044D64000318C6318C1F18C61EC0404040400604",
         VCOFREQUENCY => 560.0)

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

entity mss_top_sb is

    port( COREI2C_0_0_SDA_IO : inout std_logic := 'Z';
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          DEVRST_N           : in    std_logic;
          pwm_out_4_c        : out   std_logic;
          pwm_out_3_c        : out   std_logic;
          pwm_out_2_c        : out   std_logic;
          pwm_out_1_c        : out   std_logic;
          TX_c               : out   std_logic;
          RX_c               : in    std_logic;
          TX2_c              : out   std_logic;
          RX2_c              : in    std_logic
        );

end mss_top_sb;

architecture DEF_ARCH of mss_top_sb is 

  component CoreAPB3
    port( mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PRDATA                 : in    std_logic_vector(5 to 5) := (others => 'U');
          pwm_enable_reg_m                             : in    std_logic_vector(3 to 3) := (others => 'U');
          PRDATA_regif_1_0_iv_yy                       : in    std_logic_vector(2 to 2) := (others => 'U');
          CoreAPB3_0_APBmslave3_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_0_iv_1                                : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_0_iv_0                                : in    std_logic_vector(7 to 7) := (others => 'U');
          PRDATA_regif_1_iv_1                          : in    std_logic_vector(0 to 0) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA_1               : in    std_logic_vector(4 to 4) := (others => 'U');
          PRDATA_regif_1_iv_xx                         : in    std_logic_vector(0 to 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          PRDATAi_0_1                                  : in    std_logic := 'U';
          PRDATAi_0_0                                  : in    std_logic := 'U';
          PRDATAi_0_4                                  : in    std_logic := 'U';
          PRDATAi_0_2                                  : in    std_logic := 'U';
          PRDATAi_0_6                                  : in    std_logic := 'U';
          PRDATAi_0_3                                  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_4               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_2               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_0               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_5               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave2_PRDATA_6               : in    std_logic := 'U';
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave3_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave2_PSELx                  : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx                  : out   std_logic;
          N_26_0                                       : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0                     : in    std_logic := 'U';
          N_328                                        : in    std_logic := 'U';
          N_338                                        : in    std_logic := 'U';
          un7_pseli                                    : in    std_logic := 'U';
          N_329                                        : in    std_logic := 'U';
          PRDATA_generated_sn_N_7_mux                  : in    std_logic := 'U';
          N_327                                        : in    std_logic := 'U';
          N_326                                        : in    std_logic := 'U';
          N_325                                        : in    std_logic := 'U';
          N_324                                        : in    std_logic := 'U';
          N_316                                        : in    std_logic := 'U';
          N_23_0                                       : in    std_logic := 'U';
          N_339                                        : in    std_logic := 'U';
          N_345                                        : in    std_logic := 'U';
          N_344                                        : in    std_logic := 'U';
          N_343                                        : in    std_logic := 'U';
          N_342                                        : in    std_logic := 'U';
          N_341                                        : in    std_logic := 'U';
          N_340                                        : in    std_logic := 'U';
          N_337                                        : in    std_logic := 'U';
          N_336                                        : in    std_logic := 'U';
          N_335                                        : in    std_logic := 'U';
          N_334                                        : in    std_logic := 'U';
          N_333                                        : in    std_logic := 'U';
          N_332                                        : in    std_logic := 'U';
          N_331                                        : in    std_logic := 'U';
          N_330                                        : in    std_logic := 'U';
          N_240                                        : in    std_logic := 'U';
          prdata_typ21                                 : in    std_logic := 'U';
          N_322                                        : in    std_logic := 'U';
          N_323                                        : in    std_logic := 'U'
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

  component COREI2C
    port( CoreAPB3_0_APBmslave0_PRDATA : out   std_logic_vector(5 to 5);
          COREI2C_0_0_SDAO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i           : out   std_logic_vector(0 to 0);
          COREI2C_0_0_INT              : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(8 downto 0) := (others => 'U');
          PRDATA_0_iv_1                : out   std_logic_vector(7 to 7);
          PRDATA_0_iv_0                : out   std_logic_vector(7 to 7);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATAi_0_3                  : out   std_logic;
          PRDATAi_0_4                  : out   std_logic;
          PRDATAi_0_6                  : out   std_logic;
          PRDATAi_0_1                  : out   std_logic;
          PRDATAi_0_0                  : out   std_logic;
          PRDATAi_0_2                  : out   std_logic;
          un7_pseli                    : out   std_logic;
          un5_psel_0_0                 : in    std_logic := 'U';
          un3_wen_2                    : in    std_logic := 'U';
          MSS_READY                    : in    std_logic := 'U';
          FAB_CCC_GL0                  : in    std_logic := 'U';
          N_10_0                       : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y   : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y   : in    std_logic := 'U';
          un13_psel_0_0                : in    std_logic := 'U';
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PSELx  : in    std_logic := 'U'
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

  component SYSRESET
    port( POWER_ON_RESET_N : out   std_logic;
          DEVRST_N         : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave1_PRDATA  : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA  : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR   : in    std_logic_vector(4 downto 2) := (others => 'U');
          rx_dout_reg_0                 : in    std_logic_vector(4 to 4) := (others => 'U');
          nxtprdata_xhdl7_1_0_4         : out   std_logic;
          nxtprdata_xhdl7_1_0_0         : out   std_logic;
          rx_dout_reg_0_d0              : in    std_logic := 'U';
          controlReg2_0_4               : in    std_logic := 'U';
          controlReg2_0_0               : in    std_logic := 'U';
          controlReg1_0_4               : in    std_logic := 'U';
          controlReg1_0_0               : in    std_logic := 'U';
          MSS_READY                     : in    std_logic := 'U';
          FAB_CCC_GL0                   : in    std_logic := 'U';
          CoreUARTapb_0_0_FRAMING_ERR   : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW      : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE : in    std_logic := 'U';
          N_10_0                        : in    std_logic := 'U';
          un3_oen                       : out   std_logic;
          un5_psel_0_0                  : out   std_logic;
          un13_psel_0_0                 : out   std_logic;
          un1_nxtprdata_xhdl722_0       : out   std_logic;
          un3_wen_2                     : in    std_logic := 'U';
          PWM_STRETCH_0_sqmuxa_0        : in    std_logic := 'U';
          un3_wen                       : out   std_logic;
          CoreAPB3_0_APBmslave1_PSELx   : in    std_logic := 'U';
          CoreUARTapb_0_0_RXRDY         : out   std_logic;
          TX_c                          : out   std_logic;
          CoreUARTapb_0_0_TXRDY         : out   std_logic;
          RX_c                          : in    std_logic := 'U';
          CoreUARTapb_1_0_FRAMING_ERR   : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY         : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave3_PRDATA : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR  : in    std_logic_vector(4 downto 2) := (others => 'U');
          nxtprdata_xhdl7_1_0          : in    std_logic := 'U';
          nxtprdata_xhdl7_1_4          : in    std_logic := 'U';
          controlReg2_0                : out   std_logic;
          controlReg2_4                : out   std_logic;
          controlReg1_0                : out   std_logic;
          controlReg1_4                : out   std_logic;
          rx_dout_reg_0                : out   std_logic;
          rx_dout_reg_4                : out   std_logic;
          MSS_READY                    : in    std_logic := 'U';
          FAB_CCC_GL0                  : in    std_logic := 'U';
          CoreUARTapb_1_0_OVERFLOW     : out   std_logic;
          CoreUARTapb_1_0_RXRDY        : out   std_logic;
          un13_psel_0_0                : in    std_logic := 'U';
          CoreAPB3_0_APBmslave3_PSELx  : in    std_logic := 'U';
          PWM_STRETCH_0_sqmuxa_0       : in    std_logic := 'U';
          un5_psel_0_0                 : in    std_logic := 'U';
          un1_nxtprdata_xhdl722_0      : in    std_logic := 'U';
          un3_wen                      : in    std_logic := 'U';
          un3_oen                      : in    std_logic := 'U';
          TX2_c                        : out   std_logic;
          CoreUARTapb_1_0_TXRDY        : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR  : out   std_logic;
          RX2_c                        : in    std_logic := 'U'
        );
  end component;

  component corepwm
    port( CoreAPB3_0_APBmslave0_PADDR    : in    std_logic_vector(7 downto 2) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA   : in    std_logic_vector(31 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA_1 : out   std_logic_vector(4 to 4);
          PRDATA_regif_1_iv_1            : out   std_logic_vector(0 to 0);
          PRDATA_regif_1_iv_xx           : out   std_logic_vector(0 to 0);
          pwm_enable_reg_m               : out   std_logic_vector(3 to 3);
          PRDATA_regif_1_0_iv_yy         : out   std_logic_vector(2 to 2);
          CoreAPB3_0_APBmslave2_PRDATA_4 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_5 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_6 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_2 : out   std_logic;
          CoreAPB3_0_APBmslave2_PRDATA_0 : out   std_logic;
          MSS_READY                      : in    std_logic := 'U';
          FAB_CCC_GL0                    : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE   : in    std_logic := 'U';
          PWM_STRETCH_0_sqmuxa_0         : out   std_logic;
          un3_wen_2                      : out   std_logic;
          CoreAPB3_0_APBmslave2_PSELx    : in    std_logic := 'U';
          PRDATA_generated_sn_m5_0       : out   std_logic;
          N_26_0                         : out   std_logic;
          prdata_typ21                   : out   std_logic;
          N_339                          : out   std_logic;
          N_322                          : out   std_logic;
          N_323                          : out   std_logic;
          N_324                          : out   std_logic;
          N_325                          : out   std_logic;
          N_326                          : out   std_logic;
          N_327                          : out   std_logic;
          N_329                          : out   std_logic;
          N_330                          : out   std_logic;
          N_331                          : out   std_logic;
          N_332                          : out   std_logic;
          N_333                          : out   std_logic;
          N_334                          : out   std_logic;
          N_335                          : out   std_logic;
          N_336                          : out   std_logic;
          N_340                          : out   std_logic;
          N_341                          : out   std_logic;
          N_342                          : out   std_logic;
          N_343                          : out   std_logic;
          N_344                          : out   std_logic;
          N_345                          : out   std_logic;
          N_338                          : out   std_logic;
          N_328                          : out   std_logic;
          N_10_0                         : in    std_logic := 'U';
          un13_psel_0_0                  : in    std_logic := 'U';
          N_240                          : out   std_logic;
          PRDATA_generated_sn_N_7_mux    : out   std_logic;
          N_337                          : out   std_logic;
          N_23_0                         : out   std_logic;
          N_316                          : out   std_logic;
          pwm_out_4_c                    : out   std_logic;
          pwm_out_3_c                    : out   std_logic;
          pwm_out_2_c                    : out   std_logic;
          pwm_out_1_c                    : out   std_logic
        );
  end component;

  component mss_top_sb_MSS
    port( CoreAPB3_0_APBmslave0_PADDR                  : out   std_logic_vector(8 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : out   std_logic_vector(15 downto 12);
          CoreAPB3_0_APBmslave0_PWDATA                 : out   std_logic_vector(31 downto 0);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : in    std_logic_vector(31 downto 0) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N    : out   std_logic;
          CoreAPB3_0_APBmslave0_PENABLE                : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                 : out   std_logic;
          mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F         : out   std_logic;
          CoreUARTapb_0_0_intr_or_2_Y                  : in    std_logic := 'U';
          CoreUARTapb_1_0_intr_or_2_Y                  : in    std_logic := 'U';
          FAB_CCC_LOCK                                 : in    std_logic := 'U';
          FAB_CCC_GL0                                  : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CCC_0_FCCC
    port( FAB_CCC_GL0                                        : out   std_logic;
          FAB_CCC_LOCK                                       : out   std_logic;
          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_FABOSC_0_OSC
    port( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : out   std_logic
        );
  end component;

    signal BIBUF_COREI2C_0_0_SDA_IO_Y, GND_net_1, 
        \COREI2C_0_0_SDAO_i[0]\, BIBUF_COREI2C_0_0_SCL_IO_Y, 
        \COREI2C_0_0_SCLO_i[0]\, POWER_ON_RESET_N, 
        CoreUARTapb_1_0_intr_or_2_Y, CoreUARTapb_1_0_intr_or_1_Y, 
        CoreUARTapb_1_0_intr_or_0_Y, CoreUARTapb_1_0_RXRDY, 
        CoreUARTapb_1_0_TXRDY, CoreUARTapb_1_0_FRAMING_ERR, 
        CoreUARTapb_1_0_OVERFLOW, CoreUARTapb_0_0_intr_or_2_Y, 
        CoreUARTapb_0_0_intr_or_1_Y, CoreUARTapb_0_0_intr_or_0_Y, 
        CoreUARTapb_0_0_RXRDY, CoreUARTapb_0_0_TXRDY, 
        CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_OVERFLOW, 
        FAB_CCC_GL0, FAB_CCC_LOCK, 
        FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, \pwm_enable_reg_m[3]\, 
        \PRDATA_regif_1_0_iv_yy[2]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave3_PRDATA[7]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, \PRDATA_0_iv_1[7]\, 
        \PRDATA_0_iv_0[7]\, \PRDATAi_0[1]\, \PRDATAi_0[0]\, 
        \PRDATAi_0[4]\, \PRDATAi_0[2]\, \PRDATAi_0[6]\, 
        \PRDATAi_0[3]\, \PRDATA_regif_1_iv_1[0]\, 
        \CoreAPB3_0_APBmslave2_PRDATA_1[4]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        \PRDATA_regif_1_iv_xx[0]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[16]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[17]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[18]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[19]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[20]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[22]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[24]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[25]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[28]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[29]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[31]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave0_PSELx, CoreAPB3_0_APBmslave3_PSELx, 
        CoreAPB3_0_APBmslave2_PSELx, CoreAPB3_0_APBmslave1_PSELx, 
        N_26_0, PRDATA_generated_sn_m5_0, N_328, N_338, un7_pseli, 
        N_329, PRDATA_generated_sn_N_7_mux, N_327, N_326, N_325, 
        N_324, N_316, N_23_0, N_339, N_345, N_344, N_343, N_342, 
        N_341, N_340, N_337, N_336, N_335, N_334, N_333, N_332, 
        N_331, N_330, N_240, prdata_typ21, N_322, N_323, 
        \COREI2C_0_0_INT[0]\, \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, un5_psel_0_0, 
        un3_wen_2, MSS_READY, N_10_0, un13_psel_0_0, 
        PWM_STRETCH_0_sqmuxa_0, \CoreAPB3_0_APBmslave0_PWDATA[8]\, 
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
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, 
        \nxtprdata_xhdl7_1[4]\, \nxtprdata_xhdl7_1[0]\, 
        \rx_dout_reg[4]\, \rx_dout_reg[0]\, \controlReg2[4]\, 
        \controlReg2[0]\, \controlReg1[4]\, \controlReg1[0]\, 
        un3_oen, un1_nxtprdata_xhdl722_0, un3_wen, VCC_net_1
         : std_logic;

    for all : CoreAPB3
	Use entity work.CoreAPB3(DEF_ARCH);
    for all : COREI2C
	Use entity work.COREI2C(DEF_ARCH);
    for all : CoreResetP
	Use entity work.CoreResetP(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_0_0_CoreUARTapb
	Use entity work.mss_top_sb_CoreUARTapb_0_0_CoreUARTapb(DEF_ARCH);
    for all : mss_top_sb_CoreUARTapb_1_0_CoreUARTapb
	Use entity work.mss_top_sb_CoreUARTapb_1_0_CoreUARTapb(DEF_ARCH);
    for all : corepwm
	Use entity work.corepwm(DEF_ARCH);
    for all : mss_top_sb_MSS
	Use entity work.mss_top_sb_MSS(DEF_ARCH);
    for all : mss_top_sb_CCC_0_FCCC
	Use entity work.mss_top_sb_CCC_0_FCCC(DEF_ARCH);
    for all : mss_top_sb_FABOSC_0_OSC
	Use entity work.mss_top_sb_FABOSC_0_OSC(DEF_ARCH);
begin 


    CoreAPB3_0 : CoreAPB3
      port map(mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15)
         => \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PRDATA(5) => 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, pwm_enable_reg_m(3)
         => \pwm_enable_reg_m[3]\, PRDATA_regif_1_0_iv_yy(2) => 
        \PRDATA_regif_1_0_iv_yy[2]\, 
        CoreAPB3_0_APBmslave3_PRDATA(7) => 
        \CoreAPB3_0_APBmslave3_PRDATA[7]\, 
        CoreAPB3_0_APBmslave3_PRDATA(6) => 
        \CoreAPB3_0_APBmslave3_PRDATA[6]\, 
        CoreAPB3_0_APBmslave3_PRDATA(5) => 
        \CoreAPB3_0_APBmslave3_PRDATA[5]\, 
        CoreAPB3_0_APBmslave3_PRDATA(4) => 
        \CoreAPB3_0_APBmslave3_PRDATA[4]\, 
        CoreAPB3_0_APBmslave3_PRDATA(3) => 
        \CoreAPB3_0_APBmslave3_PRDATA[3]\, 
        CoreAPB3_0_APBmslave3_PRDATA(2) => 
        \CoreAPB3_0_APBmslave3_PRDATA[2]\, 
        CoreAPB3_0_APBmslave3_PRDATA(1) => 
        \CoreAPB3_0_APBmslave3_PRDATA[1]\, 
        CoreAPB3_0_APBmslave3_PRDATA(0) => 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, 
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
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, PRDATA_0_iv_1(7) => 
        \PRDATA_0_iv_1[7]\, PRDATA_0_iv_0(7) => 
        \PRDATA_0_iv_0[7]\, PRDATA_regif_1_iv_1(0) => 
        \PRDATA_regif_1_iv_1[0]\, 
        CoreAPB3_0_APBmslave2_PRDATA_1(4) => 
        \CoreAPB3_0_APBmslave2_PRDATA_1[4]\, 
        PRDATA_regif_1_iv_xx(0) => \PRDATA_regif_1_iv_xx[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[31]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[29]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[28]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[25]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[24]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[22]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[20]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[19]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[18]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[17]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[16]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
        PRDATAi_0_1 => \PRDATAi_0[1]\, PRDATAi_0_0 => 
        \PRDATAi_0[0]\, PRDATAi_0_4 => \PRDATAi_0[4]\, 
        PRDATAi_0_2 => \PRDATAi_0[2]\, PRDATAi_0_6 => 
        \PRDATAi_0[6]\, PRDATAi_0_3 => \PRDATAi_0[3]\, 
        CoreAPB3_0_APBmslave2_PRDATA_4 => 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        CoreAPB3_0_APBmslave2_PRDATA_2 => 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        CoreAPB3_0_APBmslave2_PRDATA_0 => 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        CoreAPB3_0_APBmslave2_PRDATA_5 => 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        CoreAPB3_0_APBmslave2_PRDATA_6 => 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        CoreAPB3_0_APBmslave0_PSELx => 
        CoreAPB3_0_APBmslave0_PSELx, CoreAPB3_0_APBmslave3_PSELx
         => CoreAPB3_0_APBmslave3_PSELx, 
        CoreAPB3_0_APBmslave2_PSELx => 
        CoreAPB3_0_APBmslave2_PSELx, CoreAPB3_0_APBmslave1_PSELx
         => CoreAPB3_0_APBmslave1_PSELx, N_26_0 => N_26_0, 
        PRDATA_generated_sn_m5_0 => PRDATA_generated_sn_m5_0, 
        N_328 => N_328, N_338 => N_338, un7_pseli => un7_pseli, 
        N_329 => N_329, PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_327 => N_327, N_326 => 
        N_326, N_325 => N_325, N_324 => N_324, N_316 => N_316, 
        N_23_0 => N_23_0, N_339 => N_339, N_345 => N_345, N_344
         => N_344, N_343 => N_343, N_342 => N_342, N_341 => N_341, 
        N_340 => N_340, N_337 => N_337, N_336 => N_336, N_335 => 
        N_335, N_334 => N_334, N_333 => N_333, N_332 => N_332, 
        N_331 => N_331, N_330 => N_330, N_240 => N_240, 
        prdata_typ21 => prdata_typ21, N_322 => N_322, N_323 => 
        N_323);
    
    BIBUF_COREI2C_0_0_SDA_IO : BIBUF
      port map(PAD => COREI2C_0_0_SDA_IO, D => GND_net_1, E => 
        \COREI2C_0_0_SDAO_i[0]\, Y => BIBUF_COREI2C_0_0_SDA_IO_Y);
    
    CoreUARTapb_1_0_intr_or_2 : OR3
      port map(A => CoreUARTapb_1_0_intr_or_1_Y, B => 
        CoreUARTapb_1_0_intr_or_0_Y, C => GND_net_1, Y => 
        CoreUARTapb_1_0_intr_or_2_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    COREI2C_0_0 : COREI2C
      port map(CoreAPB3_0_APBmslave0_PRDATA(5) => 
        \CoreAPB3_0_APBmslave0_PRDATA[5]\, COREI2C_0_0_SDAO_i(0)
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
        \CoreAPB3_0_APBmslave0_PADDR[0]\, PRDATA_0_iv_1(7) => 
        \PRDATA_0_iv_1[7]\, PRDATA_0_iv_0(7) => 
        \PRDATA_0_iv_0[7]\, CoreAPB3_0_APBmslave0_PWDATA(7) => 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, PRDATAi_0_3 => 
        \PRDATAi_0[3]\, PRDATAi_0_4 => \PRDATAi_0[4]\, 
        PRDATAi_0_6 => \PRDATAi_0[6]\, PRDATAi_0_1 => 
        \PRDATAi_0[1]\, PRDATAi_0_0 => \PRDATAi_0[0]\, 
        PRDATAi_0_2 => \PRDATAi_0[2]\, un7_pseli => un7_pseli, 
        un5_psel_0_0 => un5_psel_0_0, un3_wen_2 => un3_wen_2, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        N_10_0 => N_10_0, BIBUF_COREI2C_0_0_SCL_IO_Y => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, BIBUF_COREI2C_0_0_SDA_IO_Y
         => BIBUF_COREI2C_0_0_SDA_IO_Y, un13_psel_0_0 => 
        un13_psel_0_0, PWM_STRETCH_0_sqmuxa_0 => 
        PWM_STRETCH_0_sqmuxa_0, CoreAPB3_0_APBmslave0_PSELx => 
        CoreAPB3_0_APBmslave0_PSELx);
    
    CoreUARTapb_1_0_intr_or_0 : OR3
      port map(A => CoreUARTapb_1_0_FRAMING_ERR, B => 
        CoreUARTapb_1_0_OVERFLOW, C => GND_net_1, Y => 
        CoreUARTapb_1_0_intr_or_0_Y);
    
    CORERESETP_0 : CoreResetP
      port map(MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        POWER_ON_RESET_N => POWER_ON_RESET_N, 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F => 
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N => 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N);
    
    SYSRESET_POR : SYSRESET
      port map(POWER_ON_RESET_N => POWER_ON_RESET_N, DEVRST_N => 
        DEVRST_N);
    
    CoreUARTapb_1_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_1_0_RXRDY, B => 
        CoreUARTapb_1_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_1_0_intr_or_1_Y);
    
    CoreUARTapb_0_0_intr_or_0 : OR3
      port map(A => CoreUARTapb_0_0_FRAMING_ERR, B => 
        CoreUARTapb_0_0_OVERFLOW, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_0_Y);
    
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
        \CoreAPB3_0_APBmslave0_PADDR[2]\, rx_dout_reg_0(4) => 
        \rx_dout_reg[4]\, nxtprdata_xhdl7_1_0_4 => 
        \nxtprdata_xhdl7_1[4]\, nxtprdata_xhdl7_1_0_0 => 
        \nxtprdata_xhdl7_1[0]\, rx_dout_reg_0_d0 => 
        \rx_dout_reg[0]\, controlReg2_0_4 => \controlReg2[4]\, 
        controlReg2_0_0 => \controlReg2[0]\, controlReg1_0_4 => 
        \controlReg1[4]\, controlReg1_0_0 => \controlReg1[0]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, CoreUARTapb_0_0_OVERFLOW => 
        CoreUARTapb_0_0_OVERFLOW, CoreAPB3_0_APBmslave0_PWRITE
         => CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, N_10_0 => N_10_0, un3_oen
         => un3_oen, un5_psel_0_0 => un5_psel_0_0, un13_psel_0_0
         => un13_psel_0_0, un1_nxtprdata_xhdl722_0 => 
        un1_nxtprdata_xhdl722_0, un3_wen_2 => un3_wen_2, 
        PWM_STRETCH_0_sqmuxa_0 => PWM_STRETCH_0_sqmuxa_0, un3_wen
         => un3_wen, CoreAPB3_0_APBmslave1_PSELx => 
        CoreAPB3_0_APBmslave1_PSELx, CoreUARTapb_0_0_RXRDY => 
        CoreUARTapb_0_0_RXRDY, TX_c => TX_c, 
        CoreUARTapb_0_0_TXRDY => CoreUARTapb_0_0_TXRDY, RX_c => 
        RX_c, CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, CoreUARTapb_1_0_TXRDY => 
        CoreUARTapb_1_0_TXRDY);
    
    CoreUARTapb_0_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_0_0_RXRDY, B => 
        CoreUARTapb_0_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_1_Y);
    
    CoreUARTapb_1_0 : mss_top_sb_CoreUARTapb_1_0_CoreUARTapb
      port map(CoreAPB3_0_APBmslave3_PRDATA(7) => 
        \CoreAPB3_0_APBmslave3_PRDATA[7]\, 
        CoreAPB3_0_APBmslave3_PRDATA(6) => 
        \CoreAPB3_0_APBmslave3_PRDATA[6]\, 
        CoreAPB3_0_APBmslave3_PRDATA(5) => 
        \CoreAPB3_0_APBmslave3_PRDATA[5]\, 
        CoreAPB3_0_APBmslave3_PRDATA(4) => 
        \CoreAPB3_0_APBmslave3_PRDATA[4]\, 
        CoreAPB3_0_APBmslave3_PRDATA(3) => 
        \CoreAPB3_0_APBmslave3_PRDATA[3]\, 
        CoreAPB3_0_APBmslave3_PRDATA(2) => 
        \CoreAPB3_0_APBmslave3_PRDATA[2]\, 
        CoreAPB3_0_APBmslave3_PRDATA(1) => 
        \CoreAPB3_0_APBmslave3_PRDATA[1]\, 
        CoreAPB3_0_APBmslave3_PRDATA(0) => 
        \CoreAPB3_0_APBmslave3_PRDATA[0]\, 
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
        \CoreAPB3_0_APBmslave0_PADDR[2]\, nxtprdata_xhdl7_1_0 => 
        \nxtprdata_xhdl7_1[0]\, nxtprdata_xhdl7_1_4 => 
        \nxtprdata_xhdl7_1[4]\, controlReg2_0 => \controlReg2[0]\, 
        controlReg2_4 => \controlReg2[4]\, controlReg1_0 => 
        \controlReg1[0]\, controlReg1_4 => \controlReg1[4]\, 
        rx_dout_reg_0 => \rx_dout_reg[0]\, rx_dout_reg_4 => 
        \rx_dout_reg[4]\, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, CoreUARTapb_1_0_OVERFLOW => 
        CoreUARTapb_1_0_OVERFLOW, CoreUARTapb_1_0_RXRDY => 
        CoreUARTapb_1_0_RXRDY, un13_psel_0_0 => un13_psel_0_0, 
        CoreAPB3_0_APBmslave3_PSELx => 
        CoreAPB3_0_APBmslave3_PSELx, PWM_STRETCH_0_sqmuxa_0 => 
        PWM_STRETCH_0_sqmuxa_0, un5_psel_0_0 => un5_psel_0_0, 
        un1_nxtprdata_xhdl722_0 => un1_nxtprdata_xhdl722_0, 
        un3_wen => un3_wen, un3_oen => un3_oen, TX2_c => TX2_c, 
        CoreUARTapb_1_0_TXRDY => CoreUARTapb_1_0_TXRDY, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, RX2_c => RX2_c);
    
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        CoreAPB3_0_APBmslave2_PRDATA_1(4) => 
        \CoreAPB3_0_APBmslave2_PRDATA_1[4]\, 
        PRDATA_regif_1_iv_1(0) => \PRDATA_regif_1_iv_1[0]\, 
        PRDATA_regif_1_iv_xx(0) => \PRDATA_regif_1_iv_xx[0]\, 
        pwm_enable_reg_m(3) => \pwm_enable_reg_m[3]\, 
        PRDATA_regif_1_0_iv_yy(2) => \PRDATA_regif_1_0_iv_yy[2]\, 
        CoreAPB3_0_APBmslave2_PRDATA_4 => 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        CoreAPB3_0_APBmslave2_PRDATA_5 => 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        CoreAPB3_0_APBmslave2_PRDATA_6 => 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, 
        CoreAPB3_0_APBmslave2_PRDATA_2 => 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        CoreAPB3_0_APBmslave2_PRDATA_0 => 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, CoreAPB3_0_APBmslave0_PENABLE
         => CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, PWM_STRETCH_0_sqmuxa_0 => 
        PWM_STRETCH_0_sqmuxa_0, un3_wen_2 => un3_wen_2, 
        CoreAPB3_0_APBmslave2_PSELx => 
        CoreAPB3_0_APBmslave2_PSELx, PRDATA_generated_sn_m5_0 => 
        PRDATA_generated_sn_m5_0, N_26_0 => N_26_0, prdata_typ21
         => prdata_typ21, N_339 => N_339, N_322 => N_322, N_323
         => N_323, N_324 => N_324, N_325 => N_325, N_326 => N_326, 
        N_327 => N_327, N_329 => N_329, N_330 => N_330, N_331 => 
        N_331, N_332 => N_332, N_333 => N_333, N_334 => N_334, 
        N_335 => N_335, N_336 => N_336, N_340 => N_340, N_341 => 
        N_341, N_342 => N_342, N_343 => N_343, N_344 => N_344, 
        N_345 => N_345, N_338 => N_338, N_328 => N_328, N_10_0
         => N_10_0, un13_psel_0_0 => un13_psel_0_0, N_240 => 
        N_240, PRDATA_generated_sn_N_7_mux => 
        PRDATA_generated_sn_N_7_mux, N_337 => N_337, N_23_0 => 
        N_23_0, N_316 => N_316, pwm_out_4_c => pwm_out_4_c, 
        pwm_out_3_c => pwm_out_3_c, pwm_out_2_c => pwm_out_2_c, 
        pwm_out_1_c => pwm_out_1_c);
    
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[31]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[30]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[29]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[28]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[27]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[26]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[25]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[24]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[23]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[22]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[21]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[20]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[19]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[18]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[17]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[16]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[12]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[11]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[10]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[9]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[8]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[7]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[6]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[5]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[4]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[3]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[2]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA[0]\, 
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
        CoreUARTapb_0_0_intr_or_2_Y, CoreUARTapb_1_0_intr_or_2_Y
         => CoreUARTapb_1_0_intr_or_2_Y, FAB_CCC_LOCK => 
        FAB_CCC_LOCK, FAB_CCC_GL0 => FAB_CCC_GL0);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    CCC_0 : mss_top_sb_CCC_0_FCCC
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
    
    FABOSC_0 : mss_top_sb_FABOSC_0_OSC
      port map(FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC
         => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top is

    port( DEVRST_N           : in    std_logic;
          RX                 : in    std_logic;
          RX2                : in    std_logic;
          TX                 : out   std_logic;
          TX2                : out   std_logic;
          pwm_out_1          : out   std_logic;
          pwm_out_2          : out   std_logic;
          pwm_out_3          : out   std_logic;
          pwm_out_4          : out   std_logic;
          COREI2C_0_0_SCL_IO : inout std_logic := 'Z';
          COREI2C_0_0_SDA_IO : inout std_logic := 'Z'
        );

end mss_top;

architecture DEF_ARCH of mss_top is 

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
          RX_c               : in    std_logic := 'U';
          TX2_c              : out   std_logic;
          RX2_c              : in    std_logic := 'U'
        );
  end component;

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

    signal VCC_net_1, GND_net_1, RX_c, RX2_c, TX_c, TX2_c, 
        pwm_out_1_c, pwm_out_2_c, pwm_out_3_c, pwm_out_4_c
         : std_logic;

    for all : mss_top_sb
	Use entity work.mss_top_sb(DEF_ARCH);
begin 


    pwm_out_2_obuf : OUTBUF
      port map(D => pwm_out_2_c, PAD => pwm_out_2);
    
    pwm_out_4_obuf : OUTBUF
      port map(D => pwm_out_4_c, PAD => pwm_out_4);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    pwm_out_1_obuf : OUTBUF
      port map(D => pwm_out_1_c, PAD => pwm_out_1);
    
    mss_top_sb_0 : mss_top_sb
      port map(COREI2C_0_0_SDA_IO => COREI2C_0_0_SDA_IO, 
        COREI2C_0_0_SCL_IO => COREI2C_0_0_SCL_IO, DEVRST_N => 
        DEVRST_N, pwm_out_4_c => pwm_out_4_c, pwm_out_3_c => 
        pwm_out_3_c, pwm_out_2_c => pwm_out_2_c, pwm_out_1_c => 
        pwm_out_1_c, TX_c => TX_c, RX_c => RX_c, TX2_c => TX2_c, 
        RX2_c => RX2_c);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    TX_obuf : OUTBUF
      port map(D => TX_c, PAD => TX);
    
    pwm_out_3_obuf : OUTBUF
      port map(D => pwm_out_3_c, PAD => pwm_out_3);
    
    RX_ibuf : INBUF
      port map(PAD => RX, Y => RX_c);
    
    RX2_ibuf : INBUF
      port map(PAD => RX2, Y => RX2_c);
    
    TX2_obuf : OUTBUF
      port map(D => TX2_c, PAD => TX2);
    

end DEF_ARCH; 
