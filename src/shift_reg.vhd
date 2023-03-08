library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg is
  port(
    clk : in std_logic;
    input : in std_logic;
    output : out std_logic
  );  
end shift_reg;

architecture GEN of shift_reg is
  component flipflop is
    port(
      clk : in std_logic;
      d : in std_logic;
      q : out std_logic
    );  
  end component;
  signal inter : std_logic_vector(14 downto 0);
begin
  for_gen : for i in 0 to 15 generate
    if_gen1: if i=0 generate
      U0 : flipflop port map (clk=>clk, d=>input, q=>inter(i));
    end generate;
    if_gen2: if i>0 and i<15 generate
      UX : flipflop port map (clk=>clk, d=>inter(i-1), q=>inter(i));
    end generate;
    if_gen3: if i=15 generate
      U15 : flipflop port map	(clk=>clk, d=>inter(i-1), q=>output);
    end generate;
  end generate;
end GEN;
