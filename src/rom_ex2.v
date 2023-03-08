module rom_ex2(clk,addr,rom_out);

	input clk;
	input [2:0] addr;
	output reg [15:0] rom_out;

	always @ (posedge clk)
	begin
		case (addr)
			3'b000 : rom_out = 16'habcd;
			3'b001 : rom_out = 16'h79ca;
			3'b010 : rom_out = 16'h1358;
			3'b011 : rom_out = 16'h976a;
			3'b100 : rom_out = 16'h84ad;
			3'b101 : rom_out = 16'hd3f5;
			3'b110 : rom_out = 16'hf4a2;
			3'b111 : rom_out = 16'hc0d1; 
		endcase 
	end

endmodule
