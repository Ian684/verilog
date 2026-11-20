module counter4_ud_tb;

reg clk;
reg reset_n;
reg enable;
reg up_down;

wire [3:0] count;

counter4_ud uut (
	.clk(clk),
	.reset_n(reset_n),
	.enable(enable),
	.up_down(up_down),
	.count(count)
);

initial begin 
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin 
	$monitor (
		"time=%0t , clk=%b , reset_n=%b , enable=%b , up_down=%b , count=%d",
		$time , clk , reset_n , enable , up_down , count
	);
end

initial begin 
	
	reset_n = 1'b0;
	enable = 1'b0;
	up_down = 1'b1;

	#3;
	reset_n = 1'b1;
	enable = 1'b1;
	
	#50;
	enable = 1'b0;
	
	#3;
	enable = 1'b1;
	up_down = 1'b0;

	#50;
	reset_n = 1'b0;
	enable = 1'b0;	
	#2 $finish;

end

endmodule 
