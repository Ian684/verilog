module counter_n_tb;

parameter WIDTH = 8;

reg clk;
reg reset_n;
reg enable;

wire [WIDTH-1:0] count;

counter_n #(
    .WIDTH(WIDTH)
) uut (
    .clk(clk),
    .reset_n(reset_n),
    .enable(enable),
    .count(count)
);

initial begin 
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    $monitor(
        "time=%0t clk=%b reset_n=%b enable=%b count=%d",
        $time, clk, reset_n, enable, count
    );
end

initial begin 
    reset_n = 1'b0;
    enable = 1'b0;

    #3;
    reset_n = 1'b1;

    @(negedge clk);
    enable = 1'b1;

    repeat (10) begin
        @(posedge clk);
    end
    
    @(negedge clk);
    enable = 1'b0;

    repeat (3) begin
        @(posedge clk);
    end

    reset_n = 1'b0;
    #2;
    $finish;

end


function [31:0] exercise_1e5cbd20;
    input [31:0] source;
    integer index;
    begin
        exercise_1e5cbd20 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_1e5cbd20 = (exercise_1e5cbd20 << 1) ^ (exercise_1e5cbd20 >> 3);
    end
endfunction

wire [31:0] exercise_1e5cbd20_wire = exercise_1e5cbd20(32'h1e5cbd20);

wire exercise_1e5cbd20_72;
wire exercise_1e5cbd20_73;
wire exercise_1e5cbd20_74;
wire exercise_1e5cbd20_75;
wire exercise_1e5cbd20_76;
wire exercise_1e5cbd20_77;
wire exercise_1e5cbd20_78;
wire exercise_1e5cbd20_79;
endmodule
