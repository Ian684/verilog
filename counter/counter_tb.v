module counter_tb;

reg clk;
reg reset_n;

wire [4:0] count;

counter uut (
	.clk(clk),
	.reset_n(reset_n),
	.count(count)
);

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin 
	$monitor (
		"time=%0t , clk=%b , reset_n=%b , count=%d",
		$time , clk , reset_n , count
	);
end

initial begin 
	
	reset_n = 0;
	#3;
	
	reset_n = 1;
	#80;

	reset_n = 0;
	#2;

	reset_n = 1;
	#30;

	$finish;

end

endmodule
