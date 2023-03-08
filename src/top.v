`timescale 1 ns / 1 ps

module top(clk,q);

	input clk;
	output [31:0] q;
		
	cntr	cntr_inst (
		.clock ( clk ),
		.q ( q )
	);

endmodule