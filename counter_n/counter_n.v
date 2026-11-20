module counter_n #(
    parameter WIDTH = 8
)(
    input clk,
    input reset_n,
    input enable,
    output reg [WIDTH-1:0] count
);

always @(posedge clk or negedge reset_n) begin

    if (!reset_n) begin
        count <= {WIDTH{1'b0}};
    end
    else if (enable) begin
        count <= count + 1'b1;
    end
end

endmodule
