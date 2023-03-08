module counter_top(clk,clr,q1,q2);

  input clk,clr; 
  output [15:0] q1;
  output [31:0] q2; 

  counter #(16) cnt1(clk,clr,q1);
  counter #(.width(32)) cnt2(clk,clr,q2);

endmodule
