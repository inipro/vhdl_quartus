library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_ex6 is
    port(
        clk,clr : in std_logic;
        q : out std_logic_vector(3 downto 0)
    );
end counter_ex6;

architecture Behavioral of counter_ex6 is
    signal cnt : std_logic_vector(31 downto 0);
begin
    process(clk,clr)
    begin
        if clr = '1' then
            cnt <= x"00000000";
        elsif rising_edge(clk) then
            cnt <= cnt + 1;
        end if;
    end process;
    q <= cnt(3 downto 0);
end Behavioral;
