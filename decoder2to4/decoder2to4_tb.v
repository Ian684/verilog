`timescale 1ns/1ps
module decoder2to4_tb;reg[1:0]a;reg en;wire[3:0]y;decoder2to4 u(a,en,y);initial begin en=1;a=2;#1;if(y!==4'b0100)$fatal;en=0;#1;if(y!==0)$fatal;$display("decoder passed");end endmodule

