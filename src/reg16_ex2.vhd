library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16_ex2 is
  port(
    clk, clr : in std_logic;
    d : in std_logic_vector(15 downto 0);
    q : out std_logic_vector(15 downto 0)
  );  
end reg16_ex2;

architecture Behavioral of reg16_ex2 is
begin
  process(clk,clr)
  begin
    if clr = '1' then
      q <= x"0000";
    elsif rising_edge(clk) then
      q <= d;
    end if;
  end process;
end Behavioral;
