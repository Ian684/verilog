`timescale 1ns/1ps
module ripple_adder4_tb;reg[3:0]a,b;reg c;wire[3:0]s;wire co;ripple_adder4 u(a,b,c,s,co);initial begin a=9;b=6;c=1;#1;if({co,s}!=16)$fatal;$display("ripple_adder passed");end endmodule

