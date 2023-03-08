module mem_ex2(clk,wr_en,data,rd_addr,wr_addr,mem_out);

	input clk,wr_en;
	input [15:0] data;
	input [2:0] rd_addr,wr_addr;
	output reg [15:0] mem_out;

	reg [15:0] mem [0:7];

	always @ (posedge clk)
	begin
	if(wr_en) begin
	mem[wr_addr] <= data;
		end
		mem_out <= mem[rd_addr];
	end

endmodule
