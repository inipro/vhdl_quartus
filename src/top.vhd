library ieee;
use ieee.std_logic_1164.all;

entity top is
	port(
		clk : in std_logic;
    		q : out std_logic_vector(31 downto 0)
	);
end top;
	
architecture structural of top is

	component cntr is    
	Port(
		clock : in std_logic;
     		q : out std_logic_vector(31 downto 0)
	);
	end component;
  
begin	
	
	cntr_inst : cntr PORT MAP (
		clock	 => clk,
		q	 => q
	);
	
end structural;