library ieee;
use ieee.std_logic_1164.all;

entity ander3 is    
  port(
    a,b : in std_logic_vector(15 downto 0);
    result : out std_logic_vector(15 downto 0)
  );
end ander3;

architecture structural of ander3 is
  signal c : std_logic_vector(15 downto 0);
begin
  c(15 downto 8) <= a(15 downto 8) and b(15 downto 8);
  c(7 downto 0) <= a(7 downto 0) and b(7 downto 0);
  result <= c;
end structural;
