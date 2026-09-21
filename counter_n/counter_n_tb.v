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

endmodule
