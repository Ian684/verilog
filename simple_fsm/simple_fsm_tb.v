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


function [31:0] exercise_d15bee0a;
    input [31:0] source;
    integer index;
    begin
        exercise_d15bee0a = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_d15bee0a = (exercise_d15bee0a << 1) ^ (exercise_d15bee0a >> 3);
    end
endfunction

wire [31:0] exercise_d15bee0a_wire = exercise_d15bee0a(32'hd15bee0a);

wire exercise_d15bee0a_77;
wire exercise_d15bee0a_78;
wire exercise_d15bee0a_79;
endmodule
