`timescale 1ns/1ps
module debounce_tb;
    reg clk = 0;
    reg reset = 1;
    reg noisy = 0;
    wire clean;
    debounce #(.COUNT_MAX(3)) dut(.clk(clk), .reset(reset), .noisy(noisy), .clean(clean));
    always #5 clk = ~clk;

    initial begin
        #12 reset = 0;
        noisy = 1;
        #14 if (clean !== 1'b0) $fatal(1, "input changed too early");
        #12 if (clean !== 1'b1) $fatal(1, "stable input was not accepted");
        $display("debounce passed");
        $finish;
    end
endmodule
