library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem_ex4 is
  port(
    wr_clk, rd_clk, wr_en : in std_logic;
    data : in std_logic_vector(15 downto 0);
    rd_addr, wr_addr : in std_logic_vector(2 downto 0);
    mem_out : out std_logic_vector(15 downto 0)
  );
end mem_ex4;

architecture Behavioral of mem_ex4 is
  type mem_array is array (0 to 7) of std_logic_vector (15 downto 0);
  signal mem : mem_array := ( 0 => x"abcd", 1 => x"3abf",
      2 => x"1234", 3 => x"4567", 4 => x"7347",
      5 => x"a4fb", 6 => x"0993", 7 => x"af34");
begin
  process(wr_clk,wr_en)
  begin
    if rising_edge(wr_clk) then
      if wr_en='1' then
        mem(conv_integer(wr_addr)) <= data;
      end if; 
    end if;
  end process;

  process(rd_clk)
  begin
    if rising_edge(rd_clk) then
      mem_out <= mem(conv_integer(rd_addr));
    end if;
  end process;
end Behavioral;
