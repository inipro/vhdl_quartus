module vga_out (
 
		CLOCK_50,
		
		VGA_R,
		VGA_G,
		VGA_B,
		VGA_VS,
		VGA_HS,
		VGA_BLANK_N,
		VGA_SYNC_N,
		VGA_CLK
	);

	input  CLOCK_50;

	output [7:0] VGA_R;
	output [7:0] VGA_G;
	output [7:0] VGA_B;
	output reg 	 VGA_VS;
	output reg	 VGA_HS;
	output reg   VGA_BLANK_N;
	output VGA_SYNC_N;
	output VGA_CLK;

	wire	pclk;
	reg	[1:0]	pcnt;
	integer	hcnt,vcnt;
	integer	h1,h2,v1,v2;
	reg	[23:0]  vga_out;
		
	assign   VGA_R = vga_out[23:16];
	assign   VGA_G = vga_out[15:8];
	assign   VGA_B = vga_out[7:0];

	always@(posedge CLOCK_50)
		pcnt <= pcnt + 1;
		
	assign pclk = pcnt[0];	
	assign VGA_SYNC_N = 1'b1;
	assign VGA_CLK = CLOCK_50;
	
	always@(posedge pclk)
	begin
		
		hcnt <= hcnt + 1;
		if(hcnt == 800) begin
			hcnt <= 0;
			vcnt <= vcnt + 1;
			if(vcnt == 524)	vcnt <= 0;
		end
		
		if(hcnt>=0 && hcnt<96)	VGA_HS <= 1'b0;
		else	VGA_HS <= 1'b1;
		
		if(vcnt>=0 && vcnt<2)	VGA_VS <= 1'b0;
		else	VGA_VS <= 1'b1;
		
		if(hcnt>=144 && hcnt<784 && vcnt>=35 && vcnt<515) begin
			if (hcnt == 300) begin
				vga_out <= 24'hff0000;
			end
			else if (vcnt == 200) begin
				vga_out <= 24'h00ff00;
			end
			else begin
				vga_out <= 24'h0000ff;
			end
			VGA_BLANK_N <= 1'b1;
		end
		else begin
			vga_out <= 8'h00;
			VGA_BLANK_N <= 1'b0;
		end		
	end 
			

endmodule
