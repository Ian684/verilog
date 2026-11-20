`timescale 1ns/1ps
module tb_control;
    reg clk=0,rst_n=0,noisy=0,up=0,down=0;
    wire clean,rising;
    wire [3:0] value;
    integer pulses=0,i;
    practice_debounce #(.STABLE_CYCLES(3)) filter(clk,rst_n,noisy,clean,rising);
    practice_saturating_counter counter(clk,rst_n,up,down,value);
    always #5 clk=~clk;
    always @(posedge clk) begin #1;if(rising)pulses=pulses+1;end
    initial begin
        #1;rst_n=1;#1;rst_n=0;
        repeat(2) @(negedge clk);rst_n=1;
        noisy=1;@(negedge clk);noisy=0;
        repeat(4) @(negedge clk);
        if(clean!==0 || pulses!=0) $fatal(1,"glitch was not rejected");
        noisy=1;repeat(5) @(negedge clk);
        if(clean!==1 || pulses!=1) $fatal(1,"stable rising transition");
        noisy=0;repeat(5) @(negedge clk);
        if(clean!==0 || pulses!=1) $fatal(1,"falling transition");
        up=1;repeat(20) @(negedge clk);
        if(value!==15) $fatal(1,"upper saturation");
        down=1;repeat(2) @(negedge clk);
        if(value!==15) $fatal(1,"simultaneous controls must hold");
        up=0;repeat(20) @(negedge clk);
        if(value!==0) $fatal(1,"lower saturation");
        $display("debounce and saturation PASS");$finish;
    end
    initial begin #100000; $fatal(1,"timeout"); end
endmodule
