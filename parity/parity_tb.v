`timescale 1ns/1ps
module parity_tb;reg[7:0]d;wire e,o;parity u(d,e,o);initial begin d=8'h03;#1;if(!e||o)$fatal;$display("parity passed");end endmodule

