library ieee;
use ieee.std_logic_1164.all;
?
entity top_order is
    port( top_a,top_b : in std_logic_vector(3 downto 0);
        top_result : out std_logic_vector(3 downto 0));
end top_order;
?
architecture structural of top_order is
    component ander is    
        port(a,b : in std_logic;
            result : out std_logic);
    end component;
begin
    ander_inst_0 : ander port map (top_a(0), top_b(0), top_result(0));
    ander_inst_1 : ander port map (top_a(1), top_b(1), top_result(1));
    ander_inst_2 : ander port map (top_a(2), top_b(2), top_result(2));
    ander_inst_3 : ander port map (top_a(3), top_b(3), top_result(3));
end structural;
