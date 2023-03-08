library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mypkg.all;

entity subprogram_ex is
  port(
    a,b,c : in std_logic_vector(7 downto 0);
    result_func : out std_logic_vector(15 downto 0);
    result_proc : out std_logic_vector(15 downto 0)
  ); 
end subprogram_ex;

architecture Behavioral of subprogram_ex is    
begin    
  result_func <= multiply_func(a,b); 
  process(b,c)
    variable temp : std_logic_vector(15 downto 0);
  begin
    multiply_proc(b,c,temp);
    result_proc <= temp;
  end process;    
end Behavioral;
