`timescale 1ns/1ps
module one_hot_fsm_tb;
    reg clk = 0, reset = 1, start = 0;
    wire busy, done;
    one_hot_fsm dut(.clk(clk), .reset(reset), .start(start), .busy(busy), .done(done));
    always #5 clk = ~clk;

    initial begin
        #12 reset = 0;
        start = 1; #8 start = 0;
        #2 if (busy !== 1'b1) $fatal(1, "FSM did not enter RUN");
        #10 if (done !== 1'b1) $fatal(1, "FSM did not enter FINISH");
        $display("one_hot_fsm passed");
        $finish;
    end
endmodule
