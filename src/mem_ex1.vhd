library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem_ex1 is
  port(
    clk,wr_en : in std_logic;
    data : in std_logic_vector(15 downto 0);
    address : in std_logic_vector(2 downto 0);
    mem_out : out std_logic_vector(15 downto 0)
  );
end mem_ex1;

architecture Behavioral of mem_ex1 is
  type mem_array is array (0 to 7) of std_logic_vector (15 downto 0);
  signal mem : mem_array;    
begin
  process(clk,wr_en)
  begin
    if rising_edge(clk) then
      if wr_en='1' then
        mem(conv_integer(address)) <= data;
      end if; 
      mem_out <= mem(conv_integer(address));
    end if;
  end process;
end Behavioral;
