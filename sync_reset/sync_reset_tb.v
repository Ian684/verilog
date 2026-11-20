`timescale 1ns/1ps
module sync_reset_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;
integer cycle;
sync_reset dut(.clk(clk),.rst_n(rst_n),.enable(enable),.data_in(data_in),.data_out(data_out));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    rst_n = 0;
    enable = 0;
    data_in = 0;
    repeat(2) @(posedge clk);
    rst_n = 1;
    enable = 1;
    for(cycle=0;cycle<8;cycle=cycle+1) begin
        data_in = cycle * 8'h11;
        @(posedge clk);
        #1;
        $display("Exercise 24: synchronous reset cycle=%0d input=%02x output=%02x", cycle, data_in, data_out);
    end
    $finish;
end
endmodule
