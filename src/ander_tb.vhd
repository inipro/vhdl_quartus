library ieee;
use ieee.std_logic_1164.all;

entity ander_tb is
end ander_tb;

architecture Behavioral of ander_tb is
  component ander is    
    port(
      a,b : in std_logic;
      result : out std_logic
    );
  end component;
  signal a,b,result : std_logic;
begin
  uut : ander port map(a,b,result);

  Stimulus : process
  begin
    a<='0';  b<='0';
    wait for 200 ns;
    a<='0';  b<='1';
    wait for 200 ns;
    a<='1';  b<='1';
    wait;
  end
  process;
end Behavioral;
