library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem_ex5 is
  port(
    wr_clk, rd_clk, wr_en : in std_logic;
    data : in std_logic_vector(15 downto 0);
    rd_addr0, wr_addr0 : in std_logic_vector(0 downto 0);
    rd_addr1, wr_addr1 : in std_logic_vector(1 downto 0);
    mem_out : out std_logic_vector(15 downto 0)
  );
end mem_ex5;

architecture Behavioral of mem_ex5 is
  type mem_array is array (0 to 1,0 to 3) of std_logic_vector (15 downto 0);
  signal mem : mem_array := ( 0 => (x"abcd",x"3abf",x"1234",x"4567"),
                              1 => (x"7347",x"a4fb",x"0993",x"af34") );
begin
  process(wr_clk,wr_en)
  begin
    if rising_edge(wr_clk) then
      if wr_en='1' then
        mem(conv_integer(wr_addr0),conv_integer(wr_addr1)) <= data;
      end if; 
    end if;
  end process;
    
  process(rd_clk)
  begin
    if rising_edge(rd_clk) then
      mem_out <= mem(conv_integer(rd_addr0),conv_integer(rd_addr1));
    end if;
  end process;
end Behavioral;
