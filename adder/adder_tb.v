module adder4_tb;

reg [3:0] a;
reg [3:0] b;

wire [3:0] sum;
wire carry;

adder4 uut (
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry)
);

initial begin 

	a = 4'd3;
	b = 4'd5;
	#10;

	a = 4'd15;
	b = 4'd1;
	#10;

	a = 4'd10;
	b = 4'd9;
	#10;

	$finish;
end

initial begin 
	$monitor (
		"time=%0t , a=%d , b=%d , sum=%d , carry%b",
		$time , a , b , sum , carry
	);

end

endmodule
