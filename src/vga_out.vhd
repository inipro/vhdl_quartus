library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vga_out is
    Port (
        clk : in std_logic;
        vga_hs, vga_vs : out std_logic;
        vga_o : out std_logic_vector(11 downto 0)    
    );
end vga_out;

architecture Behavioral of vga_out is
    signal pclk : std_logic;
    signal hcnt, vcnt : integer;
    component clk_wiz_0
    port
     (-- Clock in ports
      -- Clock out ports
      clk_out1          : out    std_logic;
      clk_in1           : in     std_logic
     );
    end component;
begin

    process(clk)
    begin
        if rising_edge(clk) then
	    pclk <= pclk + 1;
	end if;
    end process;
    
    process(pclk)
    begin
        if rising_edge(pclk) then 
            hcnt <= hcnt + 1;
            if hcnt = 799 then
                hcnt <= 0;
                vcnt <= vcnt + 1;
                if vcnt = 524 then  vcnt <= 0;
 	            end if;
            end if;
            if (hcnt>=656 and hcnt<752) then    vga_hs <= '0';
            else    vga_hs <= '1';
            end if;        
            if(vcnt>=490 and vcnt<492) then vga_vs <= '0';
            else    vga_vs <= '1';
            end if;    
            if(hcnt>=0 and hcnt<640 and vcnt>=0 and vcnt<480) then
                if (hcnt = 300) then    vga_o <= x"f00";
                else vga_o <= X"000";
                end if;
            else    vga_o <= X"000";
            end if;            
        end if;
    end process;
    
end Behavioral;
