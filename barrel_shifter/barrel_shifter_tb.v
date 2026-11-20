`timescale 1ns/1ps
module barrel_shifter_tb;reg[7:0]d;reg[2:0]a;reg dir;wire[7:0]r;barrel_shifter u(d,a,dir,r);initial begin d=8'h81;a=1;dir=1;#1;if(r!=8'h40)$fatal;dir=0;#1;if(r!=2)$fatal;$display("barrel_shifter passed");end endmodule

