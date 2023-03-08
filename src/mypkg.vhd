library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package mypkg is
  function multiply_func (a,b : in std_logic_vector) return std_logic_vector;
  procedure multiply_proc (a,b : in std_logic_vector; 
                            c : out std_logic_vector);
end package mypkg;

package body mypkg is
  function multiply_func (a,b : in std_logic_vector) return std_logic_vector is
    variable c : std_logic_vector(15 downto 0);
  begin
    c := a * b;
    return c;
  end function multiply_func;
    
  procedure multiply_proc (a,b : in std_logic_vector; 
                            c : out std_logic_vector) is 
  begin
    c := a * b;
  end procedure multiply_proc;
end package body mypkg;
