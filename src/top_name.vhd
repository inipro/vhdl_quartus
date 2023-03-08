library ieee;
use ieee.std_logic_1164.all;
?
entity top_name is
    port( top_a,top_b : in std_logic_vector(3 downto 0);
        top_result : out std_logic_vector(3 downto 0));
end top_name;
?
architecture structural of top_name is
    component ander is    
        port(a,b : in std_logic;
            result : out std_logic);
    end component;
begin
    ander_inst_0 : ander port map (a=>top_a(0),b=>top_b(0),result=>top_result(0));
    ander_inst_1 : ander port map (a=>top_a(1),b=>top_b(1),result=>top_result(1));
    ander_inst_2 : ander port map (a=>top_a(2),b=>top_b(2),result=>top_result(2));
    ander_inst_3 : ander port map (a=>top_a(3),b=>top_b(3),result=>top_result(3));
end structural;
