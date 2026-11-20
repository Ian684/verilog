module uart_tx(input clk,reset,start,output reg busy,tx);always@(posedge clk)if(reset)begin busy<=0;tx<=1;end else if(start&&!busy)begin busy<=1;tx<=0;end else if(busy)begin busy<=0;tx<=1;end endmodule

