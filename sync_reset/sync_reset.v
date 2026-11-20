module sync_reset(input clk,reset_n,output reg ready);always@(posedge clk)if(!reset_n)ready<=0;else ready<=1;endmodule

