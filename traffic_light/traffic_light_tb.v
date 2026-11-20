`timescale 1ns/1ps
module traffic_light_tb;reg clk=0,reset=1;wire[1:0]l;traffic_light u(clk,reset,l);always#5 clk=~clk;initial begin #7 reset=0;#10;if(l!=1)$fatal;$display("traffic_light passed");$finish;end endmodule

