library ieee;
use ieee.std_logic_1164.all;

entity ander5 is
  port(
    a,b : in std_logic;
    result : out std_logic
  );
end ander5;

architecture behavioral of ander5 is
begin
  process_ex : process(a,b)
    variable temp : std_logic;
  begin
    temp := a and b;
    result <= temp;
  end process process_ex;
end behavioral;
