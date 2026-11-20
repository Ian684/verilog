`timescale 1ns/1ps
module sync_reset_tb;reg clk=0,rn=0;wire ready;sync_reset u(clk,rn,ready);always#5 clk=~clk;initial begin #7 rn=1;#10;if(!ready)$fatal;$display("sync_reset passed");$finish;end endmodule

