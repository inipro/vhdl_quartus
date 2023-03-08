library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom_ex1 is
  port(
    clk : in std_logic;
    addr : in std_logic_vector(2 downto 0);
    rom_out : out std_logic_vector(15 downto 0)
  );
end rom_ex1;

architecture Behavioral of rom_ex1 is
  type rom_array is array (0 to 7) of std_logic_vector (15 downto 0);
  signal rom : rom_array := ( 0 => x"abcd", 1 => x"3abf",
      2 => x"1234", 3 => x"4567", 4 => x"7347",
      5 => x"a4fb", 6 => x"0993", 7 => x"af34");    
begin
  process(clk)
  begin
    if rising_edge(clk) then
      rom_out <= rom(conv_integer(addr));
    end if;
  end process;
end Behavioral;
