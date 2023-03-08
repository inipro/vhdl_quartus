module mem_ex4(wr_clk,rd_clk,wr_en,
		data,rd_addr,wr_addr,mem_out);

	input wr_clk,rd_clk,wr_en;
	input [15:0] data;
	input [2:0] rd_addr,wr_addr;
	output reg [15:0] mem_out;

	reg [15:0] mem [0:7];

	initial begin
		mem[0] = 16'habcd;
		mem[1] = 16'h79ca;
		mem[2] = 16'h1358;
		mem[3] = 16'h976a;
		mem[4] = 16'h84ad;
		mem[5] = 16'hd3f5;
		mem[6] = 16'hf4a2;
		mem[7] = 16'hc0d1; 
	end

	always @ (posedge wr_clk)
	begin
		if(wr_en) begin
			mem[wr_addr] <= data;
		end
	end

	always @ (posedge rd_clk)
	begin
		mem_out <= mem[rd_addr];
	end

endmodule
