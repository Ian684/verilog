`timescale 1ns/1ps
module uart_tx_tb;reg clk=0,reset=1,start=0;wire busy,tx;uart_tx u(clk,reset,start,busy,tx);always#5 clk=~clk;initial begin #7 reset=0;start=1;#10;start=0;if(!busy)$fatal;$display("uart_tx passed");$finish;end endmodule

