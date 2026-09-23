module simple_fsm_tb;

reg clk;
reg reset_n;
reg start;
reg finish;

wire busy;
wire done;

simple_fsm uut (
    .clk(clk),
    .reset_n(reset_n),
    .start(start),
    .finish(finish),
    .busy(busy),
    .done(done)
);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor(
        "time=%0t clk=%b reset_n=%b start=%b finish=%b busy=%b done=%b",
        $time, clk, reset_n, start , finish , busy , done
    );
end

initial begin
    
    reset_n = 1'b0;
    start = 1'b0;
    finish = 1'b0;
    
    #3;
    reset_n = 1'b1;
    
    @(negedge clk);
    start = 1'b1;
    @(posedge clk);

    @(negedge clk);
    start = 1'b0;
    @(posedge clk);

    @(negedge clk);
    finish = 1'b1;
    @(posedge clk);

    @(negedge clk);
    finish = 1'b0;
    @(posedge clk);

    @(negedge clk);
    reset_n = 1'b0;
    #2;
    $finish;
    
end

endmodule
