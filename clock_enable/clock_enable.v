module clock_enable(input clk,reset,en,output reg pulse);always@(posedge clk)if(reset)pulse<=0;else pulse<=en;endmodule

