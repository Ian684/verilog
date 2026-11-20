module mod_counter(input clk,reset,output reg[2:0]q);always@(posedge clk)if(reset)q<=0;else if(q==5)q<=0;else q<=q+1;endmodule

