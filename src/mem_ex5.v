module mem_ex5(wr_clk,rd_clk,wr_en,data,mem_out,
		rd_addr0,rd_addr1,wr_addr0,wr_addr1);

	input wr_clk,rd_clk,wr_en;
	input [15:0] data;
	input [0:0] rd_addr0,wr_addr0;
	input [1:0] rd_addr1,wr_addr1;
	output reg [15:0] mem_out;
	reg [15:0] mem [0:1][0:3];

	initial begin
		mem[0][0] = 16'habcd;
		mem[0][1] = 16'h79ca;
		mem[0][2] = 16'h1358;
		mem[0][3] = 16'h976a;
		mem[1][0] = 16'h84ad;
		mem[1][1] = 16'hd3f5;
		mem[1][2] = 16'hf4a2;
		mem[1][3] = 16'hc0d1; 
	end

	always @ (posedge wr_clk)
	begin
		if(wr_en) begin
			mem[wr_addr0][wr_addr1] <= data;
		end
	end

	always @ (posedge rd_clk)
	begin
		mem_out <= mem[rd_addr0][rd_addr1];
	end
endmodule
