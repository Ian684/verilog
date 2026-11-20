`timescale 1ns/1ps
module mod_counter_tb;reg clk=0,reset=1;wire[2:0]q;mod_counter u(clk,reset,q);always#5 clk=~clk;initial begin #7 reset=0;#60;if(q>5)$fatal;$display("mod_counter passed");$finish;end endmodule

