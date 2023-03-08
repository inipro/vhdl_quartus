library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_ex2 is
  port(
    clk, clr : in std_logic;
    q : out std_logic_vector(15 downto 0)
  );
end counter_ex2;
architecture Behavioral of counter_ex2 is
  signal cnt : std_logic_vector(15 downto 0);
begin
  process(clk,clr)
  begin
    if clr = '1' then
      cnt <= x"0000";
    elsif rising_edge(clk) then
      cnt <= cnt + 1;
      if cnt = 999 then
        cnt <= x"0000";
        -- 특정시간마다 해야 할 일
      end if;
    end if;
  end process;
  q <= cnt;
end Behavioral;
