`timescale 1ns/1ps
module lfsr_tb;reg clk=0,reset=1;wire[3:0]q;lfsr u(clk,reset,q);always#5 clk=~clk;initial begin #7 reset=0;#10;if(q==0)$fatal;$display("lfsr passed");$finish;end endmodule

