library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
  generic( width : integer := 16 );
  port(
    clk, clr : in std_logic;
    q : out std_logic_vector(width-1 downto 0)
  );
end counter;

architecture Behavioral of counter is
  signal cnt : std_logic_vector(width-1 downto 0);
begin
  process(clk,clr)
  begin
    if clr='1' then
      cnt <= (others => '0');
    elsif rising_edge(clk) then
      cnt <= cnt + 1;
    end if;    
  end process;
  q <= cnt;
end Behavioral;
