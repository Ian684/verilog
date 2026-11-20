`timescale 1ns/1ps
module alu4_tb;reg[3:0]a,b;reg[1:0]op;wire[3:0]y;alu4 u(a,b,op,y);initial begin a=5;b=3;op=0;#1;if(y!=8)$fatal;op=2;#1;if(y!=1)$fatal;$display("alu4 passed");end endmodule

