`timescale 1ns/1ps
module fifo_small_tb;reg clk=0,reset=1,wr=0,rd=0;reg[7:0]d;wire[7:0]o;wire e,f;fifo_small u(clk,reset,wr,rd,d,o,e,f);always#5 clk=~clk;initial begin d=7;#7 reset=0;wr=1;#10 wr=0;rd=1;#10;if(o!=7)$fatal;$display("fifo passed");$finish;end endmodule

