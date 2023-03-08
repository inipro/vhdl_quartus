module vga_out(
     clk, vga_hs, vga_vs, vga_o
     );
    
     input clk;
     output reg vga_hs, vga_vs;
     output reg [11:0] vga_o;
    
     reg pclk;
     reg [31:0] hcnt, vcnt;
    
     always @ (posedge clk)
     begin
        pclk <= pclk + 1'b1;
     end
    
     always @ (posedge pclk)
     begin
         hcnt<= hcnt+ 1;
         if(hcnt == 799) begin
            hcnt<= 0;
            vcnt<= vcnt+ 1;
            if(vcnt == 524) begin
                vcnt<= 0;
            end
         end
        
	 if(hcnt>=656 && hcnt<752) vga_hs <= 1'b0;
	 else                      vga_hs <= 1'b1;
	
	 if(vcnt>=490 && vcnt<492) vga_vs <= 1'b0;
	 else                      vga_vs <= 1'b1;
            
         if(hcnt>=0 && hcnt<640 && vcnt>=0 && vcnt<480)
            if (hcnt == 300) vga_o <= 12'hf00;
            else vga_o <= 12'h000;
         else vga_o <= 12'h000;
    end

endmodule
