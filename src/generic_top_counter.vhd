library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_top is
  port(
    clk, clr : in std_logic;
    q1 : out std_logic_vector(15 downto 0);
    q2 : out std_logic_vector(31 downto 0)
  );
end counter_top;

architecture Behavioral of counter_top is
  component counter is
    generic( width : integer );
    port(
      clk, clr : in std_logic;
      q : out std_logic_vector(width-1 downto 0)
    );
  end component;
begin
  u1 : counter 
    generic map (width => 16) 
    port map (clk => clk, clr => clr, q => q1);
  u2 : counter 
    generic map (width => 32) 
    port map (clk => clk, clr => clr, q => q2);
end Behavioral;
