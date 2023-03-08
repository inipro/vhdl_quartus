module mem_ex1(clk,wr_en,data,address,mem_out);

	input clk,wr_en;
	input [15:0] data;
	input [2:0] address;
	output reg [15:0] mem_out;

	reg [15:0] mem [0:7];

	always @ (posedge clk)
	begin
	if(wr_en) begin
			 mem[address] <= data;
		end
		mem_out <= mem[address];
	end

endmodule
