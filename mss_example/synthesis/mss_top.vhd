-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity COREAPB3_MUXPTOB3 is

    port( PSELSBUS_0_a2_0_0                            : out   std_logic_vector(1 to 1);
          nxtprdata_xhdl7_1_6_0_a2_16_0                : out   std_logic_vector(0 to 0);
          PRDATA_3_0_a2_12_0                           : out   std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12);
          PRDATA_3_0_a2_4_4_1                          : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(8 downto 0);
          PRDATA_3_0_a2_7_0                            : out   std_logic_vector(6 to 6);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0);
          serdat                                       : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0);
          pwm_enable_reg                               : in    std_logic_vector(4 downto 1);
          sersta                                       : in    std_logic_vector(4 downto 0);
          PWM_STRETCH                                  : in    std_logic_vector(3 downto 0);
          pwm_negedge_reg                              : in    std_logic_vector(128 downto 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          sercon_7                                     : in    std_logic;
          sercon_6                                     : in    std_logic;
          sercon_5                                     : in    std_logic;
          sercon_1                                     : in    std_logic;
          sercon_0                                     : in    std_logic;
          sercon_4                                     : in    std_logic;
          sercon_2                                     : in    std_logic;
          N_2036                                       : out   std_logic;
          N_2014                                       : out   std_logic;
          N_1134                                       : out   std_logic;
          PRDATA_m1_e_1                                : out   std_logic;
          PRDATA_0_0_a2_5_out                          : out   std_logic;
          PRDATA_3_0_o2_2_out                          : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          N_1124                                       : out   std_logic;
          PRDATA_m1_0_a2_6_0                           : out   std_logic;
          sync_update                                  : in    std_logic;
          PRDATA_m3_e_1_2                              : out   std_logic;
          N_2018                                       : out   std_logic;
          N_1975                                       : out   std_logic;
          PRDATA_0_0_a2_4_out                          : out   std_logic;
          N_2038                                       : out   std_logic;
          N_1131                                       : in    std_logic;
          PRDATA_m3_e_1_3                              : out   std_logic;
          N_1120                                       : out   std_logic;
          N_1138                                       : out   std_logic;
          N_1135                                       : in    std_logic;
          PRDATA_N_3_mux_10                            : out   std_logic;
          N_2037                                       : in    std_logic;
          N_2034                                       : in    std_logic;
          N_2330                                       : out   std_logic;
          N_2019                                       : out   std_logic;
          N_2039                                       : in    std_logic
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

    signal \N_2036\, \PRDATA_3_0_1_1[1]_net_1\, N_1677, 
        \PRDATA_3_0_1[1]_net_1\, \N_2014\, \PRDATA_m3_e_0_3\, 
        \N_1134\, \PRDATA_3_3_1[0]_net_1\, \PRDATA_m1_e_1\, 
        \PRDATA_0_0_a2_5_out\, \PRDATA_3_3[0]_net_1\, 
        \PSELSBUS_0_a2_0_0[1]_net_1\, \PRDATA_3_0_0_1[7]_net_1\, 
        \PRDATA_3_0_1_a0[7]_net_1\, \PRDATA_3_0_0[7]_net_1\, 
        \PRDATA_3_0_1_a0_0[7]_net_1\, 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, \PRDATA_m2_0_a2_7_0\, 
        \PRDATA_3_0_o2_2_out\, \PRDATA_3_0_a2_12_0[0]_net_1\, 
        N_1524, N_1526, N_1525, N_1522, \N_1124\, \PRDATA_m2_0\, 
        \PRDATA_m2\, PRDATA_m1_0_a2_6_0_net_1, 
        \PRDATA_m1_0_a2_10_0\, \PRDATA_3_0_a2_2_0[3]_net_1\, 
        \PRDATA_3_a1_0[2]_net_1\, \PRDATA_3_0_a2_7_1[3]_net_1\, 
        PRDATA_m2_e_0_0, \PRDATA_m1_e_7_1\, 
        \PRDATA_3_0_a2_15_1[0]_net_1\, 
        \PRDATA_3_0_a2_4_0[0]_net_1\, \PRDATA_m2_e_1_1\, 
        \PRDATA_m3_e_0_2\, \PRDATA_m4_e_1\, PRDATA_m3_e_1_2_net_1, 
        \PRDATA_3_0_a2_4_4_1[0]_net_1\, \PRDATA_m1_0_a2_9_0\, 
        \PRDATA_m1_0_a2_1_0\, PRDATA_m1_0_a2_0, 
        \PRDATA_m1_0_a2_12_0\, \PRDATA_3_0_a2_2_1[0]_net_1\, 
        \N_2018\, \N_1975\, PRDATA_m3_e_0, \PRDATA_0_0_a2_4_out\, 
        \N_2038\, \PRDATA_m2_0_a2_5_0\, PRDATA_m2_0_a2_7_0_0, 
        \PRDATA_m3_0_a2_10_1\, \PRDATA_3_0_a2_7_0[6]_net_1\, 
        \PRDATA_3_0_a2_1_0[1]_net_1\, \PRDATA_m1_0_a2_8_0\, 
        \PRDATA_3_0_1_a0_3[7]_net_1\, \PRDATA_m5_0_a2_3\, 
        \PRDATA_m1_e_19_2_1\, \PRDATA_m3_e_1_3\, \N_1120\, 
        \N_1138\, \PRDATA_m2_e_4_2\, \PRDATA_m1_e_7_3\, N_1710, 
        N_1671, N_2387, N_2013, \PRDATA_N_3_mux_10\, 
        \PRDATA_3_1_tz[5]_net_1\, \PRDATA_3_0_3_1[3]_net_1\, 
        N_1718, N_1709, N_1708, \PRDATA_3_0_0[6]_net_1\, 
        \PRDATA_3_0[3]_net_1\, \PRDATA_3_0[0]_net_1\, 
        \PRDATA_0[2]_net_1\, N_1685, N_1690, N_2024, N_1676, 
        \PRDATA_m1_0_a2_2\, \PRDATA_3_0_a1[3]_net_1\, N_2396, 
        N_1742, N_1733, \PRDATA_3_0_7[2]\, \N_2330\, \N_2019\, 
        N_1705, N_1724, N_2023, \PRDATA_3_2_tz[0]_net_1\, N_2062, 
        N_2020, \PRDATA_3_0_1[4]_net_1\, \PRDATA_3[2]_net_1\, 
        \PRDATA_3_1_0[5]_net_1\, \PRDATA_3_0_4[4]_net_1\, 
        \PRDATA_3_0_2[4]_net_1\, 
        \PRDATA_3_0_o2_2_s_RNIVBQB1[2]_net_1\, 
        \PRDATA_3_0_o2_2_s_RNI7LRB1[2]_net_1\, 
        \PRDATA_3_0_o2_2_s_RNI6KRB1[2]_net_1\, PRDATA_N_8_mux, 
        N_1614, N_1622, N_1630, N_1638, N_1650, N_1659, N_1697, 
        N_1780, N_1784, N_1788, N_1897, N_1901, N_1913, N_1921, 
        N_1663, N_1682, N_1730, N_1693, N_1738, N_1735, N_1714, 
        N_1909, N_1646, N_1642, N_1634, N_1618, 
        \PRDATA_3_0_4[6]_net_1\, \PRDATA_3_0_3[6]_net_1\, 
        \PRDATA_3_0_2[6]_net_1\, \PRDATA_3_4[3]_net_1\, 
        \PRDATA_3_3[3]_net_1\, \PRDATA_3_3_0[0]_net_1\, 
        \PRDATA_3_2_0[0]_net_1\, \PRDATA_3_0_4[1]_net_1\, 
        \PRDATA_3_0_3[1]_net_1\, \PRDATA_2[2]_net_1\, 
        \PRDATA_3_3[5]_net_1\, \PRDATA_3_2[5]_net_1\, 
        \PRDATA_3_0_2[7]_net_1\, \PRDATA_0_0_0[26]\, 
        \PRDATA_0_0_0[25]\, \PRDATA_0_0_0[17]\, 
        \PRDATA_0_0_0[28]\, \PRDATA_0_0_0[22]\, 
        \PRDATA_0_0_0[31]\, \PRDATA_0_0_0[27]\, 
        \PRDATA_0_0_0[18]\, \PRDATA_0_0_0[21]\, 
        \PRDATA_0_0_0[20]\, \PRDATA_0_0_0[14]\, 
        \PRDATA_0_0_0[12]\, \PRDATA_0_0_0[19]\, \PRDATA_0_0[29]\, 
        \PRDATA_0_0[13]\, \PRDATA_0_0_0[24]\, \PRDATA_0_0_0[15]\, 
        \PRDATA_0_0[30]\, \PRDATA_0_0_0[11]\, \PRDATA_0_0_0[10]\, 
        \PRDATA_0_0_0[8]\, \PRDATA_0_0_0[9]\, 
        \PRDATA_0_0_0_0[23]\, \PRDATA_0_0_0_0[16]\, 
        \PRDATA_3_6[3]_net_1\, \PRDATA_3_5[3]_net_1\, 
        \PRDATA_3_5[0]_net_1\, \PRDATA_3_0_5[1]_net_1\, 
        \PRDATA_5[2]_net_1\, \PRDATA_3_0_4[7]_net_1\, GND_net_1, 
        VCC_net_1 : std_logic;

begin 

    PSELSBUS_0_a2_0_0(1) <= \PSELSBUS_0_a2_0_0[1]_net_1\;
    nxtprdata_xhdl7_1_6_0_a2_16_0(0) <= 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\;
    PRDATA_3_0_a2_12_0(0) <= \PRDATA_3_0_a2_12_0[0]_net_1\;
    PRDATA_3_0_a2_4_4_1(0) <= \PRDATA_3_0_a2_4_4_1[0]_net_1\;
    PRDATA_3_0_a2_7_0(6) <= \PRDATA_3_0_a2_7_0[6]_net_1\;
    N_2036 <= \N_2036\;
    N_2014 <= \N_2014\;
    N_1134 <= \N_1134\;
    PRDATA_m1_e_1 <= \PRDATA_m1_e_1\;
    PRDATA_0_0_a2_5_out <= \PRDATA_0_0_a2_5_out\;
    PRDATA_3_0_o2_2_out <= \PRDATA_3_0_o2_2_out\;
    N_1124 <= \N_1124\;
    PRDATA_m1_0_a2_6_0 <= PRDATA_m1_0_a2_6_0_net_1;
    PRDATA_m3_e_1_2 <= PRDATA_m3_e_1_2_net_1;
    N_2018 <= \N_2018\;
    N_1975 <= \N_1975\;
    PRDATA_0_0_a2_4_out <= \PRDATA_0_0_a2_4_out\;
    N_2038 <= \N_2038\;
    PRDATA_m3_e_1_3 <= \PRDATA_m3_e_1_3\;
    N_1120 <= \N_1120\;
    N_1138 <= \N_1138\;
    PRDATA_N_3_mux_10 <= \PRDATA_N_3_mux_10\;
    N_2330 <= \N_2330\;
    N_2019 <= \N_2019\;

    \PSELSBUS_0_a2_0_0_RNIDM8T[1]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, C => \PRDATA_3_0_o2_2_out\, 
        D => \PRDATA_0_0_a2_5_out\, Y => N_2013);
    
    \PRDATA_3_3[5]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sersta(2), B => \PRDATA_3_1_tz[5]_net_1\, C
         => N_2013, D => N_2396, Y => \PRDATA_3_3[5]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI8MRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(128), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1921);
    
    \PRDATA_3_0_o2_2_s_RNILL401[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \PRDATA_m3_e_1_3\, B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        PRDATA_m3_e_1_2_net_1, Y => N_2062);
    
    \PRDATA_3_0_o2_2_s_RNI1EQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(112), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1913);
    
    \PRDATA_3_0_o2_2_s_RNIC1NO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(61), B => pwm_negedge_reg(29), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[28]\);
    
    \PRDATA_3_0_o2_2_s_RNIF3MO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(58), B => pwm_negedge_reg(26), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[25]\);
    
    PRDATA_m2_0 : CFG3
      generic map(INIT => x"53")

      port map(A => pwm_negedge_reg(37), B => pwm_negedge_reg(5), 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => \PRDATA_m2_0\);
    
    \PRDATA_3_0_a2[4]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        CoreAPB3_0_APBmslave1_PRDATA(4), C => 
        \PRDATA_3_0_a2_12_0[0]_net_1\, D => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, Y => N_1708);
    
    PRDATA_m4_e : CFG4
      generic map(INIT => x"4000")

      port map(A => \PRDATA_3_0_o2_2_out\, B => \PRDATA_m4_e_1\, 
        C => \PRDATA_0_0_a2_5_out\, D => \PRDATA_0_0_a2_4_out\, Y
         => N_1710);
    
    PRDATA_m1_e_7_1 : CFG4
      generic map(INIT => x"00A8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => sersta(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \PRDATA_m1_e_7_1\);
    
    \PRDATA_3_0_o2_2_s_RNIUI831_2[2]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \PRDATA_m3_e_1_3\, B => 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, C => 
        PRDATA_m3_e_1_2_net_1, Y => N_2023);
    
    \PRDATA_3_0_o2_2_s_RNI41TG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2024, B => pwm_negedge_reg(78), C => 
        \PRDATA_0_0[13]\, D => 
        \PRDATA_3_0_o2_2_s_RNIVBQB1[2]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(13));
    
    \PRDATA_3_0_o2[3]\ : CFG2
      generic map(INIT => x"D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(4), Y => N_1524);
    
    \PRDATA_3_0_o2_2_s_RNI85TG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(79), B => N_2024, C => N_1909, 
        D => \PRDATA_0_0_0[14]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(14));
    
    \PRDATA_3_0_o2_2_s_RNI110H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(84), B => N_2024, C => N_1642, 
        D => \PRDATA_0_0_0[19]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(19));
    
    \PRDATA_3_0_a2_15_1[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => 
        \PRDATA_3_0_a2_15_1[0]_net_1\);
    
    PRDATA_m1_e_19_2_1 : CFG3
      generic map(INIT => x"02")

      port map(A => serdat(0), B => N_1131, C => \N_1134\, Y => 
        \PRDATA_m1_e_19_2_1\);
    
    \PRDATA_3_0_o2_2_s_RNI7LRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(127), D => \PRDATA_0_0_a2_4_out\, Y
         => \PRDATA_3_0_o2_2_s_RNI7LRB1[2]_net_1\);
    
    \PRDATA_m3_e_1_2\ : CFG4
      generic map(INIT => x"2000")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y
         => PRDATA_m3_e_1_2_net_1);
    
    \PRDATA_3_0_o2_2_s_RNI9VNO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(64), B => pwm_negedge_reg(32), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[31]\);
    
    \PRDATA_3_3_0[0]\ : CFG4
      generic map(INIT => x"D5C0")

      port map(A => \N_1120\, B => pwm_negedge_reg(33), C => 
        \N_2019\, D => \PRDATA_3_2_tz[0]_net_1\, Y => 
        \PRDATA_3_3_0[0]_net_1\);
    
    \PRDATA_3_0_1[1]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \N_2036\, B => \PRDATA_3_0_1_1[1]_net_1\, C
         => CoreAPB3_0_APBmslave2_PRDATA(1), D => N_1677, Y => 
        \PRDATA_3_0_1[1]_net_1\);
    
    PRDATA_m2_e_8 : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        CoreAPB3_0_APBmslave1_PRDATA(1), C => 
        \PRDATA_3_0_a2_12_0[0]_net_1\, D => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, Y => N_1677);
    
    \PRDATA_0_0_a2_4_s[27]\ : CFG3
      generic map(INIT => x"08")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_0_0_a2_4_out\);
    
    PRDATA_m1_e_8_0 : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_2018\);
    
    \PRDATA_3_0_a2_4[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PRDATA_m1_0_a2_6_0_net_1, B => 
        pwm_negedge_reg(66), C => \PRDATA_m1_e_1\, D => 
        \PRDATA_0_0_a2_5_out\, Y => N_1682);
    
    \PRDATA_3_0_o2_2_s_RNI5IQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(116), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1642);
    
    PRDATA_m2 : CFG3
      generic map(INIT => x"53")

      port map(A => pwm_negedge_reg(35), B => pwm_negedge_reg(3), 
        C => CoreAPB3_0_APBmslave0_PADDR(3), Y => \PRDATA_m2\);
    
    \PRDATA_3_0_o2_2_s_RNI8RKO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(50), B => pwm_negedge_reg(18), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[17]\);
    
    PRDATA_m3_e_0_2 : CFG4
      generic map(INIT => x"0001")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(6), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \PRDATA_m3_e_0_2\);
    
    \PRDATA_3_0_a2_15[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => N_2034, B => \PRDATA_3_0_a2_15_1[0]_net_1\, C
         => \N_1975\, D => \N_2038\, Y => \N_2330\);
    
    \PRDATA_3_0_a2[3]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => N_1524, 
        C => PRDATA_m3_e_1_2_net_1, D => \PRDATA_m3_e_1_3\, Y => 
        N_1697);
    
    PRDATA_m1_e_0_0 : CFG3
      generic map(INIT => x"02")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), Y
         => \N_1975\);
    
    \PRDATA_3_0_a2_7_1[3]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => sersta(0), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_3_0_a2_7_1[3]_net_1\);
    
    PRDATA_m2_e_0 : CFG4
      generic map(INIT => x"0010")

      port map(A => \N_1134\, B => \N_1120\, C => PRDATA_m2_e_0_0, 
        D => N_1135, Y => N_1733);
    
    \PRDATA_3_3_1[0]\ : CFG4
      generic map(INIT => x"0A0C")

      port map(A => pwm_negedge_reg(97), B => pwm_negedge_reg(65), 
        C => CoreAPB3_0_APBmslave0_PADDR(4), D => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \PRDATA_3_3_1[0]_net_1\);
    
    \PRDATA_0[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \PRDATA_m1_0_a2_12_0\, B => 
        CoreAPB3_0_APBmslave2_PRDATA(2), C => \N_2036\, D => 
        \N_1975\, Y => \PRDATA_0[2]_net_1\);
    
    \PRDATA_3_2_0[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => PWM_STRETCH(0), B => N_1671, C => \N_2330\, D
         => \PRDATA_3_0[0]_net_1\, Y => \PRDATA_3_2_0[0]_net_1\);
    
    PRDATA_m2_0_a2_7_0 : CFG4
      generic map(INIT => x"AC00")

      port map(A => pwm_negedge_reg(113), B => 
        pwm_negedge_reg(81), C => CoreAPB3_0_APBmslave0_PADDR(3), 
        D => \PRDATA_m2_0_a2_7_0\, Y => PRDATA_m2_0_a2_7_0_0);
    
    PRDATA_m1_0_a2_3 : CFG4
      generic map(INIT => x"4000")

      port map(A => \N_1138\, B => \PRDATA_m1_e_1\, C => sercon_0, 
        D => N_2037, Y => N_1676);
    
    \PRDATA_3_0_a2_4_0[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        sync_update, C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_3_0_a2_4_0[0]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PRDATA_3_0_3_1[3]\ : CFG4
      generic map(INIT => x"AE0C")

      port map(A => COREI2C_0_0_INT(0), B => serdat(3), C => 
        N_1135, D => N_2037, Y => \PRDATA_3_0_3_1[3]_net_1\);
    
    PRDATA_m3_e_0_5 : CFG3
      generic map(INIT => x"02")

      port map(A => pwm_negedge_reg(70), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => PRDATA_m3_e_0);
    
    \PRDATA_3_6[3]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \PRDATA_3_4[3]_net_1\, B => 
        \PRDATA_3_3[3]_net_1\, Y => \PRDATA_3_6[3]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI5RNO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(62), B => pwm_negedge_reg(30), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0[29]\);
    
    \PRDATA_3_0_o2_2_s_RNI5JRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(125), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1788);
    
    \PRDATA_3_0_a2_3[6]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(103), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1730);
    
    PRDATA_m1_0_a2_0_0 : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave1_PRDATA(0), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        PRDATA_m1_0_a2_0);
    
    \PRDATA_3_0_o2_2_s_RNI7PJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(45), B => pwm_negedge_reg(13), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[12]\);
    
    \PRDATA_3_0[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => PRDATA_m1_0_a2_0, B => 
        CoreAPB3_0_APBmslave2_PRDATA(0), C => \N_2036\, D => 
        \N_1975\, Y => \PRDATA_3_0[0]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI51SG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(76), B => N_2024, C => N_1901, 
        D => \PRDATA_0_0_0[11]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(11));
    
    \PRDATA_3_0_o2_2_s_RNI6IPB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(108), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1901);
    
    \PRDATA_3_0[1]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_3_0_4[1]_net_1\, B => 
        \PRDATA_3_0_5[1]_net_1\, C => \PRDATA_3_0_3[1]_net_1\, D
         => N_1682, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(1));
    
    \PRDATA_3_0[6]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_3_0_4[6]_net_1\, B => N_1730, C => 
        \PRDATA_3_0_3[6]_net_1\, D => \PRDATA_3_0_2[6]_net_1\, Y
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(6));
    
    \PRDATA_3_0_4[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2013, B => \N_2019\, C => 
        pwm_negedge_reg(34), D => \PRDATA_3_0_a2_1_0[1]_net_1\, Y
         => \PRDATA_3_0_4[1]_net_1\);
    
    \PRDATA_3_0_2[6]\ : CFG4
      generic map(INIT => x"FFEA")

      port map(A => N_1733, B => \N_2019\, C => 
        pwm_negedge_reg(39), D => \PRDATA_3_0_0[6]_net_1\, Y => 
        \PRDATA_3_0_2[6]_net_1\);
    
    \PRDATA_3_0_a2_4[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_3_0_a2_4_4_1[0]_net_1\, B => 
        \PRDATA_3_0_a2_4_0[0]_net_1\, C => \N_1975\, D => 
        \N_2018\, Y => N_1671);
    
    \PRDATA_3_0_o2_3[2]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \N_1134\, B => N_1131, Y => \N_1138\);
    
    \PRDATA_3_0_a2_12_0[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_3_0_a2_12_0[0]_net_1\);
    
    \PSELSBUS_0_a2_0_0_RNIKH4H4[1]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => pwm_negedge_reg(24), B => N_2023, C => 
        \PRDATA_0_0_0_0[23]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(23));
    
    \PRDATA_3_0_o2_2_s_RNIBD2H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(91), B => N_2024, C => N_1618, 
        D => \PRDATA_0_0_0[26]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(26));
    
    \PRDATA_3_0_o2_2_s_RNI5PLO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(53), B => pwm_negedge_reg(21), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[20]\);
    
    \PSELSBUS_0_a2_0_0_RNI16R43[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2013, B => \N_2019\, C => 
        pwm_negedge_reg(56), D => \PRDATA_m2_0_a2_5_0\, Y => 
        \PRDATA_0_0_0_0[23]\);
    
    \PRDATA_3_0_a2_2_0[3]\ : CFG3
      generic map(INIT => x"02")

      port map(A => pwm_negedge_reg(68), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \PRDATA_3_0_a2_2_0[3]_net_1\);
    
    \PRDATA_3_0_a2_5[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PRDATA_m1_0_a2_6_0_net_1, B => 
        pwm_negedge_reg(67), C => \PRDATA_m1_e_1\, D => 
        \PRDATA_0_0_a2_5_out\, Y => N_1693);
    
    \PRDATA_3_0_o2_5[2]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(0), B => 
        CoreAPB3_0_APBmslave0_PADDR(1), C => 
        CoreAPB3_0_APBmslave0_PADDR(8), D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => \N_1134\);
    
    \PRDATA_3[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_3_3_0[0]_net_1\, B => 
        \PRDATA_3_5[0]_net_1\, C => N_1676, D => 
        \PRDATA_3_3[0]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0));
    
    \PRDATA_3_0_o2_2_s_RNI3GQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(114), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1650);
    
    \PRDATA_3_0_o2_2_s[2]\ : CFG2
      generic map(INIT => x"E")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), Y => 
        \PRDATA_3_0_o2_2_out\);
    
    \PRDATA_3_0_o2_0[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \N_1124\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PRDATA_3_0_o2_2_s_RNI83HG[2]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        \PRDATA_3_0_o2_2_out\, D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => \PRDATA_m3_e_1_3\);
    
    PRDATA_m3_e_0_3 : CFG4
      generic map(INIT => x"0080")

      port map(A => \PSELSBUS_0_a2_0_0[1]_net_1\, B => 
        \PRDATA_m3_e_0_2\, C => sercon_1, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), Y => 
        \PRDATA_m3_e_0_3\);
    
    \PRDATA_3_4[3]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2013, B => \N_2019\, C => 
        pwm_negedge_reg(36), D => \PRDATA_3_0_a2_2_0[3]_net_1\, Y
         => \PRDATA_3_4[3]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNID1MO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(57), B => pwm_negedge_reg(25), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[24]\);
    
    \PRDATA_3_0_o2_2_s_RNI83HG_0[2]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D
         => \PRDATA_3_0_o2_2_out\, Y => \PRDATA_m1_e_1\);
    
    \PRDATA_3_0_a2_7[3]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \PRDATA_3_0_o2_2_out\, B => 
        \PRDATA_3_0_a2_7_1[3]_net_1\, C => \N_1138\, D => 
        \N_1975\, Y => N_1705);
    
    \PRDATA_3_0_o2_2_s_RNIDVJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(48), B => pwm_negedge_reg(16), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[15]\);
    
    \PRDATA_3_0_1_a0_3[7]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), C => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, D => 
        \PRDATA_3_0_1_a0_0[7]_net_1\, Y => 
        \PRDATA_3_0_1_a0_3[7]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI0DQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(111), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1909);
    
    \PRDATA_3_0_o2_2_s_RNI2GRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(122), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1622);
    
    \PRDATA_3_0_a1[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \N_1120\, B => \PRDATA_3_0_3_1[3]_net_1\, C
         => \N_1138\, Y => \PRDATA_3_0_a1[3]_net_1\);
    
    \PRDATA_3_2_tz[0]\ : CFG4
      generic map(INIT => x"F444")

      port map(A => N_1135, B => \PRDATA_m1_e_19_2_1\, C => 
        \N_2038\, D => \PRDATA_3_0_a2_2_1[0]_net_1\, Y => 
        \PRDATA_3_2_tz[0]_net_1\);
    
    \PRDATA_3_0_o2[6]\ : CFG2
      generic map(INIT => x"D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(7), Y => N_1522);
    
    \PRDATA_0_0_o2[9]\ : CFG2
      generic map(INIT => x"D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(10), Y => N_1526);
    
    PRDATA_m1_0_a2_2 : CFG4
      generic map(INIT => x"8000")

      port map(A => \N_2014\, B => N_2013, C => 
        pwm_negedge_reg(69), D => CoreAPB3_0_APBmslave0_PADDR(5), 
        Y => \PRDATA_m1_0_a2_2\);
    
    \PRDATA_3_0_o2_2_s_RNI9TLO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(55), B => pwm_negedge_reg(23), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[22]\);
    
    \PRDATA_3_0_o2_2_s_RNIVBQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(110), D => \PRDATA_0_0_a2_4_out\, Y
         => \PRDATA_3_0_o2_2_s_RNIVBQB1[2]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI1TRG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(75), B => N_2024, C => N_1897, 
        D => \PRDATA_0_0_0[10]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(10));
    
    \PRDATA_3_0_5[1]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2023, B => pwm_negedge_reg(2), C => N_1685, 
        D => \PRDATA_3_0_1[1]_net_1\, Y => 
        \PRDATA_3_0_5[1]_net_1\);
    
    \PRDATA_3_0_a2_16_RNITN681[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \N_2014\, B => pwm_negedge_reg(74), C => 
        \PRDATA_m1_e_1\, D => \PRDATA_0_0_a2_5_out\, Y => N_1659);
    
    \PRDATA_m1_0_a2_6_0\ : CFG3
      generic map(INIT => x"04")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        PRDATA_m1_0_a2_6_0_net_1);
    
    \PRDATA_3_0_o2_2_s_RNI65VG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(83), B => N_2024, C => N_1646, 
        D => \PRDATA_0_0_0[18]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(18));
    
    \PRDATA_3_0_o2_2_s_RNI550H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(85), B => N_2024, C => N_1638, 
        D => \PRDATA_0_0_0[20]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(20));
    
    \PRDATA_3_0_o2_2_s_RNI5NJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(44), B => pwm_negedge_reg(12), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[11]\);
    
    \PRDATA_3_0_o2_2_s_RNIATKO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(51), B => pwm_negedge_reg(19), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[18]\);
    
    \PRDATA_3_0_o2_2_s_RNI7JPB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(109), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1780);
    
    \PRDATA_3_0_o2_2_s_RNI4IRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(124), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1614);
    
    \PRDATA_3_0_a2_16_RNINBN95[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(105), B => N_2020, C => 
        N_1663, D => \PRDATA_0_0_0[8]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(8));
    
    \PRDATA_3_0_a2_19[0]\ : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => \N_2038\);
    
    \PRDATA_3_0_a2_16_RNISM681[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \N_2014\, B => pwm_negedge_reg(73), C => 
        \PRDATA_m1_e_1\, D => \PRDATA_0_0_a2_5_out\, Y => N_1663);
    
    \PRDATA_0_0_o2[8]\ : CFG2
      generic map(INIT => x"D")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(9), Y => N_1525);
    
    \PRDATA_0_0_a2_5_s[9]\ : CFG3
      generic map(INIT => x"80")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_0_0_a2_5_out\);
    
    \PRDATA_3_1_0[5]\ : CFG4
      generic map(INIT => x"FEFA")

      port map(A => N_1718, B => CoreAPB3_0_APBmslave2_PRDATA(5), 
        C => N_1724, D => \N_2036\, Y => \PRDATA_3_1_0[5]_net_1\);
    
    \PRDATA_3_0_4[6]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \PRDATA_3_0_a2_7_0[6]_net_1\, B => N_1522, C
         => N_2062, D => \PRDATA_N_3_mux_10\, Y => 
        \PRDATA_3_0_4[6]_net_1\);
    
    PRDATA_m5_0_a2_3 : CFG4
      generic map(INIT => x"0004")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        \PRDATA_3_0_o2_2_out\, D => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => \PRDATA_m5_0_a2_3\);
    
    \PRDATA_3_0_o2_2_s_RNIUI831_1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => \PRDATA_m3_e_1_3\, D
         => PRDATA_m3_e_1_2_net_1, Y => \N_2019\);
    
    \PRDATA_2[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \N_2330\, B => PWM_STRETCH(2), C => 
        \PRDATA_3_0_7[2]\, D => \PRDATA_0[2]_net_1\, Y => 
        \PRDATA_2[2]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI9RJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(46), B => pwm_negedge_reg(14), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0[13]\);
    
    \PRDATA_5[2]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => N_1690, B => \PRDATA_3[2]_net_1\, C => 
        \PRDATA_2[2]_net_1\, Y => \PRDATA_5[2]_net_1\);
    
    \PRDATA_3_0_a2_16[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \N_2014\);
    
    \PRDATA_3_0_o2_2_s_RNI693H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(92), B => N_2024, C => N_1614, 
        D => \PRDATA_0_0_0[27]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(27));
    
    \PRDATA_3_a1_0[2]\ : CFG4
      generic map(INIT => x"00C8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => serdat(2), D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_3_a1_0[2]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI3NLO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(52), B => pwm_negedge_reg(20), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[19]\);
    
    \PSELSBUS_0_a2_0_0_RNIJD1H4[1]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => pwm_negedge_reg(17), B => N_2023, C => 
        \PRDATA_0_0_0_0[16]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(16));
    
    \PRDATA_3_2[5]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \PRDATA_m1_0_a2_8_0\, B => 
        pwm_negedge_reg(38), C => \N_2019\, D => 
        \PRDATA_N_3_mux_10\, Y => \PRDATA_3_2[5]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI31UG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(80), B => N_2024, C => N_1913, 
        D => \PRDATA_0_0_0[15]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(15));
    
    \PRDATA_3_5[3]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \N_2330\, B => PWM_STRETCH(3), C => N_1697, D
         => \PRDATA_3_0_a1[3]_net_1\, Y => \PRDATA_3_5[3]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNIUI831_0[2]\ : CFG4
      generic map(INIT => x"0080")

      port map(A => \N_1975\, B => \PRDATA_0_0_a2_5_out\, C => 
        PRDATA_m1_0_a2_6_0_net_1, D => \PRDATA_3_0_o2_2_out\, Y
         => N_2024);
    
    \PRDATA_3_0_o2_2_s_RNI792H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(90), B => N_2024, C => N_1622, 
        D => \PRDATA_0_0_0[25]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(25));
    
    \PRDATA_3_0_4[4]\ : CFG4
      generic map(INIT => x"ECCC")

      port map(A => \PRDATA_N_3_mux_10\, B => \PRDATA_m1_0_a2_2\, 
        C => sercon_4, D => N_2037, Y => \PRDATA_3_0_4[4]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNIUI831[2]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \PRDATA_3_0_o2_2_out\, B => 
        \PRDATA_0_0_a2_4_out\, C => \N_1975\, D => 
        \PRDATA_0_0_a2_5_out\, Y => N_2020);
    
    \PRDATA_3_0_a2_2[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(99), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1690);
    
    \PRDATA_3_0_o2_2[2]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, 
        B => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), C
         => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), D
         => \PRDATA_3_0_o2_2_out\, Y => \N_1120\);
    
    PRDATA_m1_0_a2_10_0 : CFG3
      generic map(INIT => x"02")

      port map(A => pwm_negedge_reg(71), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \PRDATA_m1_0_a2_10_0\);
    
    \PRDATA_3_0_o2_2_s_RNI7KQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(118), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1634);
    
    \PRDATA_3_0_3[6]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => sersta(3), B => \PRDATA_m1_0_a2_10_0\, C => 
        N_2013, D => N_2396, Y => \PRDATA_3_0_3[6]_net_1\);
    
    PRDATA_m4_e_1 : CFG4
      generic map(INIT => x"1000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), C => 
        pwm_negedge_reg(101), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, Y => 
        \PRDATA_m4_e_1\);
    
    \PRDATA_3_3[0]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_3_3_1[0]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PADDR(5), C => \PRDATA_m1_e_1\, D
         => \PRDATA_0_0_a2_5_out\, Y => \PRDATA_3_3[0]_net_1\);
    
    \PRDATA_3_0_3[1]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => PWM_STRETCH(1), B => pwm_enable_reg(2), C => 
        \N_2330\, D => N_2387, Y => \PRDATA_3_0_3[1]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNIO5NL2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2062, B => \N_2019\, C => 
        pwm_negedge_reg(41), D => N_1525, Y => \PRDATA_0_0_0[8]\);
    
    PRDATA_m2_e_4_2 : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1131, B => serdat(4), C => \N_1134\, D => 
        N_1135, Y => \PRDATA_m2_e_4_2\);
    
    \PRDATA_3_0_o2_2_s_RNIDH4H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(96), B => N_2024, C => N_1921, 
        D => \PRDATA_0_0_0[31]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(31));
    
    \PRDATA_3_0_o2_2_s_RNI1JJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2062, B => \N_2019\, C => 
        pwm_negedge_reg(42), D => N_1526, Y => \PRDATA_0_0_0[9]\);
    
    PRDATA_m2_e_0_0_0 : CFG3
      generic map(INIT => x"04")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        serdat(6), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        PRDATA_m2_e_0_0);
    
    \PRDATA_3_0_o2_2_s_RNI9D4H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2024, B => pwm_negedge_reg(95), C => 
        \PRDATA_0_0[30]\, D => 
        \PRDATA_3_0_o2_2_s_RNI7LRB1[2]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(30));
    
    \PRDATA_3_0_o2_2_s_RNI594H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2024, B => pwm_negedge_reg(94), C => 
        \PRDATA_0_0[29]\, D => 
        \PRDATA_3_0_o2_2_s_RNI6KRB1[2]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(29));
    
    \PSELSBUS_0_a2_0_0[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, Y => 
        \PSELSBUS_0_a2_0_0[1]_net_1\);
    
    \PRDATA_3_0_4[7]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(40), B => \N_2019\, C => 
        N_1735, D => \PRDATA_3_0_2[7]_net_1\, Y => 
        \PRDATA_3_0_4[7]_net_1\);
    
    \PRDATA[2]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_1693, B => \PRDATA_5[2]_net_1\, C => 
        sercon_2, D => N_2039, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(2));
    
    PRDATA_m1_e_8 : CFG4
      generic map(INIT => x"0002")

      port map(A => \N_2018\, B => N_1131, C => \N_1120\, D => 
        \N_1134\, Y => N_2396);
    
    \PRDATA_3_0_o2_2_s_RNI6JQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(117), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1638);
    
    \PRDATA_3_0_a2_7_0[6]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => sercon_6, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_3_0_a2_7_0[6]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI6KRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(126), D => \PRDATA_0_0_a2_4_out\, Y
         => \PRDATA_3_0_o2_2_s_RNI6KRB1[2]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNIBTJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(47), B => pwm_negedge_reg(15), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[14]\);
    
    \PRDATA_3_0_a2_13[0]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), C => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \N_2036\);
    
    \PRDATA_3_1_tz[5]\ : CFG4
      generic map(INIT => x"FF08")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        pwm_negedge_reg(102), C => \N_1124\, D => PRDATA_m3_e_0, 
        Y => \PRDATA_3_1_tz[5]_net_1\);
    
    \PSELSBUS_0_a2_0_0_RNIU0P43[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => N_2013, B => \N_2019\, C => 
        pwm_negedge_reg(49), D => PRDATA_m2_0_a2_7_0_0, Y => 
        \PRDATA_0_0_0_0[16]\);
    
    PRDATA_m2_e : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1135, B => serdat(1), C => \N_1120\, D => 
        \N_1138\, Y => N_1685);
    
    PRDATA_m1_e_7_3 : CFG3
      generic map(INIT => x"02")

      port map(A => \PRDATA_m1_e_7_1\, B => \N_1134\, C => N_1131, 
        Y => \PRDATA_m1_e_7_3\);
    
    \PRDATA_3_0_o2_2_s_RNI7RLO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(54), B => pwm_negedge_reg(22), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[21]\);
    
    \PRDATA_3_0_a2_5[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2396, B => sersta(1), Y => N_1714);
    
    \PRDATA_3_0_o2_2_s_RNIDD0H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(87), B => N_2024, C => N_1630, 
        D => \PRDATA_0_0_0[22]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(22));
    
    \PRDATA_3_0_2[4]\ : CFG4
      generic map(INIT => x"FFDC")

      port map(A => \N_1120\, B => N_1709, C => \PRDATA_m2_e_4_2\, 
        D => N_1710, Y => \PRDATA_3_0_2[4]_net_1\);
    
    \PRDATA_3_0_a2_1_0[1]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_negedge_reg(98), C => CoreAPB3_0_APBmslave0_PADDR(5), 
        D => CoreAPB3_0_APBmslave0_PADDR(3), Y => 
        \PRDATA_3_0_a2_1_0[1]_net_1\);
    
    PRDATA_m1_e_0 : CFG3
      generic map(INIT => x"8A")

      port map(A => N_2062, B => pwm_negedge_reg(6), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => PRDATA_N_8_mux);
    
    \PRDATA_3[5]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_3_2[5]_net_1\, B => 
        \PRDATA_3_3[5]_net_1\, C => PRDATA_N_8_mux, D => 
        \PRDATA_3_1_0[5]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(5));
    
    PRDATA_m2_e_1 : CFG4
      generic map(INIT => x"0008")

      port map(A => \PRDATA_m2_e_1_1\, B => N_2037, C => 
        \PRDATA_3_0_o2_2_out\, D => \N_1138\, Y => N_1742);
    
    \PRDATA_3_0_o2_2_s_RNI95SG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(77), B => N_2024, C => N_1780, 
        D => \PRDATA_0_0_0[12]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(12));
    
    \PRDATA_3_5[0]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => pwm_negedge_reg(1), B => N_2023, C => 
        \PRDATA_3_2_0[0]_net_1\, Y => \PRDATA_3_5[0]_net_1\);
    
    PRDATA_m3_0_a2_10_1 : CFG3
      generic map(INIT => x"10")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        \PRDATA_m2_0\, C => CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \PRDATA_m3_0_a2_10_1\);
    
    \PRDATA_3_0_o2_2_s_RNI8LQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(119), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1630);
    
    \PRDATA_3_0_1_1[1]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \N_2014\, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        C => \PRDATA_m3_e_0_3\, D => \N_1134\, Y => 
        \PRDATA_3_0_1_1[1]_net_1\);
    
    \PRDATA_3_0_2[7]\ : CFG4
      generic map(INIT => x"EEFE")

      port map(A => N_1742, B => \PRDATA_3_0_0[7]_net_1\, C => 
        \PRDATA_m1_e_7_3\, D => \N_1120\, Y => 
        \PRDATA_3_0_2[7]_net_1\);
    
    \PRDATA_3_0_a2_4_4_1[0]\ : CFG3
      generic map(INIT => x"80")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(6), B => 
        CoreAPB3_0_APBmslave0_PADDR(7), C => 
        CoreAPB3_0_APBmslave0_PADDR(5), Y => 
        \PRDATA_3_0_a2_4_4_1[0]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI5HPB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(107), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1897);
    
    \PRDATA_3_0_o2_2_s_RNIAVMO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(60), B => pwm_negedge_reg(28), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[27]\);
    
    \PRDATA_3[2]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => N_2387, B => \PRDATA_N_3_mux_10\, C => 
        pwm_enable_reg(3), D => \PRDATA_3_a1_0[2]_net_1\, Y => 
        \PRDATA_3[2]_net_1\);
    
    \PRDATA_3_0_1[4]\ : CFG4
      generic map(INIT => x"FF08")

      port map(A => \PRDATA_m3_0_a2_10_1\, B => 
        \PRDATA_0_0_a2_5_out\, C => \N_1120\, D => N_1708, Y => 
        \PRDATA_3_0_1[4]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI3HRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(123), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1618);
    
    \PRDATA_3_0_o2_2_s_RNI1FRB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(121), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1784);
    
    \PRDATA_3_0_1_a0_0[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        serdat(7), Y => \PRDATA_3_0_1_a0_0[7]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI7TNO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(63), B => pwm_negedge_reg(31), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0[30]\);
    
    \PRDATA_3_0_o2_2_s_RNI4HQB1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \PRDATA_0_0_a2_5_out\, B => \PRDATA_m1_e_1\, 
        C => pwm_negedge_reg(115), D => \PRDATA_0_0_a2_4_out\, Y
         => N_1646);
    
    PRDATA_m2_0_a2_5_0_0 : CFG4
      generic map(INIT => x"AC00")

      port map(A => pwm_negedge_reg(120), B => 
        pwm_negedge_reg(88), C => CoreAPB3_0_APBmslave0_PADDR(3), 
        D => \PRDATA_m2_0_a2_7_0\, Y => \PRDATA_m2_0_a2_5_0\);
    
    PRDATA_m1_0_a2_9_0 : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave1_PRDATA(6), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_m1_0_a2_9_0\);
    
    \PRDATA_3_0_a2_9[1]\ : CFG4
      generic map(INIT => x"0040")

      port map(A => N_1135, B => \N_1975\, C => \N_2038\, D => 
        \PRDATA_3_0_o2_2_out\, Y => N_2387);
    
    \PRDATA_3_0_a2_0[7]\ : CFG3
      generic map(INIT => x"8A")

      port map(A => N_2062, B => pwm_negedge_reg(8), C => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => N_1735);
    
    \PRDATA_3_0_a2_0[5]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        CoreAPB3_0_APBmslave1_PRDATA(5), C => 
        \PRDATA_3_0_a2_12_0[0]_net_1\, D => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, Y => N_1718);
    
    \PRDATA_3_0[3]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \PRDATA_m1_0_a2_1_0\, B => 
        CoreAPB3_0_APBmslave2_PRDATA(3), C => \N_2036\, D => 
        \N_1975\, Y => \PRDATA_3_0[3]_net_1\);
    
    \PRDATA_3_0_0[6]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \PRDATA_m1_0_a2_9_0\, B => 
        CoreAPB3_0_APBmslave2_PRDATA(6), C => \N_2036\, D => 
        \N_1975\, Y => \PRDATA_3_0_0[6]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI990H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(86), B => N_2024, C => N_1634, 
        D => \PRDATA_0_0_0[21]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(21));
    
    \PRDATA_3_0_1_a0[7]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \N_1134\, B => \PRDATA_3_0_1_a0_3[7]_net_1\, 
        C => \N_1124\, D => \PRDATA_3_0_o2_2_out\, Y => 
        \PRDATA_3_0_1_a0[7]_net_1\);
    
    PRDATA_m1_0_a2_8_0 : CFG4
      generic map(INIT => x"0010")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => sercon_5, D => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \PRDATA_m1_0_a2_8_0\);
    
    PRDATA_m5_0_a2 : CFG4
      generic map(INIT => x"4000")

      port map(A => \PRDATA_m2\, B => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, C => \PRDATA_0_0_a2_5_out\, 
        D => \PRDATA_m5_0_a2_3\, Y => \PRDATA_3_0_7[2]\);
    
    \PRDATA_3_0_o2_2_s_RNIH5MO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(59), B => pwm_negedge_reg(27), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[26]\);
    
    \PRDATA_3_0_a2_16_RNI2RJC5[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(106), B => N_2020, C => 
        N_1659, D => \PRDATA_0_0_0[9]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(9));
    
    \PRDATA_3_0_0[7]\ : CFG4
      generic map(INIT => x"FF40")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), B => 
        \PSELSBUS_0_a2_0_0[1]_net_1\, C => 
        \PRDATA_3_0_0_1[7]_net_1\, D => 
        \PRDATA_3_0_1_a0[7]_net_1\, Y => \PRDATA_3_0_0[7]_net_1\);
    
    \PRDATA_3_3[3]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2387, B => pwm_enable_reg(4), C => N_1705, 
        D => \PRDATA_3_0[3]_net_1\, Y => \PRDATA_3_3[3]_net_1\);
    
    PRDATA_m1_0_a2_12_0 : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave1_PRDATA(2), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_m1_0_a2_12_0\);
    
    \PRDATA_3_0_a2_3[7]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \N_2014\, B => pwm_negedge_reg(72), C => 
        \PRDATA_m1_e_1\, D => \PRDATA_0_0_a2_5_out\, Y => N_1738);
    
    PRDATA_m1_0_a2_1_0 : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave1_PRDATA(3), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        \PRDATA_m1_0_a2_1_0\);
    
    \PRDATA_3_0[4]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \PRDATA_3_0_2[4]_net_1\, B => 
        \PRDATA_3_0_1[4]_net_1\, C => \PRDATA_3_0_4[4]_net_1\, D
         => N_1714, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(4));
    
    \PRDATA_3_0_o2_2_s_RNIAD3H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(93), B => N_2024, C => N_1788, 
        D => \PRDATA_0_0_0[28]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(28));
    
    \PRDATA_3_0[7]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(104), B => N_2020, C => 
        N_1738, D => \PRDATA_3_0_4[7]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(7));
    
    PRDATA_m1_e_23 : CFG4
      generic map(INIT => x"0010")

      port map(A => N_1131, B => \PRDATA_3_0_o2_2_out\, C => 
        \N_1975\, D => \N_1134\, Y => \PRDATA_N_3_mux_10\);
    
    PRDATA_m2_0_a2_5_0 : CFG2
      generic map(INIT => x"2")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(5), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \PRDATA_m2_0_a2_7_0\);
    
    \PRDATA_3[3]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2020, B => pwm_negedge_reg(100), C => 
        \PRDATA_3_6[3]_net_1\, D => \PRDATA_3_5[3]_net_1\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(3));
    
    \PRDATA_3_0_o2_2_s_RNICD1H5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(89), B => N_2024, C => N_1784, 
        D => \PRDATA_0_0_0[24]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(24));
    
    \PRDATA_3_0_a2_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2036\, B => 
        CoreAPB3_0_APBmslave2_PRDATA(4), Y => N_1709);
    
    \PRDATA_3_0_a2_6[5]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1135, B => serdat(5), C => \N_1120\, D => 
        \N_1138\, Y => N_1724);
    
    \PRDATA_3_0_0_1[7]\ : CFG4
      generic map(INIT => x"0CA0")

      port map(A => CoreAPB3_0_APBmslave2_PRDATA(7), B => 
        CoreAPB3_0_APBmslave1_PRDATA(7), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), Y => 
        \PRDATA_3_0_0_1[7]_net_1\);
    
    \PRDATA_3_0_o2_2_s_RNI3LJO2[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => pwm_negedge_reg(43), B => pwm_negedge_reg(11), 
        C => N_2023, D => \N_2019\, Y => \PRDATA_0_0_0[10]\);
    
    \PRDATA_3_0_o2_2_s_RNI21VG5[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => pwm_negedge_reg(82), B => N_2024, C => N_1650, 
        D => \PRDATA_0_0_0[17]\, Y => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(17));
    
    PRDATA_m2_e_1_1 : CFG4
      generic map(INIT => x"1000")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), C => 
        sercon_7, D => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, Y => 
        \PRDATA_m2_e_1_1\);
    
    \PRDATA_0_0_a2_5_0[27]\ : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\);
    
    \PRDATA_3_0_a2_2_1[0]\ : CFG4
      generic map(INIT => x"0045")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        pwm_enable_reg(1), C => CoreAPB3_0_APBmslave0_PADDR(3), D
         => CoreAPB3_0_APBmslave0_PADDR(2), Y => 
        \PRDATA_3_0_a2_2_1[0]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity CoreAPB3 is

    port( PSELSBUS_0_a2_0_0                            : out   std_logic_vector(1 to 1);
          nxtprdata_xhdl7_1_6_0_a2_16_0                : out   std_logic_vector(0 to 0);
          PRDATA_3_0_a2_12_0                           : out   std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12);
          PRDATA_3_0_a2_4_4_1                          : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(8 downto 0);
          PRDATA_3_0_a2_7_0                            : out   std_logic_vector(6 to 6);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0);
          serdat                                       : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0);
          pwm_enable_reg                               : in    std_logic_vector(4 downto 1);
          sersta                                       : in    std_logic_vector(4 downto 0);
          PWM_STRETCH                                  : in    std_logic_vector(3 downto 0);
          pwm_negedge_reg                              : in    std_logic_vector(128 downto 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          sercon_7                                     : in    std_logic;
          sercon_6                                     : in    std_logic;
          sercon_5                                     : in    std_logic;
          sercon_1                                     : in    std_logic;
          sercon_0                                     : in    std_logic;
          sercon_4                                     : in    std_logic;
          sercon_2                                     : in    std_logic;
          N_2036                                       : out   std_logic;
          N_2014                                       : out   std_logic;
          N_1134                                       : out   std_logic;
          PRDATA_m1_e_1                                : out   std_logic;
          PRDATA_0_0_a2_5_out                          : out   std_logic;
          PRDATA_3_0_o2_2_out                          : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic;
          N_1124                                       : out   std_logic;
          PRDATA_m1_0_a2_6_0                           : out   std_logic;
          sync_update                                  : in    std_logic;
          PRDATA_m3_e_1_2                              : out   std_logic;
          N_2018                                       : out   std_logic;
          N_1975                                       : out   std_logic;
          PRDATA_0_0_a2_4_out                          : out   std_logic;
          N_2038                                       : out   std_logic;
          N_1131                                       : in    std_logic;
          PRDATA_m3_e_1_3                              : out   std_logic;
          N_1120                                       : out   std_logic;
          N_1138                                       : out   std_logic;
          N_1135                                       : in    std_logic;
          PRDATA_N_3_mux_10                            : out   std_logic;
          N_2037                                       : in    std_logic;
          N_2034                                       : in    std_logic;
          N_2330                                       : out   std_logic;
          N_2019                                       : out   std_logic;
          N_2039                                       : in    std_logic
        );

end CoreAPB3;

architecture DEF_ARCH of CoreAPB3 is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component COREAPB3_MUXPTOB3
    port( PSELSBUS_0_a2_0_0                            : out   std_logic_vector(1 to 1);
          nxtprdata_xhdl7_1_6_0_a2_16_0                : out   std_logic_vector(0 to 0);
          PRDATA_3_0_a2_12_0                           : out   std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12) := (others => 'U');
          PRDATA_3_0_a2_4_4_1                          : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(8 downto 0) := (others => 'U');
          PRDATA_3_0_a2_7_0                            : out   std_logic_vector(6 to 6);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          serdat                                       : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          pwm_enable_reg                               : in    std_logic_vector(4 downto 1) := (others => 'U');
          sersta                                       : in    std_logic_vector(4 downto 0) := (others => 'U');
          PWM_STRETCH                                  : in    std_logic_vector(3 downto 0) := (others => 'U');
          pwm_negedge_reg                              : in    std_logic_vector(128 downto 1) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          sercon_7                                     : in    std_logic := 'U';
          sercon_6                                     : in    std_logic := 'U';
          sercon_5                                     : in    std_logic := 'U';
          sercon_1                                     : in    std_logic := 'U';
          sercon_0                                     : in    std_logic := 'U';
          sercon_4                                     : in    std_logic := 'U';
          sercon_2                                     : in    std_logic := 'U';
          N_2036                                       : out   std_logic;
          N_2014                                       : out   std_logic;
          N_1134                                       : out   std_logic;
          PRDATA_m1_e_1                                : out   std_logic;
          PRDATA_0_0_a2_5_out                          : out   std_logic;
          PRDATA_3_0_o2_2_out                          : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          N_1124                                       : out   std_logic;
          PRDATA_m1_0_a2_6_0                           : out   std_logic;
          sync_update                                  : in    std_logic := 'U';
          PRDATA_m3_e_1_2                              : out   std_logic;
          N_2018                                       : out   std_logic;
          N_1975                                       : out   std_logic;
          PRDATA_0_0_a2_4_out                          : out   std_logic;
          N_2038                                       : out   std_logic;
          N_1131                                       : in    std_logic := 'U';
          PRDATA_m3_e_1_3                              : out   std_logic;
          N_1120                                       : out   std_logic;
          N_1138                                       : out   std_logic;
          N_1135                                       : in    std_logic := 'U';
          PRDATA_N_3_mux_10                            : out   std_logic;
          N_2037                                       : in    std_logic := 'U';
          N_2034                                       : in    std_logic := 'U';
          N_2330                                       : out   std_logic;
          N_2019                                       : out   std_logic;
          N_2039                                       : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

    for all : COREAPB3_MUXPTOB3
	Use entity work.COREAPB3_MUXPTOB3(DEF_ARCH);
begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
      port map(PSELSBUS_0_a2_0_0(1) => PSELSBUS_0_a2_0_0(1), 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0) => 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0), PRDATA_3_0_a2_12_0(0)
         => PRDATA_3_0_a2_12_0(0), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        PRDATA_3_0_a2_4_4_1(0) => PRDATA_3_0_a2_4_4_1(0), 
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
        CoreAPB3_0_APBmslave0_PADDR(0), PRDATA_3_0_a2_7_0(6) => 
        PRDATA_3_0_a2_7_0(6), COREI2C_0_0_INT(0) => 
        COREI2C_0_0_INT(0), CoreAPB3_0_APBmslave1_PRDATA(7) => 
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
        CoreAPB3_0_APBmslave1_PRDATA(0), serdat(7) => serdat(7), 
        serdat(6) => serdat(6), serdat(5) => serdat(5), serdat(4)
         => serdat(4), serdat(3) => serdat(3), serdat(2) => 
        serdat(2), serdat(1) => serdat(1), serdat(0) => serdat(0), 
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
        CoreAPB3_0_APBmslave2_PRDATA(0), pwm_enable_reg(4) => 
        pwm_enable_reg(4), pwm_enable_reg(3) => pwm_enable_reg(3), 
        pwm_enable_reg(2) => pwm_enable_reg(2), pwm_enable_reg(1)
         => pwm_enable_reg(1), sersta(4) => sersta(4), sersta(3)
         => sersta(3), sersta(2) => sersta(2), sersta(1) => 
        sersta(1), sersta(0) => sersta(0), PWM_STRETCH(3) => 
        PWM_STRETCH(3), PWM_STRETCH(2) => PWM_STRETCH(2), 
        PWM_STRETCH(1) => PWM_STRETCH(1), PWM_STRETCH(0) => 
        PWM_STRETCH(0), pwm_negedge_reg(128) => 
        pwm_negedge_reg(128), pwm_negedge_reg(127) => 
        pwm_negedge_reg(127), pwm_negedge_reg(126) => 
        pwm_negedge_reg(126), pwm_negedge_reg(125) => 
        pwm_negedge_reg(125), pwm_negedge_reg(124) => 
        pwm_negedge_reg(124), pwm_negedge_reg(123) => 
        pwm_negedge_reg(123), pwm_negedge_reg(122) => 
        pwm_negedge_reg(122), pwm_negedge_reg(121) => 
        pwm_negedge_reg(121), pwm_negedge_reg(120) => 
        pwm_negedge_reg(120), pwm_negedge_reg(119) => 
        pwm_negedge_reg(119), pwm_negedge_reg(118) => 
        pwm_negedge_reg(118), pwm_negedge_reg(117) => 
        pwm_negedge_reg(117), pwm_negedge_reg(116) => 
        pwm_negedge_reg(116), pwm_negedge_reg(115) => 
        pwm_negedge_reg(115), pwm_negedge_reg(114) => 
        pwm_negedge_reg(114), pwm_negedge_reg(113) => 
        pwm_negedge_reg(113), pwm_negedge_reg(112) => 
        pwm_negedge_reg(112), pwm_negedge_reg(111) => 
        pwm_negedge_reg(111), pwm_negedge_reg(110) => 
        pwm_negedge_reg(110), pwm_negedge_reg(109) => 
        pwm_negedge_reg(109), pwm_negedge_reg(108) => 
        pwm_negedge_reg(108), pwm_negedge_reg(107) => 
        pwm_negedge_reg(107), pwm_negedge_reg(106) => 
        pwm_negedge_reg(106), pwm_negedge_reg(105) => 
        pwm_negedge_reg(105), pwm_negedge_reg(104) => 
        pwm_negedge_reg(104), pwm_negedge_reg(103) => 
        pwm_negedge_reg(103), pwm_negedge_reg(102) => 
        pwm_negedge_reg(102), pwm_negedge_reg(101) => 
        pwm_negedge_reg(101), pwm_negedge_reg(100) => 
        pwm_negedge_reg(100), pwm_negedge_reg(99) => 
        pwm_negedge_reg(99), pwm_negedge_reg(98) => 
        pwm_negedge_reg(98), pwm_negedge_reg(97) => 
        pwm_negedge_reg(97), pwm_negedge_reg(96) => 
        pwm_negedge_reg(96), pwm_negedge_reg(95) => 
        pwm_negedge_reg(95), pwm_negedge_reg(94) => 
        pwm_negedge_reg(94), pwm_negedge_reg(93) => 
        pwm_negedge_reg(93), pwm_negedge_reg(92) => 
        pwm_negedge_reg(92), pwm_negedge_reg(91) => 
        pwm_negedge_reg(91), pwm_negedge_reg(90) => 
        pwm_negedge_reg(90), pwm_negedge_reg(89) => 
        pwm_negedge_reg(89), pwm_negedge_reg(88) => 
        pwm_negedge_reg(88), pwm_negedge_reg(87) => 
        pwm_negedge_reg(87), pwm_negedge_reg(86) => 
        pwm_negedge_reg(86), pwm_negedge_reg(85) => 
        pwm_negedge_reg(85), pwm_negedge_reg(84) => 
        pwm_negedge_reg(84), pwm_negedge_reg(83) => 
        pwm_negedge_reg(83), pwm_negedge_reg(82) => 
        pwm_negedge_reg(82), pwm_negedge_reg(81) => 
        pwm_negedge_reg(81), pwm_negedge_reg(80) => 
        pwm_negedge_reg(80), pwm_negedge_reg(79) => 
        pwm_negedge_reg(79), pwm_negedge_reg(78) => 
        pwm_negedge_reg(78), pwm_negedge_reg(77) => 
        pwm_negedge_reg(77), pwm_negedge_reg(76) => 
        pwm_negedge_reg(76), pwm_negedge_reg(75) => 
        pwm_negedge_reg(75), pwm_negedge_reg(74) => 
        pwm_negedge_reg(74), pwm_negedge_reg(73) => 
        pwm_negedge_reg(73), pwm_negedge_reg(72) => 
        pwm_negedge_reg(72), pwm_negedge_reg(71) => 
        pwm_negedge_reg(71), pwm_negedge_reg(70) => 
        pwm_negedge_reg(70), pwm_negedge_reg(69) => 
        pwm_negedge_reg(69), pwm_negedge_reg(68) => 
        pwm_negedge_reg(68), pwm_negedge_reg(67) => 
        pwm_negedge_reg(67), pwm_negedge_reg(66) => 
        pwm_negedge_reg(66), pwm_negedge_reg(65) => 
        pwm_negedge_reg(65), pwm_negedge_reg(64) => 
        pwm_negedge_reg(64), pwm_negedge_reg(63) => 
        pwm_negedge_reg(63), pwm_negedge_reg(62) => 
        pwm_negedge_reg(62), pwm_negedge_reg(61) => 
        pwm_negedge_reg(61), pwm_negedge_reg(60) => 
        pwm_negedge_reg(60), pwm_negedge_reg(59) => 
        pwm_negedge_reg(59), pwm_negedge_reg(58) => 
        pwm_negedge_reg(58), pwm_negedge_reg(57) => 
        pwm_negedge_reg(57), pwm_negedge_reg(56) => 
        pwm_negedge_reg(56), pwm_negedge_reg(55) => 
        pwm_negedge_reg(55), pwm_negedge_reg(54) => 
        pwm_negedge_reg(54), pwm_negedge_reg(53) => 
        pwm_negedge_reg(53), pwm_negedge_reg(52) => 
        pwm_negedge_reg(52), pwm_negedge_reg(51) => 
        pwm_negedge_reg(51), pwm_negedge_reg(50) => 
        pwm_negedge_reg(50), pwm_negedge_reg(49) => 
        pwm_negedge_reg(49), pwm_negedge_reg(48) => 
        pwm_negedge_reg(48), pwm_negedge_reg(47) => 
        pwm_negedge_reg(47), pwm_negedge_reg(46) => 
        pwm_negedge_reg(46), pwm_negedge_reg(45) => 
        pwm_negedge_reg(45), pwm_negedge_reg(44) => 
        pwm_negedge_reg(44), pwm_negedge_reg(43) => 
        pwm_negedge_reg(43), pwm_negedge_reg(42) => 
        pwm_negedge_reg(42), pwm_negedge_reg(41) => 
        pwm_negedge_reg(41), pwm_negedge_reg(40) => 
        pwm_negedge_reg(40), pwm_negedge_reg(39) => 
        pwm_negedge_reg(39), pwm_negedge_reg(38) => 
        pwm_negedge_reg(38), pwm_negedge_reg(37) => 
        pwm_negedge_reg(37), pwm_negedge_reg(36) => 
        pwm_negedge_reg(36), pwm_negedge_reg(35) => 
        pwm_negedge_reg(35), pwm_negedge_reg(34) => 
        pwm_negedge_reg(34), pwm_negedge_reg(33) => 
        pwm_negedge_reg(33), pwm_negedge_reg(32) => 
        pwm_negedge_reg(32), pwm_negedge_reg(31) => 
        pwm_negedge_reg(31), pwm_negedge_reg(30) => 
        pwm_negedge_reg(30), pwm_negedge_reg(29) => 
        pwm_negedge_reg(29), pwm_negedge_reg(28) => 
        pwm_negedge_reg(28), pwm_negedge_reg(27) => 
        pwm_negedge_reg(27), pwm_negedge_reg(26) => 
        pwm_negedge_reg(26), pwm_negedge_reg(25) => 
        pwm_negedge_reg(25), pwm_negedge_reg(24) => 
        pwm_negedge_reg(24), pwm_negedge_reg(23) => 
        pwm_negedge_reg(23), pwm_negedge_reg(22) => 
        pwm_negedge_reg(22), pwm_negedge_reg(21) => 
        pwm_negedge_reg(21), pwm_negedge_reg(20) => 
        pwm_negedge_reg(20), pwm_negedge_reg(19) => 
        pwm_negedge_reg(19), pwm_negedge_reg(18) => 
        pwm_negedge_reg(18), pwm_negedge_reg(17) => 
        pwm_negedge_reg(17), pwm_negedge_reg(16) => 
        pwm_negedge_reg(16), pwm_negedge_reg(15) => 
        pwm_negedge_reg(15), pwm_negedge_reg(14) => 
        pwm_negedge_reg(14), pwm_negedge_reg(13) => 
        pwm_negedge_reg(13), pwm_negedge_reg(12) => 
        pwm_negedge_reg(12), pwm_negedge_reg(11) => 
        pwm_negedge_reg(11), pwm_negedge_reg(10) => 
        pwm_negedge_reg(10), pwm_negedge_reg(9) => 
        pwm_negedge_reg(9), pwm_negedge_reg(8) => 
        pwm_negedge_reg(8), pwm_negedge_reg(7) => 
        pwm_negedge_reg(7), pwm_negedge_reg(6) => 
        pwm_negedge_reg(6), pwm_negedge_reg(5) => 
        pwm_negedge_reg(5), pwm_negedge_reg(4) => 
        pwm_negedge_reg(4), pwm_negedge_reg(3) => 
        pwm_negedge_reg(3), pwm_negedge_reg(2) => 
        pwm_negedge_reg(2), pwm_negedge_reg(1) => 
        pwm_negedge_reg(1), 
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA(0), sercon_7
         => sercon_7, sercon_6 => sercon_6, sercon_5 => sercon_5, 
        sercon_1 => sercon_1, sercon_0 => sercon_0, sercon_4 => 
        sercon_4, sercon_2 => sercon_2, N_2036 => N_2036, N_2014
         => N_2014, N_1134 => N_1134, PRDATA_m1_e_1 => 
        PRDATA_m1_e_1, PRDATA_0_0_a2_5_out => PRDATA_0_0_a2_5_out, 
        PRDATA_3_0_o2_2_out => PRDATA_3_0_o2_2_out, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_1124 => 
        N_1124, PRDATA_m1_0_a2_6_0 => PRDATA_m1_0_a2_6_0, 
        sync_update => sync_update, PRDATA_m3_e_1_2 => 
        PRDATA_m3_e_1_2, N_2018 => N_2018, N_1975 => N_1975, 
        PRDATA_0_0_a2_4_out => PRDATA_0_0_a2_4_out, N_2038 => 
        N_2038, N_1131 => N_1131, PRDATA_m3_e_1_3 => 
        PRDATA_m3_e_1_3, N_1120 => N_1120, N_1138 => N_1138, 
        N_1135 => N_1135, PRDATA_N_3_mux_10 => PRDATA_N_3_mux_10, 
        N_2037 => N_2037, N_2034 => N_2034, N_2330 => N_2330, 
        N_2019 => N_2019, N_2039 => N_2039);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    

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
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          PRDATA_3_0_a2_7_0                           : in    std_logic_vector(6 to 6);
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_1131                                      : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          N_1140                                      : out   std_logic;
          N_1135                                      : out   std_logic;
          N_1124                                      : in    std_logic;
          N_1138                                      : in    std_logic;
          PRDATA_m1_e_1                               : in    std_logic;
          PRDATA_3_0_o2_2_out                         : in    std_logic;
          N_1975                                      : in    std_logic;
          N_2037                                      : in    std_logic;
          N_2039                                      : out   std_logic;
          PRDATA_N_3_mux_10                           : in    std_logic;
          N_1134                                      : in    std_logic
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
        \SCLInt\, SCLInt_i_0, \fsmdet[3]_net_1\, \fsmdet_i_0[3]\, 
        \adrcomp_2_sqmuxa_i_o2_0\, N_258_i_0, \fsmsta[0]_net_1\, 
        GND_net_1, \fsmsta_8_0_iv_i_0[0]\, 
        un1_ens1_pre_1_sqmuxa_i_0, VCC_net_1, \fsmsta[1]_net_1\, 
        \fsmsta_8[1]\, \fsmsta[2]_net_1\, N_1266_i_0, 
        \fsmsta[3]_net_1\, \fsmsta_8_0_iv_i_0[3]\, 
        \fsmsta[4]_net_1\, \fsmsta_8[4]\, \ack\, ack_7, 
        \sercon_6\, N_1273, SDAO_int_1_sqmuxa_i_0, 
        \serdat[0]_net_1\, N_1560, \un1_serdat_2_sqmuxa_1\, 
        \serdat[1]_net_1\, N_1559, \serdat[2]_net_1\, N_1558, 
        \serdat[3]_net_1\, N_1557, \serdat[4]_net_1\, N_1556, 
        \serdat[5]_net_1\, N_1555, \serdat[6]_net_1\, N_1554, 
        \serdat[7]_net_1\, N_1553, \bsd7\, bsd7_8, \bsd7_tmp\, 
        bsd7_tmp_6, \adrcomp\, N_62, \ack_bit\, ack_bit_1_sqmuxa, 
        \PCLKint\, PCLKint_3, N_64, \busfree\, un105_fsmdet, 
        \adrcompen\, N_186_i_0, \adrcompen_2_sqmuxa_i_0_0\, 
        \SCLSCL\, \fsmmod[1]_net_1\, SCLSCL_1_sqmuxa_i_0, 
        \SDAInt\, \SDAI_ff_reg[0]_net_1\, \un1_rtn_4_0_0\, 
        \SCLI_ff_reg[0]_net_1\, \un1_rtn_3_0_0\, \nedetect\, 
        nedetect_0_sqmuxa, rtn_1_i_0, \pedetect\, 
        pedetect_0_sqmuxa, N_618_i_0, \starto_en\, N_67_i_0, 
        \starto_en_1_sqmuxa_i_0\, \SCLI_ff_reg[2]_net_1\, 
        N_655_i_0, \SDAI_ff_reg_4[0]\, \SDAI_ff_reg[1]_net_1\, 
        N_434_i_0, \SDAI_ff_reg[2]_net_1\, N_435_i_0, 
        \indelay[1]_net_1\, \indelay_4[1]\, \indelay[2]_net_1\, 
        \indelay_4[2]\, \indelay[3]_net_1\, \indelay_4[3]\, 
        \PCLK_count2[0]_net_1\, N_79_i_0, \PCLK_count2[1]_net_1\, 
        N_77_i_0, \SCLI_ff_reg_3[0]\, \SCLI_ff_reg[1]_net_1\, 
        N_654_i_0, un5_penable, \sercon_2\, \COREI2C_0_0_INT[0]\, 
        \sercon_9[3]\, \sercon_4\, \sercon_9[4]\, \sercon_5\, 
        \indelay[0]_net_1\, \indelay_4[0]\, \sersta_32[4]\, 
        \framesync[0]_net_1\, \framesync_7[0]\, 
        \framesync[1]_net_1\, \framesync_7[1]\, 
        \framesync[2]_net_1\, \framesync_7[2]\, 
        \framesync[3]_net_1\, \framesync_7[3]\, 
        \PCLK_count1[0]_net_1\, \PCLK_count1_10[0]\, 
        \PCLK_count1[1]_net_1\, \PCLK_count1_10[1]\, 
        \PCLK_count1[2]_net_1\, \PCLK_count1_10[2]\, 
        \PCLK_count1[3]_net_1\, \PCLK_count1_10[3]\, N_119_i_0, 
        \sersta_32[1]\, N_1094_i_0, N_377, \fsmsync[5]_net_1\, 
        N_952_i_0, \fsmsync[4]_net_1\, N_954_i_0, 
        \fsmsync[3]_net_1\, N_956_i_0, \fsmsync[2]_net_1\, 
        N_958_i_0, \fsmsync[1]_net_1\, N_960_i_0, 
        \fsmdet[6]_net_1\, \fsmdet[5]_net_1\, N_916_i_0, 
        \fsmdet[4]_net_1\, N_918_i_0, N_920_i_0, 
        \fsmdet[2]_net_1\, N_922_i_0, \fsmdet[1]_net_1\, 
        N_368_i_0, \fsmdet[0]_net_1\, N_926_i_0, 
        \fsmmod[6]_net_1\, \fsmmod_ns[0]\, \fsmmod[5]_net_1\, 
        \fsmmod_ns[1]\, \fsmmod[4]_net_1\, N_1011_i_0, 
        \fsmmod[3]_net_1\, \fsmmod_ns[3]\, \fsmmod[2]_net_1\, 
        N_1014_i_0, \fsmmod_ns[5]\, \fsmmod[0]_net_1\, 
        \fsmmod_ns_i_0_i[6]_net_1\, \fsmsync[7]_net_1\, 
        \fsmsync_ns[0]\, \fsmsync[6]_net_1\, N_950_i_0, 
        un149_ens1_i_0, \PCLK_count1_ov\, N_184_i_0, \PCLKint_ff\, 
        PCLKint_ff_2, \PCLK_count2_ov\, N_43_i_0, CO1_0, N_206, 
        un33_pclk_count1, N_234, CO1, N_986, N_238, N_237, 
        N_954_i_1, N_250, N_1762, N_1094_i_1, N_1181, 
        m111_i_i_a2_1_1, N_7_0, N_1763, un25_fsmsta_1_0_0_o2_1, 
        N_480, N_1196, N_1186, \sersta_32_0_0_1[1]\, N_1195, 
        un25_fsmsta_0_1_0, un25_fsmsta_0, m94_ns_1, N_141_mux, 
        N_1217_2, bsd7_0_ns_1, bsd7_0_sm0, bsd7_81, 
        un91_fsmsta_0_o2_i_o2_0, N_1130, bsd7_80, N_1157, 
        framesync_7_e2, \framesync_7_enl_am[3]\, 
        \framesync_7_enl_bm[3]\, bsd7_8_m_ns_RNO_2, 
        bsd7_8_m_ns_RNO_3, bsd7_sn_N_4, N_1070, un54_fsmdet, 
        fsmsta_8_0_iv_0_0_312_i_0, un136_framesync, 
        fsmsta_8_0_iv_0_0_312_i_1, \adrcomp_2_sqmuxa_i_a4_3\, 
        \fsmmod_ns_0_0_a4_3_0[3]_net_1\, \serdat_1_sqmuxa_1_0\, 
        bsd7_1_sqmuxa_2_0, N_193, N_929_i_0, N_2380, CO0, N_253, 
        N_1763_1, un39_fsmdet, N_219, N_196, N_1755_1, N_1020_1_i, 
        N_1187, \N_1140\, SDAO_int_7_0_340_0_1, 
        un2_fsmsta_9_s2_0_a2_0_a2_0, un2_fsmsta_4_s6_0_a2_0, 
        un2_fsmsta_8_s1_0, \adrcomp_2_sqmuxa_i_a4_5\, 
        un141_ens1_2, \PCLK_count2_ov_0_sqmuxa_i_o4_1\, 
        \sercon_8_1[4]\, \sersta_32_0_0_0[4]\, m68_0, m60_0_a2_0, 
        \fsmsta_nxt_cnst_m_0_i_a2_1_0[1]\, 
        \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\, 
        \fsmsta_cnst_i_o4_5[0]_net_1\, 
        \fsmsta_cnst_i_o4_4[0]_net_1\, N_994, N_1147, 
        fsmmod_nxt_0_sqmuxa, N_203, un76_ens1, N_208, un5_fsmsync, 
        N_246, \fsmsta_cnst_m_2[4]\, framesync_7_sm0, 
        \fsmmod_ns_i_0_i_a2_0[6]\, N_1752, N_2407, un16_fsmmod, 
        CO1_1, N_1505, N_1216, N_1506, N_241, N_1304, N_128, 
        N_1756, N_1767, N_1744, N_1020, N_1889_1, N_1280, N_1275, 
        N_992, un2_fsmsta_4_s6_0_a2_1, SDAO_int_7_0_340_0_a2_0, 
        \fsmmod_ns_i_0[2]_net_1\, \fsmmod_ns_0_0_0[0]_net_1\, 
        \SDAO_int_1_sqmuxa_0_a4_1\, un16_ens1_0, 
        \fsmsta_nxt_cnst_i_0[2]_net_1\, \adrcomp_2_sqmuxa_i_a4_8\, 
        \adrcomp_2_sqmuxa_i_a4_7\, 
        \PCLK_count2_ov_0_sqmuxa_i_o4_3\, m22_i_a2_1, 
        \sercon_8_2[4]\, m105_i_0_0, un135_ens1_1_0, 
        SDAO_int_7_0_340_a2_2_1, un27_si_int, un32_si_int, 
        un25_si_int, N_133, un22_si_int, N_168, N_461_i_0_o2_out, 
        N_1937_tz, N_1475_i, N_1308_i, un30_fsmmod, N_1141, 
        N_2404, N_229_2, N_120, N_211, m46_i_0_o2_0_0, 
        \fsmsta_nxt_cnst_m_0_i_0[1]\, \SDAO_int_1_sqmuxa_0_a4_2\, 
        \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\, m76_0_0_1, 
        \adrcomp_2_sqmuxa_i_o2_1_1\, un133_framesync_i_0, 
        un135_ens1, N_1940, un25_framesync, N_1754, N_1531, N_111, 
        un53_fsmdet, N_1520, N_1745, N_1283, N_214, N_1217, 
        N_1514, N_118, \fsmsta_nxt_cnst_m_0_i_1[1]\, m90_i_0_0, 
        fsmsta_8_0_iv_0_312_i_a6_3_0, un16_ens1_1, 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\, 
        \fsmsta_cnst_i_a4_0[0]_net_1\, \fsmsta_3_sqmuxa_0\, 
        \fsmmod_ns_i_a4_1[2]\, \fsmsync_ns_0_0_0_0[0]_net_1\, 
        un19_framesync_2, un81_ens1, N_1035, N_183, 
        \fsmmod_ns_0_0_a4_3[3]_net_1\, bsd7_tmp_6_RNO_2, 
        \sersta_RNO_0[0]_net_1\, un93_ens1, N_110, N_1022, N_1753, 
        N_1746, N_1758, un91_fsmsta, bsd7_0_ss0, N_2397, 
        \fsmsta_cnst_m_0[4]\, un115_fsmdet, un19_framesync, 
        N_1083, \fsmsta_nxt_cnst[4]\, \fsmsta_3_sqmuxa\, N_185, 
        N_1288, N_1267, fsmsta_1_sqmuxa_1, 
        \ack_bit_1_sqmuxa_0_a2_1\, bsd7_tmp_6s2_0_0_a2_0_1, N_218, 
        serdat_0_sqmuxa, m90_i_0_2, \fsmsta_cnst_m_0[1]\, 
        un2_fsmsta_4_s6, N_1079, un2_fsmsta_8_s1, \un1_serdat36\, 
        un2_fsmsta_6_s5, \ack_bit_1_sqmuxa_0_a2_2\, 
        N_1156_i_0_o2_0, N_1325, \fsmsta_8_0_iv_1[0]\, 
        \fsmsta_8_1_iv_0[4]\, N_1048, N_1040, un2_fsmsta_9_s2, 
        \fsmsta_nxt_60_i_m[3]\, N_1093, 
        \un1_serdat_2_sqmuxa_1_a0\, un97_ens1, SDAO_int_m_0, 
        \fsmsta_nxt_9_i_m[0]\, N_1889_2, N_1071_m, N_2401, 
        \fsmsta_8_0_iv_0[1]\, \fsmsta_8_0_iv_1[3]\, 
        \fsmsta_8_0_iv_3[0]\, \fsmsta_8_0_iv_2[0]\, 
        \un1_serdat_2_sqmuxa_1_0\, \fsmsta_nxt_37_m[1]\, 
        un20_sdao_int_m, \framesync_7_m2[3]\, N_1269, N_1079_m, 
        \fsmsta_nxt_cnst_m[4]\, SDAInt_li_1_m, 
        \fsmsta_8_0_iv_3[1]\, \fsmsta_8_0_iv_2[3]\, 
        un1_serdat_2_sqmuxa_1_1, N_2443, bsd7_tmp_6_sm0
         : std_logic;

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
    N_1140 <= \N_1140\;

    \sersta_RNO[3]\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_1280, B => N_1195, C => m105_i_0_0, D => 
        N_7_0, Y => N_377);
    
    adrcomp_2_sqmuxa_i_a4_7 : CFG3
      generic map(INIT => x"80")

      port map(A => \sercon_2\, B => \nedetect\, C => 
        \adrcomp_2_sqmuxa_i_a4_5\, Y => \adrcomp_2_sqmuxa_i_a4_7\);
    
    \sercon[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_1[4]\ : CFG4
      generic map(INIT => x"FFDC")

      port map(A => N_1283, B => m76_0_0_1, C => \ack\, D => 
        N_1754, Y => \fsmsta_nxt_cnst[4]\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_ns[3]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => framesync_7_e2, B => \framesync_7_enl_am[3]\, 
        C => \framesync_7_enl_bm[3]\, Y => \framesync_7[3]\);
    
    \fsmsync_ns_i_0_o2[4]\ : CFG2
      generic map(INIT => x"7")

      port map(A => un5_fsmsync, B => \fsmsync[4]_net_1\, Y => 
        N_211);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_3[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => N_1141, B => \fsmsta[4]_net_1\, C => N_1275, 
        Y => N_1754);
    
    \fsmdet[1]\ : SLE
      port map(D => N_368_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[1]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync\ : CFG3
      generic map(INIT => x"FE")

      port map(A => un27_si_int, B => un19_framesync_2, C => 
        un25_si_int, Y => un19_framesync);
    
    \serSTA_WRITE_PROC.sersta_32_0_0[4]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \fsmsta[4]_net_1\, B => \sersta_32_0_0_0[4]\, 
        C => N_1280, D => N_1744, Y => \sersta_32[4]\);
    
    SDAInt : SLE
      port map(D => \SDAI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_4_0_0\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SDAInt\);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet\ : CFG2
      generic map(INIT => x"4")

      port map(A => un30_fsmmod, B => N_929_i_0, Y => un54_fsmdet);
    
    un1_serdat36 : CFG4
      generic map(INIT => x"0037")

      port map(A => un25_fsmsta_0, B => \COREI2C_0_0_INT[0]\, C
         => N_480, D => un91_fsmsta, Y => \un1_serdat36\);
    
    starto_en : SLE
      port map(D => N_67_i_0, CLK => FAB_CCC_GL0, EN => 
        \starto_en_1_sqmuxa_i_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \starto_en\);
    
    \serSTA_WRITE_PROC.un27_si_int_2\ : CFG2
      generic map(INIT => x"4")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_1217_2);
    
    SDAO_int_RNIM8VK : CFG3
      generic map(INIT => x"F7")

      port map(A => \fsmsta[2]_net_1\, B => \COREI2C_0_0_SDAO[0]\, 
        C => \SDAInt\, Y => N_1275);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_0_RNO[4]\ : CFG4
      generic map(INIT => x"AAA8")

      port map(A => \fsmsta_cnst_m_2[4]\, B => \ack\, C => 
        un30_fsmmod, D => N_929_i_0, Y => \fsmsta_cnst_m_0[4]\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_4\ : CFG3
      generic map(INIT => x"10")

      port map(A => un91_fsmsta_0_o2_i_o2_0, B => 
        \fsmdet[3]_net_1\, C => N_1130, Y => bsd7_0_ns_1);
    
    \serdat[4]\ : SLE
      port map(D => N_1556, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[4]_net_1\);
    
    \fsmsta[4]\ : SLE
      port map(D => \fsmsta_8[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[4]_net_1\);
    
    \SCLI_ff_reg[1]\ : SLE
      port map(D => N_654_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[1]_net_1\);
    
    pedetect : SLE
      port map(D => pedetect_0_sqmuxa, CLK => FAB_CCC_GL0, EN => 
        N_618_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \pedetect\);
    
    \fsmmod[4]\ : SLE
      port map(D => N_1011_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[4]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns\ : CFG3
      generic map(INIT => x"AC")

      port map(A => bsd7_80, B => bsd7_81, C => N_1157, Y => 
        bsd7_8);
    
    \fsmmod_ns_0_a4_0[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => N_133, B => un115_fsmdet, C => 
        \fsmmod[6]_net_1\, D => \SDAInt\, Y => N_1040);
    
    \serSTA_WRITE_PROC.sersta_32_0_0[1]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => N_1186, B => \sersta_32_0_0_1[1]\, C => 
        \COREI2C_0_0_INT[0]\, Y => \sersta_32[1]\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet_1\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[1]_net_1\, Y
         => N_929_i_0);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0_o2_i_o2_1_RNI09JO\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1130, B => \COREI2C_0_0_INT[0]\, Y => 
        N_2404);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0[1]\ : CFG4
      generic map(INIT => x"B0FF")

      port map(A => \adrcomp\, B => fsmsta_1_sqmuxa_1, C => 
        \fsmsta_cnst_m_0[1]\, D => N_1093, Y => 
        \fsmsta_8_0_iv_0[1]\);
    
    \INDELAY_WRITE_PROC.un5_fsmsync\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \indelay[1]_net_1\, D => \indelay[0]_net_1\, Y => 
        un5_fsmsync);
    
    \fsmmod_ns_0_0[0]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_133, B => \fsmmod[6]_net_1\, C => 
        un115_fsmdet, D => \fsmmod_ns_0_0_0[0]_net_1\, Y => 
        \fsmmod_ns[0]\);
    
    adrcomp_2_sqmuxa_i_a4_5 : CFG4
      generic map(INIT => x"0400")

      port map(A => \serdat[2]_net_1\, B => \serdat[1]_net_1\, C
         => \serdat[0]_net_1\, D => \adrcompen\, Y => 
        \adrcomp_2_sqmuxa_i_a4_5\);
    
    \INDELAY_WRITE_PROC.indelay_4[1]\ : CFG4
      generic map(INIT => x"9060")

      port map(A => \indelay[1]_net_1\, B => \indelay[0]_net_1\, 
        C => \fsmsync[4]_net_1\, D => un5_fsmsync, Y => 
        \indelay_4[1]\);
    
    \CLKINT_WRITE_PROC.PCLKint_3_0_0\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_206, B => \PCLKint\, Y => PCLKint_3);
    
    adrcomp_2_sqmuxa_i_o2_1 : CFG4
      generic map(INIT => x"FFFB")

      port map(A => \adrcomp_2_sqmuxa_i_o2_1_1\, B => N_141_mux, 
        C => un22_si_int, D => un27_si_int, Y => N_218);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0_o2_i_o2\ : CFG2
      generic map(INIT => x"B")

      port map(A => un91_fsmsta_0_o2_i_o2_0, B => N_1130, Y => 
        N_1217);
    
    \INDELAY_WRITE_PROC.indelay_4[3]\ : CFG4
      generic map(INIT => x"60A0")

      port map(A => \indelay[3]_net_1\, B => \indelay[2]_net_1\, 
        C => \fsmsync[4]_net_1\, D => CO1, Y => \indelay_4[3]\);
    
    adrcomp_2_sqmuxa_i_a4_8 : CFG4
      generic map(INIT => x"0002")

      port map(A => \adrcomp_2_sqmuxa_i_a4_3\, B => N_203, C => 
        \serdat[5]_net_1\, D => \serdat[4]_net_1\, Y => 
        \adrcomp_2_sqmuxa_i_a4_8\);
    
    ack : SLE
      port map(D => ack_7, CLK => FAB_CCC_GL0, EN => \sercon_6\, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \ack\);
    
    \fsmsta[3]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[3]_net_1\);
    
    un1_serdat_2_sqmuxa_1_a0 : CFG3
      generic map(INIT => x"54")

      port map(A => \un1_serdat36\, B => \COREI2C_0_0_INT[0]\, C
         => bsd7_0_ss0, Y => \un1_serdat_2_sqmuxa_1_a0\);
    
    \serdat[2]\ : SLE
      port map(D => N_1558, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[2]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7s2\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_929_i_0, B => bsd7_1_sqmuxa_2_0, Y => 
        framesync_7_sm0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_2[3]\ : CFG4
      generic map(INIT => x"FF1F")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_1141, D => N_1275, Y => N_1531);
    
    \FSMSTA_SYNC_PROC.un30_fsmmod\ : CFG4
      generic map(INIT => x"7333")

      port map(A => \PCLKint\, B => \fsmsta_cnst_m_2[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => un30_fsmmod);
    
    SDAO_int_RNO : CFG4
      generic map(INIT => x"FFEC")

      port map(A => SDAO_int_7_0_340_0_a2_0, B => 
        SDAO_int_7_0_340_0_1, C => N_1325, D => N_1940, Y => 
        N_1273);
    
    \SDAINT_WRITE_PROC.SDAI_ff_reg_4[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        Y => \SDAI_ff_reg_4[0]\);
    
    \fsmsync_ns_0_0_a2[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \fsmmod[4]_net_1\, B => \fsmmod[0]_net_1\, C
         => \fsmmod[5]_net_1\, D => \fsmmod[1]_net_1\, Y => N_246);
    
    un1_pclkint4_i_0 : CFG2
      generic map(INIT => x"E")

      port map(A => N_206, B => \PCLK_count2_ov\, Y => N_64);
    
    \CLKINT_WRITE_PROC.PCLKint_ff_2_0\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_206, B => \PCLKint\, Y => PCLKint_ff_2);
    
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
    
    \serDAT_WRITE_PROC.ack_7_u_RNO_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => bsd7_0_ss0, B => \COREI2C_0_0_INT[0]\, Y => 
        serdat_0_sqmuxa);
    
    \STARTO_EN_WRITE_PROC.un8_busfree_i_o4\ : CFG2
      generic map(INIT => x"B")

      port map(A => \fsmmod[1]_net_1\, B => \busfree\, Y => N_219);
    
    \serdat[7]\ : SLE
      port map(D => N_1553, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[7]_net_1\);
    
    \sercon[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_2\);
    
    adrcompen_RNIP2L52 : CFG3
      generic map(INIT => x"DF")

      port map(A => \adrcomp\, B => N_1141, C => \adrcompen\, Y
         => N_1283);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_0[4]\ : CFG4
      generic map(INIT => x"F044")

      port map(A => N_1141, B => m22_i_a2_1, C => 
        \fsmsta_cnst_m_0[4]\, D => un136_framesync, Y => 
        \fsmsta_8_1_iv_0[4]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2[1]\ : CFG2
      generic map(INIT => x"B")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1186);
    
    SDAO_int_RNIGU4I : CFG2
      generic map(INIT => x"B")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, Y => 
        N_1187);
    
    \fsmmod_RNIPVGK[0]\ : CFG3
      generic map(INIT => x"37")

      port map(A => \fsmmod[5]_net_1\, B => \fsmdet[3]_net_1\, C
         => \fsmmod[0]_net_1\, Y => \fsmsta_cnst_m_2[4]\);
    
    adrcomp_2_sqmuxa_i_a4_3 : CFG2
      generic map(INIT => x"4")

      port map(A => \serdat[3]_net_1\, B => \serdat[6]_net_1\, Y
         => \adrcomp_2_sqmuxa_i_a4_3\);
    
    \serCON_WRITE_PROC.sercon_8_2[4]\ : CFG4
      generic map(INIT => x"8CCC")

      port map(A => \PCLKint\, B => \sercon_8_1[4]\, C => 
        \PCLKint_ff\, D => \fsmmod[2]_net_1\, Y => 
        \sercon_8_2[4]\);
    
    serdat_1_sqmuxa_1_0 : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \pedetect\, Y => 
        \serdat_1_sqmuxa_1_0\);
    
    \fsmsta_nxt_cnst_i_0_0_0[0]\ : CFG3
      generic map(INIT => x"F2")

      port map(A => \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\, B
         => N_1195, C => N_1752, Y => 
        \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\);
    
    adrcomp_2_sqmuxa_i_0 : CFG4
      generic map(INIT => x"FF80")

      port map(A => \adrcomp_2_sqmuxa_i_a4_7\, B => 
        \adrcomp_2_sqmuxa_i_a4_8\, C => N_111, D => 
        \adrcomp_2_sqmuxa_i_o2_0\, Y => N_62);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[1]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[0]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(1), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1559);
    
    ack_bit_1_sqmuxa_0_a2_2 : CFG3
      generic map(INIT => x"20")

      port map(A => \ack_bit_1_sqmuxa_0_a2_1\, B => \N_1140\, C
         => \COREI2C_0_0_INT[0]\, Y => \ack_bit_1_sqmuxa_0_a2_2\);
    
    \un2_framesync_1_1.CO1\ : CFG2
      generic map(INIT => x"8")

      port map(A => CO0, B => \framesync[1]_net_1\, Y => CO1_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[7]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[6]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(7), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1553);
    
    \serCON_WRITE_PROC.un76_ens1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => un76_ens1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmdet[3]_net_1\, B => \fsmmod[5]_net_1\, Y
         => un39_fsmdet);
    
    \sersta_RNO[0]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => N_2407, B => N_1763_1, C => 
        \sersta_RNO_0[0]_net_1\, D => N_1758, Y => N_119_i_0);
    
    SCLSCL : SLE
      port map(D => \fsmmod[1]_net_1\, CLK => FAB_CCC_GL0, EN => 
        SCLSCL_1_sqmuxa_i_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLSCL\);
    
    PCLK_count2_ov_0_sqmuxa_i_o4_1 : CFG3
      generic map(INIT => x"FE")

      port map(A => \fsmsync[6]_net_1\, B => \fsmsync[3]_net_1\, 
        C => \fsmsync[2]_net_1\, Y => 
        \PCLK_count2_ov_0_sqmuxa_i_o4_1\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_a4_0\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[3]_net_1\, Y => N_1216);
    
    busfree_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \fsmdet[3]_net_1\, Y => \fsmdet_i_0[3]\);
    
    \SCLI_ff_reg[0]\ : SLE
      port map(D => \SCLI_ff_reg_3[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.un136_framesync_RNIV8OA2\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1141, B => un2_fsmsta_8_s1_0, C => 
        un136_framesync, Y => un2_fsmsta_8_s1);
    
    \fsmsta_RNI6VTG[4]\ : CFG4
      generic map(INIT => x"8D05")

      port map(A => \fsmsta[2]_net_1\, B => N_1181, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        m46_i_0_o2_0_0);
    
    \FSMSTA_SYNC_PROC.un136_framesync_RNIP9QE2\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1141, B => un2_fsmsta_4_s6_0_a2_1, C => 
        un136_framesync, Y => un2_fsmsta_4_s6);
    
    \fsmsync_RNO[6]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \fsmsync[7]_net_1\, B => \SCLInt\, C => N_986, 
        Y => N_950_i_0);
    
    SDAO_int_1_sqmuxa_0_a4_2 : CFG3
      generic map(INIT => x"08")

      port map(A => N_1147, B => \SDAO_int_1_sqmuxa_0_a4_1\, C
         => \fsmmod[3]_net_1\, Y => \SDAO_int_1_sqmuxa_0_a4_2\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_0\ : CFG3
      generic map(INIT => x"BA")

      port map(A => \fsmdet[3]_net_1\, B => N_1505, C => N_2401, 
        Y => bsd7_tmp_6_sm0);
    
    \serCON_WRITE_PROC.un97_ens1\ : CFG4
      generic map(INIT => x"AAA8")

      port map(A => \sercon_6\, B => un81_ens1, C => un93_ens1, D
         => un16_ens1_1, Y => un97_ens1);
    
    SDAO_int_1_sqmuxa_i : CFG4
      generic map(INIT => x"37FF")

      port map(A => un25_fsmsta_0, B => 
        \SDAO_int_1_sqmuxa_0_a4_2\, C => N_480, D => N_118, Y => 
        SDAO_int_1_sqmuxa_i_0);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_0\ : CFG3
      generic map(INIT => x"84")

      port map(A => \fsmsta[3]_net_1\, B => un25_fsmsta_0_1_0, C
         => \fsmsta[0]_net_1\, Y => un25_fsmsta_0);
    
    \sersta_RNO_1[3]\ : CFG4
      generic map(INIT => x"0A08")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => 
        N_1767);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[2]\ : CFG4
      generic map(INIT => x"7B48")

      port map(A => CO1_1, B => framesync_7_e2, C => 
        \framesync[2]_net_1\, D => \fsmdet[3]_net_1\, Y => 
        \framesync_7[2]\);
    
    \fsmsta_RNIAIK5[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, Y
         => N_1196);
    
    SDAO_int_RNIVKBB : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SDAO[0]\, Y => 
        COREI2C_0_0_SDAO_i(0));
    
    SDAO_int_1_sqmuxa_0_a4_1 : CFG4
      generic map(INIT => x"048C")

      port map(A => \adrcomp\, B => \sercon_6\, C => 
        \fsmmod[6]_net_1\, D => \adrcompen\, Y => 
        \SDAO_int_1_sqmuxa_0_a4_1\);
    
    SCLO_int_RNO : CFG4
      generic map(INIT => x"5777")

      port map(A => \sercon_6\, B => un141_ens1_2, C => 
        bsd7_1_sqmuxa_2_0, D => un135_ens1, Y => un149_ens1_i_0);
    
    \fsmsta_RNO_4[2]\ : CFG3
      generic map(INIT => x"32")

      port map(A => N_480, B => N_1141, C => m22_i_a2_1, Y => 
        N_1267);
    
    \PCLK_count2[0]\ : SLE
      port map(D => N_79_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[0]_net_1\);
    
    \sersta[0]\ : SLE
      port map(D => N_119_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(0));
    
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
      port map(D => N_958_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[2]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[4]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[3]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(4), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1556);
    
    \fsmsync_ns_i_o3_i_o2[5]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_196, B => \fsmsync[5]_net_1\, Y => N_128);
    
    \fsmdet_RNO[5]\ : CFG4
      generic map(INIT => x"E000")

      port map(A => \fsmdet[6]_net_1\, B => \fsmdet[5]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_916_i_0);
    
    \FSMSTA_SYNC_PROC.un54_fsmdet_RNIL7MT\ : CFG4
      generic map(INIT => x"0C08")

      port map(A => N_250, B => un54_fsmdet, C => 
        \COREI2C_0_0_INT[0]\, D => un76_ens1, Y => 
        fsmsta_1_sqmuxa_1);
    
    \framesync[3]\ : SLE
      port map(D => \framesync_7[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[3]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1_0_0_o2_1\ : CFG4
      generic map(INIT => x"41F1")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_1196, Y => 
        un25_fsmsta_1_0_0_o2_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO_0[1]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => N_2397, B => N_1746, C => un136_framesync, D
         => \fsmsta_nxt_cnst_m_0_i_1[1]\, Y => N_1093);
    
    \FSMSTA_SYNC_PROC.un136_framesync_RNIPUT72\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1141, B => un2_fsmsta_9_s2_0_a2_0_a2_0, C
         => un136_framesync, Y => un2_fsmsta_9_s2);
    
    \SCLINT_WRITE_PROC.SCLI_ff_reg_3[0]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        Y => \SCLI_ff_reg_3[0]\);
    
    \SCLI_ff_reg_RNO[2]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[1]_net_1\, Y
         => N_655_i_0);
    
    \INDELAY_WRITE_PROC.indelay_4[2]\ : CFG4
      generic map(INIT => x"48C0")

      port map(A => \indelay[0]_net_1\, B => \fsmsync[4]_net_1\, 
        C => \indelay[2]_net_1\, D => \indelay[1]_net_1\, Y => 
        \indelay_4[2]\);
    
    \fsmmod_ns_0_0_a4_3_0[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \PCLKint\, B => \fsmmod[4]_net_1\, Y => 
        \fsmmod_ns_0_0_a4_3_0[3]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl[0]\ : CFG4
      generic map(INIT => x"6F60")

      port map(A => \framesync[0]_net_1\, B => \nedetect\, C => 
        framesync_7_e2, D => \framesync_7_m2[3]\, Y => 
        \framesync_7[0]\);
    
    \serDAT_WRITE_PROC.ack_7_u_RNO\ : CFG4
      generic map(INIT => x"4404")

      port map(A => \un1_serdat_2_sqmuxa_1_a0\, B => \pedetect\, 
        C => PRDATA_N_3_mux_10, D => N_461_i_0_o2_out, Y => 
        un1_serdat_2_sqmuxa_1_1);
    
    PCLK_count1_ov : SLE
      port map(D => N_184_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1_ov\);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_1_a2\ : CFG4
      generic map(INIT => x"0200")

      port map(A => N_2037, B => \N_1140\, C => N_1138, D => 
        PRDATA_m1_e_1, Y => un5_penable);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[3]\ : CFG4
      generic map(INIT => x"FFF1")

      port map(A => un136_framesync, B => m90_i_0_2, C => 
        un2_fsmsta_9_s2, D => N_1071_m, Y => \fsmsta_8_0_iv_2[3]\);
    
    \INDELAY_WRITE_PROC.indelay_4_RNO[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \indelay[0]_net_1\, B => \indelay[1]_net_1\, 
        Y => CO1);
    
    \indelay[1]\ : SLE
      port map(D => \indelay_4[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[1]_net_1\);
    
    fsmsta_3_sqmuxa : CFG4
      generic map(INIT => x"C0C4")

      port map(A => N_250, B => \fsmsta_3_sqmuxa_0\, C => 
        \COREI2C_0_0_INT[0]\, D => un76_ens1, Y => 
        \fsmsta_3_sqmuxa\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3_RNO_0[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \SDAInt\, B => \COREI2C_0_0_SDAO[0]\, C => 
        N_1889_2, D => N_1889_1, Y => \fsmsta_nxt_37_m[1]\);
    
    \fsmmod_ns_0_o3_1_i_a2_RNI4I1A[3]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1020_1_i, Y => un2_fsmsta_8_s1_0);
    
    \serdat[0]\ : SLE
      port map(D => N_1560, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[0]_net_1\);
    
    N_461_i_0_o2_s_0 : CFG3
      generic map(INIT => x"FD")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => N_1135);
    
    fsmsta_3_sqmuxa_RNI5CDM : CFG3
      generic map(INIT => x"54")

      port map(A => \fsmsta_3_sqmuxa\, B => \pedetect\, C => 
        un136_framesync, Y => un1_ens1_pre_1_sqmuxa_i_0);
    
    \framesync[2]\ : SLE
      port map(D => \framesync_7[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[2]_net_1\);
    
    \fsmsta_RNI8RDG[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \COREI2C_0_0_INT[0]\, B => \fsmsta[1]_net_1\, 
        Y => N_1763_1);
    
    \fsmmod_ns_0_0_o2_0[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \sercon_4\, B => \COREI2C_0_0_INT[0]\, C => 
        \sercon_5\, Y => N_208);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \fsmmod_ns_0_a4_0_1_i_o4[1]\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \starto_en\, B => N_196, C => N_208, Y => 
        N_133);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[3]\ : CFG4
      generic map(INIT => x"FF70")

      port map(A => \ack\, B => \SDAInt\, C => un2_fsmsta_8_s1, D
         => \fsmsta_nxt_60_i_m[3]\, Y => \fsmsta_8_0_iv_1[3]\);
    
    \fsmsta_RNO_2[2]\ : CFG4
      generic map(INIT => x"2F20")

      port map(A => fsmsta_8_0_iv_0_312_i_a6_3_0, B => N_1070, C
         => un136_framesync, D => N_1267, Y => 
        fsmsta_8_0_iv_0_0_312_i_0);
    
    \fsmsta_cnst_i_a4_0[0]\ : CFG4
      generic map(INIT => x"0032")

      port map(A => \fsmsta_cnst_i_o4_5[0]_net_1\, B => 
        un30_fsmmod, C => \fsmsta_cnst_i_o4_4[0]_net_1\, D => 
        N_929_i_0, Y => \fsmsta_cnst_i_a4_0[0]_net_1\);
    
    SDAO_int_RNO_2 : CFG4
      generic map(INIT => x"CF8B")

      port map(A => N_1217, B => N_1288, C => \ack_bit\, D => 
        \bsd7\, Y => N_1325);
    
    SDAO_int_RNO_5 : CFG4
      generic map(INIT => x"40C0")

      port map(A => \adrcomp\, B => N_1147, C => 
        \framesync[3]_net_1\, D => \adrcompen\, Y => 
        SDAO_int_7_0_340_a2_2_1);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[2]\ : CFG4
      generic map(INIT => x"0600")

      port map(A => CO1_0, B => \PCLK_count1[2]_net_1\, C => 
        N_206, D => un33_pclk_count1, Y => \PCLK_count1_10[2]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO_3[1]\ : CFG4
      generic map(INIT => x"50DC")

      port map(A => N_1186, B => 
        \fsmsta_nxt_cnst_m_0_i_a2_1_0[1]\, C => \fsmsta[3]_net_1\, 
        D => N_1187, Y => \fsmsta_nxt_cnst_m_0_i_0[1]\);
    
    \sersta[1]\ : SLE
      port map(D => \sersta_32[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(1));
    
    \serCON_WRITE_PROC.un5_penable_0_a2_1_a2_0\ : CFG4
      generic map(INIT => x"0020")

      port map(A => N_1975, B => N_1138, C => N_2037, D => 
        PRDATA_3_0_o2_2_out, Y => N_2039);
    
    \fsmdet[4]\ : SLE
      port map(D => N_918_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[4]_net_1\);
    
    adrcomp_2_sqmuxa_i_o2_1_RNO_0 : CFG4
      generic map(INIT => x"03B8")

      port map(A => N_1217_2, B => N_1195, C => \fsmsta[0]_net_1\, 
        D => \fsmsta[1]_net_1\, Y => m94_ns_1);
    
    \serDAT_WRITE_PROC.ack_7_u\ : CFG4
      generic map(INIT => x"FFAC")

      port map(A => \SDAInt\, B => \ack\, C => 
        un1_serdat_2_sqmuxa_1_1, D => serdat_0_sqmuxa, Y => ack_7);
    
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
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO_4[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => \fsmsta[1]_net_1\, Y => 
        \fsmsta_nxt_cnst_m_0_i_a2_1_0[1]\);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0_o2_i_o2_0\ : CFG4
      generic map(INIT => x"5722")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[0]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        un91_fsmsta_0_o2_i_o2_0);
    
    \fsmdet[0]\ : SLE
      port map(D => N_926_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[0]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => N_1745, B => N_2397, C => un136_framesync, D
         => N_1079, Y => N_1079_m);
    
    \serCON_WRITE_PROC.un81_ens1\ : CFG4
      generic map(INIT => x"8880")

      port map(A => N_929_i_0, B => \adrcomp\, C => N_250, D => 
        un76_ens1, Y => un81_ens1);
    
    \sercon[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => sercon_7);
    
    ack_bit : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => ack_bit_1_sqmuxa, ALn => MSS_READY, 
        ADn => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \ack_bit\);
    
    \fsmsta[2]\ : SLE
      port map(D => N_1266_i_0, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[2]_net_1\);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_1_0_0_o2\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => un25_fsmsta_1_0_0_o2_1, Y => N_480);
    
    \fsmmod_ns_i_0_i[6]\ : CFG4
      generic map(INIT => x"3320")

      port map(A => N_241, B => un115_fsmdet, C => 
        \fsmmod[3]_net_1\, D => \fsmmod_ns_i_0_i_a2_0[6]\, Y => 
        \fsmmod_ns_i_0_i[6]_net_1\);
    
    \fsmdet[2]\ : SLE
      port map(D => N_922_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[2]_net_1\);
    
    \serCON_WRITE_PROC.un5_penable_0_a2_1_o2\ : CFG2
      generic map(INIT => x"7")

      port map(A => CoreAPB3_0_APBmslave0_PENABLE, B => 
        CoreAPB3_0_APBmslave0_PWRITE, Y => \N_1140\);
    
    \fsmdet_RNO[2]\ : CFG4
      generic map(INIT => x"A0E0")

      port map(A => \fsmdet[3]_net_1\, B => \fsmdet[2]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_922_i_0);
    
    \framesync[1]\ : SLE
      port map(D => \framesync_7[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[1]_net_1\);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[2]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[1]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(2), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1558);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO_0\ : CFG2
      generic map(INIT => x"4")

      port map(A => \COREI2C_0_0_INT[0]\, B => \nedetect\, Y => 
        N_2380);
    
    \fsmsta_cnst_i_a4[0]\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \pedetect\, B => N_1141, C => 
        un133_framesync_i_0, D => \fsmsta_cnst_i_a4_0[0]_net_1\, 
        Y => N_1070);
    
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
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_6\ : CFG3
      generic map(INIT => x"AE")

      port map(A => \fsmdet[3]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_1217, Y => bsd7_0_sm0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1_RNO[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \SDAInt\, B => un2_fsmsta_4_s6, C => 
        \sercon_2\, Y => \fsmsta_nxt_60_i_m[3]\);
    
    \fsmmod[0]\ : SLE
      port map(D => \fsmmod_ns_i_0_i[6]_net_1\, CLK => 
        FAB_CCC_GL0, EN => VCC_net_1, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmmod[0]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_bm[3]\ : CFG3
      generic map(INIT => x"78")

      port map(A => \framesync[2]_net_1\, B => CO1_1, C => 
        \framesync[3]_net_1\, Y => \framesync_7_enl_bm[3]\);
    
    \fsmmod_ns_i_0_i_a2_0_1[6]\ : CFG3
      generic map(INIT => x"A2")

      port map(A => \fsmmod[0]_net_1\, B => \nedetect\, C => 
        \fsmmod[3]_net_1\, Y => \fsmmod_ns_i_0_i_a2_0[6]\);
    
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
    
    PCLK_count2_ov_0_sqmuxa_i_o4 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => N_929_i_0, B => 
        \PCLK_count2_ov_0_sqmuxa_i_o4_1\, C => un16_fsmmod, D => 
        \PCLK_count2_ov_0_sqmuxa_i_o4_3\, Y => N_206);
    
    adrcomp_2_sqmuxa_i_o2_0 : CFG4
      generic map(INIT => x"FFEA")

      port map(A => N_929_i_0, B => \COREI2C_0_0_INT[0]\, C => 
        N_218, D => un16_fsmmod, Y => \adrcomp_2_sqmuxa_i_o2_0\);
    
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
    
    \sersta[3]\ : SLE
      port map(D => N_377, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => sersta(3));
    
    \FRAMESYNC_WRITE_PROC.framesync_7[0]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => un25_framesync, B => un19_framesync, C => 
        N_250, D => framesync_7_sm0, Y => \framesync_7_m2[3]\);
    
    SDAO_int_RNO_4 : CFG3
      generic map(INIT => x"F1")

      port map(A => un25_fsmsta_0, B => N_480, C => N_203, Y => 
        N_1288);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1\ : CFG4
      generic map(INIT => x"FF20")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1217_2, D => un135_ens1_1_0, Y => un135_ens1);
    
    \fsmsync[6]\ : SLE
      port map(D => N_950_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[6]_net_1\);
    
    adrcompen_RNO : CFG2
      generic map(INIT => x"4")

      port map(A => un16_fsmmod, B => \fsmdet[3]_net_1\, Y => 
        N_186_i_0);
    
    \SDAI_ff_reg[2]\ : SLE
      port map(D => N_435_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[2]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_0[4]\ : CFG3
      generic map(INIT => x"B3")

      port map(A => \fsmsta[3]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => \fsmsta[4]_net_1\, Y => \sersta_32_0_0_0[4]\);
    
    \PCLK_count1[0]\ : SLE
      port map(D => \PCLK_count1_10[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[0]_net_1\);
    
    \fsmsta_nxt_cnst_i_0_0_a2_2[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[3]_net_1\, B => N_1196, C => 
        \fsmsta[4]_net_1\, Y => N_1752);
    
    \fsmsync_ns_i_a3_1[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsync[5]_net_1\, B => \fsmsync[2]_net_1\, 
        C => \SDAInt\, Y => N_994);
    
    \fsmmod_ns_i_o3[4]\ : CFG4
      generic map(INIT => x"F7FF")

      port map(A => \fsmmod[4]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, D => N_250, Y => N_1035);
    
    \fsmsta[0]\ : SLE
      port map(D => \fsmsta_8_0_iv_i_0[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[0]_net_1\);
    
    \serdat[3]\ : SLE
      port map(D => N_1557, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[3]_net_1\);
    
    \sersta_RNO_1[2]\ : CFG4
      generic map(INIT => x"00BF")

      port map(A => \fsmsta[3]_net_1\, B => \COREI2C_0_0_INT[0]\, 
        C => N_7_0, D => N_1763, Y => N_1094_i_1);
    
    nedetect : SLE
      port map(D => nedetect_0_sqmuxa, CLK => FAB_CCC_GL0, EN => 
        rtn_1_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \nedetect\);
    
    \fsmmod_ns_0_0_0[0]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => fsmmod_nxt_0_sqmuxa, B => \fsmmod[1]_net_1\, 
        C => N_253, Y => \fsmmod_ns_0_0_0[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO[3]\ : CFG4
      generic map(INIT => x"FDDD")

      port map(A => N_1283, B => m90_i_0_0, C => 
        \fsmsta[3]_net_1\, D => N_1531, Y => m90_i_0_2);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[1]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => \COREI2C_0_0_SDAO[0]\, B => un2_fsmsta_6_s5, 
        C => un2_fsmsta_9_s2, D => \fsmsta_nxt_37_m[1]\, Y => 
        \fsmsta_8_0_iv_3[1]\);
    
    \sersta_RNO_0[3]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_1767, B => \COREI2C_0_0_INT[0]\, Y => 
        m105_i_0_0);
    
    \fsmsync_ns_i_a3_0_i[6]\ : CFG4
      generic map(INIT => x"EFEE")

      port map(A => \fsmsync[2]_net_1\, B => \fsmsync[1]_net_1\, 
        C => N_128, D => N_250, Y => N_183);
    
    \FSMSTA_SYNC_PROC.un133_framesync_i_0\ : CFG4
      generic map(INIT => x"2FFF")

      port map(A => N_1020_1_i, B => N_1304, C => \adrcompen\, D
         => \adrcomp\, Y => un133_framesync_i_0);
    
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
    
    \fsmmod_RNIV4G6[6]\ : CFG2
      generic map(INIT => x"E")

      port map(A => \fsmmod[1]_net_1\, B => \fsmmod[6]_net_1\, Y
         => N_193);
    
    \fsmsync_ns_i_a3[6]\ : CFG3
      generic map(INIT => x"51")

      port map(A => \fsmsync[1]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, Y => N_992);
    
    \sersta_RNO_3[2]\ : CFG4
      generic map(INIT => x"0B00")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[0]_net_1\, C
         => N_1195, D => N_1763_1, Y => N_1763);
    
    \SDAI_ff_reg_RNO[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[0]_net_1\, Y
         => N_434_i_0);
    
    SDAO_int_1_sqmuxa_0_a4_3_a2_0_0_a2 : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[5]_net_1\, C
         => \fsmmod[2]_net_1\, Y => N_1147);
    
    \fsmsta_nxt_cnst_i_0_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => N_1753, B => 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\, C => N_7_0, D => 
        N_1520, Y => N_1079);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_5\ : CFG4
      generic map(INIT => x"FFCA")

      port map(A => \nedetect\, B => \SCLInt\, C => 
        \COREI2C_0_0_INT[0]\, D => bsd7_0_ss0, Y => bsd7_sn_N_4);
    
    \SDAO_INT_WRITE_PROC.un33_fsmsta_0_o2\ : CFG4
      generic map(INIT => x"BFFF")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_203);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_0[3]\ : CFG3
      generic map(INIT => x"2A")

      port map(A => un53_fsmdet, B => fsmsta_1_sqmuxa_1, C => 
        \adrcomp\, Y => N_1071_m);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_0_a2_0_1\ : CFG4
      generic map(INIT => x"0010")

      port map(A => N_1124, B => \N_1140\, C => 
        \COREI2C_0_0_INT[0]\, D => N_1217, Y => 
        bsd7_tmp_6s2_0_0_a2_0_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO[3]\ : CFG3
      generic map(INIT => x"40")

      port map(A => N_1187, B => N_1889_1, C => N_1889_2, Y => 
        un20_sdao_int_m);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => N_206, B => \PCLK_count1[0]_net_1\, C => 
        un33_pclk_count1, Y => \PCLK_count1_10[0]\);
    
    \INDELAY_WRITE_PROC.indelay_4[0]\ : CFG3
      generic map(INIT => x"84")

      port map(A => \indelay[0]_net_1\, B => \fsmsync[4]_net_1\, 
        C => un5_fsmsync, Y => \indelay_4[0]\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2[0]\ : CFG4
      generic map(INIT => x"FF04")

      port map(A => N_1141, B => N_480, C => un136_framesync, D
         => \fsmsta_8_0_iv_1[0]\, Y => \fsmsta_8_0_iv_2[0]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2_RNIDPO72[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1141, B => \fsmsta[3]_net_1\, C => N_1186, 
        Y => N_1745);
    
    \fsmsta[1]\ : SLE
      port map(D => \fsmsta_8[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_ens1_pre_1_sqmuxa_i_0, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fsmsta[1]_net_1\);
    
    \fsmsta_nxt_cnst_i_0[2]\ : CFG3
      generic map(INIT => x"BA")

      port map(A => N_1752, B => \fsmsta[2]_net_1\, C => N_1755_1, 
        Y => \fsmsta_nxt_cnst_i_0[2]_net_1\);
    
    \fsmsta_RNIUI3E_2[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => m60_0_a2_0, Y => un22_si_int);
    
    \sersta_RNO_0[2]\ : CFG4
      generic map(INIT => x"2700")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_2404, Y => N_1762);
    
    \FSMSTA_SYNC_PROC.un136_framesync\ : CFG4
      generic map(INIT => x"F0F4")

      port map(A => N_1141, B => \pedetect\, C => un53_fsmdet, D
         => un133_framesync_i_0, Y => un136_framesync);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i_RNO_0[0]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => N_1141, B => \SDAInt\, C => un136_framesync, 
        D => un2_fsmsta_9_s2_0_a2_0_a2_0, Y => SDAInt_li_1_m);
    
    \framesync[0]\ : SLE
      port map(D => \framesync_7[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \framesync[0]_net_1\);
    
    \un2_framesync_1_1.CO0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \nedetect\, B => \framesync[0]_net_1\, Y => 
        CO0);
    
    bsd7_tmp : SLE
      port map(D => bsd7_tmp_6, CLK => FAB_CCC_GL0, EN => 
        \sercon_6\, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \bsd7_tmp\);
    
    \PCLK_count2_RNO[1]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \PCLK_count1_ov\, B => N_206, C => 
        \PCLK_count2[1]_net_1\, D => \PCLK_count2[0]_net_1\, Y
         => N_77_i_0);
    
    \fsmmod_ns_0_o3_1_i_a2_RNI21FB2[3]\ : CFG4
      generic map(INIT => x"FFF7")

      port map(A => \pedetect\, B => N_1020_1_i, C => N_1304, D
         => N_1141, Y => N_110);
    
    \fsmmod_ns_0_0_a4[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \SCLInt\, B => N_196, C => \fsmmod[2]_net_1\, 
        Y => fsmmod_nxt_0_sqmuxa);
    
    \fsmdet[3]\ : SLE
      port map(D => N_920_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[3]_net_1\);
    
    \serSTA_WRITE_PROC.un27_si_int\ : CFG4
      generic map(INIT => x"2000")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_1217_2, Y => un27_si_int);
    
    PCLKint_ff : SLE
      port map(D => PCLKint_ff_2, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLKint_ff\);
    
    \serdat[6]\ : SLE
      port map(D => N_1554, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[6]_net_1\);
    
    \fsmdet_RNO[0]\ : CFG4
      generic map(INIT => x"E0A0")

      port map(A => \fsmdet[1]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SCLInt\, D => \SDAInt\, Y => N_926_i_0);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2_0_RNI15K9[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1195, B => N_1196, Y => N_2407);
    
    \fsmmod_RNO[2]\ : CFG4
      generic map(INIT => x"0405")

      port map(A => fsmmod_nxt_0_sqmuxa, B => \fsmmod[2]_net_1\, 
        C => un115_fsmdet, D => N_1035, Y => N_1014_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3_RNO[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1141, B => m22_i_a2_1, C => un136_framesync, 
        Y => un2_fsmsta_6_s5);
    
    starto_en_1_sqmuxa_i_0 : CFG3
      generic map(INIT => x"F7")

      port map(A => \SCLInt\, B => N_196, C => N_219, Y => 
        \starto_en_1_sqmuxa_i_0\);
    
    \fsmsta_RNIDLK5[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_1755_1);
    
    bsd7 : SLE
      port map(D => bsd7_8, CLK => FAB_CCC_GL0, EN => \sercon_6\, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \bsd7\);
    
    PCLKint : SLE
      port map(D => PCLKint_3, CLK => FAB_CCC_GL0, EN => N_64, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \PCLKint\);
    
    \PCLK_count1[1]\ : SLE
      port map(D => \PCLK_count1_10[1]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[1]_net_1\);
    
    \serdat[5]\ : SLE
      port map(D => N_1555, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[5]_net_1\);
    
    \serCON_WRITE_PROC.un70_ens1_i_a4\ : CFG3
      generic map(INIT => x"54")

      port map(A => \adrcomp\, B => \fsmmod[1]_net_1\, C => 
        \fsmmod[6]_net_1\, Y => N_234);
    
    \fsmsync_ns_i_a3_1_0_a4[2]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \fsmmod[1]_net_1\, B => N_1147, C => 
        \fsmmod[4]_net_1\, D => \fsmmod[3]_net_1\, Y => N_986);
    
    fsmsta_3_sqmuxa_0 : CFG3
      generic map(INIT => x"C4")

      port map(A => N_1475_i, B => un54_fsmdet, C => N_234, Y => 
        \fsmsta_3_sqmuxa_0\);
    
    \framesync_RNIU94P1[3]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_1141);
    
    PCLK_count1_ov_RNO : CFG2
      generic map(INIT => x"1")

      port map(A => N_206, B => un33_pclk_count1, Y => N_184_i_0);
    
    N_461_i_0_o2_s : CFG4
      generic map(INIT => x"FFBF")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PWRITE, C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => N_1124, Y => 
        N_461_i_0_o2_out);
    
    \fsmsta_RNO_3[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1475_i, B => \adrcomp\, Y => 
        fsmsta_8_0_iv_0_312_i_a6_3_0);
    
    \sersta_RNO_3[0]\ : CFG3
      generic map(INIT => x"69")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_1308_i);
    
    \fsmsync_RNO[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_986, B => N_238, C => N_237, D => N_954_i_1, 
        Y => N_954_i_0);
    
    SDAO_int_1_sqmuxa_0_m2 : CFG3
      generic map(INIT => x"1D")

      port map(A => \nedetect\, B => N_203, C => N_1141, Y => 
        N_118);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_0[4]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => N_2397, B => N_1745, C => un136_framesync, D
         => \fsmsta_nxt_cnst[4]\, Y => \fsmsta_nxt_cnst_m[4]\);
    
    \SDAI_ff_reg[0]\ : SLE
      port map(D => \SDAI_ff_reg_4[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[0]_net_1\);
    
    \fsmsync_RNO[5]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => N_986, B => N_214, C => \fsmsync[7]_net_1\, D
         => N_168, Y => N_952_i_0);
    
    PCLK_count2_ov_0_sqmuxa_i_o4_3 : CFG4
      generic map(INIT => x"5111")

      port map(A => \SCLInt\, B => N_219, C => 
        \COREI2C_0_0_SCLO[0]\, D => \fsmmod[2]_net_1\, Y => 
        \PCLK_count2_ov_0_sqmuxa_i_o4_3\);
    
    \FSMSTA_SYNC_PROC.un53_fsmdet\ : CFG2
      generic map(INIT => x"E")

      port map(A => un30_fsmmod, B => N_929_i_0, Y => un53_fsmdet);
    
    \fsmsta_RNIUI3E[0]\ : CFG4
      generic map(INIT => x"0008")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => N_1755_1, Y => m22_i_a2_1);
    
    adrcomp : SLE
      port map(D => N_258_i_0, CLK => FAB_CCC_GL0, EN => N_62, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \adrcomp\);
    
    \fsmsync_ns_0_0[0]\ : CFG4
      generic map(INIT => x"FF8C")

      port map(A => \fsmsync[3]_net_1\, B => \SCLInt\, C => N_211, 
        D => \fsmsync_ns_0_0_0_0[0]_net_1\, Y => \fsmsync_ns[0]\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_0_a2_0\ : CFG4
      generic map(INIT => x"0020")

      port map(A => N_1975, B => PRDATA_3_0_o2_2_out, C => 
        bsd7_tmp_6s2_0_0_a2_0_1, D => N_1134, Y => N_2401);
    
    SCLO_int_RNI96C8 : CFG1
      generic map(INIT => "01")

      port map(A => \COREI2C_0_0_SCLO[0]\, Y => 
        COREI2C_0_0_SCLO_i(0));
    
    nedetect_0_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"0004")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => nedetect_0_sqmuxa);
    
    \fsmmod_ns_i_o3[2]\ : CFG4
      generic map(INIT => x"FF40")

      port map(A => \PCLKint\, B => \sercon_5\, C => N_229_2, D
         => \sercon_4\, Y => N_1022);
    
    adrcompen : SLE
      port map(D => N_186_i_0, CLK => FAB_CCC_GL0, EN => 
        \adrcompen_2_sqmuxa_i_0_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \adrcompen\);
    
    starto_en_1_sqmuxa_i_o2 : CFG2
      generic map(INIT => x"D")

      port map(A => \PCLKint\, B => \PCLKint_ff\, Y => N_196);
    
    \indelay[3]\ : SLE
      port map(D => \indelay_4[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \indelay[3]_net_1\);
    
    \SDAI_ff_reg[1]\ : SLE
      port map(D => N_434_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SDAI_ff_reg[1]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_2_RNO_1[3]\ : CFG4
      generic map(INIT => x"4454")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => N_1304, D => N_1141, Y => m90_i_0_0);
    
    \fsmdet[6]\ : SLE
      port map(D => SCLInt_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmdet[6]_net_1\);
    
    \serCON_WRITE_PROC.un16_ens1_1\ : CFG4
      generic map(INIT => x"FF40")

      port map(A => N_234, B => N_929_i_0, C => N_1475_i, D => 
        un16_ens1_0, Y => un16_ens1_1);
    
    \fsmmod_ns_0[1]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => \fsmmod[5]_net_1\, B => \nedetect\, C => 
        un115_fsmdet, D => N_1040, Y => \fsmmod_ns[1]\);
    
    PCLK_count2_ov_RNO : CFG4
      generic map(INIT => x"2000")

      port map(A => \PCLK_count1_ov\, B => N_206, C => 
        \PCLK_count2[1]_net_1\, D => \PCLK_count2[0]_net_1\, Y
         => N_43_i_0);
    
    un1_rtn_3_0_0 : CFG3
      generic map(INIT => x"81")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => \un1_rtn_3_0_0\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO_2\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_461_i_0_o2_out, 
        C => N_1138, D => PRDATA_m1_e_1, Y => bsd7_tmp_6_RNO_2);
    
    \fsmsync_ns_i_0_o2_0[2]\ : CFG2
      generic map(INIT => x"B")

      port map(A => N_120, B => \SCLInt\, Y => N_214);
    
    \fsmsta_RNIL1F8[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, Y => un2_fsmsta_4_s6_0_a2_0);
    
    \sersta[4]\ : SLE
      port map(D => \sersta_32[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(4));
    
    SCLInt : SLE
      port map(D => \SCLI_ff_reg[0]_net_1\, CLK => FAB_CCC_GL0, 
        EN => \un1_rtn_3_0_0\, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \SCLInt\);
    
    \fsmsync_RNO_0[4]\ : CFG4
      generic map(INIT => x"5450")

      port map(A => \fsmsync[4]_net_1\, B => \sercon_4\, C => 
        \COREI2C_0_0_INT[0]\, D => N_250, Y => N_954_i_1);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[1]\ : CFG4
      generic map(INIT => x"0600")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1[1]_net_1\, C => N_206, D => un33_pclk_count1, 
        Y => \PCLK_count1_10[1]\);
    
    \fsmsync_ns_0_0_o2[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_246, B => N_196, Y => N_120);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[3]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \fsmsta_8_0_iv_1[3]\, B => un20_sdao_int_m, C
         => \fsmsta_8_0_iv_2[3]\, Y => \fsmsta_8_0_iv_i_0[3]\);
    
    \fsmsta_RNIK0F8[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[1]_net_1\, Y => m68_0);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0_o2_i_o2_0_RNILA041\ : CFG3
      generic map(INIT => x"EF")

      port map(A => un91_fsmsta_0_o2_i_o2_0, B => 
        \fsmdet[3]_net_1\, C => N_1130, Y => bsd7_0_ss0);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2_0[1]\ : CFG2
      generic map(INIT => x"B")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_1195);
    
    \fsmmod_ns_0_a4_i_a2[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \pedetect\, B => \SCLSCL\, Y => N_253);
    
    PCLK_count2_ov : SLE
      port map(D => N_43_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \PCLK_count2_ov\);
    
    \fsmsync_RNO[2]\ : CFG4
      generic map(INIT => x"3100")

      port map(A => N_128, B => N_986, C => \fsmsync[2]_net_1\, D
         => \COREI2C_0_0_INT[0]\, Y => N_958_i_0);
    
    \fsmsta_RNO_1[2]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => N_1745, B => N_2397, C => un136_framesync, D
         => N_1083, Y => N_1269);
    
    \fsmmod_ns_0_0_a4_3[3]\ : CFG4
      generic map(INIT => x"4000")

      port map(A => N_208, B => \fsmmod_ns_0_0_a4_3_0[3]_net_1\, 
        C => N_229_2, D => N_250, Y => 
        \fsmmod_ns_0_0_a4_3[3]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_3\ : CFG4
      generic map(INIT => x"0EFE")

      port map(A => \COREI2C_0_0_INT[0]\, B => \serdat[7]_net_1\, 
        C => bsd7_0_ss0, D => un91_fsmsta, Y => bsd7_8_m_ns_RNO_3);
    
    \sercon[3]\ : SLE
      port map(D => \sercon_9[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \COREI2C_0_0_INT[0]\);
    
    \BUSFREE_WRITE_PROC.un105_fsmdet\ : CFG4
      generic map(INIT => x"FFEF")

      port map(A => fsmmod_nxt_0_sqmuxa, B => un16_fsmmod, C => 
        \sercon_6\, D => N_929_i_0, Y => un105_fsmdet);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un136_framesync, B => \fsmsta_cnst_m_2[4]\, Y
         => \fsmsta_cnst_m_0[1]\);
    
    \fsmmod[5]\ : SLE
      port map(D => \fsmmod_ns[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmmod[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.un25_framesync\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \COREI2C_0_0_INT[0]\, B => N_1020, C => 
        \sercon_5\, D => \sercon_4\, Y => un25_framesync);
    
    un1_serdat_2_sqmuxa_1 : CFG3
      generic map(INIT => x"F4")

      port map(A => N_461_i_0_o2_out, B => PRDATA_N_3_mux_10, C
         => \un1_serdat_2_sqmuxa_1_0\, Y => 
        \un1_serdat_2_sqmuxa_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_0_o2\ : CFG3
      generic map(INIT => x"FE")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), C => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        N_1505);
    
    \fsmmod_ns_0_o3[3]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => N_1020_1_i, Y => N_1020);
    
    \fsmdet_RNI2H373[1]\ : CFG3
      generic map(INIT => x"BF")

      port map(A => \fsmdet[1]_net_1\, B => \sercon_6\, C => 
        N_110, Y => un115_fsmdet);
    
    SDAO_int_RNO_1 : CFG4
      generic map(INIT => x"F7F3")

      port map(A => \adrcomp\, B => \sercon_6\, C => 
        \fsmmod[3]_net_1\, D => \fsmmod[6]_net_1\, Y => 
        SDAO_int_7_0_340_0_1);
    
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
         => \SDAInt\, D => \SCLInt\, Y => N_368_i_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO[4]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => N_1141, B => \COREI2C_0_0_SDAO[0]\, C => 
        un136_framesync, D => N_480, Y => SDAO_int_m_0);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO_2[1]\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => N_1186, B => N_1187, C => 
        \fsmsta_nxt_cnst_m_0_i_0[1]\, D => N_1020_1_i, Y => 
        \fsmsta_nxt_cnst_m_0_i_1[1]\);
    
    \fsmsta_RNIFRE8[0]\ : CFG3
      generic map(INIT => x"BF")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_1304);
    
    \fsmsync[4]\ : SLE
      port map(D => N_954_i_0, CLK => FAB_CCC_GL0, EN => 
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
    
    \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]\ : CFG3
      generic map(INIT => x"32")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => 
        \fsmsta_nxt_cnst_i_0_0_a2_1_0[0]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO\ : CFG3
      generic map(INIT => x"CA")

      port map(A => bsd7_8_m_ns_RNO_2, B => bsd7_8_m_ns_RNO_3, C
         => bsd7_sn_N_4, Y => bsd7_80);
    
    \sercon[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_5\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_2[4]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => \fsmsta[2]_net_1\, B => N_1755_1, C => N_1756, 
        D => N_2407, Y => m76_0_0_1);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3[0]\ : CFG4
      generic map(INIT => x"FFD0")

      port map(A => \sercon_2\, B => \SDAInt\, C => 
        un2_fsmsta_4_s6, D => \fsmsta_nxt_9_i_m[0]\, Y => 
        \fsmsta_8_0_iv_3[0]\);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[3]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[2]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(3), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1557);
    
    nedetect_RNO : CFG3
      generic map(INIT => x"7F")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => rtn_1_i_0);
    
    adrcompen_2_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"FFCE")

      port map(A => \nedetect\, B => \fsmdet[3]_net_1\, C => 
        N_1141, D => un16_fsmmod, Y => \adrcompen_2_sqmuxa_i_0_0\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6s2_0_0_o2_0\ : CFG2
      generic map(INIT => x"E")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), Y => 
        N_1131);
    
    \serCON_WRITE_PROC.sercon_8_1[4]\ : CFG3
      generic map(INIT => x"40")

      port map(A => \fsmdet[1]_net_1\, B => \sercon_4\, C => 
        \sercon_6\, Y => \sercon_8_1[4]\);
    
    \PCLK_count2_RNO[0]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \PCLK_count1_ov\, B => N_206, C => 
        \PCLK_count2[0]_net_1\, Y => N_79_i_0);
    
    adrcomp_2_sqmuxa_i_o2 : CFG3
      generic map(INIT => x"F2")

      port map(A => N_1020_1_i, B => N_1304, C => N_193, Y => 
        N_111);
    
    \SCLI_ff_reg_RNO[1]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \sercon_6\, B => \SCLI_ff_reg[0]_net_1\, Y
         => N_654_i_0);
    
    \fsmmod_RNO[4]\ : CFG4
      generic map(INIT => x"0103")

      port map(A => \fsmmod_ns_i_a4_1[2]\, B => 
        \fsmmod_ns_i_0[2]_net_1\, C => un115_fsmdet, D => N_1022, 
        Y => N_1011_i_0);
    
    adrcomp_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \adrcomp_2_sqmuxa_i_o2_0\, Y => N_258_i_0);
    
    ack_bit_1_sqmuxa_0_a2_1 : CFG3
      generic map(INIT => x"32")

      port map(A => un25_fsmsta_0, B => un91_fsmsta, C => N_480, 
        Y => \ack_bit_1_sqmuxa_0_a2_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2[4]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_1280);
    
    \SCLI_ff_reg[2]\ : SLE
      port map(D => N_655_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \SCLI_ff_reg[2]_net_1\);
    
    \fsmsync_RNO[3]\ : CFG4
      generic map(INIT => x"0031")

      port map(A => N_211, B => N_986, C => \fsmsync[3]_net_1\, D
         => \SCLInt\, Y => N_956_i_0);
    
    \fsmsync_ns_i_0_a2_1[3]\ : CFG4
      generic map(INIT => x"080C")

      port map(A => \sercon_4\, B => un5_fsmsync, C => 
        \fsmsync[5]_net_1\, D => \fsmsync[2]_net_1\, Y => N_238);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_0_RNO_1[1]\ : CFG4
      generic map(INIT => x"00F7")

      port map(A => \adrcomp\, B => \adrcompen\, C => N_1141, D
         => \fsmsta[1]_net_1\, Y => N_1746);
    
    \fsmsync[3]\ : SLE
      port map(D => N_956_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[3]_net_1\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO_1\ : CFG4
      generic map(INIT => x"EEEA")

      port map(A => bsd7_0_ss0, B => N_1505, C => 
        \COREI2C_0_0_INT[0]\, D => N_1217, Y => N_1156_i_0_o2_0);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[0]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \ack\, B => CoreAPB3_0_APBmslave0_PWDATA(0), 
        C => N_461_i_0_o2_out, D => PRDATA_N_3_mux_10, Y => 
        N_1560);
    
    \PCLK_count2[1]\ : SLE
      port map(D => N_77_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count2[1]_net_1\);
    
    \fsmsta_RNIJVE8[4]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, Y => N_1889_1);
    
    \fsmsta_nxt_cnst_i_0_0_o2[0]\ : CFG3
      generic map(INIT => x"CE")

      port map(A => \fsmsta[3]_net_1\, B => N_1187, C => 
        \fsmsta[4]_net_1\, Y => N_1506);
    
    un1_rtn_4_0_0 : CFG3
      generic map(INIT => x"81")

      port map(A => \SDAI_ff_reg[2]_net_1\, B => 
        \SDAI_ff_reg[1]_net_1\, C => \SDAI_ff_reg[0]_net_1\, Y
         => \un1_rtn_4_0_0\);
    
    \fsmsta_RNIHTE8[4]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[4]_net_1\, C
         => \fsmsta[0]_net_1\, Y => N_1181);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_1[0]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \adrcomp\, B => un39_fsmdet, C => 
        fsmsta_1_sqmuxa_1, D => N_1070, Y => \fsmsta_8_0_iv_1[0]\);
    
    SDAO_int_RNO_3 : CFG4
      generic map(INIT => x"EF00")

      port map(A => \framesync[2]_net_1\, B => 
        \framesync[1]_net_1\, C => \framesync[0]_net_1\, D => 
        SDAO_int_7_0_340_a2_2_1, Y => N_1940);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_3_RNO[0]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => \SDAInt\, B => un2_fsmsta_8_s1, C => \ack\, Y
         => \fsmsta_nxt_9_i_m[0]\);
    
    \fsmmod_ns_0_o3_1_i_a2[3]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_1020_1_i);
    
    busfree : SLE
      port map(D => \fsmdet_i_0[3]\, CLK => FAB_CCC_GL0, EN => 
        un105_fsmdet, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \busfree\);
    
    \fsmmod_ns_0_0[3]\ : CFG4
      generic map(INIT => x"0F04")

      port map(A => N_241, B => \fsmmod[3]_net_1\, C => 
        un115_fsmdet, D => \fsmmod_ns_0_0_a4_3[3]_net_1\, Y => 
        \fsmmod_ns[3]\);
    
    \PCLK_count1[2]\ : SLE
      port map(D => \PCLK_count1_10[2]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \PCLK_count1[2]_net_1\);
    
    \fsmmod_ns_0_0_a2[3]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \PCLKint\, B => \SCLInt\, C => \PCLKint_ff\, 
        Y => N_241);
    
    \serSTA_WRITE_PROC.un32_si_int\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_1217_2, Y => un32_si_int);
    
    pedetect_0_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \SCLI_ff_reg[0]_net_1\, B => \SCLInt\, C => 
        \SCLI_ff_reg[2]_net_1\, D => \SCLI_ff_reg[1]_net_1\, Y
         => pedetect_0_sqmuxa);
    
    \sercon[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un5_penable, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \sercon_6\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv_i[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => N_1079_m, B => SDAInt_li_1_m, C => 
        \fsmsta_8_0_iv_3[0]\, D => \fsmsta_8_0_iv_2[0]\, Y => 
        \fsmsta_8_0_iv_i_0[0]\);
    
    SDAO_int : SLE
      port map(D => N_1273, CLK => FAB_CCC_GL0, EN => 
        SDAO_int_1_sqmuxa_i_0, ALn => MSS_READY, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \COREI2C_0_0_SDAO[0]\);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_0\ : CFG4
      generic map(INIT => x"8F83")

      port map(A => \bsd7\, B => bsd7_0_ns_1, C => bsd7_0_sm0, D
         => CoreAPB3_0_APBmslave0_PWDATA(7), Y => bsd7_81);
    
    \SDAO_INT_WRITE_PROC.un25_fsmsta_0_1_0\ : CFG4
      generic map(INIT => x"1702")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => 
        un25_fsmsta_0_1_0);
    
    \fsmsta_RNIUI3E_1[0]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => m68_0, Y => un25_si_int);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_e2\ : CFG4
      generic map(INIT => x"0023")

      port map(A => N_1141, B => framesync_7_sm0, C => \nedetect\, 
        D => N_250, Y => framesync_7_e2);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0\ : CFG3
      generic map(INIT => x"DC")

      port map(A => un91_fsmsta_0_o2_i_o2_0, B => 
        \fsmdet[3]_net_1\, C => N_1130, Y => un91_fsmsta);
    
    PCLK_count1_0_sqmuxa_i : CFG2
      generic map(INIT => x"B")

      port map(A => N_206, B => un33_pclk_count1, Y => N_185);
    
    \fsmsta_RNIUI3E_0[0]\ : CFG3
      generic map(INIT => x"E0")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[1]_net_1\, C
         => un2_fsmsta_4_s6_0_a2_0, Y => un2_fsmsta_4_s6_0_a2_1);
    
    \fsmsta_nxt_cnst_i_RNO[2]\ : CFG4
      generic map(INIT => x"5504")

      port map(A => \fsmsta[2]_net_1\, B => N_1187, C => 
        \fsmsta[4]_net_1\, D => \fsmsta[3]_net_1\, Y => N_1937_tz);
    
    \sersta_RNO_2[2]\ : CFG4
      generic map(INIT => x"C400")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => \COREI2C_0_0_INT[0]\, Y => 
        m111_i_i_a2_1_1);
    
    \fsmsta_RNO[2]\ : CFG4
      generic map(INIT => x"000D")

      port map(A => un2_fsmsta_8_s1, B => \ack\, C => 
        fsmsta_8_0_iv_0_0_312_i_1, D => N_1269, Y => N_1266_i_0);
    
    \sersta_RNO_1[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1514, B => \COREI2C_0_0_INT[0]\, Y => 
        N_1758);
    
    \fsmsta_nxt_cnst_i_0_0_1[0]\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => N_1141, B => \fsmsta[0]_net_1\, C => 
        \fsmsta_nxt_cnst_i_0_0_0[0]_net_1\, D => N_1506, Y => 
        \fsmsta_nxt_cnst_i_0_0_1[0]_net_1\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_a2_0[4]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmsta[2]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[0]_net_1\, D => \fsmsta[3]_net_1\, Y => 
        N_1744);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6_RNO\ : CFG4
      generic map(INIT => x"FFCD")

      port map(A => N_2380, B => N_1156_i_0_o2_0, C => N_2401, D
         => bsd7_tmp_6_RNO_2, Y => N_2443);
    
    \fsmmod_ns_i_a4_1_0[2]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \fsmmod[0]_net_1\, B => \fsmmod[5]_net_1\, C
         => \COREI2C_0_0_INT[0]\, D => N_250, Y => 
        \fsmmod_ns_i_a4_1[2]\);
    
    \fsmmod_ns_0_a4_0[5]\ : CFG4
      generic map(INIT => x"0010")

      port map(A => N_133, B => un115_fsmdet, C => 
        \fsmmod[6]_net_1\, D => \SDAInt\, Y => N_1048);
    
    \PCLK_count1_RNIJI2R[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \PCLK_count1[0]_net_1\, B => 
        \PCLK_count1[1]_net_1\, Y => CO1_0);
    
    \fsmmod_ns_0_o3_1_i_a2_RNIU777[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1020_1_i, B => \fsmsta[1]_net_1\, Y => 
        un2_fsmsta_9_s2_0_a2_0_a2_0);
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[6]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[5]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(6), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1554);
    
    \fsmdet_RNO[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \SCLInt\, Y => SCLInt_i_0);
    
    \fsmsync_ns_0_0_0_0[0]\ : CFG4
      generic map(INIT => x"EAAA")

      port map(A => N_986, B => N_120, C => \fsmsync[7]_net_1\, D
         => \SCLInt\, Y => \fsmsync_ns_0_0_0_0[0]_net_1\);
    
    \fsmsta_RNIFRE8_0[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \fsmsta[1]_net_1\, B => \fsmsta[0]_net_1\, C
         => \fsmsta[2]_net_1\, Y => N_7_0);
    
    \serdat[1]\ : SLE
      port map(D => N_1559, CLK => FAB_CCC_GL0, EN => 
        \un1_serdat_2_sqmuxa_1\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \serdat[1]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv_RNO_4[4]\ : CFG4
      generic map(INIT => x"0020")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[1]_net_1\, C
         => \fsmsta[4]_net_1\, D => \fsmsta[0]_net_1\, Y => 
        N_1756);
    
    \fsmsta_nxt_cnst_i[2]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_1937_tz, B => N_1141, C => N_1753, D => 
        \fsmsta_nxt_cnst_i_0[2]_net_1\, Y => N_1083);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_1[1]\ : CFG4
      generic map(INIT => x"55AE")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_1195, Y => 
        \sersta_32_0_0_1[1]\);
    
    \fsmmod_ns_0_0_a4_2[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_1020, B => \PCLKint_ff\, Y => N_229_2);
    
    un1_serdat_2_sqmuxa_1_0 : CFG4
      generic map(INIT => x"A0A2")

      port map(A => \serdat_1_sqmuxa_1_0\, B => 
        \COREI2C_0_0_INT[0]\, C => \un1_serdat36\, D => 
        bsd7_0_ss0, Y => \un1_serdat_2_sqmuxa_1_0\);
    
    \serDAT_WRITE_PROC.bsd7_tmp_6\ : CFG4
      generic map(INIT => x"0ACF")

      port map(A => \bsd7_tmp\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(7), C => bsd7_tmp_6_sm0, D
         => N_2443, Y => bsd7_tmp_6);
    
    \fsmsta_cnst_i_o4_4[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[5]_net_1\, B => \serdat[2]_net_1\, C
         => \serdat[1]_net_1\, D => \serdat[0]_net_1\, Y => 
        \fsmsta_cnst_i_o4_4[0]_net_1\);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_0_iv[1]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => \ack\, B => un2_fsmsta_8_s1, C => 
        \fsmsta_8_0_iv_0[1]\, D => \fsmsta_8_0_iv_3[1]\, Y => 
        \fsmsta_8[1]\);
    
    \fsmdet_RNO[3]\ : CFG4
      generic map(INIT => x"0E00")

      port map(A => \fsmdet[5]_net_1\, B => \fsmdet[0]_net_1\, C
         => \SDAInt\, D => \SCLInt\, Y => N_920_i_0);
    
    adrcomp_2_sqmuxa_i_o2_1_RNO : CFG4
      generic map(INIT => x"7FF3")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[2]_net_1\, C
         => N_1195, D => m94_ns_1, Y => N_141_mux);
    
    \serDAT_WRITE_PROC.un91_fsmsta_0_o2_i_o2_1\ : CFG2
      generic map(INIT => x"9")

      port map(A => \fsmsta[3]_net_1\, B => \fsmsta[4]_net_1\, Y
         => N_1130);
    
    \fsmsync_RNO[1]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_986, B => N_183, C => N_994, D => N_992, Y
         => N_960_i_0);
    
    \fsmsta_cnst_i_o4_5[0]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \serdat[6]_net_1\, B => \serdat[4]_net_1\, C
         => \serdat[3]_net_1\, D => \ack\, Y => 
        \fsmsta_cnst_i_o4_5[0]_net_1\);
    
    \fsmmod_ns_0[5]\ : CFG4
      generic map(INIT => x"FF02")

      port map(A => \fsmmod[1]_net_1\, B => N_253, C => 
        un115_fsmdet, D => N_1048, Y => \fsmmod_ns[5]\);
    
    \serCON_WRITE_PROC.un60_ens1_0_x2_0_x2\ : CFG4
      generic map(INIT => x"5556")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_1475_i);
    
    \fsmsync[5]\ : SLE
      port map(D => N_952_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fsmsync[5]_net_1\);
    
    \FRAMESYNC_WRITE_PROC.framesync_7_enl_am[3]\ : CFG4
      generic map(INIT => x"FF15")

      port map(A => un25_framesync, B => un19_framesync, C => 
        N_250, D => framesync_7_sm0, Y => \framesync_7_enl_am[3]\);
    
    \serCON_WRITE_PROC.un93_ens1\ : CFG3
      generic map(INIT => x"02")

      port map(A => \pedetect\, B => N_234, C => N_1141, Y => 
        un93_ens1);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_1\ : CFG4
      generic map(INIT => x"FFFB")

      port map(A => PRDATA_3_0_o2_2_out, B => N_1975, C => 
        N_461_i_0_o2_out, D => N_1138, Y => N_1157);
    
    \fsmsync_ns_i_0_a4_0[2]\ : CFG4
      generic map(INIT => x"0007")

      port map(A => \fsmsync[5]_net_1\, B => N_196, C => 
        \fsmsync[6]_net_1\, D => \fsmsync[7]_net_1\, Y => N_168);
    
    \fsmsta_nxt_cnst_i_0_0_a2_3[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_1283, B => \ack\, Y => N_1753);
    
    \SDAI_ff_reg_RNO[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \sercon_6\, B => \SDAI_ff_reg[1]_net_1\, Y
         => N_435_i_0);
    
    \fsmsta_RNIL1F8_0[4]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, Y => m60_0_a2_0);
    
    \serDAT_WRITE_PROC.bsd7_8_m_ns_RNO_2\ : CFG3
      generic map(INIT => x"E2")

      port map(A => \bsd7\, B => \COREI2C_0_0_INT[0]\, C => 
        \bsd7_tmp\, Y => bsd7_8_m_ns_RNO_2);
    
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
    
    \sersta_RNO_0[0]\ : CFG4
      generic map(INIT => x"1600")

      port map(A => \fsmsta[0]_net_1\, B => \fsmsta[2]_net_1\, C
         => \fsmsta[1]_net_1\, D => N_2404, Y => 
        \sersta_RNO_0[0]_net_1\);
    
    \sercon_RNI3O3K[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_193, B => \sercon_4\, Y => un16_fsmmod);
    
    \FSMSTA_SYNC_PROC.un136_framesync_RNI6AB62\ : CFG4
      generic map(INIT => x"1001")

      port map(A => N_1141, B => un136_framesync, C => 
        \fsmsta[0]_net_1\, D => \fsmsta[3]_net_1\, Y => N_1889_2);
    
    \fsmsta_RNO_0[2]\ : CFG4
      generic map(INIT => x"F1F0")

      port map(A => N_1070, B => un54_fsmdet, C => 
        fsmsta_8_0_iv_0_0_312_i_0, D => un136_framesync, Y => 
        fsmsta_8_0_iv_0_0_312_i_1);
    
    \sersta_RNO_2[0]\ : CFG4
      generic map(INIT => x"BF04")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => N_1308_i, D => N_1280, Y => N_1514);
    
    \sersta[2]\ : SLE
      port map(D => N_1094_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        sersta(2));
    
    \serDAT_WRITE_PROC.serdat_9_i_m2_i_m2[5]\ : CFG4
      generic map(INIT => x"ACAA")

      port map(A => \serdat[4]_net_1\, B => 
        CoreAPB3_0_APBmslave0_PWDATA(5), C => N_461_i_0_o2_out, D
         => PRDATA_N_3_mux_10, Y => N_1555);
    
    \FSMSTA_SYNC_PROC.fsmsta_8_1_iv[4]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un2_fsmsta_4_s6, B => SDAO_int_m_0, C => 
        \fsmsta_8_1_iv_0[4]\, D => \fsmsta_nxt_cnst_m[4]\, Y => 
        \fsmsta_8[4]\);
    
    \CLK_COUNTER1_PROC.PCLK_count1_10[3]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => CO1_0, B => N_185, C => 
        \PCLK_count1[3]_net_1\, D => \PCLK_count1[2]_net_1\, Y
         => \PCLK_count1_10[3]\);
    
    \serSTA_WRITE_PROC.sersta_32_0_0_o2_RNI5C9Q2[1]\ : CFG4
      generic map(INIT => x"5444")

      port map(A => N_1141, B => m46_i_0_o2_0_0, C => N_1186, D
         => N_1020_1_i, Y => N_2397);
    
    \SDAO_INT_WRITE_PROC.un70_fsmsta_0_a2\ : CFG4
      generic map(INIT => x"0200")

      port map(A => \framesync[3]_net_1\, B => 
        \framesync[2]_net_1\, C => \framesync[1]_net_1\, D => 
        \framesync[0]_net_1\, Y => N_250);
    
    \FRAMESYNC_WRITE_PROC.un19_framesync_2\ : CFG4
      generic map(INIT => x"FFF2")

      port map(A => N_7_0, B => N_1195, C => un32_si_int, D => 
        un22_si_int, Y => un19_framesync_2);
    
    \sersta_RNO[2]\ : CFG4
      generic map(INIT => x"4044")

      port map(A => N_1762, B => N_1094_i_1, C => N_1181, D => 
        m111_i_i_a2_1_1, Y => N_1094_i_0);
    
    SDAO_int_RNO_0 : CFG3
      generic map(INIT => x"4C")

      port map(A => \adrcomp\, B => N_1147, C => \adrcompen\, Y
         => SDAO_int_7_0_340_0_a2_0);
    
    pedetect_RNO : CFG3
      generic map(INIT => x"FE")

      port map(A => \SCLI_ff_reg[2]_net_1\, B => 
        \SCLI_ff_reg[1]_net_1\, C => \SCLI_ff_reg[0]_net_1\, Y
         => N_618_i_0);
    
    \fsmsta_nxt_cnst_i_0_0_o2_0[0]\ : CFG2
      generic map(INIT => x"E")

      port map(A => N_1141, B => \fsmsta[3]_net_1\, Y => N_1520);
    
    adrcomp_2_sqmuxa_i_o2_1_1 : CFG3
      generic map(INIT => x"AE")

      port map(A => un25_si_int, B => N_1020_1_i, C => N_1304, Y
         => \adrcomp_2_sqmuxa_i_o2_1_1\);
    
    \FSMSYNC_SYNC_PROC.un135_ens1_1_0\ : CFG4
      generic map(INIT => x"FF8C")

      port map(A => \fsmsta[4]_net_1\, B => \fsmsta[3]_net_1\, C
         => \fsmsta[2]_net_1\, D => N_1216, Y => un135_ens1_1_0);
    
    starto_en_RNO : CFG2
      generic map(INIT => x"4")

      port map(A => N_219, B => \SCLInt\, Y => N_67_i_0);
    
    \fsmsync_ns_i_0_a2_0[3]\ : CFG4
      generic map(INIT => x"3010")

      port map(A => \fsmsync[2]_net_1\, B => \fsmsync[4]_net_1\, 
        C => N_128, D => \sercon_4\, Y => N_237);
    
    ack_bit_1_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"0800")

      port map(A => PRDATA_3_0_a2_7_0(6), B => 
        \ack_bit_1_sqmuxa_0_a2_2\, C => N_1138, D => 
        PRDATA_m1_e_1, Y => ack_bit_1_sqmuxa);
    

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
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          PRDATA_3_0_a2_7_0                           : in    std_logic_vector(6 to 6);
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_1131                                      : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic;
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          N_1140                                      : out   std_logic;
          N_1135                                      : out   std_logic;
          N_1124                                      : in    std_logic;
          N_1138                                      : in    std_logic;
          PRDATA_m1_e_1                               : in    std_logic;
          PRDATA_3_0_o2_2_out                         : in    std_logic;
          N_1975                                      : in    std_logic;
          N_2037                                      : in    std_logic;
          N_2039                                      : out   std_logic;
          PRDATA_N_3_mux_10                           : in    std_logic;
          N_1134                                      : in    std_logic
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
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_3_0_a2_7_0                           : in    std_logic_vector(6 to 6) := (others => 'U');
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_1131                                      : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          N_1140                                      : out   std_logic;
          N_1135                                      : out   std_logic;
          N_1124                                      : in    std_logic := 'U';
          N_1138                                      : in    std_logic := 'U';
          PRDATA_m1_e_1                               : in    std_logic := 'U';
          PRDATA_3_0_o2_2_out                         : in    std_logic := 'U';
          N_1975                                      : in    std_logic := 'U';
          N_2037                                      : in    std_logic := 'U';
          N_2039                                      : out   std_logic;
          PRDATA_N_3_mux_10                           : in    std_logic := 'U';
          N_1134                                      : in    std_logic := 'U'
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
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
        CoreAPB3_0_APBmslave0_PWDATA(0), PRDATA_3_0_a2_7_0(6) => 
        PRDATA_3_0_a2_7_0(6), sercon_6 => sercon_6, sercon_0 => 
        sercon_0, sercon_1 => sercon_1, sercon_2 => sercon_2, 
        sercon_4 => sercon_4, sercon_5 => sercon_5, sercon_7 => 
        sercon_7, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, N_1131 => N_1131, BIBUF_COREI2C_0_0_SCL_IO_Y
         => BIBUF_COREI2C_0_0_SCL_IO_Y, 
        BIBUF_COREI2C_0_0_SDA_IO_Y => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, N_1140 => N_1140, N_1135
         => N_1135, N_1124 => N_1124, N_1138 => N_1138, 
        PRDATA_m1_e_1 => PRDATA_m1_e_1, PRDATA_3_0_o2_2_out => 
        PRDATA_3_0_o2_2_out, N_1975 => N_1975, N_2037 => N_2037, 
        N_2039 => N_2039, PRDATA_N_3_mux_10 => PRDATA_N_3_mux_10, 
        N_1134 => N_1134);
    

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

    port( rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          baud_clock                  : in    std_logic;
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          RX_c                        : in    std_logic;
          clear_parity_en             : out   std_logic;
          N_1146                      : out   std_logic;
          N_935                       : out   std_logic;
          N_1271                      : in    std_logic;
          N_1887                      : out   std_logic
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
        VCC_net_1, N_1028, GND_net_1, \rx_state[0]_net_1\, 
        \rx_state_ns[0]\, \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        \un1_samples8_1_0_0\, \rx_shift[1]_net_1\, 
        \rx_shift_12[1]\, \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_400_i_0, \receive_count[0]_net_1\, 
        N_1105_i_0, \receive_count[1]_net_1\, N_1106_i_0, 
        \receive_count[2]_net_1\, N_1107_i_0, 
        \receive_count[3]_net_1\, N_1108_i_0, \framing_error_int\, 
        framing_error_int_0_sqmuxa, framing_error_int_2_sqmuxa, 
        N_18, \samples[0]_net_1\, \samples[1]_net_1\, 
        \samples[2]_net_1\, \rx_bit_cnt[0]_net_1\, N_1109_i_0, 
        \rx_bit_cnt[1]_net_1\, N_1001_i_0, \rx_bit_cnt[2]_net_1\, 
        N_1015_i_0, \rx_bit_cnt[3]_net_1\, N_1021_i_0, \N_1146\, 
        N_1979, N_1166, \N_935\, N_1980, 
        \framing_error_int_0_sqmuxa_0_a2_0_a2_2\, N_1466, N_1981, 
        N_1278, N_2402, N_1178, N_1182, N_1220 : std_logic;

begin 

    N_1146 <= \N_1146\;
    N_935 <= \N_935\;

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
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(6));
    
    \rcv_cnt.receive_count_3_i_a2[0]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => \N_935\, Y => N_1980);
    
    \rx_state_RNI1JIG[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => \N_935\);
    
    un1_samples8_1_0_0_a2 : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => baud_clock, Y => N_1979);
    
    un1_framing_error_i4_i_0 : CFG3
      generic map(INIT => x"EC")

      port map(A => \framing_error_int\, B => clear_parity_reg, C
         => baud_clock, Y => N_18);
    
    \rx_state_ns_0_0_0_o2[0]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => N_1466);
    
    \receive_count[1]\ : SLE
      port map(D => N_1106_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_400_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[7]_net_1\);
    
    clear_parity_en_xhdl3 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_en);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    un1_samples8_1_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => N_1979, D => N_1166, Y => \un1_samples8_1_0_0\);
    
    fifo_write_xhdl6_RNO : CFG1
      generic map(INIT => "01")

      port map(A => rx_byte_xhdl5_1_sqmuxa, Y => 
        rx_byte_xhdl5_1_sqmuxa_i_0);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[1]_net_1\, Y => 
        \rx_shift_12[0]\);
    
    framing_error_i : SLE
      port map(D => clear_parity_reg_i_0, CLK => FAB_CCC_GL0, EN
         => N_18, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_FRAMING_ERR);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_1108_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_1015_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \rx_state_ns_i_i_o2_0[1]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_1166);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_1001_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \rcv_cnt.receive_count_3_i_a2_0[0]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \receive_count[1]_net_1\, B => \N_935\, C => 
        \receive_count[2]_net_1\, D => \receive_count[3]_net_1\, 
        Y => N_1981);
    
    framing_error_int_0_sqmuxa_0_a2_0_a2_2 : CFG3
      generic map(INIT => x"08")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => \framing_error_int_0_sqmuxa_0_a2_0_a2_2\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[1]\ : CFG4
      generic map(INIT => x"DFFF")

      port map(A => baud_clock, B => N_1178, C => 
        \rx_bit_cnt[1]_net_1\, D => \rx_bit_cnt[0]_net_1\, Y => 
        N_1220);
    
    rx_byte_xhdl5_1_sqmuxa_0_a3_0_a2_0_a2 : CFG3
      generic map(INIT => x"20")

      port map(A => baud_clock, B => N_1466, C => 
        \rx_state[0]_net_1\, Y => rx_byte_xhdl5_1_sqmuxa);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_1182, B => \rx_bit_cnt[0]_net_1\, C => 
        N_1979, Y => N_1109_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => N_1980, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_1107_i_0);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    \rx_bit_cnt_RNO[2]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_1220, B => \rx_bit_cnt[2]_net_1\, C => 
        N_1979, Y => N_1015_i_0);
    
    \receive_count[2]\ : SLE
      port map(D => N_1107_i_0, CLK => FAB_CCC_GL0, EN => 
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

      port map(A => \N_935\, B => \rx_shift[3]_net_1\, Y => 
        \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[6]_net_1\, Y => 
        \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_1028, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => N_1278, Y => N_400_i_0);
    
    \receive_count_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \receive_count[0]_net_1\, B => N_1980, C => 
        \receive_count[1]_net_1\, Y => N_1106_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    \rx_state_ns_i_a3_0_4_a2[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1178, B => \rx_state[1]_net_1\, Y => 
        framing_error_int_2_sqmuxa);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[2]_net_1\, Y => 
        \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => N_1166, B => \receive_count[3]_net_1\, C => 
        N_1980, D => N_2402, Y => N_1108_i_0);
    
    fifo_write_xhdl6_RNIDJ321 : CFG2
      generic map(INIT => x"2")

      port map(A => N_1271, B => \N_1146\, Y => N_1887);
    
    un1_samples8_1_0_0_o2 : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => N_1166, C => 
        \receive_count[3]_net_1\, Y => N_1182);
    
    fifo_write_xhdl6 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa_i_0, CLK => 
        FAB_CCC_GL0, EN => VCC_net_1, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \N_1146\);
    
    framing_error_i_RNO : CFG1
      generic map(INIT => "01")

      port map(A => clear_parity_reg, Y => clear_parity_reg_i_0);
    
    \receive_count_RNO[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_1980, B => \receive_count[0]_net_1\, C => 
        N_1981, Y => N_1105_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[6]_net_1\);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[1]_net_1\);
    
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
    
    \receive_shift.rx_shift_12[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[7]_net_1\, Y => 
        \rx_shift_12[6]\);
    
    framing_error_int_0_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \framing_error_int_0_sqmuxa_0_a2_0_a2_2\, B
         => N_1278, C => \rx_state[1]_net_1\, D => 
        \receive_count[3]_net_1\, Y => framing_error_int_0_sqmuxa);
    
    \receive_count[0]\ : SLE
      port map(D => N_1105_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(3));
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[5]_net_1\, Y => 
        \rx_shift_12[4]\);
    
    \rx_filtered.m3_0_o2_i_o2\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => N_1278);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_935\, B => \rx_shift[4]_net_1\, Y => 
        \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rcv_cnt.receive_count_3_i_a2[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \receive_count[0]_net_1\, B => \N_935\, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_2402);
    
    \rx_state_ns_0_0_0[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, C => N_2402, D => N_1466, Y => 
        \rx_state_ns[0]\);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_1109_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(1));
    
    \rx_state_ns_i_i[1]\ : CFG4
      generic map(INIT => x"AE04")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_1466, D => N_1178, Y => N_1028);
    
    \rx_state_ns_i_i_o2[1]\ : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \receive_count[3]_net_1\, B => 
        \receive_count[2]_net_1\, C => \receive_count[0]_net_1\, 
        D => \receive_count[1]_net_1\, Y => N_1178);
    
    \rx_bit_cnt_RNO[3]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => N_1979, D => N_1220, Y => 
        N_1021_i_0);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_1021_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => N_1979, D => N_1182, Y => 
        N_1001_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_Clock_gen is

    port( N_1193      : out   std_logic;
          N_1193_i_0  : out   std_logic;
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          baud_clock  : out   std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_Clock_gen;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_Clock_gen is 

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

    signal \N_1193\, xmit_clock_net_1, VCC_net_1, 
        un36_baud_clock_int, \baud_clock\, GND_net_1, 
        \xmit_cntr[3]_net_1\, N_1510_i_i_0, \xmit_cntr[0]_net_1\, 
        N_1463_i, \xmit_cntr[1]_net_1\, N_1473_i_i_0, 
        \xmit_cntr[2]_net_1\, N_1479_i_i_0, \baud_cntr_one\, 
        N_1989, N_13_i_0, \baud_cntr[0]_net_1\, \baud_cntr_lm[0]\, 
        \baud_cntr[1]_net_1\, \baud_cntr_lm[1]\, 
        \baud_cntr[2]_net_1\, \baud_cntr_lm[2]\, 
        \baud_cntr[3]_net_1\, \baud_cntr_lm[3]\, 
        \baud_cntr[4]_net_1\, \baud_cntr_lm[4]\, 
        \baud_cntr[5]_net_1\, \baud_cntr_lm[5]\, 
        \baud_cntr[6]_net_1\, \baud_cntr_lm[6]\, 
        \baud_cntr[7]_net_1\, \baud_cntr_lm[7]\, 
        \baud_cntr[8]_net_1\, \baud_cntr_lm[8]\, 
        \baud_cntr[9]_net_1\, \baud_cntr_lm[9]\, 
        \baud_cntr[10]_net_1\, \baud_cntr_lm[10]\, 
        \baud_cntr[11]_net_1\, \baud_cntr_lm[11]\, 
        \baud_cntr[12]_net_1\, \baud_cntr_lm[12]\, 
        \baud_cntr_cry_1_FCO[11]\, \baud_cntr_cry_3_FCO[11]\, 
        \baud_cntr_cry[8]_net_1\, \baud_cntr_s[8]\, 
        \baud_cntr_cry[9]_net_1\, \baud_cntr_s[9]\, 
        \baud_cntr_cry[10]_net_1\, \baud_cntr_s[10]\, 
        \baud_cntr_s[12]_net_1\, \baud_cntr_cry[11]_net_1\, 
        \baud_cntr_s[11]\, \baud_cntr_cry[0]_net_1\, 
        \baud_cntr_cry_Y_0[0]\, \baud_cntr_cry[1]_net_1\, 
        \baud_cntr_s[1]\, \baud_cntr_cry[2]_net_1\, 
        \baud_cntr_s[2]\, \baud_cntr_cry[3]_net_1\, 
        \baud_cntr_s[3]\, \baud_cntr_cry[4]_net_1\, 
        \baud_cntr_s[4]\, \baud_cntr_cry[5]_net_1\, 
        \baud_cntr_s[5]\, \baud_cntr_s[7]_net_1\, 
        \baud_cntr_cry[6]_net_1\, \baud_cntr_s[6]\, N_1212, 
        un1_baud_cntr_i_o4_8, un1_baud_cntr_i_o4_7, 
        un1_baud_cntr_i_o4_6, N_1988, N_7 : std_logic;

begin 

    N_1193 <= \N_1193\;
    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_6\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[12]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[9]_net_1\, D => 
        \baud_cntr[8]_net_1\, Y => un1_baud_cntr_i_o4_6);
    
    \baud_cntr_cry[10]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[10]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]_net_1\, S => \baud_cntr_s[10]\, Y => 
        OPEN, FCO => \baud_cntr_cry[10]_net_1\);
    
    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_lm[7]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[7]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x3_0_x2[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_1463_i);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_lm[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[0]_net_1\);
    
    baud_cntr_one : SLE
      port map(D => N_1989, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \baud_cntr_one\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_lm[9]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => N_1510_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[3]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_8\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[7]_net_1\, B => 
        \baud_cntr[3]_net_1\, C => \baud_cntr[2]_net_1\, D => 
        \baud_cntr[1]_net_1\, Y => un1_baud_cntr_i_o4_8);
    
    \baud_cntr_lm_0[1]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => N_7, B => N_1988, C => \baud_cntr_s[1]\, Y
         => \baud_cntr_lm[1]\);
    
    \baud_cntr_cry[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => GND_net_1, S => OPEN, Y
         => \baud_cntr_cry_Y_0[0]\, FCO => 
        \baud_cntr_cry[0]_net_1\);
    
    \baud_cntr_lm_0[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[7]_net_1\, Y => 
        \baud_cntr_lm[7]\);
    
    \baud_cntr_lm_0[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_cry_Y_0[0]\, Y => 
        \baud_cntr_lm[0]\);
    
    \baud_cntr_cry[1]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]_net_1\, S => \baud_cntr_s[1]\, Y => 
        OPEN, FCO => \baud_cntr_cry[1]_net_1\);
    
    baud_cntr_one_RNIEJAA : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[0]_net_1\, B => 
        \xmit_cntr[1]_net_1\, C => \baud_cntr_one\, D => 
        \xmit_cntr[2]_net_1\, Y => N_1988);
    
    \baud_cntr_cry_1[11]\ : ARI1
      generic map(INIT => x"60001")

      port map(A => \baud_cntr[3]_net_1\, B => 
        \baud_cntr[0]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[2]_net_1\, FCI => GND_net_1, S => OPEN, Y => 
        OPEN, FCO => \baud_cntr_cry_1_FCO[11]\);
    
    \baud_cntr_cry[3]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]_net_1\, S => \baud_cntr_s[3]\, Y => 
        OPEN, FCO => \baud_cntr_cry[3]_net_1\);
    
    \baud_cntr_cry[9]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[9]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]_net_1\, S => \baud_cntr_s[9]\, Y => 
        OPEN, FCO => \baud_cntr_cry[9]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_i_a2\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un1_baud_cntr_i_o4_8, B => 
        un1_baud_cntr_i_o4_7, C => \baud_cntr[0]_net_1\, D => 
        un1_baud_cntr_i_o4_6, Y => N_1989);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x3_i_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_1212);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    xmit_clock_RNIAVGO_0 : CFG1
      generic map(INIT => "01")

      port map(A => \N_1193\, Y => N_1193_i_0);
    
    \baud_cntr_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[10]\, Y => 
        \baud_cntr_lm[10]\);
    
    \baud_cntr_cry[2]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]_net_1\, S => \baud_cntr_s[2]\, Y => 
        OPEN, FCO => \baud_cntr_cry[2]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1479_i_i\ : CFG3
      generic map(INIT => x"D2")

      port map(A => \xmit_cntr[1]_net_1\, B => N_1212, C => 
        \xmit_cntr[2]_net_1\, Y => N_1479_i_i_0);
    
    \baud_cntr_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[12]_net_1\, Y => 
        \baud_cntr_lm[12]\);
    
    \baud_cntr_lm_0[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[5]\, Y => 
        \baud_cntr_lm[5]\);
    
    \baud_cntr_cry[6]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]_net_1\, S => \baud_cntr_s[6]\, Y => 
        OPEN, FCO => \baud_cntr_cry[6]_net_1\);
    
    \baud_cntr_cry[4]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]_net_1\, S => \baud_cntr_s[4]\, Y => 
        OPEN, FCO => \baud_cntr_cry[4]_net_1\);
    
    \baud_cntr[5]\ : SLE
      port map(D => \baud_cntr_lm[5]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[5]_net_1\);
    
    \baud_cntr_lm_0[3]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => N_7, B => N_1988, C => \baud_cntr_s[3]\, Y
         => \baud_cntr_lm[3]\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1510_i_i\ : CFG4
      generic map(INIT => x"D2F0")

      port map(A => \xmit_cntr[1]_net_1\, B => N_1212, C => 
        \xmit_cntr[3]_net_1\, D => \xmit_cntr[2]_net_1\, Y => 
        N_1510_i_i_0);
    
    \baud_cntr_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[2]\, Y => 
        \baud_cntr_lm[2]\);
    
    \baud_cntr[3]\ : SLE
      port map(D => \baud_cntr_lm[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \make_xmit_clock.un36_baud_clock_int_0_a4_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un36_baud_clock_int);
    
    \baud_cntr_s[7]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \baud_cntr[7]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]_net_1\, S => \baud_cntr_s[7]_net_1\, Y
         => OPEN, FCO => OPEN);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_lm[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    baud_clock_int_RNO : CFG2
      generic map(INIT => x"1")

      port map(A => N_7, B => N_1988, Y => N_13_i_0);
    
    \baud_cntr_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[9]\, Y => 
        \baud_cntr_lm[9]\);
    
    \baud_cntr_cry_3[11]\ : ARI1
      generic map(INIT => x"60001")

      port map(A => \baud_cntr[7]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[5]_net_1\, D => 
        \baud_cntr[6]_net_1\, FCI => \baud_cntr_cry_1_FCO[11]\, S
         => OPEN, Y => OPEN, FCO => \baud_cntr_cry_3_FCO[11]\);
    
    \baud_cntr_cry[5]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]_net_1\, S => \baud_cntr_s[5]\, Y => 
        OPEN, FCO => \baud_cntr_cry[5]_net_1\);
    
    \baud_cntr_s[12]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \baud_cntr[12]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]_net_1\, S => \baud_cntr_s[12]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \baud_cntr_lm_0[4]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => N_7, B => N_1988, C => \baud_cntr_s[4]\, Y
         => \baud_cntr_lm[4]\);
    
    \baud_cntr[10]\ : SLE
      port map(D => \baud_cntr_lm[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[10]_net_1\);
    
    \baud_cntr[11]\ : SLE
      port map(D => \baud_cntr_lm[11]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[11]_net_1\);
    
    \baud_cntr[6]\ : SLE
      port map(D => \baud_cntr_lm[6]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[6]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_7\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[6]_net_1\, C => \baud_cntr[5]_net_1\, D => 
        \baud_cntr[4]_net_1\, Y => un1_baud_cntr_i_o4_7);
    
    \baud_cntr[4]\ : SLE
      port map(D => \baud_cntr_lm[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[4]_net_1\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => N_1479_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_6_RNIKQQ61\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => un1_baud_cntr_i_o4_8, B => 
        un1_baud_cntr_i_o4_7, C => \baud_cntr[0]_net_1\, D => 
        un1_baud_cntr_i_o4_6, Y => N_7);
    
    xmit_clock_RNIAVGO : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => xmit_clock_net_1, Y => 
        \N_1193\);
    
    \baud_cntr_lm_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[6]\, Y => 
        \baud_cntr_lm[6]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_lm[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
    \baud_cntr_lm_0[11]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[11]\, Y => 
        \baud_cntr_lm[11]\);
    
    \xmit_clock\ : SLE
      port map(D => un36_baud_clock_int, CLK => FAB_CCC_GL0, EN
         => \baud_clock\, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        xmit_clock_net_1);
    
    \baud_cntr_cry[8]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[8]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry_3_FCO[11]\, S => \baud_cntr_s[8]\, Y => 
        OPEN, FCO => \baud_cntr_cry[8]_net_1\);
    
    baud_clock_int : SLE
      port map(D => N_13_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \baud_clock\);
    
    \baud_cntr_cry[11]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[11]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]_net_1\, S => \baud_cntr_s[11]\, Y => 
        OPEN, FCO => \baud_cntr_cry[11]_net_1\);
    
    \xmit_cntr[1]\ : SLE
      port map(D => N_1473_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[1]_net_1\);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_lm[12]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[12]_net_1\);
    
    \xmit_cntr[0]\ : SLE
      port map(D => N_1463_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[0]_net_1\);
    
    \baud_cntr_lm_0[8]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_7, B => \baud_cntr_s[8]\, Y => 
        \baud_cntr_lm[8]\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1473_i_i\ : CFG2
      generic map(INIT => x"9")

      port map(A => N_1212, B => \xmit_cntr[1]_net_1\, Y => 
        N_1473_i_i_0);
    
    \baud_cntr[8]\ : SLE
      port map(D => \baud_cntr_lm[8]\, CLK => FAB_CCC_GL0, EN => 
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
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1979_i_0\, 
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
        un1_counter_1_cry_5, rd_pointer_s_117_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_118_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, \un2_temp_xhdl5_0_a2_0_a2_4\
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
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_118_FCO, S
         => \wr_pointer_s[1]\, Y => OPEN, FCO => 
        \wr_pointer_cry[1]_net_1\);
    
    \wr_pointer_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[2]_net_1\, S => \wr_pointer_s[3]\, Y => 
        OPEN, FCO => \wr_pointer_cry[3]_net_1\);
    
    rd_pointer_s_117 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_117_FCO);
    
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
    
    un2_temp_xhdl5_0_a2_0_a2_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[5]_net_1\, B => \counter[4]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[1]_net_1\, Y => 
        \un2_temp_xhdl5_0_a2_0_a2_4\);
    
    read_n_hold : SLE
      port map(D => fifo_read_tx, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
    
    wr_pointer_s_118 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_118_FCO);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_117_FCO, S
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
    
    un2_temp_xhdl5_0_a2_0_a2_4_RNIC83O : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[0]_net_1\, B => 
        \un2_temp_xhdl5_0_a2_0_a2_4\, C => \counter[6]_net_1\, D
         => \counter[3]_net_1\, Y => fifo_full_tx_i_0);
    
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
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        EN => \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
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
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[3]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_2, S => un1_counter_1_cry_3_0_S, Y => 
        OPEN, FCO => un1_counter_1_cry_3);
    
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
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1979_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
    
    N_1979_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => fifo_write_tx, Y => \N_1979_i_0\);
    
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
          N_1193_i_0            : in    std_logic;
          CoreUARTapb_0_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic;
          baud_clock            : in    std_logic;
          xmit_clock            : in    std_logic;
          N_1193                : in    std_logic
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

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \fifo_read_tx\, GND_net_1, N_308, 
        un5_xmit_pulse_i_a3_i_0, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_111_i_0, 
        \xmit_bit_sel[2]_net_1\, N_113_i_0, 
        \xmit_bit_sel[3]_net_1\, N_115_i_0, \tx_byte[0]_net_1\, 
        N_1471_i_0, \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, N_32, \xmit_state[6]_net_1\, 
        \xmit_state_ns[0]\, \xmit_state[5]_net_1\, 
        \xmit_state[0]_net_1\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[2]\, \xmit_state[3]_net_1\, N_101_i_0, 
        \xmit_state[1]_net_1\, \xmit_state_ns[5]\, N_32_i_0, 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, 
        tx_xhdl2_1_7_i_m2_i_m2_am_1_1, 
        tx_xhdl2_1_7_i_m2_i_m2_am_0, 
        tx_xhdl2_1_7_i_m2_i_m2_bm_1_1, 
        tx_xhdl2_1_7_i_m2_i_m2_bm_0, N_1494, N_1282, N_1964
         : std_logic;

begin 

    fifo_read_tx <= \fifo_read_tx\;

    txrdy_int : SLE
      port map(D => fifo_full_tx_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_TXRDY);
    
    \xmit_state[3]\ : SLE
      port map(D => N_101_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \xmit_state_RNI8UMV[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[4]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_1471_i_0);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_dout_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => N_32_i_0, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_dout_reg(4), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"28")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_111_i_0);
    
    \xmit_state_ns_i_0_0_a2_0[3]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[3]_net_1\, C => N_1193, D => N_1282, Y => 
        N_1964);
    
    \xmit_state_ns_0_0[2]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \xmit_state[4]_net_1\, B => N_1193, C => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[2]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_dout_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sm.un5_xmit_pulse_i_a3_i_0\ : CFG4
      generic map(INIT => x"FFFB")

      port map(A => \xmit_state[0]_net_1\, B => N_1193, C => 
        \xmit_state[5]_net_1\, D => \xmit_state[6]_net_1\, Y => 
        un5_xmit_pulse_i_a3_i_0);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_115_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1193_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    fifo_read_en0_RNIH9V8 : CFG1
      generic map(INIT => "01")

      port map(A => \fifo_read_tx\, Y => fifo_read_tx_i_0);
    
    \xmit_sel.tx_xhdl2_3_iv_i_a2_0_a2\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \xmit_state[3]_net_1\, B => N_1494, C => 
        \xmit_state[4]_net_1\, Y => N_308);
    
    tx_xhdl2 : SLE
      port map(D => N_308, CLK => FAB_CCC_GL0, EN => 
        un5_xmit_pulse_i_a3_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => TX_c);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => 
        tx_xhdl2_1_7_i_m2_i_m2_am_1_1);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_113_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1193_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_dout_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \xmit_state_ns_0_0_a2_0_4[0]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => counter(1), B => \xmit_state[6]_net_1\, C => 
        counter(6), D => counter(3), Y => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_dout_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    \xmit_state_RNO[3]\ : CFG4
      generic map(INIT => x"0A0E")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[4]_net_1\, C => N_1964, D => N_1193, Y => 
        N_101_i_0);
    
    \xmit_bit_sel_RNO[2]\ : CFG4
      generic map(INIT => x"28A0")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[2]_net_1\, D
         => \xmit_bit_sel[1]_net_1\, Y => N_113_i_0);
    
    \xmit_state_RNO[0]\ : CFG3
      generic map(INIT => x"2A")

      port map(A => \xmit_state[6]_net_1\, B => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, Y => N_32_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => 
        tx_xhdl2_1_7_i_m2_i_m2_bm_1_1);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_ns\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        tx_xhdl2_1_7_i_m2_i_m2_bm_0, C => 
        tx_xhdl2_1_7_i_m2_i_m2_am_0, Y => N_1494);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_i_m2_am_1_1, D => 
        \xmit_bit_sel[1]_net_1\, Y => tx_xhdl2_1_7_i_m2_i_m2_am_0);
    
    \xmit_cnt.xmit_bit_sel_3_a3_0_a2_0_a2[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[3]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    \xmit_state_ns_0_0[0]\ : CFG4
      generic map(INIT => x"C0EA")

      port map(A => \xmit_state[1]_net_1\, B => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, D => N_1193, Y => 
        \xmit_state_ns[0]\);
    
    fifo_read_en0_1_i_a3_i_0 : CFG3
      generic map(INIT => x"B3")

      port map(A => \xmit_state_ns_0_0_a2_0_4[0]_net_1\, B => 
        \xmit_state[6]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, Y => N_32);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_dout_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_111_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1193_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_state[1]\ : SLE
      port map(D => \xmit_state_ns[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => N_1193_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_dout_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_bm\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[5]_net_1\, B => \tx_byte[7]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_i_m2_bm_1_1, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_i_m2_bm_0);
    
    fifo_read_en0 : SLE
      port map(D => N_32, CLK => FAB_CCC_GL0, EN => 
        un5_xmit_pulse_i_a3_i_0, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fifo_read_tx\);
    
    \xmit_state_ns_0_0[5]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \xmit_state[1]_net_1\, B => N_1193, C => 
        N_1964, Y => \xmit_state_ns[5]\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_dout_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_1471_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        \xmit_state[3]_net_1\, C => N_1282, Y => N_115_i_0);
    
    \xmit_state_ns_0_0_a2_0_5[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => counter(5), B => counter(4), C => counter(2), 
        D => counter(0), Y => \xmit_state_ns_0_0_a2_0_5[0]_net_1\);
    
    \xmit_cnt.xmit_bit_sel_3_i_0_0_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, C => \xmit_bit_sel[0]_net_1\, Y
         => N_1282);
    
    \xmit_state[6]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[6]_net_1\);
    

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
          N_1887      : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal N_1887_i_0, VCC_net_1, GND_net_1, INV_0_Y
         : std_logic;
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
      port map(A => N_1887_i_0, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    INV_0_RNO : CFG1
      generic map(INIT => "01")

      port map(A => N_1887, Y => N_1887_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_fifo_ctrl_128_0 is

    port( rx_dout     : out   std_logic_vector(7 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic;
          N_85        : in    std_logic;
          N_1887      : in    std_logic;
          N_85_i_0    : in    std_logic;
          N_1146      : in    std_logic;
          N_2394      : out   std_logic;
          N_1165      : in    std_logic;
          N_1271      : out   std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0
    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          N_1887      : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, VCC_net_1, 
        \data_out_0[0]\, \data_out_xhdl1_0_sqmuxa\, GND_net_1, 
        \data_out_0[1]\, \data_out_0[2]\, \data_out_0[3]\, 
        \data_out_0[4]\, \data_out_0[5]\, \data_out_0[6]\, 
        \data_out_0[7]\, \counter[0]_net_1\, 
        un1_counter_1_cry_0_Y_0, \counter[1]_net_1\, 
        un1_counter_1_cry_1_S, \counter[2]_net_1\, 
        un1_counter_1_cry_2_S, \counter[3]_net_1\, 
        un1_counter_1_cry_3_S, \counter[4]_net_1\, 
        un1_counter_1_cry_4_S, \counter[5]_net_1\, 
        un1_counter_1_cry_5_S, \counter[6]_net_1\, 
        un1_counter_1_s_6_S_0, \read_n_hold\, 
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
        \un1_counter_1_cry_0\, \un1_counter_1_axb_0_1\, \N_2394\, 
        \un1_counter_1_cry_1\, \un1_counter_1_cry_2\, \N_1271\, 
        \un1_counter_1_cry_3\, \un1_counter_1_cry_4\, 
        \un1_counter_1_cry_5\, rd_pointer_s_119_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_120_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, N_1481, 
        \un1_counter_0_sqmuxa_0_x2_i_m2_ns_1[6]_net_1\, 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, 
        temp_xhdl17_i_0_o2_i_o2_0_3 : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0
	Use entity work.
        mss_top_sb_CoreUARTapb_0_0_ram128x8_pa4_0(DEF_ARCH);
begin 

    N_2394 <= \N_2394\;
    N_1271 <= \N_1271\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_120_FCO, S
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
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[2]_net_1\);
    
    \wr_pointer_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[4]_net_1\, S => \wr_pointer_s[5]\, Y => 
        OPEN, FCO => \wr_pointer_cry[5]_net_1\);
    
    un1_counter_1_s_6 : ARI1
      generic map(INIT => x"4A900")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => N_85, 
        D => N_1887, FCI => \un1_counter_1_cry_5\, S => 
        un1_counter_1_s_6_S_0, Y => OPEN, FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[5]_net_1\);
    
    \data_out_xhdl1[2]\ : SLE
      port map(D => \data_out_0[2]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(2));
    
    \counter_RNICE1S[0]\ : CFG4
      generic map(INIT => x"F7FF")

      port map(A => \counter[0]_net_1\, B => \counter[4]_net_1\, 
        C => temp_xhdl17_i_0_o2_i_o2_0_3, D => \counter[2]_net_1\, 
        Y => \N_1271\);
    
    \counter[6]\ : SLE
      port map(D => un1_counter_1_s_6_S_0, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[6]_net_1\);
    
    read_n_hold : SLE
      port map(D => N_85, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
    
    un1_counter_1_cry_1 : ARI1
      generic map(INIT => x"5FE01")

      port map(A => \counter[1]_net_1\, B => N_1887, C => 
        \N_2394\, D => N_1165, FCI => \un1_counter_1_cry_0\, S
         => un1_counter_1_cry_1_S, Y => OPEN, FCO => 
        \un1_counter_1_cry_1\);
    
    un1_counter_1_cry_3 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[3]_net_1\, B => N_85, C => N_1146, D
         => \N_1271\, FCI => \un1_counter_1_cry_2\, S => 
        un1_counter_1_cry_3_S, Y => OPEN, FCO => 
        \un1_counter_1_cry_3\);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_119_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \counter[5]_net_1\, B => \counter[6]_net_1\, 
        C => \counter[4]_net_1\, D => \counter[3]_net_1\, Y => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\);
    
    rd_pointer_s_119 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => rd_pointer_s_119_FCO);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(0));
    
    un1_counter_1_axb_0_1 : CFG4
      generic map(INIT => x"3726")

      port map(A => N_1146, B => N_1165, C => \N_1271\, D => 
        N_1481, Y => \un1_counter_1_axb_0_1\);
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"5E619")

      port map(A => \counter[0]_net_1\, B => 
        \un1_counter_1_axb_0_1\, C => N_1146, D => \N_2394\, FCI
         => GND_net_1, S => OPEN, Y => un1_counter_1_cry_0_Y_0, 
        FCO => \un1_counter_1_cry_0\);
    
    \un1_counter_0_sqmuxa_0_x2_i_m2_ns[6]\ : CFG4
      generic map(INIT => x"FBD9")

      port map(A => \counter[2]_net_1\, B => 
        \un1_counter_0_sqmuxa_0_x2_i_m2_ns_1[6]_net_1\, C => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, D => 
        temp_xhdl17_i_0_o2_i_o2_0_3, Y => N_1481);
    
    \un1_counter_0_sqmuxa_0_x2_i_m2_ns_1[6]\ : CFG4
      generic map(INIT => x"30F5")

      port map(A => \counter[1]_net_1\, B => \counter[4]_net_1\, 
        C => \counter[2]_net_1\, D => \counter[0]_net_1\, Y => 
        \un1_counter_0_sqmuxa_0_x2_i_m2_ns_1[6]_net_1\);
    
    \data_out_xhdl1[7]\ : SLE
      port map(D => \data_out_0[7]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(7));
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_3_RNIET2E[6]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        C => \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, D => 
        \counter[2]_net_1\, Y => \N_2394\);
    
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
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[0]_net_1\);
    
    un1_counter_1_cry_5 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[5]_net_1\, B => N_85, C => N_1146, D
         => \N_1271\, FCI => \un1_counter_1_cry_4\, S => 
        un1_counter_1_cry_5_S, Y => OPEN, FCO => 
        \un1_counter_1_cry_5\);
    
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
        EN => N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[6]_net_1\);
    
    wr_pointer_s_120 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => wr_pointer_s_120_FCO);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_S, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[3]_net_1\);
    
    \data_out_xhdl1[4]\ : SLE
      port map(D => \data_out_0[4]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
    \data_out_xhdl1[5]\ : SLE
      port map(D => \data_out_0[5]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(5));
    
    \counter_RNIJT0G[3]\ : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[6]_net_1\, B => \counter[5]_net_1\, 
        C => \counter[3]_net_1\, D => \counter[1]_net_1\, Y => 
        temp_xhdl17_i_0_o2_i_o2_0_3);
    
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
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        N_1887, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[1]_net_1\);
    
    un1_counter_1_cry_4 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[4]_net_1\, B => N_85, C => N_1146, D
         => \N_1271\, FCI => \un1_counter_1_cry_3\, S => 
        un1_counter_1_cry_4_S, Y => OPEN, FCO => 
        \un1_counter_1_cry_4\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(3));
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    un1_counter_1_cry_2 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[2]_net_1\, B => N_85, C => N_1146, D
         => \N_1271\, FCI => \un1_counter_1_cry_1\, S => 
        un1_counter_1_cry_2_S, Y => OPEN, FCO => 
        \un1_counter_1_cry_2\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[3]_net_1\);
    
    \rd_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[1]_net_1\, S => \rd_pointer_s[2]\, Y => 
        OPEN, FCO => \rd_pointer_cry[2]_net_1\);
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        N_85_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[4]_net_1\);
    
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
        rx_byte(0) => rx_byte(0), N_1887 => N_1887, FAB_CCC_GL0
         => FAB_CCC_GL0, MSS_READY => MSS_READY);
    
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

    port( rx_dout     : out   std_logic_vector(7 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic;
          N_85        : in    std_logic;
          N_1887      : in    std_logic;
          N_85_i_0    : in    std_logic;
          N_1146      : in    std_logic;
          N_2394      : out   std_logic;
          N_1165      : in    std_logic;
          N_1271      : out   std_logic
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
    port( rx_dout     : out   std_logic_vector(7 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U';
          N_85        : in    std_logic := 'U';
          N_1887      : in    std_logic := 'U';
          N_85_i_0    : in    std_logic := 'U';
          N_1146      : in    std_logic := 'U';
          N_2394      : out   std_logic;
          N_1165      : in    std_logic := 'U';
          N_1271      : out   std_logic
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
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, N_85
         => N_85, N_1887 => N_1887, N_85_i_0 => N_85_i_0, N_1146
         => N_1146, N_2394 => N_2394, N_1165 => N_1165, N_1271
         => N_1271);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA          : in    std_logic_vector(7 downto 0);
          rx_dout_reg                           : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR           : in    std_logic_vector(2 to 2);
          PRDATA_3_0_a2_12_0                    : in    std_logic_vector(0 to 0);
          MSS_READY                             : in    std_logic;
          FAB_CCC_GL0                           : in    std_logic;
          CoreUARTapb_0_0_OVERFLOW              : out   std_logic;
          CoreUARTapb_0_0_RXRDY                 : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE          : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE         : in    std_logic;
          N_2014                                : in    std_logic;
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 : out   std_logic;
          N_1975                                : in    std_logic;
          N_1140                                : in    std_logic;
          N_2037                                : in    std_logic;
          TX_c                                  : out   std_logic;
          CoreUARTapb_0_0_TXRDY                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR           : out   std_logic;
          RX_c                                  : in    std_logic
        );

end mss_top_sb_CoreUARTapb_0_0_COREUART;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_0_0_COREUART is 

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
    port( rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic := 'U';
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          baud_clock                  : in    std_logic := 'U';
          stop_strobe                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR : out   std_logic;
          RX_c                        : in    std_logic := 'U';
          clear_parity_en             : out   std_logic;
          N_1146                      : out   std_logic;
          N_935                       : out   std_logic;
          N_1271                      : in    std_logic := 'U';
          N_1887                      : out   std_logic
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

  component mss_top_sb_CoreUARTapb_0_0_Clock_gen
    port( N_1193      : out   std_logic;
          N_1193_i_0  : out   std_logic;
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          baud_clock  : out   std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
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
          N_1193_i_0            : in    std_logic := 'U';
          CoreUARTapb_0_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic := 'U';
          baud_clock            : in    std_logic := 'U';
          xmit_clock            : in    std_logic := 'U';
          N_1193                : in    std_logic := 'U'
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

  component mss_top_sb_CoreUARTapb_0_0_fifo_256x8_0
    port( rx_dout     : out   std_logic_vector(7 downto 0);
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U';
          N_85        : in    std_logic := 'U';
          N_1887      : in    std_logic := 'U';
          N_85_i_0    : in    std_logic := 'U';
          N_1146      : in    std_logic := 'U';
          N_2394      : out   std_logic;
          N_1165      : in    std_logic := 'U';
          N_1271      : out   std_logic
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

    signal \rx_dout_reg_empty\, rx_dout_reg_empty_i_0, N_645, 
        N_645_i_0, N_85, N_85_i_0, GND_net_1, N_136, VCC_net_1, 
        \un9_clear_overflow_0_0_a2\, \un9_clear_overflow_0_0\, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        un3_stop_strobe, \rx_dout[0]\, \rx_dout[1]\, \rx_dout[2]\, 
        \rx_dout[3]\, \rx_dout[4]\, \rx_dout[5]\, \rx_dout[6]\, 
        \rx_dout[7]\, \rx_state[0]_net_1\, N_1103_i_0, 
        \rx_state[1]_net_1\, N_1552_i, \clear_parity_reg\, 
        clear_parity_reg0, clear_parity_en, \fifo_write_tx\, 
        un1_csn_i_0, N_1165, N_935, stop_strobe, 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_net_1, N_1271, 
        N_1146, N_2394, N_1193, N_1193_i_0, xmit_clock, 
        baud_clock, \tx_dout_reg[0]\, \tx_dout_reg[1]\, 
        \tx_dout_reg[2]\, \tx_dout_reg[3]\, \tx_dout_reg[4]\, 
        \tx_dout_reg[5]\, \tx_dout_reg[6]\, \tx_dout_reg[7]\, 
        \counter[0]\, \counter[1]\, \counter[2]\, \counter[3]\, 
        \counter[4]\, \counter[5]\, \counter[6]\, fifo_read_tx, 
        fifo_read_tx_i_0, fifo_full_tx_i_0, \rx_byte[0]\, 
        \rx_byte[1]\, \rx_byte[2]\, \rx_byte[3]\, \rx_byte[4]\, 
        \rx_byte[5]\, \rx_byte[6]\, \rx_byte[7]\, N_1887
         : std_logic;

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

    rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 <= 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_net_1;

    \tx_hold_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \rx_dout_reg[0]\ : SLE
      port map(D => \rx_dout[0]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(0));
    
    make_RX : mss_top_sb_CoreUARTapb_0_0_Rx_async
      port map(rx_byte(7) => \rx_byte[7]\, rx_byte(6) => 
        \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4) => 
        \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2) => 
        \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0) => 
        \rx_byte[0]\, clear_parity_reg => \clear_parity_reg\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        baud_clock => baud_clock, stop_strobe => stop_strobe, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, RX_c => RX_c, 
        clear_parity_en => clear_parity_en, N_1146 => N_1146, 
        N_935 => N_935, N_1271 => N_1271, N_1887 => N_1887);
    
    rx_dout_reg_empty_1_sqmuxa_i_0_0 : CFG4
      generic map(INIT => x"EAAA")

      port map(A => N_645, B => PRDATA_3_0_a2_12_0(0), C => 
        N_1975, D => rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_net_1, 
        Y => N_136);
    
    make_mss_top_sb_CoreUARTapb_0_0_Clock_gen : 
        mss_top_sb_CoreUARTapb_0_0_Clock_gen
      port map(N_1193 => N_1193, N_1193_i_0 => N_1193_i_0, 
        xmit_clock => xmit_clock, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => baud_clock);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \rx_dout_reg[3]\ : SLE
      port map(D => \rx_dout[3]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(3));
    
    clear_framing_error_reg0 : SLE
      port map(D => clear_parity_en, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_reg0);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    rx_dout_reg_empty : SLE
      port map(D => N_645_i_0, CLK => FAB_CCC_GL0, EN => N_136, 
        ALn => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_dout_reg_empty\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
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
    
    rx_dout_reg_empty_RNO : CFG1
      generic map(INIT => "01")

      port map(A => N_645, Y => N_645_i_0);
    
    fifo_write_tx_RNO : CFG4
      generic map(INIT => x"BFFF")

      port map(A => N_1140, B => N_1975, C => N_2037, D => 
        PRDATA_3_0_a2_12_0(0), Y => un1_csn_i_0);
    
    rx_dout_reg_empty_RNIEALV_0 : CFG1
      generic map(INIT => "01")

      port map(A => N_85, Y => N_85_i_0);
    
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
        FAB_CCC_GL0 => FAB_CCC_GL0, N_1193_i_0 => N_1193_i_0, 
        CoreUARTapb_0_0_TXRDY => CoreUARTapb_0_0_TXRDY, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0, baud_clock => 
        baud_clock, xmit_clock => xmit_clock, N_1193 => N_1193);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    \rx_dout_reg[4]\ : SLE
      port map(D => \rx_dout[4]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(4));
    
    \reg_write.un1_csn_0_a2_1_a2\ : CFG4
      generic map(INIT => x"4000")

      port map(A => N_1140, B => N_1975, C => N_2037, D => 
        PRDATA_3_0_a2_12_0(0), Y => un1_csn);
    
    \rx_state[1]\ : SLE
      port map(D => N_1552_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    \rx_dout_reg[7]\ : SLE
      port map(D => \rx_dout[7]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(7));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_dout_reg[1]\ : SLE
      port map(D => \rx_dout[1]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(1));
    
    rxrdy_xhdl4_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \rx_dout_reg_empty\, Y => 
        rx_dout_reg_empty_i_0);
    
    un9_clear_overflow_0_0_a2 : CFG2
      generic map(INIT => x"1")

      port map(A => N_1271, B => N_1146, Y => 
        \un9_clear_overflow_0_0_a2\);
    
    clear_parity_reg : SLE
      port map(D => clear_parity_reg0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \clear_parity_reg\);
    
    \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_645);
    
    un9_clear_overflow_0_0 : CFG4
      generic map(INIT => x"EAAA")

      port map(A => \un9_clear_overflow_0_0_a2\, B => 
        PRDATA_3_0_a2_12_0(0), C => N_1975, D => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_net_1, Y => 
        \un9_clear_overflow_0_0\);
    
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
        \rx_byte[0]\, FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => 
        MSS_READY, N_85 => N_85, N_1887 => N_1887, N_85_i_0 => 
        N_85_i_0, N_1146 => N_1146, N_2394 => N_2394, N_1165 => 
        N_1165, N_1271 => N_1271);
    
    \rx_dout_reg[5]\ : SLE
      port map(D => \rx_dout[5]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(5));
    
    overflow_reg : SLE
      port map(D => \un9_clear_overflow_0_0_a2\, CLK => 
        FAB_CCC_GL0, EN => \un9_clear_overflow_0_0\, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_0_0_OVERFLOW);
    
    \RXRDY_NEW.un3_stop_strobe_0_0\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \rx_dout_reg_empty\, B => N_935, C => 
        stop_strobe, Y => un3_stop_strobe);
    
    \rx_state_ns_0_x3_0_x2_i_x2[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_1552_i);
    
    \rx_dout_reg[6]\ : SLE
      port map(D => \rx_dout[6]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(6));
    
    rxrdy_xhdl4 : SLE
      port map(D => rx_dout_reg_empty_i_0, CLK => FAB_CCC_GL0, EN
         => un3_stop_strobe, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => CoreUARTapb_0_0_RXRDY);
    
    \rx_state_RNO[0]\ : CFG4
      generic map(INIT => x"00F2")

      port map(A => \rx_dout_reg_empty\, B => N_2394, C => 
        \rx_state[1]_net_1\, D => \rx_state[0]_net_1\, Y => 
        N_1103_i_0);
    
    \rx_state[0]\ : SLE
      port map(D => N_1103_i_0, CLK => FAB_CCC_GL0, EN => 
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
    
    rx_dout_reg_empty_RNIEALV : CFG2
      generic map(INIT => x"E")

      port map(A => N_2394, B => N_1165, Y => N_85);
    
    fifo_write_tx : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fifo_write_tx\);
    
    rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0 : CFG4
      generic map(INIT => x"2000")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PWRITE, C => 
        CoreAPB3_0_APBmslave0_PENABLE, D => N_2014, Y => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_net_1);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    \rx_dout_reg[2]\ : SLE
      port map(D => \rx_dout[2]\, CLK => FAB_CCC_GL0, EN => N_645, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => rx_dout_reg(2));
    
    \tx_hold_reg[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[4]_net_1\);
    
    rx_dout_reg_empty_RNI0DIH : CFG3
      generic map(INIT => x"EF")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, Y => N_1165);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_0_0_CoreUARTapb is

    port( CoreAPB3_0_APBmslave1_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2);
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0);
          PSELSBUS_0_a2_0_0                           : in    std_logic_vector(1 to 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(14 to 14);
          PRDATA_3_0_a2_12_0                          : in    std_logic_vector(0 to 0);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_2031                                      : out   std_logic;
          N_2034                                      : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic;
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic;
          un1_nxtprdata_xhdl722_i_a2_0_a2_0           : out   std_logic;
          N_2043                                      : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          N_1135                                      : in    std_logic;
          N_2018                                      : in    std_logic;
          N_1140                                      : in    std_logic;
          N_1975                                      : in    std_logic;
          un13_psel_1                                 : in    std_logic;
          N_2014                                      : in    std_logic;
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0       : out   std_logic;
          N_2037                                      : in    std_logic;
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic
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

  component mss_top_sb_CoreUARTapb_0_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA          : in    std_logic_vector(7 downto 0) := (others => 'U');
          rx_dout_reg                           : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR           : in    std_logic_vector(2 to 2) := (others => 'U');
          PRDATA_3_0_a2_12_0                    : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                             : in    std_logic := 'U';
          FAB_CCC_GL0                           : in    std_logic := 'U';
          CoreUARTapb_0_0_OVERFLOW              : out   std_logic;
          CoreUARTapb_0_0_RXRDY                 : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE          : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE         : in    std_logic := 'U';
          N_2014                                : in    std_logic := 'U';
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 : out   std_logic;
          N_1975                                : in    std_logic := 'U';
          N_1140                                : in    std_logic := 'U';
          N_2037                                : in    std_logic := 'U';
          TX_c                                  : out   std_logic;
          CoreUARTapb_0_0_TXRDY                 : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR           : out   std_logic;
          RX_c                                  : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, 
        \un1_nxtprdata_xhdl722_i_a2_0_a2\, GND_net_1, 
        \nxtprdata_xhdl7_1[1]\, \nxtprdata_xhdl7_1[2]\, 
        \nxtprdata_xhdl7_1_3[3]\, \nxtprdata_xhdl7_1_3[4]\, 
        \nxtprdata_xhdl7_1[5]\, \nxtprdata_xhdl7_1[6]\, 
        \nxtprdata_xhdl7_1[7]\, \controlReg3[0]_net_1\, un21_psel, 
        \controlReg3[1]_net_1\, \controlReg3[2]_net_1\, 
        \controlReg2[0]_net_1\, un13_psel, \controlReg2[1]_net_1\, 
        \controlReg2[2]_net_1\, \controlReg2[3]_net_1\, 
        \controlReg2[4]_net_1\, \controlReg2[5]_net_1\, 
        \controlReg2[6]_net_1\, \controlReg2[7]_net_1\, 
        \controlReg1[0]_net_1\, un5_psel, \controlReg1[1]_net_1\, 
        \controlReg1[2]_net_1\, \controlReg1[3]_net_1\, 
        \controlReg1[4]_net_1\, \controlReg1[5]_net_1\, 
        \controlReg1[6]_net_1\, \controlReg1[7]_net_1\, \N_2031\, 
        \N_2034\, un1_nxtprdata_xhdl722_i_a2_0_a2_0_net_1, 
        \N_2043\, \CoreUARTapb_0_0_TXRDY\, 
        \nxtprdata_xhdl7_1_6_0_0_0[0]\, \CoreUARTapb_0_0_RXRDY\, 
        \nxtprdata_xhdl7_1_6_0_0_0[1]\, 
        \CoreUARTapb_0_0_OVERFLOW\, 
        \nxtprdata_xhdl7_1_6_0_0_3_0[3]\, 
        \CoreUARTapb_0_0_FRAMING_ERR\, 
        \nxtprdata_xhdl7_1_6_0_0_3_0[4]\, N_1602, N_1607, 
        \rx_dout_reg[2]\, N_1599, \rx_dout_reg[0]\, 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\, \rx_dout_reg[1]\, 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[2]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[6]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[7]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[5]\, \rx_dout_reg[5]\, 
        \rx_dout_reg[6]\, \rx_dout_reg[7]\, \rx_dout_reg[4]\, 
        \rx_dout_reg[3]\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_0_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_0_0_COREUART(DEF_ARCH);
begin 

    N_2031 <= \N_2031\;
    N_2034 <= \N_2034\;
    un1_nxtprdata_xhdl722_i_a2_0_a2_0 <= 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0_net_1;
    N_2043 <= \N_2043\;
    CoreUARTapb_0_0_TXRDY <= \CoreUARTapb_0_0_TXRDY\;
    CoreUARTapb_0_0_RXRDY <= \CoreUARTapb_0_0_RXRDY\;
    CoreUARTapb_0_0_OVERFLOW <= \CoreUARTapb_0_0_OVERFLOW\;
    CoreUARTapb_0_0_FRAMING_ERR <= \CoreUARTapb_0_0_FRAMING_ERR\;

    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_15[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(2), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), Y => \N_2034\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_0_0_RXRDY\, B => 
        \controlReg2[1]_net_1\, C => \N_2031\, D => \N_2034\, Y
         => \nxtprdata_xhdl7_1_6_0_0_0[1]\);
    
    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \controlReg2[2]_net_1\, B => 
        \controlReg3[2]_net_1\, C => \N_2043\, D => \N_2031\, Y
         => \nxtprdata_xhdl7_1_6_0_0_0[2]\);
    
    \p_CtrlReg2Seq.un13_psel_0_a2_0_a2\ : CFG4
      generic map(INIT => x"4000")

      port map(A => N_1140, B => PRDATA_3_0_a2_12_0(0), C => 
        un13_psel_1, D => N_1975, Y => un13_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[5]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[5]\, 
        C => \rx_dout_reg[5]\, Y => \nxtprdata_xhdl7_1[5]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[5]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[5]_net_1\, B => 
        \controlReg1[5]_net_1\, C => \N_2031\, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[5]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[1]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \nxtprdata_xhdl7_1_6_0_0_0[1]\, B => 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\, C => 
        \controlReg3[1]_net_1\, D => \N_2043\, Y => 
        \nxtprdata_xhdl7_1[1]\);
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[2]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => N_1135, B => \controlReg1[2]_net_1\, C => 
        \nxtprdata_xhdl7_1_6_0_0_0[2]\, D => N_1599, Y => 
        \nxtprdata_xhdl7_1[2]\);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1_3[4]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(4));
    
    \controlReg3[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[2]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \UG08.p_CtrlReg3Seq.un21_psel_0_a2_0_a2\ : CFG4
      generic map(INIT => x"2000")

      port map(A => PRDATA_3_0_a2_12_0(0), B => N_1140, C => 
        N_1975, D => \N_2043\, Y => un21_psel);
    
    \p_CtrlReg1Seq.un5_psel_0_a2_0_a2\ : CFG4
      generic map(INIT => x"0200")

      port map(A => PRDATA_3_0_a2_12_0(0), B => N_1140, C => 
        N_1135, D => N_1975, Y => un5_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_5[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1135, B => \controlReg1[4]_net_1\, Y => 
        N_1607);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[6]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[6]\, 
        C => \rx_dout_reg[6]\, Y => \nxtprdata_xhdl7_1[6]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1_3[3]\, CLK => FAB_CCC_GL0, 
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_2[1]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \rx_dout_reg[1]\, B => \controlReg1[1]_net_1\, 
        C => N_2018, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_14[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_2031\);
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[6]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[6]_net_1\, B => 
        \controlReg1[6]_net_1\, C => \N_2031\, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[6]\);
    
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
    
    \controlReg2[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_0_0_TXRDY\, B => 
        \controlReg2[0]_net_1\, C => \N_2031\, D => \N_2034\, Y
         => \nxtprdata_xhdl7_1_6_0_0_0[0]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_5[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1135, B => \controlReg1[3]_net_1\, Y => 
        N_1602);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_2[0]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \rx_dout_reg[0]\, B => \controlReg1[0]_net_1\, 
        C => N_2018, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    un1_nxtprdata_xhdl722_i_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => PSELSBUS_0_a2_0_0(1), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14), C => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0_net_1, D => 
        PRDATA_3_0_a2_12_0(0), Y => 
        \un1_nxtprdata_xhdl722_i_a2_0_a2\);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[7]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[7]\, 
        C => \rx_dout_reg[7]\, Y => \nxtprdata_xhdl7_1[7]\);
    
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
    
    \controlReg3[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[1]_net_1\);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => \un1_nxtprdata_xhdl722_i_a2_0_a2\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave1_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3[4]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2018, B => \rx_dout_reg[4]\, C => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[4]\, D => N_1607, Y => 
        \nxtprdata_xhdl7_1_3[4]\);
    
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
        CoreAPB3_0_APBmslave0_PWDATA(0), rx_dout_reg(7) => 
        \rx_dout_reg[7]\, rx_dout_reg(6) => \rx_dout_reg[6]\, 
        rx_dout_reg(5) => \rx_dout_reg[5]\, rx_dout_reg(4) => 
        \rx_dout_reg[4]\, rx_dout_reg(3) => \rx_dout_reg[3]\, 
        rx_dout_reg(2) => \rx_dout_reg[2]\, rx_dout_reg(1) => 
        \rx_dout_reg[1]\, rx_dout_reg(0) => \rx_dout_reg[0]\, 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), PRDATA_3_0_a2_12_0(0) => 
        PRDATA_3_0_a2_12_0(0), MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, CoreUARTapb_0_0_OVERFLOW => 
        \CoreUARTapb_0_0_OVERFLOW\, CoreUARTapb_0_0_RXRDY => 
        \CoreUARTapb_0_0_RXRDY\, CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, N_2014 => N_2014, 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0, N_1975 => N_1975, 
        N_1140 => N_1140, N_2037 => N_2037, TX_c => TX_c, 
        CoreUARTapb_0_0_TXRDY => \CoreUARTapb_0_0_TXRDY\, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        \CoreUARTapb_0_0_FRAMING_ERR\, RX_c => RX_c);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_16[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => nxtprdata_xhdl7_1_6_0_a2_16_0(0), B => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_2043\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3_0[4]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_0_0_FRAMING_ERR\, B => 
        \controlReg2[4]_net_1\, C => \N_2031\, D => \N_2034\, Y
         => \nxtprdata_xhdl7_1_6_0_0_3_0[4]\);
    
    \un1_nxtprdata_xhdl722_i_a2_0_a2_0\ : CFG4
      generic map(INIT => x"0007")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(4), B => 
        CoreAPB3_0_APBmslave0_PADDR(3), C => 
        CoreAPB3_0_APBmslave0_PWRITE, D => 
        CoreAPB3_0_APBmslave0_PENABLE, Y => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0_net_1);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3[3]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2018, B => \rx_dout_reg[3]\, C => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[3]\, D => N_1602, Y => 
        \nxtprdata_xhdl7_1_3[3]\);
    
    \controlReg3[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_9[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2018, B => \rx_dout_reg[2]\, Y => N_1599);
    
    \controlReg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \nxtprdata_xhdl7_1_6_0_0_0[0]\, B => 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\, C => 
        \controlReg3[0]_net_1\, D => \N_2043\, Y => 
        \nxtprdata_xhdl7_1[0]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3_0[3]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_0_0_OVERFLOW\, B => 
        \controlReg2[3]_net_1\, C => \N_2031\, D => \N_2034\, Y
         => \nxtprdata_xhdl7_1_6_0_0_3_0[3]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[7]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[7]_net_1\, B => 
        \controlReg1[7]_net_1\, C => \N_2031\, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[7]\);
    
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

    port( rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic;
          MSS_READY                   : in    std_logic;
          FAB_CCC_GL0                 : in    std_logic;
          baud_clock                  : in    std_logic;
          stop_strobe                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR : out   std_logic;
          RX2_c                       : in    std_logic;
          clear_parity_en             : out   std_logic;
          N_1145                      : out   std_logic;
          N_2049                      : out   std_logic
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

    signal clear_parity_reg_i_0, rx_byte_xhdl5_1_sqmuxa, 
        rx_byte_xhdl5_1_sqmuxa_i_0, \rx_state[1]_net_1\, 
        VCC_net_1, N_302, GND_net_1, \rx_state[0]_net_1\, 
        \rx_state_ns[0]\, \rx_shift[0]_net_1\, \rx_shift_12[0]\, 
        un1_samples8_1_0_0_0, \rx_shift[1]_net_1\, 
        \rx_shift_12[1]\, \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_1101_i_0, \receive_count[0]_net_1\, 
        N_367_i_0, \receive_count[1]_net_1\, N_365_i_0, 
        \receive_count[2]_net_1\, N_363_i_0, 
        \receive_count[3]_net_1\, N_357_i_0, \framing_error_int\, 
        framing_error_int_0_sqmuxa, framing_error_int_2_sqmuxa, 
        N_371, \samples[0]_net_1\, \samples[1]_net_1\, 
        \samples[2]_net_1\, \rx_bit_cnt[0]_net_1\, N_1100_i_0, 
        \rx_bit_cnt[1]_net_1\, N_1099_i_0, \rx_bit_cnt[2]_net_1\, 
        N_1098_i_0, \rx_bit_cnt[3]_net_1\, N_1097_i_0, N_1828, 
        N_1167, \N_2049\, N_1832, 
        \framing_error_int_0_sqmuxa_0_a2_2\, N_1467, N_1833, 
        N_1279, N_2403, N_1177, N_1183, N_1221 : std_logic;

begin 

    N_2049 <= \N_2049\;

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
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(6));
    
    \rcv_cnt.receive_count_3_i_a2[0]\ : CFG4
      generic map(INIT => x"0400")

      port map(A => \receive_count[1]_net_1\, B => \N_2049\, C
         => \receive_count[2]_net_1\, D => 
        \receive_count[3]_net_1\, Y => N_1833);
    
    un1_framing_error_i4_i_0 : CFG3
      generic map(INIT => x"EC")

      port map(A => \framing_error_int\, B => clear_parity_reg, C
         => baud_clock, Y => N_371);
    
    \rcv_cnt.receive_count_3_i_a2_0[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \receive_count[0]_net_1\, B => \N_2049\, C
         => \receive_count[2]_net_1\, D => 
        \receive_count[1]_net_1\, Y => N_2403);
    
    \receive_count[1]\ : SLE
      port map(D => N_365_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_1101_i_0, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[7]_net_1\);
    
    clear_parity_en_xhdl3 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_en);
    
    framing_error_int_0_sqmuxa_0_a2_2 : CFG3
      generic map(INIT => x"08")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => \framing_error_int_0_sqmuxa_0_a2_2\);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[0]_net_1\);
    
    un1_samples8_1_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => N_1828, D => N_1167, Y => un1_samples8_1_0_0_0);
    
    fifo_write_xhdl6_RNO : CFG1
      generic map(INIT => "01")

      port map(A => rx_byte_xhdl5_1_sqmuxa, Y => 
        rx_byte_xhdl5_1_sqmuxa_i_0);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[1]_net_1\, Y => 
        \rx_shift_12[0]\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a3_0_a2 : CFG3
      generic map(INIT => x"20")

      port map(A => baud_clock, B => N_1467, C => 
        \rx_state[0]_net_1\, Y => rx_byte_xhdl5_1_sqmuxa);
    
    framing_error_i : SLE
      port map(D => clear_parity_reg_i_0, CLK => FAB_CCC_GL0, EN
         => N_371, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_1_0_FRAMING_ERR);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_357_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_1098_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \rx_state_ns_i_i_o2_0[1]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_1167);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_1099_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_1183, B => \rx_bit_cnt[0]_net_1\, C => 
        N_1828, Y => N_1100_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => N_1832, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_363_i_0);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FAB_CCC_GL0, EN
         => baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    \rx_bit_cnt_RNO[2]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_1221, B => \rx_bit_cnt[2]_net_1\, C => 
        N_1828, Y => N_1098_i_0);
    
    \receive_count[2]\ : SLE
      port map(D => N_363_i_0, CLK => FAB_CCC_GL0, EN => 
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

      port map(A => \N_2049\, B => \rx_shift[3]_net_1\, Y => 
        \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[6]_net_1\, Y => 
        \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_302, CLK => FAB_CCC_GL0, EN => baud_clock, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => N_1279, Y => N_1101_i_0);
    
    \receive_count_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \receive_count[0]_net_1\, B => N_1832, C => 
        \receive_count[1]_net_1\, Y => N_365_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[4]_net_1\);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[2]_net_1\, Y => 
        \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => N_1167, B => \receive_count[3]_net_1\, C => 
        N_1832, D => N_2403, Y => N_357_i_0);
    
    \rx_state_ns_i_a3_0_0_a2[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1177, B => \rx_state[1]_net_1\, Y => 
        framing_error_int_2_sqmuxa);
    
    fifo_write_xhdl6 : SLE
      port map(D => rx_byte_xhdl5_1_sqmuxa_i_0, CLK => 
        FAB_CCC_GL0, EN => VCC_net_1, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => N_1145);
    
    \rx_state_RNI3B8[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => \N_2049\);
    
    framing_error_i_RNO : CFG1
      generic map(INIT => "01")

      port map(A => clear_parity_reg, Y => clear_parity_reg_i_0);
    
    \rx_filtered.m3_0_o2\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => N_1279);
    
    \receive_count_RNO[0]\ : CFG3
      generic map(INIT => x"01")

      port map(A => N_1832, B => \receive_count[0]_net_1\, C => 
        N_1833, Y => N_367_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[6]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_a2[3]\ : CFG3
      generic map(INIT => x"10")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        C => baud_clock, Y => N_1828);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[1]_net_1\);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[3]_net_1\);
    
    framing_error_int : SLE
      port map(D => framing_error_int_0_sqmuxa, CLK => 
        FAB_CCC_GL0, EN => baud_clock, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \framing_error_int\);
    
    \rx_state_ns_0_0[0]\ : CFG4
      generic map(INIT => x"ECA0")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, C => N_2403, D => N_1467, Y => 
        \rx_state_ns[0]\);
    
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
    
    \receive_shift.rx_shift_12[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[7]_net_1\, Y => 
        \rx_shift_12[6]\);
    
    \receive_count[0]\ : SLE
      port map(D => N_367_i_0, CLK => FAB_CCC_GL0, EN => 
        baud_clock, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(3));
    
    framing_error_int_0_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \framing_error_int_0_sqmuxa_0_a2_2\, B => 
        N_1279, C => \rx_state[1]_net_1\, D => 
        \receive_count[3]_net_1\, Y => framing_error_int_0_sqmuxa);
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[5]_net_1\, Y => 
        \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[2]\ : CFG4
      generic map(INIT => x"DFFF")

      port map(A => baud_clock, B => N_1177, C => 
        \rx_bit_cnt[1]_net_1\, D => \rx_bit_cnt[0]_net_1\, Y => 
        N_1221);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \N_2049\, B => \rx_shift[4]_net_1\, Y => 
        \rx_shift_12[3]\);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FAB_CCC_GL0, EN => 
        un1_samples8_1_0_0_0, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \rx_shift[5]_net_1\);
    
    \rcv_cnt.receive_count_3_i_a2[3]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => \N_2049\, Y => N_1832);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_1100_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[0]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => N_1167, C => 
        \receive_count[3]_net_1\, Y => N_1183);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(1));
    
    \rx_state_ns_i_i[1]\ : CFG4
      generic map(INIT => x"AE04")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => N_1467, D => N_1177, Y => N_302);
    
    \rx_state_ns_i_i_o2[1]\ : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \receive_count[3]_net_1\, B => 
        \receive_count[2]_net_1\, C => \receive_count[0]_net_1\, 
        D => \receive_count[1]_net_1\, Y => N_1177);
    
    \rx_bit_cnt_RNO[3]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => N_1828, D => N_1221, Y => 
        N_1097_i_0);
    
    \rx_state_ns_0_0_o2[0]\ : CFG4
      generic map(INIT => x"FFFD")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[0]_net_1\, Y => N_1467);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FAB_CCC_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_byte(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_1097_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[1]_net_1\, B => 
        \rx_bit_cnt[0]_net_1\, C => N_1828, D => N_1183, Y => 
        N_1099_i_0);
    

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
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, \N_1959_i_0\, 
        VCC_net_1, \data_out_0[0]\, \data_out_xhdl1_0_sqmuxa\, 
        GND_net_1, \data_out_0[1]\, \data_out_0[2]\, 
        \data_out_0[3]\, \data_out_0[4]\, \data_out_0[5]\, 
        \data_out_0[6]\, \data_out_0[7]\, \counter[0]_net_1\, 
        un1_counter_1_cry_0_Y_1, \counter[1]_net_1\, 
        un1_counter_1_cry_1_0_S_0, \counter[2]_net_1\, 
        un1_counter_1_cry_2_0_S_0, \counter[3]_net_1\, 
        un1_counter_1_cry_3_0_S_0, \counter[4]_net_1\, 
        un1_counter_1_cry_4_0_S_0, \counter[5]_net_1\, 
        un1_counter_1_cry_5_0_S_0, \counter[6]_net_1\, 
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
        rd_pointer_s_113_FCO, \rd_pointer_cry[1]_net_1\, 
        \rd_pointer_cry[2]_net_1\, \rd_pointer_cry[3]_net_1\, 
        \rd_pointer_cry[4]_net_1\, \rd_pointer_cry[5]_net_1\, 
        wr_pointer_s_114_FCO, \wr_pointer_cry[1]_net_1\, 
        \wr_pointer_cry[2]_net_1\, \wr_pointer_cry[3]_net_1\, 
        \wr_pointer_cry[4]_net_1\, \wr_pointer_cry[5]_net_1\, 
        \un2_temp_xhdl5_0_a2_0_a2_4\ : std_logic;

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
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[5]_net_1\);
    
    \wr_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => wr_pointer_s_114_FCO, S
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
        fifo_read_tx_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rd_pointer[2]_net_1\);
    
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
    
    un2_temp_xhdl5_0_a2_0_a2_4_RNIGOP21 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[0]_net_1\, B => 
        \un2_temp_xhdl5_0_a2_0_a2_4\, C => \counter[4]_net_1\, D
         => \counter[1]_net_1\, Y => fifo_full_tx_i_0);
    
    un2_temp_xhdl5_0_a2_0_a2_4 : CFG4
      generic map(INIT => x"8000")

      port map(A => \counter[6]_net_1\, B => \counter[5]_net_1\, 
        C => \counter[3]_net_1\, D => \counter[2]_net_1\, Y => 
        \un2_temp_xhdl5_0_a2_0_a2_4\);
    
    read_n_hold : SLE
      port map(D => fifo_read_tx, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
    
    N_1959_i_0 : CFG1
      generic map(INIT => "01")

      port map(A => fifo_write_tx, Y => \N_1959_i_0\);
    
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
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[4]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_3, S => un1_counter_1_cry_4_0_S_0, Y
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
        EN => \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \wr_pointer[6]_net_1\);
    
    un1_counter_1_cry_2_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[2]_net_1\, D => GND_net_1, FCI => 
        un1_counter_1_cry_1, S => un1_counter_1_cry_2_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_2);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_0_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    un1_counter_1_cry_3_0 : ARI1
      generic map(INIT => x"599CC")

      port map(A => fifo_write_tx, B => fifo_read_tx, C => 
        \counter[3]_net_1\, D => GND_net_1, FCI => 
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
        GND_net_1, Q => tx_dout_reg(4));
    
    \wr_pointer[0]\ : SLE
      port map(D => \wr_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_0_S_0, Y
         => OPEN, FCO => un1_counter_1_cry_1);
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        \N_1959_i_0\, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        un1_counter_1_cry_4, S => un1_counter_1_cry_5_0_S_0, Y
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
          N_1194_i_0            : in    std_logic;
          CoreUARTapb_1_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic;
          baud_clock            : in    std_logic;
          xmit_clock            : in    std_logic;
          N_1194                : in    std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \fifo_read_tx\, GND_net_1, N_58, N_921, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_111_i_0, 
        \xmit_bit_sel[2]_net_1\, N_113_i_0, 
        \xmit_bit_sel[3]_net_1\, N_115_i_0, \tx_byte[0]_net_1\, 
        N_1470_i_0, \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[4]_net_1\, 
        \tx_byte[5]_net_1\, \tx_byte[6]_net_1\, 
        \tx_byte[7]_net_1\, \fifo_read_en0_1_i_a3_i_0\, 
        \xmit_state[6]_net_1\, \xmit_state_ns[0]\, 
        \xmit_state[5]_net_1\, \xmit_state[0]_net_1\, 
        \xmit_state[4]_net_1\, \xmit_state_ns[2]\, 
        \xmit_state[3]_net_1\, N_101_i_0, \xmit_state[1]_net_1\, 
        \xmit_state_ns[5]\, N_274_i_0, 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, 
        tx_xhdl2_1_7_i_m2_i_m2_am_1_1, tx_xhdl2_1_7_i_m2_i_m2_am, 
        tx_xhdl2_1_7_i_m2_i_m2_bm_1_1, tx_xhdl2_1_7_i_m2_i_m2_bm, 
        N_1501, N_1281, N_1973 : std_logic;

begin 

    fifo_read_tx <= \fifo_read_tx\;

    txrdy_int : SLE
      port map(D => fifo_full_tx_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        CoreUARTapb_1_0_TXRDY);
    
    \xmit_state_RNIDCIK[4]\ : CFG3
      generic map(INIT => x"80")

      port map(A => \xmit_state[4]_net_1\, B => baud_clock, C => 
        xmit_clock, Y => N_1470_i_0);
    
    \xmit_state[3]\ : SLE
      port map(D => N_101_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_dout_reg(0), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => N_274_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_dout_reg(4), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[4]_net_1\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"28")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_111_i_0);
    
    \xmit_state_ns_i_0_0_a2_0[3]\ : CFG4
      generic map(INIT => x"0002")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[3]_net_1\, C => N_1194, D => N_1281, Y => 
        N_1973);
    
    \xmit_state_ns_0_0[2]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \xmit_state[4]_net_1\, B => N_1194, C => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[2]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_byte[5]\ : SLE
      port map(D => tx_dout_reg(5), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]_net_1\);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state[0]_net_1\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sm.un5_xmit_pulse_i_a3_0_a2_i\ : CFG4
      generic map(INIT => x"FFFB")

      port map(A => \xmit_state[0]_net_1\, B => N_1194, C => 
        \xmit_state[5]_net_1\, D => \xmit_state[6]_net_1\, Y => 
        N_921);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_115_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1194_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    \xmit_sel.tx_xhdl2_3_iv_i_a2_0_a2\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \xmit_state[3]_net_1\, B => N_1501, C => 
        \xmit_state[4]_net_1\, Y => N_58);
    
    tx_xhdl2 : SLE
      port map(D => N_58, CLK => FAB_CCC_GL0, EN => N_921, ALn
         => MSS_READY, ADn => GND_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => TX2_c);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_am_1_1\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \tx_byte[1]_net_1\, B => \tx_byte[0]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => 
        tx_xhdl2_1_7_i_m2_i_m2_am_1_1);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_113_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1194_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_dout_reg(3), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \xmit_state_ns_0_0_a2_0_4[0]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => counter(1), B => \xmit_state[6]_net_1\, C => 
        counter(5), D => counter(4), Y => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\);
    
    \tx_byte[7]\ : SLE
      port map(D => tx_dout_reg(7), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[7]_net_1\);
    
    \xmit_state_RNO[3]\ : CFG4
      generic map(INIT => x"0A0E")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[4]_net_1\, C => N_1973, D => N_1194, Y => 
        N_101_i_0);
    
    \xmit_bit_sel_RNO[2]\ : CFG4
      generic map(INIT => x"28A0")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, C => \xmit_bit_sel[2]_net_1\, D
         => \xmit_bit_sel[1]_net_1\, Y => N_113_i_0);
    
    \xmit_state_RNO[0]\ : CFG3
      generic map(INIT => x"2A")

      port map(A => \xmit_state[6]_net_1\, B => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, Y => N_274_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_bm_1_1\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \tx_byte[6]_net_1\, B => \tx_byte[4]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => 
        tx_xhdl2_1_7_i_m2_i_m2_bm_1_1);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_ns\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        tx_xhdl2_1_7_i_m2_i_m2_bm, C => tx_xhdl2_1_7_i_m2_i_m2_am, 
        Y => N_1501);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_am\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[2]_net_1\, B => \tx_byte[3]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_i_m2_am_1_1, D => 
        \xmit_bit_sel[1]_net_1\, Y => tx_xhdl2_1_7_i_m2_i_m2_am);
    
    \xmit_cnt.xmit_bit_sel_3_a3_0_a2_0_a2[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[3]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    fifo_read_en0_RNII7J2 : CFG1
      generic map(INIT => "01")

      port map(A => \fifo_read_tx\, Y => fifo_read_tx_i_0);
    
    \xmit_state_ns_0_0[0]\ : CFG4
      generic map(INIT => x"C0EA")

      port map(A => \xmit_state[1]_net_1\, B => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_4[0]_net_1\, D => N_1194, Y => 
        \xmit_state_ns[0]\);
    
    fifo_read_en0_1_i_a3_i_0 : CFG3
      generic map(INIT => x"B3")

      port map(A => \xmit_state_ns_0_0_a2_0_4[0]_net_1\, B => 
        \xmit_state[6]_net_1\, C => 
        \xmit_state_ns_0_0_a2_0_5[0]_net_1\, Y => 
        \fifo_read_en0_1_i_a3_i_0\);
    
    \tx_byte[6]\ : SLE
      port map(D => tx_dout_reg(6), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[6]_net_1\);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_111_i_0, CLK => FAB_CCC_GL0, EN => 
        N_1194_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_state[1]\ : SLE
      port map(D => \xmit_state_ns[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FAB_CCC_GL0, EN
         => N_1194_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_dout_reg(2), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_i_m2_bm\ : CFG4
      generic map(INIT => x"AC0F")

      port map(A => \tx_byte[5]_net_1\, B => \tx_byte[7]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_i_m2_bm_1_1, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_i_m2_bm);
    
    fifo_read_en0 : SLE
      port map(D => \fifo_read_en0_1_i_a3_i_0\, CLK => 
        FAB_CCC_GL0, EN => N_921, ALn => MSS_READY, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \fifo_read_tx\);
    
    \xmit_state_ns_0_0[5]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \xmit_state[1]_net_1\, B => N_1194, C => 
        N_1973, Y => \xmit_state_ns[5]\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_dout_reg(1), CLK => FAB_CCC_GL0, EN => 
        N_1470_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
        \xmit_state[3]_net_1\, C => N_1281, Y => N_115_i_0);
    
    \xmit_state_ns_0_0_a2_0_5[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => counter(6), B => counter(3), C => counter(2), 
        D => counter(0), Y => \xmit_state_ns_0_0_a2_0_5[0]_net_1\);
    
    \xmit_cnt.xmit_bit_sel_3_i_0_0_o2[3]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, C => \xmit_bit_sel[0]_net_1\, Y
         => N_1281);
    
    \xmit_state[6]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[6]_net_1\);
    

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
          N_1779      : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          MSS_READY   : in    std_logic
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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal N_1779_i_0, VCC_net_1, GND_net_1, INV_0_Y
         : std_logic;
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
      port map(A => N_1779_i_0, Y => INV_0_Y);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    INV_0_RNO : CFG1
      generic map(INIT => "01")

      port map(A => N_1779, Y => N_1779_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_ctrl_128_0 is

    port( rx_dout              : out   std_logic_vector(7 downto 0);
          counter              : out   std_logic_vector(6 downto 0);
          rx_byte              : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0          : in    std_logic;
          MSS_READY            : in    std_logic;
          N_1779               : in    std_logic;
          N_1145               : in    std_logic;
          N_2395               : out   std_logic;
          N_1270               : in    std_logic;
          N_1164               : in    std_logic;
          N_1210               : in    std_logic;
          temp_xhdl17_i_o2_0_3 : in    std_logic
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0
    port( data_out_0  : out   std_logic_vector(7 downto 0);
          rd_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          wr_pointer  : in    std_logic_vector(6 downto 0) := (others => 'U');
          rx_byte     : in    std_logic_vector(7 downto 0) := (others => 'U');
          N_1779      : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          MSS_READY   : in    std_logic := 'U'
        );
  end component;

    signal \rd_pointer[0]_net_1\, \rd_pointer_s[0]\, 
        \wr_pointer[0]_net_1\, \wr_pointer_s[0]\, 
        counter_0_sqmuxa_0_a2_i_0, counter_0_sqmuxa_0_a2_i_0_i, 
        VCC_net_1, \data_out_0[0]\, \data_out_xhdl1_0_sqmuxa\, 
        GND_net_1, \data_out_0[1]\, \data_out_0[2]\, 
        \data_out_0[3]\, \data_out_0[4]\, \data_out_0[5]\, 
        \data_out_0[6]\, \data_out_0[7]\, \counter[0]_net_1\, 
        un1_counter_1_cry_0_Y_2, \counter[1]_net_1\, 
        un1_counter_1_cry_1_S_0, \counter[2]_net_1\, 
        un1_counter_1_cry_2_S_0, \counter[3]_net_1\, 
        un1_counter_1_cry_3_S_0, \counter[4]_net_1\, 
        un1_counter_1_cry_4_S_0, \counter[5]_net_1\, 
        un1_counter_1_cry_5_S_0, \counter[6]_net_1\, 
        un1_counter_1_s_6_S_2, \read_n_hold\, 
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
        \counter_fast[3]_net_1\, \un1_counter_1_cry_0\, 
        \un1_counter_1_axb_0_1\, \N_2395\, \un1_counter_1_cry_1\, 
        \un1_counter_1_cry_2\, \un1_counter_1_cry_3\, 
        \un1_counter_1_cry_4\, \counter_0_sqmuxa_0_a2_i\, 
        \un1_counter_1_cry_5\, rd_pointer_s_115_FCO, 
        \rd_pointer_cry[1]_net_1\, \rd_pointer_cry[2]_net_1\, 
        \rd_pointer_cry[3]_net_1\, \rd_pointer_cry[4]_net_1\, 
        \rd_pointer_cry[5]_net_1\, wr_pointer_s_116_FCO, 
        \wr_pointer_cry[1]_net_1\, \wr_pointer_cry[2]_net_1\, 
        \wr_pointer_cry[3]_net_1\, \wr_pointer_cry[4]_net_1\, 
        \wr_pointer_cry[5]_net_1\, 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_x[6]_net_1\, 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_sx[6]_net_1\, N_1265, 
        N_1480 : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0
	Use entity work.
        mss_top_sb_CoreUARTapb_1_0_ram128x8_pa4_0(DEF_ARCH);
begin 

    counter(6) <= \counter[6]_net_1\;
    counter(5) <= \counter[5]_net_1\;
    counter(4) <= \counter[4]_net_1\;
    counter(3) <= \counter[3]_net_1\;
    counter(2) <= \counter[2]_net_1\;
    counter(1) <= \counter[1]_net_1\;
    counter(0) <= \counter[0]_net_1\;
    N_2395 <= \N_2395\;

    \wr_pointer[5]\ : SLE
      port map(D => \wr_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
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
    
    \counter_fast[3]\ : SLE
      port map(D => un1_counter_1_cry_3_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter_fast[3]_net_1\);
    
    \wr_pointer_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \wr_pointer[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \wr_pointer_cry[1]_net_1\, S => \wr_pointer_s[2]\, Y => 
        OPEN, FCO => \wr_pointer_cry[2]_net_1\);
    
    \rd_pointer[2]\ : SLE
      port map(D => \rd_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[2]_net_1\);
    
    \counter[2]\ : SLE
      port map(D => un1_counter_1_cry_2_S_0, CLK => FAB_CCC_GL0, 
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
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => \counter[6]_net_1\, C => 
        \counter_0_sqmuxa_0_a2_i\, D => GND_net_1, FCI => 
        \un1_counter_1_cry_5\, S => un1_counter_1_s_6_S_2, Y => 
        OPEN, FCO => OPEN);
    
    \rd_pointer[5]\ : SLE
      port map(D => \rd_pointer_s[5]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[5]_net_1\);
    
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
    
    read_n_hold : SLE
      port map(D => counter_0_sqmuxa_0_a2_i_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \read_n_hold\);
    
    \wr_pointer[1]\ : SLE
      port map(D => \wr_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[1]_net_1\);
    
    counter_0_sqmuxa_0_a2_i : CFG3
      generic map(INIT => x"CE")

      port map(A => N_1270, B => counter_0_sqmuxa_0_a2_i_0, C => 
        N_1145, Y => \counter_0_sqmuxa_0_a2_i\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_x_RNIHOT42_0[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => counter_0_sqmuxa_0_a2_i_0, Y => 
        counter_0_sqmuxa_0_a2_i_0_i);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_x[6]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \counter[5]_net_1\, B => \counter[1]_net_1\, 
        C => \counter[0]_net_1\, Y => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_x[6]_net_1\);
    
    \un1_counter_0_sqmuxa_0_x2_i_m2[6]\ : CFG4
      generic map(INIT => x"FDA8")

      port map(A => \counter[2]_net_1\, B => N_1210, C => 
        temp_xhdl17_i_o2_0_3, D => N_1265, Y => N_1480);
    
    \rd_pointer_s[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \rd_pointer_cry[5]_net_1\, S => \rd_pointer_s[6]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    un1_counter_1_cry_1 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[1]_net_1\, B => 
        counter_0_sqmuxa_0_a2_i_0, C => N_1145, D => N_1270, FCI
         => \un1_counter_1_cry_0\, S => un1_counter_1_cry_1_S_0, 
        Y => OPEN, FCO => \un1_counter_1_cry_1\);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_x_RNIHOT42[6]\ : CFG4
      generic map(INIT => x"AAAB")

      port map(A => N_1164, B => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_x[6]_net_1\, C => 
        \counter[2]_net_1\, D => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, Y => 
        counter_0_sqmuxa_0_a2_i_0);
    
    un1_counter_1_cry_3 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[3]_net_1\, B => 
        counter_0_sqmuxa_0_a2_i_0, C => N_1145, D => N_1270, FCI
         => \un1_counter_1_cry_2\, S => un1_counter_1_cry_3_S_0, 
        Y => OPEN, FCO => \un1_counter_1_cry_3\);
    
    \rd_pointer_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \rd_pointer[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => rd_pointer_s_115_FCO, S
         => \rd_pointer_s[1]\, Y => OPEN, FCO => 
        \rd_pointer_cry[1]_net_1\);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \counter_fast[3]_net_1\, B => 
        \counter[6]_net_1\, C => \counter[4]_net_1\, Y => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\);
    
    \data_out_xhdl1[0]\ : SLE
      port map(D => \data_out_0[0]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(0));
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_x_RNIE98T[6]\ : CFG3
      generic map(INIT => x"01")

      port map(A => \un1_counter_0_sqmuxa_0_x2_i_o2_0_3[6]_net_1\, 
        B => \un1_counter_0_sqmuxa_0_x2_i_o2_0_x[6]_net_1\, C => 
        \counter[2]_net_1\, Y => \N_2395\);
    
    un1_counter_1_axb_0_1 : CFG4
      generic map(INIT => x"3726")

      port map(A => N_1145, B => N_1164, C => N_1270, D => N_1480, 
        Y => \un1_counter_1_axb_0_1\);
    
    un1_counter_1_cry_0 : ARI1
      generic map(INIT => x"5E619")

      port map(A => \counter[0]_net_1\, B => 
        \un1_counter_1_axb_0_1\, C => N_1145, D => \N_2395\, FCI
         => GND_net_1, S => OPEN, Y => un1_counter_1_cry_0_Y_2, 
        FCO => \un1_counter_1_cry_0\);
    
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
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \counter[4]\ : SLE
      port map(D => un1_counter_1_cry_4_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[4]_net_1\);
    
    \counter[5]\ : SLE
      port map(D => un1_counter_1_cry_5_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[5]_net_1\);
    
    \rd_pointer[0]\ : SLE
      port map(D => \rd_pointer_s[0]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[0]_net_1\);
    
    un1_counter_1_cry_5 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[5]_net_1\, B => 
        counter_0_sqmuxa_0_a2_i_0, C => N_1145, D => N_1270, FCI
         => \un1_counter_1_cry_4\, S => un1_counter_1_cry_5_S_0, 
        Y => OPEN, FCO => \un1_counter_1_cry_5\);
    
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
        EN => N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[6]_net_1\);
    
    \counter[1]\ : SLE
      port map(D => un1_counter_1_cry_1_S_0, CLK => FAB_CCC_GL0, 
        EN => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \counter[1]_net_1\);
    
    \wr_pointer[4]\ : SLE
      port map(D => \wr_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[4]_net_1\);
    
    \counter[3]\ : SLE
      port map(D => un1_counter_1_cry_3_S_0, CLK => FAB_CCC_GL0, 
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
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[0]_net_1\);
    
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
    
    \wr_pointer[2]\ : SLE
      port map(D => \wr_pointer_s[2]\, CLK => FAB_CCC_GL0, EN => 
        N_1779, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \wr_pointer[2]_net_1\);
    
    \rd_pointer[6]\ : SLE
      port map(D => \rd_pointer_s[6]_net_1\, CLK => FAB_CCC_GL0, 
        EN => counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[6]_net_1\);
    
    \rd_pointer[1]\ : SLE
      port map(D => \rd_pointer_s[1]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[1]_net_1\);
    
    un1_counter_1_cry_4 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[4]_net_1\, B => 
        counter_0_sqmuxa_0_a2_i_0, C => N_1145, D => N_1270, FCI
         => \un1_counter_1_cry_3\, S => un1_counter_1_cry_4_S_0, 
        Y => OPEN, FCO => \un1_counter_1_cry_4\);
    
    \data_out_xhdl1[3]\ : SLE
      port map(D => \data_out_0[3]\, CLK => FAB_CCC_GL0, EN => 
        \data_out_xhdl1_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => rx_dout(3));
    
    \rd_pointer_RNO[0]\ : CFG1
      generic map(INIT => "01")

      port map(A => \rd_pointer[0]_net_1\, Y => \rd_pointer_s[0]\);
    
    un1_counter_1_cry_2 : ARI1
      generic map(INIT => x"5BA45")

      port map(A => \counter[2]_net_1\, B => 
        counter_0_sqmuxa_0_a2_i_0, C => N_1145, D => N_1270, FCI
         => \un1_counter_1_cry_1\, S => un1_counter_1_cry_2_S_0, 
        Y => OPEN, FCO => \un1_counter_1_cry_2\);
    
    \rd_pointer[3]\ : SLE
      port map(D => \rd_pointer_s[3]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[3]_net_1\);
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0[6]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \counter[0]_net_1\, B => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_sx[6]_net_1\, C => 
        \counter[4]_net_1\, D => \counter[1]_net_1\, Y => N_1265);
    
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
    
    \rd_pointer[4]\ : SLE
      port map(D => \rd_pointer_s[4]\, CLK => FAB_CCC_GL0, EN => 
        counter_0_sqmuxa_0_a2_i_0_i, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rd_pointer[4]_net_1\);
    
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
        rx_byte(0) => rx_byte(0), N_1779 => N_1779, FAB_CCC_GL0
         => FAB_CCC_GL0, MSS_READY => MSS_READY);
    
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
    
    \un1_counter_0_sqmuxa_0_x2_i_o2_0_sx[6]\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \counter_fast[3]_net_1\, B => 
        \counter[6]_net_1\, C => \counter[5]_net_1\, Y => 
        \un1_counter_0_sqmuxa_0_x2_i_o2_0_sx[6]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0 is

    port( rx_dout              : out   std_logic_vector(7 downto 0);
          counter              : out   std_logic_vector(6 downto 0);
          rx_byte              : in    std_logic_vector(7 downto 0);
          FAB_CCC_GL0          : in    std_logic;
          MSS_READY            : in    std_logic;
          N_1779               : in    std_logic;
          N_1145               : in    std_logic;
          N_2395               : out   std_logic;
          N_1270               : in    std_logic;
          N_1164               : in    std_logic;
          N_1210               : in    std_logic;
          temp_xhdl17_i_o2_0_3 : in    std_logic
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
    port( rx_dout              : out   std_logic_vector(7 downto 0);
          counter              : out   std_logic_vector(6 downto 0);
          rx_byte              : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0          : in    std_logic := 'U';
          MSS_READY            : in    std_logic := 'U';
          N_1779               : in    std_logic := 'U';
          N_1145               : in    std_logic := 'U';
          N_2395               : out   std_logic;
          N_1270               : in    std_logic := 'U';
          N_1164               : in    std_logic := 'U';
          N_1210               : in    std_logic := 'U';
          temp_xhdl17_i_o2_0_3 : in    std_logic := 'U'
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
        counter(6) => counter(6), counter(5) => counter(5), 
        counter(4) => counter(4), counter(3) => counter(3), 
        counter(2) => counter(2), counter(1) => counter(1), 
        counter(0) => counter(0), rx_byte(7) => rx_byte(7), 
        rx_byte(6) => rx_byte(6), rx_byte(5) => rx_byte(5), 
        rx_byte(4) => rx_byte(4), rx_byte(3) => rx_byte(3), 
        rx_byte(2) => rx_byte(2), rx_byte(1) => rx_byte(1), 
        rx_byte(0) => rx_byte(0), FAB_CCC_GL0 => FAB_CCC_GL0, 
        MSS_READY => MSS_READY, N_1779 => N_1779, N_1145 => 
        N_1145, N_2395 => N_2395, N_1270 => N_1270, N_1164 => 
        N_1164, N_1210 => N_1210, temp_xhdl17_i_o2_0_3 => 
        temp_xhdl17_i_o2_0_3);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_Clock_gen is

    port( N_1194      : out   std_logic;
          N_1194_i_0  : out   std_logic;
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic;
          FAB_CCC_GL0 : in    std_logic;
          baud_clock  : out   std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_Clock_gen;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_Clock_gen is 

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

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \N_1194\, xmit_clock_net_1, VCC_net_1, 
        un36_baud_clock_int, \baud_clock\, GND_net_1, 
        \xmit_cntr[3]_net_1\, N_1508_i_i_0, \xmit_cntr[0]_net_1\, 
        N_1462_i, \xmit_cntr[1]_net_1\, N_1474_i_i_0, 
        \xmit_cntr[2]_net_1\, N_1478_i_i_0, \baud_cntr_one\, 
        N_1978, N_261_i_0, \baud_cntr[0]_net_1\, 
        \baud_cntr_lm[0]\, \baud_cntr[1]_net_1\, 
        \baud_cntr_lm[1]\, \baud_cntr[2]_net_1\, 
        \baud_cntr_lm[2]\, \baud_cntr[3]_net_1\, 
        \baud_cntr_lm[3]\, \baud_cntr[4]_net_1\, 
        \baud_cntr_lm[4]\, \baud_cntr[5]_net_1\, 
        \baud_cntr_lm[5]\, \baud_cntr[6]_net_1\, 
        \baud_cntr_lm[6]\, \baud_cntr[7]_net_1\, 
        \baud_cntr_lm[7]\, \baud_cntr[8]_net_1\, 
        \baud_cntr_lm[8]\, \baud_cntr[9]_net_1\, 
        \baud_cntr_lm[9]\, \baud_cntr[10]_net_1\, 
        \baud_cntr_lm[10]\, \baud_cntr[11]_net_1\, 
        \baud_cntr_lm[11]\, \baud_cntr[12]_net_1\, 
        \baud_cntr_lm[12]\, \baud_cntr_cry_1_FCO_0[11]\, 
        \baud_cntr_cry_3_FCO_0[11]\, \baud_cntr_cry[8]_net_1\, 
        \baud_cntr_s[8]\, \baud_cntr_cry[9]_net_1\, 
        \baud_cntr_s[9]\, \baud_cntr_cry[10]_net_1\, 
        \baud_cntr_s[10]\, \baud_cntr_s[12]_net_1\, 
        \baud_cntr_cry[11]_net_1\, \baud_cntr_s[11]\, 
        \baud_cntr_cry[0]_net_1\, \baud_cntr_cry_Y[0]\, 
        \baud_cntr_cry[1]_net_1\, \baud_cntr_s[1]\, 
        \baud_cntr_cry[2]_net_1\, \baud_cntr_s[2]\, 
        \baud_cntr_cry[3]_net_1\, \baud_cntr_s[3]\, 
        \baud_cntr_cry[4]_net_1\, \baud_cntr_s[4]\, 
        \baud_cntr_cry[5]_net_1\, \baud_cntr_s[5]\, 
        \baud_cntr_s[7]_net_1\, \baud_cntr_cry[6]_net_1\, 
        \baud_cntr_s[6]\, N_1211, un1_baud_cntr_i_o4_8, 
        un1_baud_cntr_i_o4_7, un1_baud_cntr_i_o4_6, N_1977, 
        un1_baud_cntr_i_o4_6_RNISQVH : std_logic;

begin 

    N_1194 <= \N_1194\;
    xmit_clock <= xmit_clock_net_1;
    baud_clock <= \baud_clock\;

    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_6\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[12]_net_1\, B => 
        \baud_cntr[10]_net_1\, C => \baud_cntr[9]_net_1\, D => 
        \baud_cntr[8]_net_1\, Y => un1_baud_cntr_i_o4_6);
    
    \baud_cntr_cry[10]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[10]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]_net_1\, S => \baud_cntr_s[10]\, Y => 
        OPEN, FCO => \baud_cntr_cry[10]_net_1\);
    
    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_lm[7]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[7]_net_1\);
    
    xmit_pulse_0_o2 : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => xmit_clock_net_1, Y => 
        \N_1194\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x3_0_x2[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_1462_i);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_lm[0]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[0]_net_1\);
    
    baud_cntr_one : SLE
      port map(D => N_1978, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \baud_cntr_one\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_lm[9]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => N_1508_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[3]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_8\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[7]_net_1\, B => 
        \baud_cntr[3]_net_1\, C => \baud_cntr[2]_net_1\, D => 
        \baud_cntr[1]_net_1\, Y => un1_baud_cntr_i_o4_8);
    
    \baud_cntr_lm_0[1]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => N_1977, C
         => \baud_cntr_s[1]\, Y => \baud_cntr_lm[1]\);
    
    \baud_cntr_cry[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => GND_net_1, S => OPEN, Y
         => \baud_cntr_cry_Y[0]\, FCO => \baud_cntr_cry[0]_net_1\);
    
    \baud_cntr_lm_0[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[7]_net_1\, Y => \baud_cntr_lm[7]\);
    
    \baud_cntr_lm_0[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_cry_Y[0]\, Y => \baud_cntr_lm[0]\);
    
    \baud_cntr_cry[1]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]_net_1\, S => \baud_cntr_s[1]\, Y => 
        OPEN, FCO => \baud_cntr_cry[1]_net_1\);
    
    \baud_cntr_cry_1[11]\ : ARI1
      generic map(INIT => x"60001")

      port map(A => \baud_cntr[3]_net_1\, B => 
        \baud_cntr[0]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[2]_net_1\, FCI => GND_net_1, S => OPEN, Y => 
        OPEN, FCO => \baud_cntr_cry_1_FCO_0[11]\);
    
    \baud_cntr_cry[3]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]_net_1\, S => \baud_cntr_s[3]\, Y => 
        OPEN, FCO => \baud_cntr_cry[3]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1474_i_i\ : CFG2
      generic map(INIT => x"9")

      port map(A => N_1211, B => \xmit_cntr[1]_net_1\, Y => 
        N_1474_i_i_0);
    
    \baud_cntr_cry[9]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[9]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]_net_1\, S => \baud_cntr_s[9]\, Y => 
        OPEN, FCO => \baud_cntr_cry[9]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_i_a2\ : CFG4
      generic map(INIT => x"0010")

      port map(A => un1_baud_cntr_i_o4_8, B => 
        un1_baud_cntr_i_o4_7, C => \baud_cntr[0]_net_1\, D => 
        un1_baud_cntr_i_o4_6, Y => N_1978);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x3_i_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_1211);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[10]\, Y => \baud_cntr_lm[10]\);
    
    \baud_cntr_cry[2]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]_net_1\, S => \baud_cntr_s[2]\, Y => 
        OPEN, FCO => \baud_cntr_cry[2]_net_1\);
    
    \baud_cntr_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[12]_net_1\, Y => \baud_cntr_lm[12]\);
    
    \baud_cntr_lm_0[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[5]\, Y => \baud_cntr_lm[5]\);
    
    \baud_cntr_cry[6]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[6]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]_net_1\, S => \baud_cntr_s[6]\, Y => 
        OPEN, FCO => \baud_cntr_cry[6]_net_1\);
    
    \baud_cntr_cry[4]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[4]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]_net_1\, S => \baud_cntr_s[4]\, Y => 
        OPEN, FCO => \baud_cntr_cry[4]_net_1\);
    
    \baud_cntr[5]\ : SLE
      port map(D => \baud_cntr_lm[5]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[5]_net_1\);
    
    baud_cntr_one_RNIML1G : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[0]_net_1\, B => 
        \xmit_cntr[1]_net_1\, C => \baud_cntr_one\, D => 
        \xmit_cntr[2]_net_1\, Y => N_1977);
    
    \baud_cntr_lm_0[3]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => N_1977, C
         => \baud_cntr_s[3]\, Y => \baud_cntr_lm[3]\);
    
    \baud_cntr_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[2]\, Y => \baud_cntr_lm[2]\);
    
    \baud_cntr[3]\ : SLE
      port map(D => \baud_cntr_lm[3]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1508_i_i\ : CFG4
      generic map(INIT => x"D2F0")

      port map(A => \xmit_cntr[1]_net_1\, B => N_1211, C => 
        \xmit_cntr[3]_net_1\, D => \xmit_cntr[2]_net_1\, Y => 
        N_1508_i_i_0);
    
    \make_xmit_clock.un36_baud_clock_int_0_a4_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un36_baud_clock_int);
    
    \baud_cntr_s[7]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \baud_cntr[7]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]_net_1\, S => \baud_cntr_s[7]_net_1\, Y
         => OPEN, FCO => OPEN);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_lm[2]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    baud_clock_int_RNO : CFG2
      generic map(INIT => x"1")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => N_1977, Y
         => N_261_i_0);
    
    \baud_cntr_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[9]\, Y => \baud_cntr_lm[9]\);
    
    \baud_cntr_cry_3[11]\ : ARI1
      generic map(INIT => x"60001")

      port map(A => \baud_cntr[7]_net_1\, B => 
        \baud_cntr[4]_net_1\, C => \baud_cntr[5]_net_1\, D => 
        \baud_cntr[6]_net_1\, FCI => \baud_cntr_cry_1_FCO_0[11]\, 
        S => OPEN, Y => OPEN, FCO => \baud_cntr_cry_3_FCO_0[11]\);
    
    \baud_cntr_cry[5]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[5]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]_net_1\, S => \baud_cntr_s[5]\, Y => 
        OPEN, FCO => \baud_cntr_cry[5]_net_1\);
    
    \baud_cntr_s[12]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \baud_cntr[12]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]_net_1\, S => \baud_cntr_s[12]_net_1\, 
        Y => OPEN, FCO => OPEN);
    
    \baud_cntr_lm_0[4]\ : CFG3
      generic map(INIT => x"B1")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => N_1977, C
         => \baud_cntr_s[4]\, Y => \baud_cntr_lm[4]\);
    
    \baud_cntr[10]\ : SLE
      port map(D => \baud_cntr_lm[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[10]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_6_RNISQVH\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => un1_baud_cntr_i_o4_8, B => 
        un1_baud_cntr_i_o4_7, C => \baud_cntr[0]_net_1\, D => 
        un1_baud_cntr_i_o4_6, Y => un1_baud_cntr_i_o4_6_RNISQVH);
    
    \baud_cntr[11]\ : SLE
      port map(D => \baud_cntr_lm[11]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[11]_net_1\);
    
    \baud_cntr[6]\ : SLE
      port map(D => \baud_cntr_lm[6]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[6]_net_1\);
    
    \UG09.make_baud_cntr_one.un1_baud_cntr_i_o4_7\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \baud_cntr[11]_net_1\, B => 
        \baud_cntr[6]_net_1\, C => \baud_cntr[5]_net_1\, D => 
        \baud_cntr[4]_net_1\, Y => un1_baud_cntr_i_o4_7);
    
    \baud_cntr[4]\ : SLE
      port map(D => \baud_cntr_lm[4]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[4]_net_1\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => N_1478_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \baud_cntr_lm_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[6]\, Y => \baud_cntr_lm[6]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_lm[1]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
    \baud_cntr_lm_0[11]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[11]\, Y => \baud_cntr_lm[11]\);
    
    xmit_pulse_0_o2_RNIHN71 : CFG1
      generic map(INIT => "01")

      port map(A => \N_1194\, Y => N_1194_i_0);
    
    \xmit_clock\ : SLE
      port map(D => un36_baud_clock_int, CLK => FAB_CCC_GL0, EN
         => \baud_clock\, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        xmit_clock_net_1);
    
    \baud_cntr_cry[8]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[8]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry_3_FCO_0[11]\, S => \baud_cntr_s[8]\, Y => 
        OPEN, FCO => \baud_cntr_cry[8]_net_1\);
    
    baud_clock_int : SLE
      port map(D => N_261_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_clock\);
    
    \baud_cntr_cry[11]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \baud_cntr[11]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]_net_1\, S => \baud_cntr_s[11]\, Y => 
        OPEN, FCO => \baud_cntr_cry[11]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_1478_i_i\ : CFG3
      generic map(INIT => x"D2")

      port map(A => \xmit_cntr[1]_net_1\, B => N_1211, C => 
        \xmit_cntr[2]_net_1\, Y => N_1478_i_i_0);
    
    \xmit_cntr[1]\ : SLE
      port map(D => N_1474_i_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[1]_net_1\);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_lm[12]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[12]_net_1\);
    
    \xmit_cntr[0]\ : SLE
      port map(D => N_1462_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[0]_net_1\);
    
    \baud_cntr_lm_0[8]\ : CFG2
      generic map(INIT => x"8")

      port map(A => un1_baud_cntr_i_o4_6_RNISQVH, B => 
        \baud_cntr_s[8]\, Y => \baud_cntr_lm[8]\);
    
    \baud_cntr[8]\ : SLE
      port map(D => \baud_cntr_lm[8]\, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[8]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity mss_top_sb_CoreUARTapb_1_0_COREUART is

    port( CoreAPB3_0_APBmslave0_PWDATA            : in    std_logic_vector(7 downto 0);
          rx_dout_reg                             : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR             : in    std_logic_vector(4 downto 2);
          MSS_READY                               : in    std_logic;
          FAB_CCC_GL0                             : in    std_logic;
          CoreUARTapb_1_0_OVERFLOW                : out   std_logic;
          CoreUARTapb_1_0_RXRDY                   : out   std_logic;
          N_2037                                  : out   std_logic;
          N_2036                                  : in    std_logic;
          N_1140                                  : in    std_logic;
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0 : in    std_logic;
          TX2_c                                   : out   std_logic;
          CoreUARTapb_1_0_TXRDY                   : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR             : out   std_logic;
          RX2_c                                   : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_COREUART;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_COREUART is 

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

  component mss_top_sb_CoreUARTapb_1_0_Rx_async
    port( rx_byte                     : out   std_logic_vector(7 downto 0);
          clear_parity_reg            : in    std_logic := 'U';
          MSS_READY                   : in    std_logic := 'U';
          FAB_CCC_GL0                 : in    std_logic := 'U';
          baud_clock                  : in    std_logic := 'U';
          stop_strobe                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR : out   std_logic;
          RX2_c                       : in    std_logic := 'U';
          clear_parity_en             : out   std_logic;
          N_1145                      : out   std_logic;
          N_2049                      : out   std_logic
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
          N_1194_i_0            : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY : out   std_logic;
          fifo_full_tx_i_0      : in    std_logic := 'U';
          baud_clock            : in    std_logic := 'U';
          xmit_clock            : in    std_logic := 'U';
          N_1194                : in    std_logic := 'U'
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

  component mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0
    port( rx_dout              : out   std_logic_vector(7 downto 0);
          counter              : out   std_logic_vector(6 downto 0);
          rx_byte              : in    std_logic_vector(7 downto 0) := (others => 'U');
          FAB_CCC_GL0          : in    std_logic := 'U';
          MSS_READY            : in    std_logic := 'U';
          N_1779               : in    std_logic := 'U';
          N_1145               : in    std_logic := 'U';
          N_2395               : out   std_logic;
          N_1270               : in    std_logic := 'U';
          N_1164               : in    std_logic := 'U';
          N_1210               : in    std_logic := 'U';
          temp_xhdl17_i_o2_0_3 : in    std_logic := 'U'
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

  component mss_top_sb_CoreUARTapb_1_0_Clock_gen
    port( N_1194      : out   std_logic;
          N_1194_i_0  : out   std_logic;
          xmit_clock  : out   std_logic;
          MSS_READY   : in    std_logic := 'U';
          FAB_CCC_GL0 : in    std_logic := 'U';
          baud_clock  : out   std_logic
        );
  end component;

    signal \rx_dout_reg_empty\, rx_dout_reg_empty_i_0, 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, N_999_i_0, 
        GND_net_1, \rx_dout_reg_empty_1_sqmuxa_i_0_0\, VCC_net_1, 
        \un1_fifo_write_0_a2\, \un9_clear_overflow_0\, 
        \tx_hold_reg[0]_net_1\, un1_csn, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[4]_net_1\, \tx_hold_reg[5]_net_1\, 
        \tx_hold_reg[6]_net_1\, \tx_hold_reg[7]_net_1\, 
        un3_stop_strobe, \rx_dout[0]\, \rx_dout[1]\, \rx_dout[2]\, 
        \rx_dout[3]\, \rx_dout[4]\, \rx_dout[5]\, \rx_dout[6]\, 
        \rx_dout[7]\, \rx_state[0]_net_1\, N_615_i_0, 
        \rx_state[1]_net_1\, N_1551_i, \clear_parity_reg\, 
        clear_parity_reg0, clear_parity_en, \fifo_write_tx\, 
        un1_csn_i_0, \counter[0]\, \temp_xhdl17_i_o2_0_3\, 
        \counter[3]\, \counter[2]\, N_1270, \counter[6]\, 
        \counter[5]\, \counter[4]\, \counter[1]\, N_1164, N_2049, 
        stop_strobe, \N_2037\, N_1210, N_1145, N_1779, N_2395, 
        N_1194, N_1194_i_0, xmit_clock, baud_clock, 
        \tx_dout_reg[0]\, \tx_dout_reg[1]\, \tx_dout_reg[2]\, 
        \tx_dout_reg[3]\, \tx_dout_reg[4]\, \tx_dout_reg[5]\, 
        \tx_dout_reg[6]\, \tx_dout_reg[7]\, \counter_0[0]\, 
        \counter_0[1]\, \counter_0[2]\, \counter_0[3]\, 
        \counter_0[4]\, \counter_0[5]\, \counter_0[6]\, 
        fifo_read_tx, fifo_read_tx_i_0, fifo_full_tx_i_0, 
        \rx_byte[0]\, \rx_byte[1]\, \rx_byte[2]\, \rx_byte[3]\, 
        \rx_byte[4]\, \rx_byte[5]\, \rx_byte[6]\, \rx_byte[7]\
         : std_logic;

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

    N_2037 <= \N_2037\;

    \tx_hold_reg[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]_net_1\);
    
    \rx_dout_reg[0]\ : SLE
      port map(D => \rx_dout[0]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(0));
    
    rx_dout_reg_empty_RNI3FL71 : CFG3
      generic map(INIT => x"EF")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => \rx_dout_reg_empty\, Y => N_1164);
    
    make_RX : mss_top_sb_CoreUARTapb_1_0_Rx_async
      port map(rx_byte(7) => \rx_byte[7]\, rx_byte(6) => 
        \rx_byte[6]\, rx_byte(5) => \rx_byte[5]\, rx_byte(4) => 
        \rx_byte[4]\, rx_byte(3) => \rx_byte[3]\, rx_byte(2) => 
        \rx_byte[2]\, rx_byte(1) => \rx_byte[1]\, rx_byte(0) => 
        \rx_byte[0]\, clear_parity_reg => \clear_parity_reg\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        baud_clock => baud_clock, stop_strobe => stop_strobe, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, RX2_c => RX2_c, 
        clear_parity_en => clear_parity_en, N_1145 => N_1145, 
        N_2049 => N_2049);
    
    rx_dout_reg_empty_1_sqmuxa_i_0_0 : CFG3
      generic map(INIT => x"F8")

      port map(A => N_2036, B => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0, C => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, Y => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0\);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \rx_dout_reg[3]\ : SLE
      port map(D => \rx_dout[3]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(3));
    
    clear_framing_error_reg0 : SLE
      port map(D => clear_parity_en, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        clear_parity_reg0);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    rx_dout_reg_empty : SLE
      port map(D => N_999_i_0, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0\, ALn => MSS_READY, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_dout_reg_empty\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \UG06.tx_fifo_xhdl79\ : mss_top_sb_CoreUARTapb_1_0_fifo_256x8
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter_0[6]\, 
        counter(5) => \counter_0[5]\, counter(4) => 
        \counter_0[4]\, counter(3) => \counter_0[3]\, counter(2)
         => \counter_0[2]\, counter(1) => \counter_0[1]\, 
        counter(0) => \counter_0[0]\, tx_hold_reg(7) => 
        \tx_hold_reg[7]_net_1\, tx_hold_reg(6) => 
        \tx_hold_reg[6]_net_1\, tx_hold_reg(5) => 
        \tx_hold_reg[5]_net_1\, tx_hold_reg(4) => 
        \tx_hold_reg[4]_net_1\, tx_hold_reg(3) => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg(2) => 
        \tx_hold_reg[2]_net_1\, tx_hold_reg(1) => 
        \tx_hold_reg[1]_net_1\, tx_hold_reg(0) => 
        \tx_hold_reg[0]_net_1\, fifo_write_tx => \fifo_write_tx\, 
        FAB_CCC_GL0 => FAB_CCC_GL0, MSS_READY => MSS_READY, 
        fifo_read_tx => fifo_read_tx, fifo_read_tx_i_0 => 
        fifo_read_tx_i_0, fifo_full_tx_i_0 => fifo_full_tx_i_0);
    
    rx_dout_reg_empty_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, Y
         => N_999_i_0);
    
    fifo_write_tx_RNO : CFG3
      generic map(INIT => x"F7")

      port map(A => N_2036, B => \N_2037\, C => N_1140, Y => 
        un1_csn_i_0);
    
    \reg_write.un1_csn_0_a2_2_a2_0\ : CFG3
      generic map(INIT => x"01")

      port map(A => CoreAPB3_0_APBmslave0_PADDR(3), B => 
        CoreAPB3_0_APBmslave0_PADDR(4), C => 
        CoreAPB3_0_APBmslave0_PADDR(2), Y => \N_2037\);
    
    make_TX : mss_top_sb_CoreUARTapb_1_0_Tx_async
      port map(tx_dout_reg(7) => \tx_dout_reg[7]\, tx_dout_reg(6)
         => \tx_dout_reg[6]\, tx_dout_reg(5) => \tx_dout_reg[5]\, 
        tx_dout_reg(4) => \tx_dout_reg[4]\, tx_dout_reg(3) => 
        \tx_dout_reg[3]\, tx_dout_reg(2) => \tx_dout_reg[2]\, 
        tx_dout_reg(1) => \tx_dout_reg[1]\, tx_dout_reg(0) => 
        \tx_dout_reg[0]\, counter(6) => \counter_0[6]\, 
        counter(5) => \counter_0[5]\, counter(4) => 
        \counter_0[4]\, counter(3) => \counter_0[3]\, counter(2)
         => \counter_0[2]\, counter(1) => \counter_0[1]\, 
        counter(0) => \counter_0[0]\, fifo_read_tx => 
        fifo_read_tx, fifo_read_tx_i_0 => fifo_read_tx_i_0, TX2_c
         => TX2_c, MSS_READY => MSS_READY, FAB_CCC_GL0 => 
        FAB_CCC_GL0, N_1194_i_0 => N_1194_i_0, 
        CoreUARTapb_1_0_TXRDY => CoreUARTapb_1_0_TXRDY, 
        fifo_full_tx_i_0 => fifo_full_tx_i_0, baud_clock => 
        baud_clock, xmit_clock => xmit_clock, N_1194 => N_1194);
    
    \tx_hold_reg[6]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(6), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[6]_net_1\);
    
    \rx_dout_reg[4]\ : SLE
      port map(D => \rx_dout[4]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(4));
    
    \rx_state[1]\ : SLE
      port map(D => N_1551_i, CLK => FAB_CCC_GL0, EN => VCC_net_1, 
        ALn => MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD
         => GND_net_1, LAT => GND_net_1, Q => \rx_state[1]_net_1\);
    
    un1_fifo_write_0_a2 : CFG2
      generic map(INIT => x"1")

      port map(A => N_1270, B => N_1145, Y => 
        \un1_fifo_write_0_a2\);
    
    \rx_dout_reg[7]\ : SLE
      port map(D => \rx_dout[7]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(7));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_dout_reg[1]\ : SLE
      port map(D => \rx_dout[1]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(1));
    
    rxrdy_xhdl4_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \rx_dout_reg_empty\, Y => 
        rx_dout_reg_empty_i_0);
    
    clear_parity_reg : SLE
      port map(D => clear_parity_reg0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \clear_parity_reg\);
    
    rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\);
    
    \UG07.rx_fifo_xhdl80\ : 
        mss_top_sb_CoreUARTapb_1_0_fifo_256x8_0
      port map(rx_dout(7) => \rx_dout[7]\, rx_dout(6) => 
        \rx_dout[6]\, rx_dout(5) => \rx_dout[5]\, rx_dout(4) => 
        \rx_dout[4]\, rx_dout(3) => \rx_dout[3]\, rx_dout(2) => 
        \rx_dout[2]\, rx_dout(1) => \rx_dout[1]\, rx_dout(0) => 
        \rx_dout[0]\, counter(6) => \counter[6]\, counter(5) => 
        \counter[5]\, counter(4) => \counter[4]\, counter(3) => 
        \counter[3]\, counter(2) => \counter[2]\, counter(1) => 
        \counter[1]\, counter(0) => \counter[0]\, rx_byte(7) => 
        \rx_byte[7]\, rx_byte(6) => \rx_byte[6]\, rx_byte(5) => 
        \rx_byte[5]\, rx_byte(4) => \rx_byte[4]\, rx_byte(3) => 
        \rx_byte[3]\, rx_byte(2) => \rx_byte[2]\, rx_byte(1) => 
        \rx_byte[1]\, rx_byte(0) => \rx_byte[0]\, FAB_CCC_GL0 => 
        FAB_CCC_GL0, MSS_READY => MSS_READY, N_1779 => N_1779, 
        N_1145 => N_1145, N_2395 => N_2395, N_1270 => N_1270, 
        N_1164 => N_1164, N_1210 => N_1210, temp_xhdl17_i_o2_0_3
         => \temp_xhdl17_i_o2_0_3\);
    
    un9_clear_overflow_0 : CFG3
      generic map(INIT => x"F8")

      port map(A => N_2036, B => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0, C => 
        \un1_fifo_write_0_a2\, Y => \un9_clear_overflow_0\);
    
    \rx_dout_reg[5]\ : SLE
      port map(D => \rx_dout[5]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(5));
    
    overflow_reg : SLE
      port map(D => \un1_fifo_write_0_a2\, CLK => FAB_CCC_GL0, EN
         => \un9_clear_overflow_0\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => CoreUARTapb_1_0_OVERFLOW);
    
    \rx_dout_reg[6]\ : SLE
      port map(D => \rx_dout[6]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(6));
    
    rxrdy_xhdl4 : SLE
      port map(D => rx_dout_reg_empty_i_0, CLK => FAB_CCC_GL0, EN
         => un3_stop_strobe, ALn => MSS_READY, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => CoreUARTapb_1_0_RXRDY);
    
    \rx_state_RNO[0]\ : CFG4
      generic map(INIT => x"00F2")

      port map(A => \rx_dout_reg_empty\, B => N_2395, C => 
        \rx_state[1]_net_1\, D => \rx_state[0]_net_1\, Y => 
        N_615_i_0);
    
    make_mss_top_sb_CoreUARTapb_1_0_Clock_gen : 
        mss_top_sb_CoreUARTapb_1_0_Clock_gen
      port map(N_1194 => N_1194, N_1194_i_0 => N_1194_i_0, 
        xmit_clock => xmit_clock, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, baud_clock => baud_clock);
    
    \RXRDY_NEW.un3_stop_strobe_0\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \rx_dout_reg_empty\, B => N_2049, C => 
        stop_strobe, Y => un3_stop_strobe);
    
    \rx_state[0]\ : SLE
      port map(D => N_615_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \reg_write.un1_csn_0_a2_2_a2\ : CFG3
      generic map(INIT => x"08")

      port map(A => N_2036, B => \N_2037\, C => N_1140, Y => 
        un1_csn);
    
    \tx_hold_reg[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[7]_net_1\);
    
    \rx_state_ns_0_x3_i_x2_i_x2[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \rx_state[0]_net_1\, B => \rx_state[1]_net_1\, 
        Y => N_1551_i);
    
    temp_xhdl17_i_o2 : CFG4
      generic map(INIT => x"DFFF")

      port map(A => \counter[0]\, B => \temp_xhdl17_i_o2_0_3\, C
         => \counter[3]\, D => \counter[2]\, Y => N_1270);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    fifo_write_tx : SLE
      port map(D => un1_csn_i_0, CLK => FAB_CCC_GL0, EN => 
        VCC_net_1, ALn => MSS_READY, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \fifo_write_tx\);
    
    temp_xhdl17_i_o2_0_3 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \counter[6]\, B => \counter[5]\, C => 
        \counter[4]\, D => \counter[1]\, Y => 
        \temp_xhdl17_i_o2_0_3\);
    
    temp_xhdl17_i_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => N_1270, B => N_1145, Y => N_1779);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un1_csn, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    \rx_dout_reg[2]\ : SLE
      port map(D => \rx_dout[2]\, CLK => FAB_CCC_GL0, EN => 
        \rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0\, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => rx_dout_reg(2));
    
    temp_xhdl17_i_o2_0 : CFG2
      generic map(INIT => x"7")

      port map(A => \counter[0]\, B => \counter[3]\, Y => N_1210);
    
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

    port( CoreAPB3_0_APBmslave2_PRDATA          : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA          : in    std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR           : in    std_logic_vector(4 downto 2);
          MSS_READY                             : in    std_logic;
          FAB_CCC_GL0                           : in    std_logic;
          N_1124                                : in    std_logic;
          un13_psel_1                           : out   std_logic;
          CoreUARTapb_1_0_RXRDY                 : out   std_logic;
          N_2031                                : in    std_logic;
          N_2034                                : in    std_logic;
          CoreUARTapb_1_0_TXRDY                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR           : out   std_logic;
          CoreUARTapb_1_0_OVERFLOW              : out   std_logic;
          N_2018                                : in    std_logic;
          N_1135                                : in    std_logic;
          N_2043                                : in    std_logic;
          N_2036                                : in    std_logic;
          un1_nxtprdata_xhdl722_i_a2_0_a2_0_0   : in    std_logic;
          N_1140                                : in    std_logic;
          N_2037                                : out   std_logic;
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 : in    std_logic;
          TX2_c                                 : out   std_logic;
          RX2_c                                 : in    std_logic
        );

end mss_top_sb_CoreUARTapb_1_0_CoreUARTapb;

architecture DEF_ARCH of mss_top_sb_CoreUARTapb_1_0_CoreUARTapb is 

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

  component mss_top_sb_CoreUARTapb_1_0_COREUART
    port( CoreAPB3_0_APBmslave0_PWDATA            : in    std_logic_vector(7 downto 0) := (others => 'U');
          rx_dout_reg                             : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PADDR             : in    std_logic_vector(4 downto 2) := (others => 'U');
          MSS_READY                               : in    std_logic := 'U';
          FAB_CCC_GL0                             : in    std_logic := 'U';
          CoreUARTapb_1_0_OVERFLOW                : out   std_logic;
          CoreUARTapb_1_0_RXRDY                   : out   std_logic;
          N_2037                                  : out   std_logic;
          N_2036                                  : in    std_logic := 'U';
          N_1140                                  : in    std_logic := 'U';
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0 : in    std_logic := 'U';
          TX2_c                                   : out   std_logic;
          CoreUARTapb_1_0_TXRDY                   : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR             : out   std_logic;
          RX2_c                                   : in    std_logic := 'U'
        );
  end component;

    signal VCC_net_1, \nxtprdata_xhdl7_1[0]\, 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0, GND_net_1, 
        \nxtprdata_xhdl7_1[1]\, \nxtprdata_xhdl7_1[2]\, 
        \nxtprdata_xhdl7_1_3[3]\, \nxtprdata_xhdl7_1_3[4]\, 
        \nxtprdata_xhdl7_1[5]\, \nxtprdata_xhdl7_1[6]\, 
        \nxtprdata_xhdl7_1[7]\, \controlReg3[0]_net_1\, un21_psel, 
        \controlReg3[1]_net_1\, \controlReg3[2]_net_1\, 
        \controlReg2[0]_net_1\, un13_psel, \controlReg2[1]_net_1\, 
        \controlReg2[2]_net_1\, \controlReg2[3]_net_1\, 
        \controlReg2[4]_net_1\, \controlReg2[5]_net_1\, 
        \controlReg2[6]_net_1\, \controlReg2[7]_net_1\, 
        \controlReg1[0]_net_1\, un5_psel, \controlReg1[1]_net_1\, 
        \controlReg1[2]_net_1\, \controlReg1[3]_net_1\, 
        \controlReg1[4]_net_1\, \controlReg1[5]_net_1\, 
        \controlReg1[6]_net_1\, \controlReg1[7]_net_1\, 
        \un13_psel_1\, \CoreUARTapb_1_0_RXRDY\, 
        \nxtprdata_xhdl7_1_6_0_0_0[1]\, \CoreUARTapb_1_0_TXRDY\, 
        \nxtprdata_xhdl7_1_6_0_0_0[0]\, 
        \CoreUARTapb_1_0_FRAMING_ERR\, 
        \nxtprdata_xhdl7_1_6_0_0_3_0[4]\, 
        \CoreUARTapb_1_0_OVERFLOW\, 
        \nxtprdata_xhdl7_1_6_0_0_3_0[3]\, \rx_dout_reg[2]\, 
        N_1859, N_1863, N_1868, \rx_dout_reg[1]\, 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\, \rx_dout_reg[0]\, 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[2]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[6]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[7]\, 
        \nxtprdata_xhdl7_1_6_0_0_0[5]\, \rx_dout_reg[7]\, 
        \rx_dout_reg[6]\, \rx_dout_reg[5]\, \rx_dout_reg[4]\, 
        \rx_dout_reg[3]\ : std_logic;

    for all : mss_top_sb_CoreUARTapb_1_0_COREUART
	Use entity work.mss_top_sb_CoreUARTapb_1_0_COREUART(DEF_ARCH);
begin 

    un13_psel_1 <= \un13_psel_1\;
    CoreUARTapb_1_0_RXRDY <= \CoreUARTapb_1_0_RXRDY\;
    CoreUARTapb_1_0_TXRDY <= \CoreUARTapb_1_0_TXRDY\;
    CoreUARTapb_1_0_FRAMING_ERR <= \CoreUARTapb_1_0_FRAMING_ERR\;
    CoreUARTapb_1_0_OVERFLOW <= \CoreUARTapb_1_0_OVERFLOW\;

    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[1]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_1_0_RXRDY\, B => 
        \controlReg2[1]_net_1\, C => N_2031, D => N_2034, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[1]\);
    
    \controlReg1[5]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(5), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[5]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[2]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \controlReg2[2]_net_1\, B => 
        \controlReg3[2]_net_1\, C => N_2043, D => N_2031, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[2]\);
    
    \p_CtrlReg2Seq.un13_psel_0_a2_0_a2\ : CFG3
      generic map(INIT => x"08")

      port map(A => \un13_psel_1\, B => N_2036, C => N_1140, Y
         => un13_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[5]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[5]\, 
        C => \rx_dout_reg[5]\, Y => \nxtprdata_xhdl7_1[5]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[5]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[5]_net_1\, B => 
        \controlReg1[5]_net_1\, C => N_2031, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[5]\);
    
    \controlReg1[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[7]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[1]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \nxtprdata_xhdl7_1_6_0_0_0[1]\, B => 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\, C => 
        \controlReg3[1]_net_1\, D => N_2043, Y => 
        \nxtprdata_xhdl7_1[1]\);
    
    \iPRDATA[1]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[1]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(1));
    
    \controlReg2[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[4]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[2]\ : CFG4
      generic map(INIT => x"FFF4")

      port map(A => N_1135, B => \controlReg1[2]_net_1\, C => 
        \nxtprdata_xhdl7_1_6_0_0_0[2]\, D => N_1859, Y => 
        \nxtprdata_xhdl7_1[2]\);
    
    \iPRDATA[4]\ : SLE
      port map(D => \nxtprdata_xhdl7_1_3[4]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(4));
    
    \controlReg3[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[2]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \UG08.p_CtrlReg3Seq.un21_psel_0_a2_0_a2\ : CFG3
      generic map(INIT => x"20")

      port map(A => N_2036, B => N_1140, C => N_2043, Y => 
        un21_psel);
    
    \p_CtrlReg1Seq.un5_psel_0_a2_0_a2\ : CFG3
      generic map(INIT => x"04")

      port map(A => N_1135, B => N_2036, C => N_1140, Y => 
        un5_psel);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_5[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1135, B => \controlReg1[4]_net_1\, Y => 
        N_1868);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[6]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[6]\, 
        C => \rx_dout_reg[6]\, Y => \nxtprdata_xhdl7_1[6]\);
    
    \iPRDATA[3]\ : SLE
      port map(D => \nxtprdata_xhdl7_1_3[3]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(3));
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_2[1]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \rx_dout_reg[1]\, B => \controlReg1[1]_net_1\, 
        C => N_2018, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_2[1]\);
    
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
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[6]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[6]_net_1\, B => 
        \controlReg1[6]_net_1\, C => N_2031, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[6]\);
    
    \controlReg1[4]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(4), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[4]_net_1\);
    
    \iPRDATA[5]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[5]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(5));
    
    \iPRDATA[7]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[7]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(7));
    
    \controlReg2[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[0]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_1_0_TXRDY\, B => 
        \controlReg2[0]_net_1\, C => N_2031, D => N_2034, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[0]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_5[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1135, B => \controlReg1[3]_net_1\, Y => 
        N_1863);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_2[0]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \rx_dout_reg[0]\, B => \controlReg1[0]_net_1\, 
        C => N_2018, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\);
    
    \controlReg2[7]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(7), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[7]_net_1\);
    
    un1_nxtprdata_xhdl722_i_a2_0_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => N_2036, B => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0_0, Y => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0);
    
    \iPRDATA[2]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[2]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(2));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[7]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => N_2018, B => \nxtprdata_xhdl7_1_6_0_0_0[7]\, 
        C => \rx_dout_reg[7]\, Y => \nxtprdata_xhdl7_1[7]\);
    
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
    
    \controlReg3[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[1]_net_1\);
    
    \iPRDATA[6]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[6]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(6));
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3[4]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2018, B => \rx_dout_reg[4]\, C => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[4]\, D => N_1868, Y => 
        \nxtprdata_xhdl7_1_3[4]\);
    
    \iPRDATA[0]\ : SLE
      port map(D => \nxtprdata_xhdl7_1[0]\, CLK => FAB_CCC_GL0, 
        EN => un1_nxtprdata_xhdl722_i_a2_0_a2_0, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => CoreAPB3_0_APBmslave2_PRDATA(0));
    
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
        \rx_dout_reg[4]\, rx_dout_reg(3) => \rx_dout_reg[3]\, 
        rx_dout_reg(2) => \rx_dout_reg[2]\, rx_dout_reg(1) => 
        \rx_dout_reg[1]\, rx_dout_reg(0) => \rx_dout_reg[0]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        CoreAPB3_0_APBmslave0_PADDR(4), 
        CoreAPB3_0_APBmslave0_PADDR(3) => 
        CoreAPB3_0_APBmslave0_PADDR(3), 
        CoreAPB3_0_APBmslave0_PADDR(2) => 
        CoreAPB3_0_APBmslave0_PADDR(2), MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, CoreUARTapb_1_0_OVERFLOW => 
        \CoreUARTapb_1_0_OVERFLOW\, CoreUARTapb_1_0_RXRDY => 
        \CoreUARTapb_1_0_RXRDY\, N_2037 => N_2037, N_2036 => 
        N_2036, N_1140 => N_1140, 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0_0 => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0, TX2_c => TX2_c, 
        CoreUARTapb_1_0_TXRDY => \CoreUARTapb_1_0_TXRDY\, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        \CoreUARTapb_1_0_FRAMING_ERR\, RX2_c => RX2_c);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3_0[4]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_1_0_FRAMING_ERR\, B => 
        \controlReg2[4]_net_1\, C => N_2031, D => N_2034, Y => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[4]\);
    
    \controlReg2[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un13_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg2[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3[3]\ : CFG4
      generic map(INIT => x"FFF8")

      port map(A => N_2018, B => \rx_dout_reg[3]\, C => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[3]\, D => N_1863, Y => 
        \nxtprdata_xhdl7_1_3[3]\);
    
    \controlReg3[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => un21_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg3[0]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_a2_9[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2018, B => \rx_dout_reg[2]\, Y => N_1859);
    
    \p_CtrlReg2Seq.un13_psel_0_a2_0_a2_1\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_1124, B => CoreAPB3_0_APBmslave0_PADDR(2), 
        Y => \un13_psel_1\);
    
    \controlReg1[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => un5_psel, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \controlReg1[1]_net_1\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0[0]\ : CFG4
      generic map(INIT => x"FEEE")

      port map(A => \nxtprdata_xhdl7_1_6_0_0_0[0]\, B => 
        \nxtprdata_xhdl7_1_6_0_0_2[0]\, C => 
        \controlReg3[0]_net_1\, D => N_2043, Y => 
        \nxtprdata_xhdl7_1[0]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_3_0[3]\ : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \CoreUARTapb_1_0_OVERFLOW\, B => 
        \controlReg2[3]_net_1\, C => N_2031, D => N_2034, Y => 
        \nxtprdata_xhdl7_1_6_0_0_3_0[3]\);
    
    \p_NxtPrdataComb.nxtprdata_xhdl7_1_6_0_0_0[7]\ : CFG4
      generic map(INIT => x"A0EC")

      port map(A => \controlReg2[7]_net_1\, B => 
        \controlReg1[7]_net_1\, C => N_2031, D => N_1135, Y => 
        \nxtprdata_xhdl7_1_6_0_0_0[7]\);
    
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

entity pwm_gen is

    port( period_cnt                : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg           : in    std_logic_vector(128 downto 1);
          pwm_enable_reg            : in    std_logic_vector(4 downto 1);
          pwm_out_4_c               : out   std_logic;
          MSS_READY                 : in    std_logic;
          FAB_CCC_GL0               : in    std_logic;
          pwm_out_3_c               : out   std_logic;
          pwm_out_2_c               : out   std_logic;
          pwm_out_1_c               : out   std_logic;
          period_cnt_int7_i_o2_1_15 : in    std_logic;
          period_cnt_int7_i_o2_1_14 : in    std_logic;
          period_cnt_int7_i_o2_1_19 : in    std_logic;
          N_2065                    : in    std_logic
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
        N_336_i_0, \un1_pwm_enable_reg_1_i_0[0]\, \pwm_out_2_c\, 
        N_345_i_0, \un1_pwm_enable_reg_2_i_0[0]\, \pwm_out_1_c\, 
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
        un145_pwm_enable_reg, PWM_int_7_f0_37_i_0_0_o2_5, 
        PWM_int_7_f0_37_i_0_0_o2_4, PWM_int_37_f0_7_i_0_a2_0_23, 
        PWM_int_37_f0_7_i_0_a2_0_22, PWM_int_37_f0_7_i_0_a2_0_21, 
        PWM_int_37_f0_7_i_0_a2_0_20, PWM_int_37_f0_7_i_0_a2_0_19, 
        PWM_int_37_f0_7_i_0_a2_0_18, PWM_int_37_f0_7_i_0_a2_0_17, 
        PWM_int_37_f0_7_i_0_a2_0_16, PWM_int_7_f0_37_i_0_a2_1_23, 
        PWM_int_7_f0_37_i_0_a2_1_22, PWM_int_7_f0_37_i_0_a2_1_21, 
        PWM_int_7_f0_37_i_0_a2_1_20, PWM_int_7_f0_37_i_0_a2_1_19, 
        PWM_int_7_f0_37_i_0_a2_1_18, PWM_int_7_f0_37_i_0_a2_1_17, 
        PWM_int_7_f0_37_i_0_a2_1_16, PWM_int_27_f0_17_i_0_a2_0_23, 
        PWM_int_27_f0_17_i_0_a2_0_22, 
        PWM_int_27_f0_17_i_0_a2_0_21, 
        PWM_int_27_f0_17_i_0_a2_0_20, 
        PWM_int_27_f0_17_i_0_a2_0_19, 
        PWM_int_27_f0_17_i_0_a2_0_18, 
        PWM_int_27_f0_17_i_0_a2_0_17, 
        PWM_int_27_f0_17_i_0_a2_0_16, 
        PWM_int_17_f0_27_i_0_a2_1_23, 
        PWM_int_17_f0_27_i_0_a2_1_22, 
        PWM_int_17_f0_27_i_0_a2_1_21, 
        PWM_int_17_f0_27_i_0_a2_1_20, 
        PWM_int_17_f0_27_i_0_a2_1_19, 
        PWM_int_17_f0_27_i_0_a2_1_18, 
        PWM_int_17_f0_27_i_0_a2_1_17, 
        PWM_int_17_f0_27_i_0_a2_1_16, PWM_int_7_f0_37_i_0_0_o2_7, 
        PWM_int_37_f0_7_i_0_a2_0_29, PWM_int_37_f0_7_i_0_a2_0_28, 
        PWM_int_7_f0_37_i_0_a2_1_29, PWM_int_7_f0_37_i_0_a2_1_28, 
        PWM_int_27_f0_17_i_0_a2_0_29, 
        PWM_int_27_f0_17_i_0_a2_0_28, 
        PWM_int_17_f0_27_i_0_a2_1_29, 
        PWM_int_17_f0_27_i_0_a2_1_28, N_2002, N_2000, N_1774, 
        N_1593, N_1324, N_1592, N_1773, N_1999, N_2001
         : std_logic;

begin 

    pwm_out_4_c <= \pwm_out_4_c\;
    pwm_out_3_c <= \pwm_out_3_c\;
    pwm_out_2_c <= \pwm_out_2_c\;
    pwm_out_1_c <= \pwm_out_1_c\;

    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_93\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(58), B => period_cnt(24), C
         => period_cnt(25), D => pwm_negedge_reg(57), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[11]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[12]\);
    
    
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
    
    \PWM_int_RNO_10[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(86), B => pwm_negedge_reg(84), 
        C => pwm_negedge_reg(80), D => pwm_negedge_reg(67), Y => 
        PWM_int_27_f0_17_i_0_a2_0_17);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_81\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(6), B => period_cnt(4), C => 
        period_cnt(5), D => pwm_negedge_reg(5), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[1]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[2]\);
    
    \PWM_int_RNO_12[3]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(77), B => \pwm_out_3_c\, C
         => pwm_negedge_reg(95), Y => 
        PWM_int_27_f0_17_i_0_a2_0_16);
    
    
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
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_0_a2_1_20, B => 
        PWM_int_17_f0_27_i_0_a2_1_19, C => 
        PWM_int_17_f0_27_i_0_a2_1_18, D => 
        PWM_int_17_f0_27_i_0_a2_1_17, Y => 
        PWM_int_17_f0_27_i_0_a2_1_29);
    
    
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
    
    \PWM_int_RNO_11[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(45), B => pwm_negedge_reg(44), 
        C => pwm_negedge_reg(40), D => pwm_negedge_reg(39), Y => 
        PWM_int_17_f0_27_i_0_a2_1_23);
    
    \PWM_int_RNO_0[2]\ : CFG4
      generic map(INIT => x"55DF")

      port map(A => pwm_enable_reg(2), B => un69_pwm_enable_reg, 
        C => N_1324, D => N_2065, Y => 
        \un1_pwm_enable_reg_2_i_0[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_15\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(60), B => period_cnt(26), C
         => period_cnt(27), D => pwm_negedge_reg(59), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[12]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[13]\);
    
    \PWM_int_RNO_10[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(116), B => 
        pwm_negedge_reg(110), C => pwm_negedge_reg(108), D => 
        pwm_negedge_reg(99), Y => PWM_int_37_f0_7_i_0_a2_0_17);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(128), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(127), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un145_pwm_enable_reg);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(8), B => period_cnt(6), C => 
        period_cnt(7), D => pwm_negedge_reg(7), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_10[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(24), B => pwm_negedge_reg(22), 
        C => pwm_negedge_reg(20), D => pwm_negedge_reg(16), Y => 
        PWM_int_7_f0_37_i_0_a2_1_17);
    
    \PWM_int_RNO_9[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(29), B => pwm_negedge_reg(28), 
        C => pwm_negedge_reg(27), D => pwm_negedge_reg(2), Y => 
        PWM_int_7_f0_37_i_0_a2_1_18);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_9\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(62), B => period_cnt(28), C
         => period_cnt(29), D => pwm_negedge_reg(61), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[13]\, S => OPEN, Y => 
        OPEN, FCO => \un69_pwm_enable_reg_0_data_tmp[14]\);
    
    \PWM_int_RNO_0[1]\ : CFG4
      generic map(INIT => x"55DF")

      port map(A => pwm_enable_reg(1), B => un31_pwm_enable_reg, 
        C => N_1324, D => N_2065, Y => 
        \un1_pwm_enable_reg_3_i_0[0]\);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(108), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(107), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[5]\);
    
    \PWM_int_RNO_9[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(94), B => pwm_negedge_reg(76), 
        C => pwm_negedge_reg(72), D => pwm_negedge_reg(68), Y => 
        PWM_int_27_f0_17_i_0_a2_0_18);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_int_RNO_3[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(64), B => pwm_negedge_reg(46), 
        C => pwm_negedge_reg(43), D => pwm_negedge_reg(38), Y => 
        PWM_int_17_f0_27_i_0_a2_1_22);
    
    \PWM_int_RNO_0[3]\ : CFG4
      generic map(INIT => x"55DF")

      port map(A => pwm_enable_reg(3), B => un107_pwm_enable_reg, 
        C => N_1324, D => N_2065, Y => 
        \un1_pwm_enable_reg_1_i_0[0]\);
    
    \PWM_int_RNO_6[2]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(37), B => pwm_negedge_reg(35), 
        C => PWM_int_17_f0_27_i_0_a2_1_23, D => 
        PWM_int_17_f0_27_i_0_a2_1_16, Y => 
        PWM_int_17_f0_27_i_0_a2_1_28);
    
    
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
    
    
        \PWM_output_select.1.PWM_output_generation.PWM_int_7_f0_37_i_0_0_o2\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_int7_i_o2_1_15, B => 
        period_cnt_int7_i_o2_1_14, C => 
        PWM_int_7_f0_37_i_0_0_o2_7, D => 
        period_cnt_int7_i_o2_1_19, Y => N_1324);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_63\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(76), B => period_cnt(10), C
         => period_cnt(11), D => pwm_negedge_reg(75), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[4]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[5]\);
    
    \PWM_int_RNO_2[3]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => N_2065, B => \pwm_out_3_c\, C => N_1324, Y
         => N_1999);
    
    \PWM_int_RNO_12[1]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(13), B => \pwm_out_1_c\, C
         => pwm_negedge_reg(14), Y => PWM_int_7_f0_37_i_0_a2_1_16);
    
    
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
    
    \PWM_int_RNO_3[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(75), B => pwm_negedge_reg(71), 
        C => pwm_negedge_reg(70), D => pwm_negedge_reg(69), Y => 
        PWM_int_27_f0_17_i_0_a2_0_22);
    
    
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
    
    \PWM_int_RNO_4[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(119), B => 
        pwm_negedge_reg(117), C => pwm_negedge_reg(115), D => 
        pwm_negedge_reg(111), Y => PWM_int_37_f0_7_i_0_a2_0_21);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(22), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(21), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[10]\);
    
    \PWM_int_RNO_7[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(26), B => pwm_negedge_reg(25), 
        C => pwm_negedge_reg(10), D => pwm_negedge_reg(1), Y => 
        PWM_int_7_f0_37_i_0_a2_1_20);
    
    
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
    
    \PWM_int_RNO_6[1]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(5), B => pwm_negedge_reg(3), 
        C => PWM_int_7_f0_37_i_0_a2_1_23, D => 
        PWM_int_7_f0_37_i_0_a2_1_16, Y => 
        PWM_int_7_f0_37_i_0_a2_1_28);
    
    \PWM_int_RNO[4]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_2002, B => pwm_enable_reg(4), C => N_2001, 
        D => N_1324, Y => N_327_i_0);
    
    \PWM_int_RNO_5[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_27_f0_17_i_0_a2_0_20, B => 
        PWM_int_27_f0_17_i_0_a2_0_19, C => 
        PWM_int_27_f0_17_i_0_a2_0_18, D => 
        PWM_int_27_f0_17_i_0_a2_0_17, Y => 
        PWM_int_27_f0_17_i_0_a2_0_29);
    
    \PWM_int_RNO_4[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(87), B => pwm_negedge_reg(85), 
        C => pwm_negedge_reg(83), D => pwm_negedge_reg(79), Y => 
        PWM_int_27_f0_17_i_0_a2_0_21);
    
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

      port map(A => pwm_negedge_reg(123), B => 
        pwm_negedge_reg(122), C => pwm_negedge_reg(118), D => 
        pwm_negedge_reg(114), Y => PWM_int_37_f0_7_i_0_a2_0_18);
    
    
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
    
    \PWM_int_RNO_7[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(60), B => pwm_negedge_reg(50), 
        C => pwm_negedge_reg(42), D => pwm_negedge_reg(41), Y => 
        PWM_int_17_f0_27_i_0_a2_1_20);
    
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
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(120), B => 
        pwm_negedge_reg(113), C => PWM_int_37_f0_7_i_0_a2_0_23, D
         => PWM_int_37_f0_7_i_0_a2_0_16, Y => 
        PWM_int_37_f0_7_i_0_a2_0_28);
    
    \PWM_int_RNO[1]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1593, B => pwm_enable_reg(1), C => N_1592, 
        D => N_1324, Y => N_354_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \PWM_int_RNO_3[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(107), B => 
        pwm_negedge_reg(102), C => pwm_negedge_reg(101), D => 
        pwm_negedge_reg(97), Y => PWM_int_37_f0_7_i_0_a2_0_22);
    
    \PWM_int_RNO_7[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(82), B => pwm_negedge_reg(74), 
        C => pwm_negedge_reg(73), D => pwm_negedge_reg(65), Y => 
        PWM_int_27_f0_17_i_0_a2_0_20);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_57\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(110), B => period_cnt(12), C
         => period_cnt(13), D => pwm_negedge_reg(109), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[5]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[6]\);
    
    \PWM_int_RNO_8[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(61), B => pwm_negedge_reg(59), 
        C => pwm_negedge_reg(49), D => pwm_negedge_reg(36), Y => 
        PWM_int_17_f0_27_i_0_a2_1_19);
    
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

      port map(A => pwm_negedge_reg(31), B => pwm_negedge_reg(15), 
        C => pwm_negedge_reg(12), D => pwm_negedge_reg(11), Y => 
        PWM_int_7_f0_37_i_0_a2_1_22);
    
    \PWM_int_RNO_11[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(32), B => pwm_negedge_reg(8), 
        C => pwm_negedge_reg(7), D => pwm_negedge_reg(4), Y => 
        PWM_int_7_f0_37_i_0_a2_1_23);
    
    
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
    
    
        \PWM_output_select.1.PWM_output_generation.PWM_int_7_f0_37_i_0_0_o2_5\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(9), B => period_cnt(8), C => 
        period_cnt(7), D => period_cnt(6), Y => 
        PWM_int_7_f0_37_i_0_0_o2_5);
    
    \PWM_int_RNO_11[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(121), B => 
        pwm_negedge_reg(109), C => pwm_negedge_reg(103), D => 
        pwm_negedge_reg(98), Y => PWM_int_37_f0_7_i_0_a2_0_23);
    
    
        \PWM_output_select.4.PWM_output_generation.un145_pwm_enable_reg_0_I_87\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(100), B => period_cnt(2), C
         => period_cnt(3), D => pwm_negedge_reg(99), FCI => 
        \un145_pwm_enable_reg_0_data_tmp[0]\, S => OPEN, Y => 
        OPEN, FCO => \un145_pwm_enable_reg_0_data_tmp[1]\);
    
    
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
    
    \PWM_int_RNO[2]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_1774, B => pwm_enable_reg(2), C => N_1773, 
        D => N_1324, Y => N_345_i_0);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_27\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(72), B => period_cnt(6), C
         => period_cnt(7), D => pwm_negedge_reg(71), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[2]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[3]\);
    
    \PWM_int_RNO_8[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(30), B => pwm_negedge_reg(18), 
        C => pwm_negedge_reg(17), D => pwm_negedge_reg(6), Y => 
        PWM_int_7_f0_37_i_0_a2_1_19);
    
    
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
    
    \PWM_int_RNO_6[3]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => pwm_negedge_reg(88), B => pwm_negedge_reg(81), 
        C => PWM_int_27_f0_17_i_0_a2_0_23, D => 
        PWM_int_27_f0_17_i_0_a2_0_16, Y => 
        PWM_int_27_f0_17_i_0_a2_0_28);
    
    
        \PWM_output_select.1.PWM_output_generation.PWM_int_7_f0_37_i_0_0_o2_4\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(5), B => period_cnt(0), C => 
        period_cnt(2), D => period_cnt(1), Y => 
        PWM_int_7_f0_37_i_0_0_o2_4);
    
    \PWM_int_RNO_1[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_27_f0_17_i_0_a2_0_22, B => 
        PWM_int_27_f0_17_i_0_a2_0_21, C => 
        PWM_int_27_f0_17_i_0_a2_0_29, D => 
        PWM_int_27_f0_17_i_0_a2_0_28, Y => N_2000);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(32), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(31), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un31_pwm_enable_reg);
    
    
        \PWM_output_select.1.PWM_output_generation.PWM_int_7_f0_37_i_0_0_o2_7\ : 
        CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt(3), B => period_cnt(4), C => 
        PWM_int_7_f0_37_i_0_0_o2_5, D => 
        PWM_int_7_f0_37_i_0_0_o2_4, Y => 
        PWM_int_7_f0_37_i_0_0_o2_7);
    
    
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
    
    \PWM_int_RNO_8[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(96), B => pwm_negedge_reg(92), 
        C => pwm_negedge_reg(91), D => pwm_negedge_reg(78), Y => 
        PWM_int_27_f0_17_i_0_a2_0_19);
    
    
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

      port map(A => PWM_int_37_f0_7_i_0_a2_0_22, B => 
        PWM_int_37_f0_7_i_0_a2_0_21, C => 
        PWM_int_37_f0_7_i_0_a2_0_29, D => 
        PWM_int_37_f0_7_i_0_a2_0_28, Y => N_2002);
    
    \PWM_int_RNO_12[2]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(33), B => \pwm_out_2_c\, C
         => pwm_negedge_reg(63), Y => 
        PWM_int_17_f0_27_i_0_a2_1_16);
    
    \PWM_int_RNO_11[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(93), B => pwm_negedge_reg(90), 
        C => pwm_negedge_reg(89), D => pwm_negedge_reg(66), Y => 
        PWM_int_27_f0_17_i_0_a2_0_23);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_33\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(86), B => period_cnt(20), C
         => period_cnt(21), D => pwm_negedge_reg(85), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[9]\, S => OPEN, Y => 
        OPEN, FCO => \un107_pwm_enable_reg_0_data_tmp[10]\);
    
    \PWM_int_RNO_0[4]\ : CFG4
      generic map(INIT => x"55DF")

      port map(A => pwm_enable_reg(4), B => un145_pwm_enable_reg, 
        C => N_1324, D => N_2065, Y => 
        \un1_pwm_enable_reg_i_0[0]\);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_39\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(52), B => period_cnt(18), C
         => period_cnt(19), D => pwm_negedge_reg(51), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[8]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[9]\);
    
    \PWM_int_RNO_4[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(55), B => pwm_negedge_reg(53), 
        C => pwm_negedge_reg(51), D => pwm_negedge_reg(47), Y => 
        PWM_int_17_f0_27_i_0_a2_1_21);
    
    \PWM_int_RNO_1[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a2_1_22, B => 
        PWM_int_7_f0_37_i_0_a2_1_21, C => 
        PWM_int_7_f0_37_i_0_a2_1_29, D => 
        PWM_int_7_f0_37_i_0_a2_1_28, Y => N_1593);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(10), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(9), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_4[1]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(23), B => pwm_negedge_reg(21), 
        C => pwm_negedge_reg(19), D => pwm_negedge_reg(9), Y => 
        PWM_int_7_f0_37_i_0_a2_1_21);
    
    
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
    
    \PWM_int_RNO_2[2]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => N_2065, B => \pwm_out_2_c\, C => N_1324, Y
         => N_1773);
    
    \PWM_int_RNO_10[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(54), B => pwm_negedge_reg(52), 
        C => pwm_negedge_reg(48), D => pwm_negedge_reg(34), Y => 
        PWM_int_17_f0_27_i_0_a2_1_17);
    
    \PWM_int_RNO_2[4]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => N_2065, B => \pwm_out_4_c\, C => N_1324, Y
         => N_2001);
    
    \PWM_int_RNO[3]\ : CFG4
      generic map(INIT => x"0004")

      port map(A => N_2000, B => pwm_enable_reg(3), C => N_1999, 
        D => N_1324, Y => N_336_i_0);
    
    \PWM_int_RNO_8[4]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(126), B => 
        pwm_negedge_reg(124), C => pwm_negedge_reg(104), D => 
        pwm_negedge_reg(100), Y => PWM_int_37_f0_7_i_0_a2_0_19);
    
    \PWM_int_RNO_2[1]\ : CFG3
      generic map(INIT => x"C8")

      port map(A => N_2065, B => \pwm_out_1_c\, C => N_1324, Y
         => N_1592);
    
    
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

      port map(A => pwm_negedge_reg(128), B => 
        pwm_negedge_reg(112), C => pwm_negedge_reg(106), D => 
        pwm_negedge_reg(105), Y => PWM_int_37_f0_7_i_0_a2_0_20);
    
    \PWM_int_RNO_1[2]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_17_f0_27_i_0_a2_1_22, B => 
        PWM_int_17_f0_27_i_0_a2_1_21, C => 
        PWM_int_17_f0_27_i_0_a2_1_29, D => 
        PWM_int_17_f0_27_i_0_a2_1_28, Y => N_1774);
    
    
        \PWM_output_select.2.PWM_output_generation.un69_pwm_enable_reg_0_I_51\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(42), B => period_cnt(8), C
         => period_cnt(9), D => pwm_negedge_reg(41), FCI => 
        \un69_pwm_enable_reg_0_data_tmp[3]\, S => OPEN, Y => OPEN, 
        FCO => \un69_pwm_enable_reg_0_data_tmp[4]\);
    
    \PWM_int_RNO_9[2]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pwm_negedge_reg(62), B => pwm_negedge_reg(58), 
        C => pwm_negedge_reg(57), D => pwm_negedge_reg(56), Y => 
        PWM_int_17_f0_27_i_0_a2_1_18);
    
    
        \PWM_output_select.3.PWM_output_generation.un107_pwm_enable_reg_0_I_69\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(96), B => period_cnt(30), C
         => period_cnt(31), D => pwm_negedge_reg(95), FCI => 
        \un107_pwm_enable_reg_0_data_tmp[14]\, S => OPEN, Y => 
        OPEN, FCO => un107_pwm_enable_reg);
    
    \PWM_int_RNO_5[1]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_7_f0_37_i_0_a2_1_20, B => 
        PWM_int_7_f0_37_i_0_a2_1_19, C => 
        PWM_int_7_f0_37_i_0_a2_1_18, D => 
        PWM_int_7_f0_37_i_0_a2_1_17, Y => 
        PWM_int_7_f0_37_i_0_a2_1_29);
    
    \PWM_int[3]\ : SLE
      port map(D => N_336_i_0, CLK => FAB_CCC_GL0, EN => 
        \un1_pwm_enable_reg_1_i_0[0]\, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \pwm_out_3_c\);
    
    
        \PWM_output_select.1.PWM_output_generation.un31_pwm_enable_reg_0_I_75\ : 
        ARI1
      generic map(INIT => x"48421")

      port map(A => pwm_negedge_reg(18), B => period_cnt(16), C
         => period_cnt(17), D => pwm_negedge_reg(17), FCI => 
        \un31_pwm_enable_reg_0_data_tmp[7]\, S => OPEN, Y => OPEN, 
        FCO => \un31_pwm_enable_reg_0_data_tmp[8]\);
    
    \PWM_int_RNO_5[4]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => PWM_int_37_f0_7_i_0_a2_0_20, B => 
        PWM_int_37_f0_7_i_0_a2_0_19, C => 
        PWM_int_37_f0_7_i_0_a2_0_18, D => 
        PWM_int_37_f0_7_i_0_a2_0_17, Y => 
        PWM_int_37_f0_7_i_0_a2_0_29);
    
    \PWM_int_RNO_12[4]\ : CFG3
      generic map(INIT => x"04")

      port map(A => pwm_negedge_reg(125), B => \pwm_out_4_c\, C
         => pwm_negedge_reg(127), Y => 
        PWM_int_37_f0_7_i_0_a2_0_16);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity reg_if is

    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0);
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          PRDATA_3_0_a2_4_4_1                         : in    std_logic_vector(0 to 0);
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          sync_update                                 : out   std_logic;
          N_1140                                      : in    std_logic;
          N_2018                                      : in    std_logic;
          N_1975                                      : in    std_logic;
          N_2038                                      : in    std_logic;
          N_1135                                      : in    std_logic;
          N_1120                                      : in    std_logic;
          PRDATA_m3_e_1_2                             : in    std_logic;
          PRDATA_m3_e_1_3                             : in    std_logic;
          PRDATA_0_0_a2_5_out                         : in    std_logic;
          PRDATA_m1_e_1                               : in    std_logic;
          PRDATA_0_0_a2_4_out                         : in    std_logic;
          PRDATA_m1_0_a2_6_0                          : in    std_logic;
          N_2019                                      : in    std_logic
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

    signal VCC_net_1, psh_negedge_reg_1_sqmuxa, GND_net_1, 
        psh_negedge_reg_1_sqmuxa_1, psh_negedge_reg_1_sqmuxa_2, 
        psh_negedge_reg_1_sqmuxa_3, sync_update_0_sqmuxa, N_1925, 
        \sync_update_0_sqmuxa_0_a2_0_a2_0\ : std_logic;

begin 


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
    
    psh_enable_reg1_1_sqmuxa_i_i_a2 : CFG4
      generic map(INIT => x"0002")

      port map(A => N_2038, B => N_1140, C => N_1135, D => N_1120, 
        Y => N_1925);
    
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
    
    psh_negedge_reg_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"0800")

      port map(A => PRDATA_0_0_a2_5_out, B => PRDATA_m1_e_1, C
         => N_1140, D => PRDATA_0_0_a2_4_out, Y => 
        psh_negedge_reg_1_sqmuxa);
    
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
        FAB_CCC_GL0, EN => N_1925, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pwm_enable_reg(4));
    
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
    
    psh_negedge_reg_1_sqmuxa_2_0_a2_0_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => N_2019, B => N_1140, Y => 
        psh_negedge_reg_1_sqmuxa_2);
    
    \psh_negedge_reg[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(3));
    
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
    
    \psh_negedge_reg[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_3, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(2));
    
    psh_negedge_reg_1_sqmuxa_3_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => nxtprdata_xhdl7_1_6_0_a2_16_0(0), B => N_1140, 
        C => PRDATA_m3_e_1_2, D => PRDATA_m3_e_1_3, Y => 
        psh_negedge_reg_1_sqmuxa_3);
    
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
    
    psh_negedge_reg_1_sqmuxa_1_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => PRDATA_m1_0_a2_6_0, B => N_1140, C => 
        PRDATA_0_0_a2_5_out, D => PRDATA_m1_e_1, Y => 
        psh_negedge_reg_1_sqmuxa_1);
    
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
        FAB_CCC_GL0, EN => N_1925, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pwm_enable_reg(1));
    
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
        FAB_CCC_GL0, EN => N_1925, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pwm_enable_reg(3));
    
    \psh_enable_reg1[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => N_1925, ALn => MSS_READY, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pwm_enable_reg(2));
    
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
    
    sync_update_0_sqmuxa_0_a2_0_a2_0 : CFG3
      generic map(INIT => x"08")

      port map(A => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), B => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), C => 
        N_1140, Y => \sync_update_0_sqmuxa_0_a2_0_a2_0\);
    
    \psh_negedge_reg[53]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(20), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_2, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(53));
    
    \psh_negedge_reg[88]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(23), CLK => 
        FAB_CCC_GL0, EN => psh_negedge_reg_1_sqmuxa_1, ALn => 
        MSS_READY, ADn => VCC_net_1, SLn => VCC_net_1, SD => 
        GND_net_1, LAT => GND_net_1, Q => pwm_negedge_reg(88));
    
    sync_update_0_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => PRDATA_3_0_a2_4_4_1(0), B => N_2018, C => 
        N_1975, D => \sync_update_0_sqmuxa_0_a2_0_a2_0\, Y => 
        sync_update_0_sqmuxa);
    
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

    port( period_cnt                : out   std_logic_vector(31 downto 0);
          MSS_READY                 : in    std_logic;
          FAB_CCC_GL0               : in    std_logic;
          N_2065                    : out   std_logic;
          period_cnt_int7_i_o2_1_15 : out   std_logic;
          period_cnt_int7_i_o2_1_14 : out   std_logic;
          period_cnt_int7_i_o2_1_19 : out   std_logic
        );

end timebase;

architecture DEF_ARCH of timebase is 

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

    signal \period_cnt[0]\, VCC_net_1, \period_cnt_int_lm[0]\, 
        N_1061_i_0, GND_net_1, \period_cnt[1]\, 
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
        prescale_cnt_s_121_FCO, \prescale_cnt_cry[1]_net_1\, 
        \prescale_cnt_s[1]\, \prescale_cnt_cry[2]_net_1\, 
        \prescale_cnt_s[2]\, \prescale_cnt_cry[3]_net_1\, 
        \prescale_cnt_s[3]\, \prescale_cnt_cry[4]_net_1\, 
        \prescale_cnt_s[4]\, \prescale_cnt_cry[5]_net_1\, 
        \prescale_cnt_s[5]\, \prescale_cnt_cry[6]_net_1\, 
        \prescale_cnt_s[6]\, \prescale_cnt_s[8]_net_1\, 
        \prescale_cnt_cry[7]_net_1\, \prescale_cnt_s[7]\, 
        period_cnt_int_s_122_FCO, \period_cnt_int_cry[1]_net_1\, 
        \period_cnt_int_s[1]\, \period_cnt_int_cry[2]_net_1\, 
        \period_cnt_int_s[2]\, \period_cnt_int_cry[3]_net_1\, 
        \period_cnt_int_s[3]\, \period_cnt_int_cry[4]_net_1\, 
        \period_cnt_int_s[4]\, \period_cnt_int_cry[5]_net_1\, 
        \period_cnt_int_s[5]\, \period_cnt_int_cry[6]_net_1\, 
        \period_cnt_int_s[6]\, \period_cnt_int_s[8]_net_1\, 
        \period_cnt_int_cry[7]_net_1\, \period_cnt_int_s[7]\, 
        N_2006, \N_2065\, \period_cnt_int7_i_o2_1_3\, 
        period_cnt_int7_i_o2_1_15_net_1, 
        period_cnt_int7_i_o2_1_14_net_1, 
        \period_cnt_int7_i_o2_1_13\, \period_cnt_int7_i_o2_1_11\, 
        period_cnt_intlde_i_o2_22, period_cnt_intlde_i_o2_21, 
        period_cnt_intlde_i_o2_20, period_cnt_intlde_i_o2_19, 
        period_cnt_intlde_i_o2_18, period_cnt_intlde_i_o2_17, 
        period_cnt_intlde_i_o2_16, period_cnt_int7_i_o2_3, 
        \period_cnt_int7_i_o2_1_17\, period_cnt_intlde_i_o2_23, 
        N_95, period_cnt_int7_i_o2_1_19_net_1, 
        period_cnt_intlde_i_o2_28, N_1274 : std_logic;

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
    N_2065 <= \N_2065\;
    period_cnt_int7_i_o2_1_15 <= period_cnt_int7_i_o2_1_15_net_1;
    period_cnt_int7_i_o2_1_14 <= period_cnt_int7_i_o2_1_14_net_1;
    period_cnt_int7_i_o2_1_19 <= period_cnt_int7_i_o2_1_19_net_1;

    \period_cnt_int_lm_0[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[5]\, Y => 
        \period_cnt_int_lm[5]\);
    
    \period_cnt_int[2]\ : SLE
      port map(D => \period_cnt_int_lm[2]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[2]\);
    
    \prescale_cnt_RNII3Q11[17]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[17]_net_1\, B => 
        \prescale_cnt[16]_net_1\, C => \prescale_cnt[15]_net_1\, 
        D => \prescale_cnt[14]_net_1\, Y => 
        period_cnt_intlde_i_o2_16);
    
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[20]\);
    
    \prescale_cnt_lm_0[18]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[18]\, Y => 
        \prescale_cnt_lm[18]\);
    
    \period_cnt_int_lm_0[14]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[14]\, Y => 
        \period_cnt_int_lm[14]\);
    
    period_cnt_int7_i_o2 : CFG4
      generic map(INIT => x"FF7F")

      port map(A => \period_cnt[8]\, B => \period_cnt[7]\, C => 
        \period_cnt[6]\, D => period_cnt_int7_i_o2_3, Y => N_95);
    
    \prescale_cnt_lm_0[27]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[27]\, Y => 
        \prescale_cnt_lm[27]\);
    
    \prescale_cnt_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[27]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[26]_net_1\, S => \prescale_cnt_s[27]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[27]_net_1\);
    
    \prescale_cnt_lm_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[3]\, Y => 
        \prescale_cnt_lm[3]\);
    
    \period_cnt_int_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[13]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[12]_net_1\, S => 
        \period_cnt_int_s[13]\, Y => OPEN, FCO => 
        \period_cnt_int_cry[13]_net_1\);
    
    period_cnt_int7_i_a2 : CFG4
      generic map(INIT => x"0002")

      port map(A => N_95, B => period_cnt_int7_i_o2_1_19_net_1, C
         => period_cnt_int7_i_o2_1_15_net_1, D => 
        period_cnt_int7_i_o2_1_14_net_1, Y => N_2006);
    
    \prescale_cnt_lm_0[14]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[14]\, Y => 
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

      port map(A => \N_2065\, B => \prescale_cnt_s[23]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[28]\);
    
    \period_cnt_int[10]\ : SLE
      port map(D => \period_cnt_int_lm[10]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[10]\);
    
    \period_cnt_int_lm_0[28]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[28]\, Y => 
        \period_cnt_int_lm[28]\);
    
    \period_cnt_int_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[7]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[6]_net_1\, S => \period_cnt_int_s[7]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[7]_net_1\);
    
    \period_cnt_int_lm_0[16]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[16]_net_1\, Y
         => \period_cnt_int_lm[16]\);
    
    \prescale_cnt_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[4]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[3]_net_1\, S => \prescale_cnt_s[4]\, Y
         => OPEN, FCO => \prescale_cnt_cry[4]_net_1\);
    
    \period_cnt_int[0]\ : SLE
      port map(D => \period_cnt_int_lm[0]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[18]\);
    
    \period_cnt_int_lm_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[4]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[23]\);
    
    \period_cnt_int_lm_0[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[7]\, Y => 
        \period_cnt_int_lm[7]\);
    
    \period_cnt_int_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[9]\, Y => 
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
    
    \prescale_cnt_RNI93SG8[0]\ : CFG3
      generic map(INIT => x"5C")

      port map(A => N_2006, B => \prescale_cnt[0]_net_1\, C => 
        N_1274, Y => N_1061_i_0);
    
    \period_cnt_int_lm_0[29]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[29]\, Y => 
        \period_cnt_int_lm[29]\);
    
    \period_cnt_int_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[6]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \period_cnt_int_cry[5]_net_1\, S => \period_cnt_int_s[6]\, 
        Y => OPEN, FCO => \period_cnt_int_cry[6]_net_1\);
    
    \period_cnt_int[25]\ : SLE
      port map(D => \period_cnt_int_lm[25]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[25]\);
    
    \prescale_cnt_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[6]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[5]_net_1\, S => \prescale_cnt_s[6]\, Y
         => OPEN, FCO => \prescale_cnt_cry[6]_net_1\);
    
    \period_cnt_int_lm_0[8]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[8]_net_1\, Y
         => \period_cnt_int_lm[8]\);
    
    period_cnt_int7_i_o2_1_13 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[29]\, B => \period_cnt[28]\, C
         => \period_cnt[11]\, D => \period_cnt[10]\, Y => 
        \period_cnt_int7_i_o2_1_13\);
    
    \prescale_cnt_lm_0[28]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[28]\, Y => 
        \prescale_cnt_lm[28]\);
    
    \prescale_cnt_RNIB95R1[10]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[13]_net_1\, B => 
        \prescale_cnt[11]_net_1\, C => \prescale_cnt[10]_net_1\, 
        D => period_cnt_intlde_i_o2_16, Y => 
        period_cnt_intlde_i_o2_23);
    
    \prescale_cnt_RNI69021[2]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[5]_net_1\, B => 
        \prescale_cnt[4]_net_1\, C => \prescale_cnt[3]_net_1\, D
         => \prescale_cnt[2]_net_1\, Y => 
        period_cnt_intlde_i_o2_17);
    
    \period_cnt_int7_i_o2_1_14\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[27]\, B => \period_cnt[26]\, C
         => \period_cnt[13]\, D => \period_cnt[12]\, Y => 
        period_cnt_int7_i_o2_1_14_net_1);
    
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

      port map(A => \N_2065\, B => \prescale_cnt_s[11]\, Y => 
        \prescale_cnt_lm[11]\);
    
    \prescale_cnt_lm_0[24]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[24]_net_1\, Y
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
    
    \prescale_cnt_RNIMP021[9]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[9]_net_1\, B => 
        \prescale_cnt[8]_net_1\, C => \prescale_cnt[7]_net_1\, D
         => \prescale_cnt[6]_net_1\, Y => 
        period_cnt_intlde_i_o2_18);
    
    \prescale_cnt_lm_0[31]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[31]_net_1\, Y
         => \prescale_cnt_lm[31]\);
    
    \prescale_cnt_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[12]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[13]\);
    
    \prescale_cnt[14]\ : SLE
      port map(D => \prescale_cnt_lm[14]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[14]_net_1\);
    
    \period_cnt_int[24]\ : SLE
      port map(D => \period_cnt_int_lm[24]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[24]\);
    
    \prescale_cnt[5]\ : SLE
      port map(D => \prescale_cnt_lm[5]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[5]_net_1\);
    
    \period_cnt_int_lm_0[18]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[18]\, Y => 
        \period_cnt_int_lm[18]\);
    
    period_cnt_int7_i_o2_1_17 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[20]\, B => \period_cnt[21]\, C
         => \period_cnt_int7_i_o2_1_13\, D => 
        \period_cnt_int7_i_o2_1_3\, Y => 
        \period_cnt_int7_i_o2_1_17\);
    
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[15]\);
    
    \prescale_cnt_RNIIC021[30]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[31]_net_1\, B => 
        \prescale_cnt[30]_net_1\, C => \prescale_cnt[20]_net_1\, 
        D => \prescale_cnt[1]_net_1\, Y => 
        period_cnt_intlde_i_o2_20);
    
    \period_cnt_int[22]\ : SLE
      port map(D => \period_cnt_int_lm[22]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[9]\);
    
    \prescale_cnt[29]\ : SLE
      port map(D => \prescale_cnt_lm[29]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[29]_net_1\);
    
    \period_cnt_int_lm_0[22]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[22]\, Y => 
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
    
    \prescale_cnt_RNIK7S11[18]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[24]_net_1\, B => 
        \prescale_cnt[21]_net_1\, C => \prescale_cnt[19]_net_1\, 
        D => \prescale_cnt[18]_net_1\, Y => 
        period_cnt_intlde_i_o2_21);
    
    \period_cnt_int_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[1]\, C => 
        GND_net_1, D => GND_net_1, FCI => 
        period_cnt_int_s_122_FCO, S => \period_cnt_int_s[1]\, Y
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[26]\);
    
    \prescale_cnt_lm_0[19]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[19]\, Y => 
        \prescale_cnt_lm[19]\);
    
    \period_cnt_int[12]\ : SLE
      port map(D => \period_cnt_int_lm[12]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[12]\);
    
    period_cnt_int7_i_o2_1_3 : CFG2
      generic map(INIT => x"E")

      port map(A => \period_cnt[24]\, B => \period_cnt[25]\, Y
         => \period_cnt_int7_i_o2_1_3\);
    
    \period_cnt_int_lm_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[3]\, Y => 
        \period_cnt_int_lm[3]\);
    
    \period_cnt_int_lm_0[23]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[23]\, Y => 
        \period_cnt_int_lm[23]\);
    
    \period_cnt_int_lm_0[19]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[19]\, Y => 
        \period_cnt_int_lm[19]\);
    
    \prescale_cnt_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[10]\, Y => 
        \prescale_cnt_lm[10]\);
    
    \period_cnt_int[1]\ : SLE
      port map(D => \period_cnt_int_lm[1]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[1]\);
    
    \prescale_cnt_lm_0[30]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[30]\, Y => 
        \prescale_cnt_lm[30]\);
    
    \period_cnt_int_lm_0[25]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[25]\, Y => 
        \period_cnt_int_lm[25]\);
    
    \period_cnt_int_lm_0[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => N_2006, B => \period_cnt[0]\, Y => 
        \period_cnt_int_lm[0]\);
    
    \prescale_cnt_lm_0[21]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[21]\, Y => 
        \prescale_cnt_lm[21]\);
    
    \prescale_cnt_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[29]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[28]_net_1\, S => \prescale_cnt_s[29]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[29]_net_1\);
    
    \period_cnt_int_lm_0[20]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[20]\, Y => 
        \period_cnt_int_lm[20]\);
    
    \prescale_cnt_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[2]\, Y => 
        \prescale_cnt_lm[2]\);
    
    \prescale_cnt[9]\ : SLE
      port map(D => \prescale_cnt_lm[9]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[9]_net_1\);
    
    \period_cnt_int[3]\ : SLE
      port map(D => \period_cnt_int_lm[3]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[16]\);
    
    \period_cnt_int[31]\ : SLE
      port map(D => \period_cnt_int_lm[31]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[31]\);
    
    \prescale_cnt_lm_0[22]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[22]\, Y => 
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
    
    \prescale_cnt_RNIUJU11[26]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[29]_net_1\, B => 
        \prescale_cnt[28]_net_1\, C => \prescale_cnt[27]_net_1\, 
        D => \prescale_cnt[26]_net_1\, Y => 
        period_cnt_intlde_i_o2_19);
    
    \prescale_cnt_lm_0[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[7]\, Y => 
        \prescale_cnt_lm[7]\);
    
    \period_cnt_int_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[12]\, Y => 
        \period_cnt_int_lm[12]\);
    
    \period_cnt_int_cry_5[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[12]\, B => \period_cnt[9]\, C => 
        \period_cnt[10]\, D => \period_cnt[11]\, FCI => 
        \period_cnt_int_cry_3_FCO[30]\, S => OPEN, Y => OPEN, FCO
         => \period_cnt_int_cry_5_FCO[30]\);
    
    \prescale_cnt_lm_0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[1]\, Y => 
        \prescale_cnt_lm[1]\);
    
    \prescale_cnt_lm_0[15]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[15]\, Y => 
        \prescale_cnt_lm[15]\);
    
    \period_cnt_int_lm_0[27]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[27]\, Y => 
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

      port map(A => \N_2065\, B => \prescale_cnt[0]_net_1\, Y => 
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
    
    \period_cnt_int_lm_0[21]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[21]\, Y => 
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
    
    \period_cnt_int_lm_0[13]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[13]\, Y => 
        \period_cnt_int_lm[13]\);
    
    \period_cnt_int[5]\ : SLE
      port map(D => \period_cnt_int_lm[5]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
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

      port map(A => \N_2065\, B => \prescale_cnt_s[29]\, Y => 
        \prescale_cnt_lm[29]\);
    
    \prescale_cnt_lm_0[20]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[20]\, Y => 
        \prescale_cnt_lm[20]\);
    
    \prescale_cnt[21]\ : SLE
      port map(D => \prescale_cnt_lm[21]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[21]_net_1\);
    
    \period_cnt_int_lm_0[15]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[15]\, Y => 
        \period_cnt_int_lm[15]\);
    
    \period_cnt_int[30]\ : SLE
      port map(D => \period_cnt_int_lm[30]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[30]\);
    
    \prescale_cnt_lm_0[16]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[16]_net_1\, Y
         => \prescale_cnt_lm[16]\);
    
    period_cnt_int7_i_o2_3_0 : CFG4
      generic map(INIT => x"777F")

      port map(A => \period_cnt[9]\, B => \period_cnt[5]\, C => 
        \period_cnt[4]\, D => \period_cnt[3]\, Y => 
        period_cnt_int7_i_o2_3);
    
    \prescale_cnt_lm_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[4]\, Y => 
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
    
    \period_cnt_int_lm_0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[1]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[4]\);
    
    \period_cnt_int[8]\ : SLE
      port map(D => \period_cnt_int_lm[8]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[8]\);
    
    \period_cnt_int[6]\ : SLE
      port map(D => \period_cnt_int_lm[6]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[6]\);
    
    \prescale_cnt_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[1]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        prescale_cnt_s_121_FCO, S => \prescale_cnt_s[1]\, Y => 
        OPEN, FCO => \prescale_cnt_cry[1]_net_1\);
    
    \period_cnt_int_lm_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[6]\, Y => 
        \period_cnt_int_lm[6]\);
    
    \period_cnt_int_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[10]\, Y => 
        \period_cnt_int_lm[10]\);
    
    \prescale_cnt_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[9]\, Y => 
        \prescale_cnt_lm[9]\);
    
    \prescale_cnt_s[31]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[31]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[30]_net_1\, S => 
        \prescale_cnt_s[31]_net_1\, Y => OPEN, FCO => OPEN);
    
    prescale_cnt_s_121 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[0]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => 
        OPEN, Y => OPEN, FCO => prescale_cnt_s_121_FCO);
    
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
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[6]\, Y => 
        \prescale_cnt_lm[6]\);
    
    \period_cnt_int[27]\ : SLE
      port map(D => \period_cnt_int_lm[27]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[27]\);
    
    \period_cnt_int_lm_0[17]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[17]\, Y => 
        \period_cnt_int_lm[17]\);
    
    \period_cnt_int[29]\ : SLE
      port map(D => \period_cnt_int_lm[29]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[29]\);
    
    \prescale_cnt_lm_0[25]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[25]\, Y => 
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
    
    \period_cnt_int_lm_0[11]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[11]\, Y => 
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
    
    \period_cnt_int_lm_0[30]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[30]\, Y => 
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
        period_cnt_intlde_i_o2_17, C => period_cnt_intlde_i_o2_28, 
        D => period_cnt_intlde_i_o2_23, Y => N_1274);
    
    period_cnt_int_s_122 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \period_cnt[0]\, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => period_cnt_int_s_122_FCO);
    
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[17]\);
    
    \prescale_cnt_lm_0[17]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[17]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[19]\);
    
    \prescale_cnt_cry_1[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \prescale_cnt[4]_net_1\, B => 
        \prescale_cnt[1]_net_1\, C => \prescale_cnt[2]_net_1\, D
         => \prescale_cnt[3]_net_1\, FCI => 
        \prescale_cnt[0]_net_1\, S => OPEN, Y => OPEN, FCO => 
        \prescale_cnt_cry_1_FCO[30]\);
    
    \period_cnt_int_lm_0[24]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[24]_net_1\, Y
         => \period_cnt_int_lm[24]\);
    
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

      port map(A => \N_2065\, B => \prescale_cnt_s[8]_net_1\, Y
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

      port map(A => \N_2065\, B => \prescale_cnt_s[5]\, Y => 
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

      port map(A => \N_2065\, B => \prescale_cnt_s[26]\, Y => 
        \prescale_cnt_lm[26]\);
    
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
    
    \period_cnt_int7_i_o2_1_15\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[31]\, B => \period_cnt[30]\, C
         => \period_cnt[17]\, D => \period_cnt[16]\, Y => 
        period_cnt_int7_i_o2_1_15_net_1);
    
    \prescale_cnt_lm_0[13]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \N_2065\, B => \prescale_cnt_s[13]\, Y => 
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
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[21]\);
    
    period_cnt_int7_i_o2_1_11 : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[23]\, B => \period_cnt[22]\, C
         => \period_cnt[15]\, D => \period_cnt[14]\, Y => 
        \period_cnt_int7_i_o2_1_11\);
    
    \prescale_cnt_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \prescale_cnt[28]_net_1\, C
         => GND_net_1, D => GND_net_1, FCI => 
        \prescale_cnt_cry[27]_net_1\, S => \prescale_cnt_s[28]\, 
        Y => OPEN, FCO => \prescale_cnt_cry[28]_net_1\);
    
    \period_cnt_int_lm_0[31]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[31]_net_1\, Y
         => \period_cnt_int_lm[31]\);
    
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
    
    \prescale_cnt_RNIF7O74[18]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => period_cnt_intlde_i_o2_21, B => 
        period_cnt_intlde_i_o2_19, C => period_cnt_intlde_i_o2_20, 
        D => period_cnt_intlde_i_o2_22, Y => 
        period_cnt_intlde_i_o2_28);
    
    \prescale_cnt[10]\ : SLE
      port map(D => \prescale_cnt_lm[10]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[10]_net_1\);
    
    \period_cnt_int_lm_0[26]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[26]\, Y => 
        \period_cnt_int_lm[26]\);
    
    \prescale_cnt_RNICIEF8[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => N_1274, B => \prescale_cnt[0]_net_1\, Y => 
        \N_2065\);
    
    \period_cnt_int_cry_7_0[30]\ : ARI1
      generic map(INIT => x"48000")

      port map(A => \period_cnt[16]\, B => \period_cnt[13]\, C
         => \period_cnt[14]\, D => \period_cnt[15]\, FCI => 
        \period_cnt_int_cry_5_0_FCO[30]\, S => OPEN, Y => OPEN, 
        FCO => \period_cnt_int_cry_7_0_FCO[30]\);
    
    \period_cnt_int7_i_o2_1_19\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \period_cnt[18]\, B => \period_cnt[19]\, C
         => \period_cnt_int7_i_o2_1_17\, D => 
        \period_cnt_int7_i_o2_1_11\, Y => 
        period_cnt_int7_i_o2_1_19_net_1);
    
    \period_cnt_int_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_2006, B => \period_cnt_int_s[2]\, Y => 
        \period_cnt_int_lm[2]\);
    
    \prescale_cnt[23]\ : SLE
      port map(D => \prescale_cnt_lm[23]\, CLK => FAB_CCC_GL0, EN
         => VCC_net_1, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \prescale_cnt[23]_net_1\);
    
    \period_cnt_int[7]\ : SLE
      port map(D => \period_cnt_int_lm[7]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[7]\);
    
    \period_cnt_int[11]\ : SLE
      port map(D => \period_cnt_int_lm[11]\, CLK => FAB_CCC_GL0, 
        EN => N_1061_i_0, ALn => MSS_READY, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \period_cnt[11]\);
    
    \prescale_cnt_RNIBVS11[25]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \prescale_cnt[25]_net_1\, B => 
        \prescale_cnt[23]_net_1\, C => \prescale_cnt[22]_net_1\, 
        D => \prescale_cnt[12]_net_1\, Y => 
        period_cnt_intlde_i_o2_22);
    
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
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12);
          PRDATA_3_0_a2_4_4_1                         : in    std_logic_vector(0 to 0);
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0);
          MSS_READY                                   : in    std_logic;
          FAB_CCC_GL0                                 : in    std_logic;
          N_2330                                      : in    std_logic;
          N_1140                                      : in    std_logic;
          sync_update                                 : out   std_logic;
          N_2018                                      : in    std_logic;
          N_1975                                      : in    std_logic;
          N_2038                                      : in    std_logic;
          N_1135                                      : in    std_logic;
          N_1120                                      : in    std_logic;
          PRDATA_m3_e_1_2                             : in    std_logic;
          PRDATA_m3_e_1_3                             : in    std_logic;
          PRDATA_0_0_a2_5_out                         : in    std_logic;
          PRDATA_m1_e_1                               : in    std_logic;
          PRDATA_0_0_a2_4_out                         : in    std_logic;
          PRDATA_m1_0_a2_6_0                          : in    std_logic;
          N_2019                                      : in    std_logic;
          pwm_out_4_c                                 : out   std_logic;
          pwm_out_3_c                                 : out   std_logic;
          pwm_out_2_c                                 : out   std_logic;
          pwm_out_1_c                                 : out   std_logic
        );

end corepwm;

architecture DEF_ARCH of corepwm is 

  component pwm_gen
    port( period_cnt                : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg           : in    std_logic_vector(128 downto 1) := (others => 'U');
          pwm_enable_reg            : in    std_logic_vector(4 downto 1) := (others => 'U');
          pwm_out_4_c               : out   std_logic;
          MSS_READY                 : in    std_logic := 'U';
          FAB_CCC_GL0               : in    std_logic := 'U';
          pwm_out_3_c               : out   std_logic;
          pwm_out_2_c               : out   std_logic;
          pwm_out_1_c               : out   std_logic;
          period_cnt_int7_i_o2_1_15 : in    std_logic := 'U';
          period_cnt_int7_i_o2_1_14 : in    std_logic := 'U';
          period_cnt_int7_i_o2_1_19 : in    std_logic := 'U';
          N_2065                    : in    std_logic := 'U'
        );
  end component;

  component reg_if
    port( CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          PRDATA_3_0_a2_4_4_1                         : in    std_logic_vector(0 to 0) := (others => 'U');
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          sync_update                                 : out   std_logic;
          N_1140                                      : in    std_logic := 'U';
          N_2018                                      : in    std_logic := 'U';
          N_1975                                      : in    std_logic := 'U';
          N_2038                                      : in    std_logic := 'U';
          N_1135                                      : in    std_logic := 'U';
          N_1120                                      : in    std_logic := 'U';
          PRDATA_m3_e_1_2                             : in    std_logic := 'U';
          PRDATA_m3_e_1_3                             : in    std_logic := 'U';
          PRDATA_0_0_a2_5_out                         : in    std_logic := 'U';
          PRDATA_m1_e_1                               : in    std_logic := 'U';
          PRDATA_0_0_a2_4_out                         : in    std_logic := 'U';
          PRDATA_m1_0_a2_6_0                          : in    std_logic := 'U';
          N_2019                                      : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
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

  component timebase
    port( period_cnt                : out   std_logic_vector(31 downto 0);
          MSS_READY                 : in    std_logic := 'U';
          FAB_CCC_GL0               : in    std_logic := 'U';
          N_2065                    : out   std_logic;
          period_cnt_int7_i_o2_1_15 : out   std_logic;
          period_cnt_int7_i_o2_1_14 : out   std_logic;
          period_cnt_int7_i_o2_1_19 : out   std_logic
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
        \period_cnt[31]\, N_2065, period_cnt_int7_i_o2_1_15, 
        period_cnt_int7_i_o2_1_14, period_cnt_int7_i_o2_1_19
         : std_logic;

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
        pwm_out_1_c => pwm_out_1_c, period_cnt_int7_i_o2_1_15 => 
        period_cnt_int7_i_o2_1_15, period_cnt_int7_i_o2_1_14 => 
        period_cnt_int7_i_o2_1_14, period_cnt_int7_i_o2_1_19 => 
        period_cnt_int7_i_o2_1_19, N_2065 => N_2065);
    
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
        \pwm_enable_reg[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13), 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12), 
        PRDATA_3_0_a2_4_4_1(0) => PRDATA_3_0_a2_4_4_1(0), 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0) => 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0), MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, sync_update => sync_update, 
        N_1140 => N_1140, N_2018 => N_2018, N_1975 => N_1975, 
        N_2038 => N_2038, N_1135 => N_1135, N_1120 => N_1120, 
        PRDATA_m3_e_1_2 => PRDATA_m3_e_1_2, PRDATA_m3_e_1_3 => 
        PRDATA_m3_e_1_3, PRDATA_0_0_a2_5_out => 
        PRDATA_0_0_a2_5_out, PRDATA_m1_e_1 => PRDATA_m1_e_1, 
        PRDATA_0_0_a2_4_out => PRDATA_0_0_a2_4_out, 
        PRDATA_m1_0_a2_6_0 => PRDATA_m1_0_a2_6_0, N_2019 => 
        N_2019);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \PWM_STRETCH[3]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(3), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(3));
    
    PWM_STRETCH_0_sqmuxa_0_a2_0_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => N_2330, B => N_1140, Y => 
        PWM_STRETCH_0_sqmuxa);
    
    \PWM_STRETCH[2]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(2), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(2));
    
    \PWM_STRETCH[1]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(1), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(1));
    
    \PWM_STRETCH[0]\ : SLE
      port map(D => CoreAPB3_0_APBmslave0_PWDATA(0), CLK => 
        FAB_CCC_GL0, EN => PWM_STRETCH_0_sqmuxa, ALn => MSS_READY, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => PWM_STRETCH(0));
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
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
        FAB_CCC_GL0, N_2065 => N_2065, period_cnt_int7_i_o2_1_15
         => period_cnt_int7_i_o2_1_15, period_cnt_int7_i_o2_1_14
         => period_cnt_int7_i_o2_1_14, period_cnt_int7_i_o2_1_19
         => period_cnt_int7_i_o2_1_19);
    

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
        GND_net_1, F2H_INTERRUPT(2) => 
        CoreUARTapb_1_0_intr_or_2_Y, F2H_INTERRUPT(1) => 
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
    port( PSELSBUS_0_a2_0_0                            : out   std_logic_vector(1 to 1);
          nxtprdata_xhdl7_1_6_0_a2_16_0                : out   std_logic_vector(0 to 0);
          PRDATA_3_0_a2_12_0                           : out   std_logic_vector(0 to 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR  : in    std_logic_vector(15 downto 12) := (others => 'U');
          PRDATA_3_0_a2_4_4_1                          : out   std_logic_vector(0 to 0);
          CoreAPB3_0_APBmslave0_PADDR                  : in    std_logic_vector(8 downto 0) := (others => 'U');
          PRDATA_3_0_a2_7_0                            : out   std_logic_vector(6 to 6);
          COREI2C_0_0_INT                              : in    std_logic_vector(0 to 0) := (others => 'U');
          CoreAPB3_0_APBmslave1_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          serdat                                       : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave2_PRDATA                 : in    std_logic_vector(7 downto 0) := (others => 'U');
          pwm_enable_reg                               : in    std_logic_vector(4 downto 1) := (others => 'U');
          sersta                                       : in    std_logic_vector(4 downto 0) := (others => 'U');
          PWM_STRETCH                                  : in    std_logic_vector(3 downto 0) := (others => 'U');
          pwm_negedge_reg                              : in    std_logic_vector(128 downto 1) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA : out   std_logic_vector(31 downto 0);
          sercon_7                                     : in    std_logic := 'U';
          sercon_6                                     : in    std_logic := 'U';
          sercon_5                                     : in    std_logic := 'U';
          sercon_1                                     : in    std_logic := 'U';
          sercon_0                                     : in    std_logic := 'U';
          sercon_4                                     : in    std_logic := 'U';
          sercon_2                                     : in    std_logic := 'U';
          N_2036                                       : out   std_logic;
          N_2014                                       : out   std_logic;
          N_1134                                       : out   std_logic;
          PRDATA_m1_e_1                                : out   std_logic;
          PRDATA_0_0_a2_5_out                          : out   std_logic;
          PRDATA_3_0_o2_2_out                          : out   std_logic;
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx  : in    std_logic := 'U';
          N_1124                                       : out   std_logic;
          PRDATA_m1_0_a2_6_0                           : out   std_logic;
          sync_update                                  : in    std_logic := 'U';
          PRDATA_m3_e_1_2                              : out   std_logic;
          N_2018                                       : out   std_logic;
          N_1975                                       : out   std_logic;
          PRDATA_0_0_a2_4_out                          : out   std_logic;
          N_2038                                       : out   std_logic;
          N_1131                                       : in    std_logic := 'U';
          PRDATA_m3_e_1_3                              : out   std_logic;
          N_1120                                       : out   std_logic;
          N_1138                                       : out   std_logic;
          N_1135                                       : in    std_logic := 'U';
          PRDATA_N_3_mux_10                            : out   std_logic;
          N_2037                                       : in    std_logic := 'U';
          N_2034                                       : in    std_logic := 'U';
          N_2330                                       : out   std_logic;
          N_2019                                       : out   std_logic;
          N_2039                                       : in    std_logic := 'U'
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
    port( COREI2C_0_0_SDAO_i                          : out   std_logic_vector(0 to 0);
          COREI2C_0_0_SCLO_i                          : out   std_logic_vector(0 to 0);
          serdat                                      : out   std_logic_vector(7 downto 0);
          COREI2C_0_0_INT                             : out   std_logic_vector(0 to 0);
          sersta                                      : out   std_logic_vector(4 downto 0);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          PRDATA_3_0_a2_7_0                           : in    std_logic_vector(6 to 6) := (others => 'U');
          sercon_6                                    : out   std_logic;
          sercon_0                                    : out   std_logic;
          sercon_1                                    : out   std_logic;
          sercon_2                                    : out   std_logic;
          sercon_4                                    : out   std_logic;
          sercon_5                                    : out   std_logic;
          sercon_7                                    : out   std_logic;
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_1131                                      : out   std_logic;
          BIBUF_COREI2C_0_0_SCL_IO_Y                  : in    std_logic := 'U';
          BIBUF_COREI2C_0_0_SDA_IO_Y                  : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          N_1140                                      : out   std_logic;
          N_1135                                      : out   std_logic;
          N_1124                                      : in    std_logic := 'U';
          N_1138                                      : in    std_logic := 'U';
          PRDATA_m1_e_1                               : in    std_logic := 'U';
          PRDATA_3_0_o2_2_out                         : in    std_logic := 'U';
          N_1975                                      : in    std_logic := 'U';
          N_2037                                      : in    std_logic := 'U';
          N_2039                                      : out   std_logic;
          PRDATA_N_3_mux_10                           : in    std_logic := 'U';
          N_1134                                      : in    std_logic := 'U'
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
    port( CoreAPB3_0_APBmslave1_PRDATA                : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR                 : in    std_logic_vector(4 downto 2) := (others => 'U');
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          PSELSBUS_0_a2_0_0                           : in    std_logic_vector(1 to 1) := (others => 'U');
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(14 to 14) := (others => 'U');
          PRDATA_3_0_a2_12_0                          : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_2031                                      : out   std_logic;
          N_2034                                      : out   std_logic;
          CoreAPB3_0_APBmslave0_PWRITE                : in    std_logic := 'U';
          CoreAPB3_0_APBmslave0_PENABLE               : in    std_logic := 'U';
          un1_nxtprdata_xhdl722_i_a2_0_a2_0           : out   std_logic;
          N_2043                                      : out   std_logic;
          CoreUARTapb_0_0_TXRDY                       : out   std_logic;
          CoreUARTapb_0_0_RXRDY                       : out   std_logic;
          CoreUARTapb_0_0_OVERFLOW                    : out   std_logic;
          CoreUARTapb_0_0_FRAMING_ERR                 : out   std_logic;
          N_1135                                      : in    std_logic := 'U';
          N_2018                                      : in    std_logic := 'U';
          N_1140                                      : in    std_logic := 'U';
          N_1975                                      : in    std_logic := 'U';
          un13_psel_1                                 : in    std_logic := 'U';
          N_2014                                      : in    std_logic := 'U';
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0       : out   std_logic;
          N_2037                                      : in    std_logic := 'U';
          TX_c                                        : out   std_logic;
          RX_c                                        : in    std_logic := 'U'
        );
  end component;

  component mss_top_sb_CoreUARTapb_1_0_CoreUARTapb
    port( CoreAPB3_0_APBmslave2_PRDATA          : out   std_logic_vector(7 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA          : in    std_logic_vector(7 downto 0) := (others => 'U');
          CoreAPB3_0_APBmslave0_PADDR           : in    std_logic_vector(4 downto 2) := (others => 'U');
          MSS_READY                             : in    std_logic := 'U';
          FAB_CCC_GL0                           : in    std_logic := 'U';
          N_1124                                : in    std_logic := 'U';
          un13_psel_1                           : out   std_logic;
          CoreUARTapb_1_0_RXRDY                 : out   std_logic;
          N_2031                                : in    std_logic := 'U';
          N_2034                                : in    std_logic := 'U';
          CoreUARTapb_1_0_TXRDY                 : out   std_logic;
          CoreUARTapb_1_0_FRAMING_ERR           : out   std_logic;
          CoreUARTapb_1_0_OVERFLOW              : out   std_logic;
          N_2018                                : in    std_logic := 'U';
          N_1135                                : in    std_logic := 'U';
          N_2043                                : in    std_logic := 'U';
          N_2036                                : in    std_logic := 'U';
          un1_nxtprdata_xhdl722_i_a2_0_a2_0_0   : in    std_logic := 'U';
          N_1140                                : in    std_logic := 'U';
          N_2037                                : out   std_logic;
          rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 : in    std_logic := 'U';
          TX2_c                                 : out   std_logic;
          RX2_c                                 : in    std_logic := 'U'
        );
  end component;

  component corepwm
    port( PWM_STRETCH                                 : out   std_logic_vector(3 downto 0);
          CoreAPB3_0_APBmslave0_PWDATA                : in    std_logic_vector(31 downto 0) := (others => 'U');
          pwm_negedge_reg                             : out   std_logic_vector(128 downto 1);
          pwm_enable_reg                              : out   std_logic_vector(4 downto 1);
          mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR : in    std_logic_vector(13 downto 12) := (others => 'U');
          PRDATA_3_0_a2_4_4_1                         : in    std_logic_vector(0 to 0) := (others => 'U');
          nxtprdata_xhdl7_1_6_0_a2_16_0               : in    std_logic_vector(0 to 0) := (others => 'U');
          MSS_READY                                   : in    std_logic := 'U';
          FAB_CCC_GL0                                 : in    std_logic := 'U';
          N_2330                                      : in    std_logic := 'U';
          N_1140                                      : in    std_logic := 'U';
          sync_update                                 : out   std_logic;
          N_2018                                      : in    std_logic := 'U';
          N_1975                                      : in    std_logic := 'U';
          N_2038                                      : in    std_logic := 'U';
          N_1135                                      : in    std_logic := 'U';
          N_1120                                      : in    std_logic := 'U';
          PRDATA_m3_e_1_2                             : in    std_logic := 'U';
          PRDATA_m3_e_1_3                             : in    std_logic := 'U';
          PRDATA_0_0_a2_5_out                         : in    std_logic := 'U';
          PRDATA_m1_e_1                               : in    std_logic := 'U';
          PRDATA_0_0_a2_4_out                         : in    std_logic := 'U';
          PRDATA_m1_0_a2_6_0                          : in    std_logic := 'U';
          N_2019                                      : in    std_logic := 'U';
          pwm_out_4_c                                 : out   std_logic;
          pwm_out_3_c                                 : out   std_logic;
          pwm_out_2_c                                 : out   std_logic;
          pwm_out_1_c                                 : out   std_logic
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
        \PSELSBUS_0_a2_0_0[1]\, 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, 
        \PRDATA_3_0_a2_12_0[0]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        \PRDATA_3_0_a2_4_4_1[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[0]\, 
        \CoreAPB3_0_APBmslave0_PADDR[1]\, 
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        \CoreAPB3_0_APBmslave0_PADDR[3]\, 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
        \CoreAPB3_0_APBmslave0_PADDR[5]\, 
        \CoreAPB3_0_APBmslave0_PADDR[6]\, 
        \CoreAPB3_0_APBmslave0_PADDR[7]\, 
        \CoreAPB3_0_APBmslave0_PADDR[8]\, \PRDATA_3_0_a2_7_0[6]\, 
        \COREI2C_0_0_INT[0]\, \CoreAPB3_0_APBmslave1_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave1_PRDATA[7]\, \serdat[0]\, 
        \serdat[1]\, \serdat[2]\, \serdat[3]\, \serdat[4]\, 
        \serdat[5]\, \serdat[6]\, \serdat[7]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[0]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[1]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[2]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[3]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[4]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[5]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[6]\, 
        \CoreAPB3_0_APBmslave2_PRDATA[7]\, \pwm_enable_reg[1]\, 
        \pwm_enable_reg[2]\, \pwm_enable_reg[3]\, 
        \pwm_enable_reg[4]\, \sersta[0]\, \sersta[1]\, 
        \sersta[2]\, \sersta[3]\, \sersta[4]\, \PWM_STRETCH[0]\, 
        \PWM_STRETCH[1]\, \PWM_STRETCH[2]\, \PWM_STRETCH[3]\, 
        \sercon[7]\, \sercon[6]\, \sercon[5]\, \sercon[1]\, 
        \sercon[0]\, \sercon[4]\, \sercon[2]\, 
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
        N_2036, N_2014, N_1134, PRDATA_m1_e_1, 
        PRDATA_0_0_a2_5_out, PRDATA_3_0_o2_2_out, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_1124, 
        PRDATA_m1_0_a2_6_0, sync_update, PRDATA_m3_e_1_2, N_2018, 
        N_1975, PRDATA_0_0_a2_4_out, N_2038, N_1131, 
        PRDATA_m3_e_1_3, N_1120, N_1138, N_1135, 
        PRDATA_N_3_mux_10, N_2037, N_2034, N_2330, N_2019, N_2039, 
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[1]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[2]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[3]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[4]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[5]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[6]\, 
        \CoreAPB3_0_APBmslave0_PWDATA[7]\, MSS_READY, 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE, N_1140, 
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
        mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F, 
        mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N, N_2031, 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0, N_2043, un13_psel_1, 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0, VCC_net_1
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
      port map(PSELSBUS_0_a2_0_0(1) => \PSELSBUS_0_a2_0_0[1]\, 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0) => 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, PRDATA_3_0_a2_12_0(0)
         => \PRDATA_3_0_a2_12_0[0]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(15) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[15]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        PRDATA_3_0_a2_4_4_1(0) => \PRDATA_3_0_a2_4_4_1[0]\, 
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
        \CoreAPB3_0_APBmslave0_PADDR[0]\, PRDATA_3_0_a2_7_0(6)
         => \PRDATA_3_0_a2_7_0[6]\, COREI2C_0_0_INT(0) => 
        \COREI2C_0_0_INT[0]\, CoreAPB3_0_APBmslave1_PRDATA(7) => 
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
        \CoreAPB3_0_APBmslave1_PRDATA[0]\, serdat(7) => 
        \serdat[7]\, serdat(6) => \serdat[6]\, serdat(5) => 
        \serdat[5]\, serdat(4) => \serdat[4]\, serdat(3) => 
        \serdat[3]\, serdat(2) => \serdat[2]\, serdat(1) => 
        \serdat[1]\, serdat(0) => \serdat[0]\, 
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
        \CoreAPB3_0_APBmslave2_PRDATA[0]\, pwm_enable_reg(4) => 
        \pwm_enable_reg[4]\, pwm_enable_reg(3) => 
        \pwm_enable_reg[3]\, pwm_enable_reg(2) => 
        \pwm_enable_reg[2]\, pwm_enable_reg(1) => 
        \pwm_enable_reg[1]\, sersta(4) => \sersta[4]\, sersta(3)
         => \sersta[3]\, sersta(2) => \sersta[2]\, sersta(1) => 
        \sersta[1]\, sersta(0) => \sersta[0]\, PWM_STRETCH(3) => 
        \PWM_STRETCH[3]\, PWM_STRETCH(2) => \PWM_STRETCH[2]\, 
        PWM_STRETCH(1) => \PWM_STRETCH[1]\, PWM_STRETCH(0) => 
        \PWM_STRETCH[0]\, pwm_negedge_reg(128) => 
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
        \pwm_negedge_reg[1]\, 
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
        sercon_7 => \sercon[7]\, sercon_6 => \sercon[6]\, 
        sercon_5 => \sercon[5]\, sercon_1 => \sercon[1]\, 
        sercon_0 => \sercon[0]\, sercon_4 => \sercon[4]\, 
        sercon_2 => \sercon[2]\, N_2036 => N_2036, N_2014 => 
        N_2014, N_1134 => N_1134, PRDATA_m1_e_1 => PRDATA_m1_e_1, 
        PRDATA_0_0_a2_5_out => PRDATA_0_0_a2_5_out, 
        PRDATA_3_0_o2_2_out => PRDATA_3_0_o2_2_out, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx => 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx, N_1124 => 
        N_1124, PRDATA_m1_0_a2_6_0 => PRDATA_m1_0_a2_6_0, 
        sync_update => sync_update, PRDATA_m3_e_1_2 => 
        PRDATA_m3_e_1_2, N_2018 => N_2018, N_1975 => N_1975, 
        PRDATA_0_0_a2_4_out => PRDATA_0_0_a2_4_out, N_2038 => 
        N_2038, N_1131 => N_1131, PRDATA_m3_e_1_3 => 
        PRDATA_m3_e_1_3, N_1120 => N_1120, N_1138 => N_1138, 
        N_1135 => N_1135, PRDATA_N_3_mux_10 => PRDATA_N_3_mux_10, 
        N_2037 => N_2037, N_2034 => N_2034, N_2330 => N_2330, 
        N_2019 => N_2019, N_2039 => N_2039);
    
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
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        CoreAPB3_0_APBmslave0_PADDR(4) => 
        \CoreAPB3_0_APBmslave0_PADDR[4]\, 
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
        \CoreAPB3_0_APBmslave0_PWDATA[0]\, PRDATA_3_0_a2_7_0(6)
         => \PRDATA_3_0_a2_7_0[6]\, sercon_6 => \sercon[6]\, 
        sercon_0 => \sercon[0]\, sercon_1 => \sercon[1]\, 
        sercon_2 => \sercon[2]\, sercon_4 => \sercon[4]\, 
        sercon_5 => \sercon[5]\, sercon_7 => \sercon[7]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        N_1131 => N_1131, BIBUF_COREI2C_0_0_SCL_IO_Y => 
        BIBUF_COREI2C_0_0_SCL_IO_Y, BIBUF_COREI2C_0_0_SDA_IO_Y
         => BIBUF_COREI2C_0_0_SDA_IO_Y, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, N_1140 => N_1140, N_1135
         => N_1135, N_1124 => N_1124, N_1138 => N_1138, 
        PRDATA_m1_e_1 => PRDATA_m1_e_1, PRDATA_3_0_o2_2_out => 
        PRDATA_3_0_o2_2_out, N_1975 => N_1975, N_2037 => N_2037, 
        N_2039 => N_2039, PRDATA_N_3_mux_10 => PRDATA_N_3_mux_10, 
        N_1134 => N_1134);
    
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
        \CoreAPB3_0_APBmslave0_PADDR[2]\, 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0) => 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, PSELSBUS_0_a2_0_0(1)
         => \PSELSBUS_0_a2_0_0[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(14) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[14]\, 
        PRDATA_3_0_a2_12_0(0) => \PRDATA_3_0_a2_12_0[0]\, 
        MSS_READY => MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, 
        N_2031 => N_2031, N_2034 => N_2034, 
        CoreAPB3_0_APBmslave0_PWRITE => 
        CoreAPB3_0_APBmslave0_PWRITE, 
        CoreAPB3_0_APBmslave0_PENABLE => 
        CoreAPB3_0_APBmslave0_PENABLE, 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0 => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0, N_2043 => N_2043, 
        CoreUARTapb_0_0_TXRDY => CoreUARTapb_0_0_TXRDY, 
        CoreUARTapb_0_0_RXRDY => CoreUARTapb_0_0_RXRDY, 
        CoreUARTapb_0_0_OVERFLOW => CoreUARTapb_0_0_OVERFLOW, 
        CoreUARTapb_0_0_FRAMING_ERR => 
        CoreUARTapb_0_0_FRAMING_ERR, N_1135 => N_1135, N_2018 => 
        N_2018, N_1140 => N_1140, N_1975 => N_1975, un13_psel_1
         => un13_psel_1, N_2014 => N_2014, 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0 => 
        rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0, N_2037 => N_2037, 
        TX_c => TX_c, RX_c => RX_c);
    
    CoreUARTapb_0_0_intr_or_1 : OR3
      port map(A => CoreUARTapb_0_0_RXRDY, B => 
        CoreUARTapb_0_0_TXRDY, C => GND_net_1, Y => 
        CoreUARTapb_0_0_intr_or_1_Y);
    
    CoreUARTapb_1_0 : mss_top_sb_CoreUARTapb_1_0_CoreUARTapb
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
        \CoreAPB3_0_APBmslave0_PADDR[2]\, MSS_READY => MSS_READY, 
        FAB_CCC_GL0 => FAB_CCC_GL0, N_1124 => N_1124, un13_psel_1
         => un13_psel_1, CoreUARTapb_1_0_RXRDY => 
        CoreUARTapb_1_0_RXRDY, N_2031 => N_2031, N_2034 => N_2034, 
        CoreUARTapb_1_0_TXRDY => CoreUARTapb_1_0_TXRDY, 
        CoreUARTapb_1_0_FRAMING_ERR => 
        CoreUARTapb_1_0_FRAMING_ERR, CoreUARTapb_1_0_OVERFLOW => 
        CoreUARTapb_1_0_OVERFLOW, N_2018 => N_2018, N_1135 => 
        N_1135, N_2043 => N_2043, N_2036 => N_2036, 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0_0 => 
        un1_nxtprdata_xhdl722_i_a2_0_a2_0, N_1140 => N_1140, 
        N_2037 => N_2037, rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0
         => rx_dout_reg_empty_1_sqmuxa_i_0_0_a2_0, TX2_c => TX2_c, 
        RX2_c => RX2_c);
    
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
        \pwm_enable_reg[1]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(13) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[13]\, 
        mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR(12) => 
        \mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR[12]\, 
        PRDATA_3_0_a2_4_4_1(0) => \PRDATA_3_0_a2_4_4_1[0]\, 
        nxtprdata_xhdl7_1_6_0_a2_16_0(0) => 
        \nxtprdata_xhdl7_1_6_0_a2_16_0[0]\, MSS_READY => 
        MSS_READY, FAB_CCC_GL0 => FAB_CCC_GL0, N_2330 => N_2330, 
        N_1140 => N_1140, sync_update => sync_update, N_2018 => 
        N_2018, N_1975 => N_1975, N_2038 => N_2038, N_1135 => 
        N_1135, N_1120 => N_1120, PRDATA_m3_e_1_2 => 
        PRDATA_m3_e_1_2, PRDATA_m3_e_1_3 => PRDATA_m3_e_1_3, 
        PRDATA_0_0_a2_5_out => PRDATA_0_0_a2_5_out, PRDATA_m1_e_1
         => PRDATA_m1_e_1, PRDATA_0_0_a2_4_out => 
        PRDATA_0_0_a2_4_out, PRDATA_m1_0_a2_6_0 => 
        PRDATA_m1_0_a2_6_0, N_2019 => N_2019, pwm_out_4_c => 
        pwm_out_4_c, pwm_out_3_c => pwm_out_3_c, pwm_out_2_c => 
        pwm_out_2_c, pwm_out_1_c => pwm_out_1_c);
    
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
