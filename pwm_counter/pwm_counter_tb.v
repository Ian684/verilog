`timescale 1ns/1ps
module pwm_counter_tb;reg clk=0,reset=1;reg[3:0]l;wire p;pwm_counter u(clk,reset,l,p);always#5 clk=~clk;initial begin l=8;#7 reset=0;#2;if(!p)$fatal;$display("pwm_counter passed");$finish;end endmodule

