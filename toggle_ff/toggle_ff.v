module toggle_ff(input clk,reset,toggle,output reg q);always@(posedge clk)if(reset)q<=0;else if(toggle)q<=~q;endmodule

