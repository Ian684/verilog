module debounce #(
    parameter integer COUNT_MAX = 3
) (
    input clk,
    input reset,
    input noisy,
    output reg clean
);
    integer count;
    always @(posedge clk) begin
        if (reset) begin
            count <= 0;
            clean <= 1'b0;
        end else if (noisy == clean) begin
            count <= 0;
        end else if (count == COUNT_MAX - 1) begin
            clean <= noisy;
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
endmodule
