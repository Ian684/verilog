`timescale 1ns/1ps
module register_file_tb;reg clk=0,we;reg[1:0]wa,ra;reg[7:0]wd;wire[7:0]rd;register_file u(clk,we,wa,ra,wd,rd);always#5 clk=~clk;initial begin we=1;wa=2;wd=9;ra=2;#10;if(rd!=9)$fatal;$display("register_file passed");$finish;end endmodule

