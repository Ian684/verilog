`timescale 1ns/1ps
module full_adder_tb;reg a,b,c;wire s,co;full_adder u(a,b,c,s,co);initial begin a=1;b=1;c=1;#1;if({co,s}!=2'b11)$fatal;$display("full_adder passed");end endmodule

