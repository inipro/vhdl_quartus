library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder_tree is
    port(
        clk, clr : in std_logic;
        i_a, i_b : in std_logic_vector(3 downto 0);
        i_c, i_d : in std_logic_vector(3 downto 0);
        o_result : out std_logic_vector(7 downto 0)
    );
end adder_tree;

architecture behavioral of adder_tree is
    signal a_buf, b_buf : std_logic_vector(7 downto 0);
    signal c_buf, d_buf : std_logic_vector(7 downto 0);
begin
    process(clk, clr)
    begin
        if clr = '1' then
            a_buf <= "00000000";b_buf <= "00000000";
            c_buf <= "00000000";d_buf <= "00000000";
            o_result <= "00000000";
        elsif rising_edge(clk) then
            a_buf <= "0000"&i_a;b_buf <= "0000"&i_b;
            c_buf <= "0000"&i_c;d_buf <= "0000"&i_d;
            o_result <= ((a_buf + a_buf) + b_buf) 
                        + ((c_buf + c_buf) + d_buf);
        end if;
    end process;
end behavioral;
