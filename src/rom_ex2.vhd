library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rom_ex2 is
  port(
    clk : in std_logic;
    addr : in std_logic_vector(2 downto 0);
    rom_out : out std_logic_vector(15 downto 0)
  );
end rom_ex2;

architecture Behavioral of rom_ex2 is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      case addr is
        when "000" => rom_out <= x"abcd";
        when "001" => rom_out <= x"3abf";
        when "010" => rom_out <= x"1234";
        when "011" => rom_out <= x"4567";
        when "100" => rom_out <= x"7347";
        when "101" => rom_out <= x"a4fb";
        when "110" => rom_out <= x"0993";
        when "111" => rom_out <= x"af34";
        when others => rom_out <= x"abcd";
      end case; 
    end if;
  end process;
end Behavioral;
