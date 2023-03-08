library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_ex3 is
  port(
    clk, clr, cnten : in std_logic;
    q : out std_logic_vector(15 downto 0)
  );
end counter_ex3;

architecture Behavioral of counter_ex3 is
  signal cnt : std_logic_vector(15 downto 0);
begin
  process(clk,clr,cnten)
  begin
    if clr = '1' then
      cnt <= x"0000";
    elsif rising_edge(clk) then
      if cnten = '1' then
        cnt <= cnt + 1;
        if cnt = 999 then
          cnt <= x"0000";
          -- 특정시간마다 해야 할 일
        end if;
      end if;
    end if;
  end process;
  q <= cnt;
end Behavioral;
