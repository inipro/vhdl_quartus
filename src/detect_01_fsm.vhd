library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detect_01_fsm is
    port(
        rst : in std_logic;
        clk : in std_logic;
        i_seq : in std_logic;
        o_detected : out std_logic
    );
end detect_01_fsm;

architecture Behavioral of detect_01_fsm is
    type state_type is (S_IDLE, S_DETECT_0, S_DETECT_01);
    signal current_state, next_state : state_type;
begin
    process(current_state, i_seq)
    begin
        next_state <= current_state;
        case current_state is
            when S_IDLE => 
                if i_seq = '0' then
                    next_state <= S_DETECT_0;
                end if;
            when S_DETECT_0 =>
                if i_seq = '1' then
                    next_state <= S_DETECT_01;
                end if;
            when S_DETECT_01 =>
                if i_seq = '0' then
                    next_state <= S_DETECT_0;
                else
                    next_state <= S_IDLE;
                end if;
            when others =>
                next_state <= S_IDLE;
        end case;
    end process;

    process(clk, rst)
    begin
        if rst = '1' then
            current_state <= S_IDLE;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
    
    process(current_state)
    begin
        case current_state is
            when S_IDLE => o_detected <= '0';
            when S_DETECT_0 => o_detected <= '0';
            when S_DETECT_01 => o_detected <= '1';
            when others => o_detected <= '0';
        end case;
    end process;
end Behavioral;
