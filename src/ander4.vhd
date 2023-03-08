library ieee;
use ieee.std_logic_1164.all;

entity ander4 is    
  port(
    a,b : in std_logic_vector(15 downto 0);
    result : out std_logic_vector(15 downto 0)
  );
end ander4;

architecture structural of ander4 is
  signal c : std_logic_vector(7 downto 0);
  signal d : std_logic_vector(7 downto 0);
begin
  c <= a(15 downto 8) and b(15 downto 8);
  d <= a(7 downto 0) and b(7 downto 0);
  result <= c & d;
end structural;
