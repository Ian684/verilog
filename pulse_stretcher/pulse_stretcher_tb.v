`timescale 1ns/1ps
module pulse_stretcher_tb;
    reg clk = 0, reset = 1, pulse_in = 0;
    wire pulse_out;
    pulse_stretcher #(.WIDTH(3)) dut(.clk(clk), .reset(reset),
                                     .pulse_in(pulse_in), .pulse_out(pulse_out));
    always #5 clk = ~clk;

    initial begin
        #12 reset = 0;
        pulse_in = 1; #8 pulse_in = 0;
        #2 if (pulse_out !== 1'b1) $fatal(1, "pulse was not stretched");
        #40 if (pulse_out !== 1'b0) $fatal(1, "pulse remained high too long");
        $display("pulse_stretcher passed");
        $finish;
    end
endmodule
