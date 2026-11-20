`timescale 1ns/1ps
module encoder4to2_tb;reg[3:0]a;wire[1:0]y;wire v;encoder4to2 u(a,y,v);initial begin a=8;#1;if(!v||y!=3)$fatal;a=0;#1;if(v)$fatal;$display("encoder passed");end endmodule

