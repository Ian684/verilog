`timescale 1ns/1ps
module clock_enable_tb;reg clk=0,reset=1,en=0;wire p;clock_enable u(clk,reset,en,p);always#5 clk=~clk;initial begin #7 reset=0;en=1;#10;if(!p)$fatal;$display("clock_enable passed");$finish;end endmodule

