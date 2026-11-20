`timescale 1ns/1ps
module edge_detector_tb;
    reg clk = 0;
    reg reset = 1;
    reg signal_in = 0;
    wire rising, falling;
    edge_detector dut(.clk(clk), .reset(reset), .signal_in(signal_in),
                      .rising(rising), .falling(falling));
    always #5 clk = ~clk;

    initial begin
        #12 reset = 0;
        #5 signal_in = 1;
        #10 if (rising !== 1'b1) $fatal(1, "rising edge not detected");
        #5 signal_in = 0;
        #10 if (falling !== 1'b1) $fatal(1, "falling edge not detected");
        $display("edge_detector passed");
        $finish;
    end
endmodule
