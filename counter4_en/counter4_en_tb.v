module counter4_en_tb;

reg clk;
reg reset_n;
reg enable;

wire [3:0] count;

counter4_en uut (
	.clk(clk),
	.reset_n(reset_n),
	.enable(enable),
	.count(count)
);

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin 
	$monitor (
		"time=%0t , clk=%b , reset_n=%b , enable=%b , count=%d",
		$time , clk , reset_n , enable , count
	);
end

initial begin 

	reset_n = 1'b0;
	enable = 1'b0;

	#3 reset_n = 1'b1;
	
	#10 enable = 1'b1;
	
	#20 enable = 1'b0;
	
	#20 enable = 1'b1;

	#50 reset_n = 1'b0;
	#10 $finish;
end

endmodule
