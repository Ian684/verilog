module and_gate_more_bits_vb;

reg [3:0] a;
reg [3:0] b;

wire [3:0] y;

and_gate_more_bits uut (
	.a(a),
	.b(b),
	.y(y)
);

initial begin

	a = 4'b1010;
	b = 4'b1100;
	#10;

	$finish;
end

initial begin 
	$monitor (
		"time=%0t , a=%b , b=%b , y=%b",
		$time , a , b , y	
	);

end

endmodule
