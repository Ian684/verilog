`timescale 1ns/1ps
module pulse_sync_tb;reg clk=0,reset=1,p=0;wire o;pulse_sync u(clk,reset,p,o);always#5 clk=~clk;initial begin #7 reset=0;p=1;#10;p=0;#10;if(!o)$fatal;$display("pulse_sync passed");$finish;end endmodule
