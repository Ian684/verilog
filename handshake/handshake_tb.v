`timescale 1ns/1ps
module handshake_tb;reg clk=0,reset=0,v,r;wire f;handshake u(clk,reset,v,r,f);initial begin v=1;r=1;#1;if(!f)$fatal;v=0;#1;if(f)$fatal;$display("handshake passed");end endmodule

