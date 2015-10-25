library IEEE;

use IEEE.std_logic_1164.all;

entity PWM_separator is
port (
    pwm_in      : in    std_logic_vector(4 downto 1);
    pwm_out_1   : out   std_logic;
    pwm_out_2   : out   std_logic;
    pwm_out_3   : out   std_logic;
    pwm_out_4   : out   std_logic
);
end PWM_separator;

architecture BH of PWM_separator is
begin
   -- architecture body
    pwm_out_1 <= pwm_in(1);
    pwm_out_2 <= pwm_in(2);
    pwm_out_3 <= pwm_in(3);
    pwm_out_4 <= pwm_in(4);
end BH;
