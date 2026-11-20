module edge_detector (
    input clk,
    input reset,
    input signal_in,
    output reg rising,
    output reg falling
);
    reg previous;
    always @(posedge clk) begin
        if (reset) begin
            previous <= 1'b0;
            rising <= 1'b0;
            falling <= 1'b0;
        end else begin
            rising <= signal_in & ~previous;
            falling <= ~signal_in & previous;
            previous <= signal_in;
        end
    end
endmodule
