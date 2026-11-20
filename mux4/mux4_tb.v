`timescale 1ns/1ps
module mux4_tb;reg[1:0]s;reg[3:0]d;wire y;mux4 u(s,d,y);initial begin d=4'b0101;s=2;#1;if(y!==1) $fatal;s=0;#1;if(y!==1)$fatal;$display("mux4 passed");end endmodule
