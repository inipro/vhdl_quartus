function [15:0] multiply_func;
  input [7:0] a,b;
  reg [15:0] c; 
begin
  c = a * b;
  multiply_func = c;
end
endfunction

task multiply_task;
  input [7:0] a,b;
  output [15:0] c; 
begin
  c = a * b; 
end
endtask
