`timescale 1ns/1ps
module subtractor4_tb;reg[3:0]a,b;wire[3:0]d;wire br;subtractor4 u(a,b,d,br);initial begin a=3;b=5;#1;if(d!=14||!br)$fatal;$display("subtractor passed");end endmodule

