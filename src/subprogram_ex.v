module subprogram_ex(a,b,c,result_func,result_task);
  input [7:0] a,b,c;
  output [15:0] result_func;
  output reg [15:0] result_task; 

  `include "subprogram.vh"

  assign result_func = multiply_func(a,b); 

  always @ (b,c)
  begin
    multiply_task(b,c,result_task);
  end
endmodule
