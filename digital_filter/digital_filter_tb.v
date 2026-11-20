`timescale 1ns/1ps
module digital_filter_tb;
reg clk=0,rst_n=0,enable=0;
reg [7:0] data_in=0;
wire [7:0] data_out;
digital_filter dut(clk,rst_n,enable,data_in,data_out);
always #5 clk=~clk;
integer cycle;
initial begin
repeat(2) @(posedge clk);rst_n=1;enable=1;
for(cycle=0;cycle<8;cycle=cycle+1)begin
data_in=cycle*17;@(posedge clk);#1;
$display("cycle=%0d output=%02x",cycle,data_out);
end
$finish;
end
endmodule
