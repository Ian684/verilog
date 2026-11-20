`timescale 1ns/1ps
module toggle_ff_tb;reg clk=0,reset=1,t=0;wire q;toggle_ff u(clk,reset,t,q);always#5 clk=~clk;initial begin #7 reset=0;t=1;#10;if(!q)$fatal;$display("toggle_ff passed");$finish;end endmodule

