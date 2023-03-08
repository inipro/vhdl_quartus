library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg16_ex3 is
  port(
    clk, clr, clken : in std_logic;
    d : in std_logic_vector(15 downto 0);
    q : out std_logic_vector(15 downto 0)
  );  
end reg16_ex3;

architecture Behavioral of reg16_ex3 is
begin
  process(clk,clr,clken)
  begin
    if rising_edge(clk) then
      if clr = '1' then
        q <= x"0000";
      elsif clken = '1' then
        q <= d;
      end if;
    end if;
  end process;
end Behavioral;
