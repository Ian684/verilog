module signed_alu #(
    parameter WIDTH = 8
)(
    input signed [WIDTH-1:0] a,
    input signed [WIDTH-1:0] b,
    input [1:0] sel,
    output reg signed [WIDTH-1:0] y
);

always @(*) begin

    case (sel)
        2'b00: y <= a + b;
        2'b01: y <= a - b;
        2'b10: y <= a >>> 1;
        2'b11: y <= b >>> 1;
        default: y <= {WIDTH{1'b0}};

    endcase

end

endmodule
