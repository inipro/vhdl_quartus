library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_ex4 is
  port(
    clk, clr, cnten, updown : in std_logic;
    q : out std_logic_vector(15 downto 0)
  );
end counter_ex4;

architecture Behavioral of counter_ex4 is
  signal cnt : std_logic_vector(15 downto 0);
begin
  process(clk,clr,cnten,updown)
  begin
    if clr = '1' then
      cnt <= x"0000";
    elsif rising_edge(clk) then
      if cnten = '1' then
        if updown = '1' then
          cnt <= cnt + 1;
        else
          cnt <= cnt - 1;
        end if;
      end if;
    end if;
  end process;
  q <= cnt;
end Behavioral;
