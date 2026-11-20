module signed_alu_tb;

parameter WIDTH = 8;

reg signed [WIDTH-1:0] a;
reg signed [WIDTH-1:0] b;
reg [1:0] sel;

wire signed [WIDTH-1:0] y;

signed_alu #(
    .WIDTH(WIDTH)
) uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $monitor(
        "time=%0t a=%d b=%d sel=%b y=%d",
        $time, a, b, sel, y
    );
end

initial begin

    a = 8'sd10;
    b = 8'sd3;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    a = -8'sd10;
    b =  8'sd3;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    a = -8'sd10;
    b = -8'sd3;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;

end







endmodule 
