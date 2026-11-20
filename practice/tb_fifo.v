`timescale 1ns/1ps
module tb_fifo;
    reg clk=0,rst_n=0,wr_valid=0,rd_ready=0;
    reg [7:0] wr_data=0;
    wire wr_ready,rd_valid;
    wire [7:0] rd_data;
    practice_fifo #(.DEPTH(3)) dut(.*);
    always #5 clk=~clk;
    reg [7:0] model[0:2000];
    integer head=0,tail=0,count=0,cycle;
    reg want_pop,want_push;
    initial begin
        #1;rst_n=1;#1;rst_n=0;
        repeat(2) @(negedge clk);rst_n=1;
        for(cycle=0;cycle<800;cycle=cycle+1) begin
            @(negedge clk);
            // Deterministic traffic includes fill, drain, stalls and simultaneous transfers.
            wr_valid=(cycle%7!=0);rd_ready=(cycle%11>=4);wr_data=cycle;
            #1;
            if(rd_valid!==(count>0)) $fatal(1,"read valid count mismatch");
            if(wr_ready!==((count<3)||((count>0)&&rd_ready))) $fatal(1,"write ready mismatch");
            want_pop=rd_valid&&rd_ready;want_push=wr_valid&&wr_ready;
            if(want_pop) begin
                if(rd_data!==model[head]) $fatal(1,"FIFO order mismatch");
                head=head+1;
            end
            if(want_push) begin model[tail]=wr_data;tail=tail+1;end
            count=count+want_push-want_pop;
            @(posedge clk);#1;
        end
        @(negedge clk);rst_n=0;#1;
        if(rd_valid!==0 || wr_ready!==1) $fatal(1,"reset flush");
        $display("FIFO 800 cycles PASS");$finish;
    end
    initial begin #100000; $fatal(1,"timeout"); end
endmodule
