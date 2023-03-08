library ieee;
use ieee.std_logic_1164.all;

entity ander2 is   
  port(
    a,b : in std_logic;
    result : out std_logic
  );
end ander2;

architecture structural of ander2 is
  signal c : std_logic;
begin
  c <= a and b;
  result <= c;
end structural;
