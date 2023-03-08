module adder_tree(
    clk, clr,
    i_a, i_b, i_c, i_d,
    o_result
);
    input clk, clr;
    input [3:0] i_a, i_b, i_c, i_d;
    output reg [7:0] o_result;

    reg[7:0] a_buf, b_buf, c_buf, d_buf;

    always @(posedge clr or posedge clk)
    begin
        if(clr) begin
            a_buf <= 8'h00;
            b_buf <= 8'h00;
            c_buf <= 8'h00;
            d_buf <= 8'h00;
            o_result <= 8'h00;
        end
        else begin
            a_buf <= {4'h0,i_a};
            b_buf <= {4'h0,i_b};
            c_buf <= {4'h0,i_c};
            d_buf <= {4'h0,i_d};
            o_result <= ((a_buf + a_buf) + b_buf)
                      + ((c_buf + c_buf) + d_buf);
        end
    end
endmodule