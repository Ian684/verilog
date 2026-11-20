`timescale 1ns/1ps
module edge_counter_tb;reg clk=0,reset=1,e=0;wire[3:0]c;edge_counter u(clk,reset,e,c);always#5 clk=~clk;initial begin #7 reset=0;e=1;#10;e=0;#10;if(c!=1)$fatal;$display("edge_counter passed");$finish;end endmodule

