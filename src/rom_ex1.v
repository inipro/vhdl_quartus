module rom_ex1(clk,addr,rom_out);

	input clk; 
	input [2:0] addr;
	output reg [15:0] rom_out;

	reg [15:0] rom [0:7];

	initial begin
		rom[0] = 16'habcd;
		rom[1] = 16'h79ca;
		rom[2] = 16'h1358;
		rom[3] = 16'h976a;
		rom[4] = 16'h84ad;
		rom[5] = 16'hd3f5;
		rom[6] = 16'hf4a2;
		rom[7] = 16'hc0d1; 
	end

	always @ (posedge clk)
	begin
		rom_out <= rom[addr];
	end

endmodule
