module shift_reg(clk,din,dout);

	input clk,din;
	output dout;
	
	wire [14:0] inter;
	
	genvar i;	
	generate 
	for(i=0;i<16;i=i+1) begin : genfor
		
		if(i==0) begin
			flipflop u0 (clk,din,inter[i]);
		end

		if(i>0 && i<15) begin
			flipflop ux (clk,inter[i-1],inter[i]);
		end

		if(i==15) begin
			flipflop u15 (clk,inter[i-1],dout);
		end
	
	end
	endgenerate

endmodule
