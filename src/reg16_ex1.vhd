library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16_ex1 is
  port(
    clk : in std_logic;
    d : in std_logic_vector(15 downto 0);
    q : out std_logic_vector(15 downto 0)
  );  
end reg16_ex1;

architecture Behavioral of reg16_ex1 is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      q <= d;
    end if;
  end process;
end Behavioral;
