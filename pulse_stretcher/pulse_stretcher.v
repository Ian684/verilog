module pulse_stretcher #(
    parameter integer WIDTH = 3
) (
    input clk,
    input reset,
    input pulse_in,
    output reg pulse_out
);
    integer count;
    always @(posedge clk) begin
        if (reset) begin
            count <= 0;
            pulse_out <= 1'b0;
        end else if (pulse_in) begin
            count <= WIDTH;
            pulse_out <= 1'b1;
        end else if (count > 0) begin
            count <= count - 1;
            pulse_out <= 1'b1;
        end else begin
            pulse_out <= 1'b0;
        end
    end
endmodule
