module traffic_light(input clk,reset,output reg[1:0]light);always@(posedge clk)if(reset)light<=0;else light<=light==2?0:light+1;endmodule

