library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
  port(
    clk,d : in std_logic;
    q : out std_logic
  );   
end flipflop;

architecture Behavioral of flipflop is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end process;
end Behavioral;
