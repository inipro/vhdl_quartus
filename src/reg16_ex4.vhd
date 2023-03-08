library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16_ex4 is
  port(
    clk, a : in std_logic;        
    d : out std_logic
  );  
end reg16_ex4;

architecture Behavioral of reg16_ex4 is
  signal b,c : std_logic;
begin
  process(clk)
  begin
    if rising_edge(clk) then
      b <= a;
      c <= b;
      d <= c;
    end if;
  end process;
end Behavioral;
