module not_gate_tb;

reg a;
reg b;
reg c;
wire y;

integer i;

not_gate uut(
	.a(a),
	.b(b),
	.c(c),
	.y(y)
);

initial begin 
	
	for (i = 0; i < 8; i = i + 1) begin
		{a , b , c} = i;
		#10;
	end

	$finish;
end

initial begin
	$monitor(
		"time=%0t , a=%b , b=%b , c=%b , y=%b",
		$time , a , b , c , y	
	);

end

endmodule
