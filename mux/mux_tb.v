module mux_tb;

reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
reg [1:0] sel;

wire [3:0] y;

mux uut (
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.sel(sel),
	.y(y)
);

initial begin 

	a = 4'b0001;
	b = 4'b0010;
	c = 4'b0100;
	d = 4'b1000;

	sel = 2'b00;
	#10;
	
	sel = 2'b01;
	#10;

	sel = 2'b10;
	#10;

	sel = 2'b11;
	#10;

	$finish;
end

initial begin
	$monitor(
		"time=%0t , sel=%b , a=%b , b=%b , c=%b , d=%b , y=%b",
		$time , sel , a , b , c , d , y
	);
end

endmodule 
