`timescale 1ns/1ps
module tb_uart;
    parameter integer CPB=3;
    reg clk=0, rst_n=0, valid=0;
    reg [7:0] data=0;
    wire ready,tx;
    practice_uart_tx #(.CLKS_PER_BIT(CPB)) dut(.*);
    always #5 clk=~clk;
    task send_and_check(input [7:0] byte_value);
        reg [9:0] expected;
        integer bit_number, tick;
        begin
            expected={1'b1,byte_value,1'b0};
            @(negedge clk); data=byte_value; valid=1;
            @(posedge clk); #1; valid=0; data=~byte_value;
            for(bit_number=0;bit_number<10;bit_number=bit_number+1) begin
                for(tick=0;tick<CPB;tick=tick+1) begin
                    if(tx!==expected[bit_number] || ready!==0) $fatal(1,"UART frame/timing mismatch bit %0d",bit_number);
                    @(posedge clk); #1;
                end
            end
            if(!ready || tx!==1) $fatal(1,"UART did not return idle");
        end
    endtask
    initial begin
        #1; rst_n=1; #1; rst_n=0;
        repeat(2) @(negedge clk); rst_n=1; #1;
        if(tx!==1 || ready!==1) $fatal(1,"reset idle");
        send_and_check(8'ha5); send_and_check(8'h00); send_and_check(8'hff);
        @(negedge clk); valid=1; data=8'h55;
        @(posedge clk); #1; rst_n=0; valid=0; #1;
        if(!ready || tx!==1) $fatal(1,"reset cancellation");
        $display("UART CPB=%0d PASS",CPB); $finish;
    end
    initial begin #100000; $fatal(1,"timeout"); end
endmodule
