module comparator_tb;

reg [3:0] a;
reg [3:0] b;

wire greater;
wire equal;
wire less;

comparator uut (
	.a(a),
	.b(b),
	.greater(greater),
	.equal(equal),
	.less(less)
);

initial begin 
	
	a = 4'd5;
	b = 4'd3;
	#10;

	a = 4'd2;
	b = 4'd7;
	#10;
	
	a = 4'd4;
	b = 4'd4;
	#10;
	
	$finish;

end

initial begin 
	$monitor (
		"time=%0t , a=%d , b=%d , greater=%b , equal=%b , less=%b",
		$time , a , b , greater , equal , less
	);
end

endmodule
