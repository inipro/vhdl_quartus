library ieee;
use ieee.std_logic_1164.all;

entity ander is   
  port(
    a,b : in std_logic;
    result : out std_logic
  );
end ander;

architecture structural of ander is
begin
  result <= a and b;
end structural;
