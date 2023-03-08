module counter(clk,clr,q);
  parameter width=16;
  input clk,clr; 
  output reg [width-1:0] q;

  always @ (posedge clk)
  begin
    if(clr)
      q <= 0;
    else
      q <= q + 1;
  end
endmodule
