module shift_reg8_tb;

reg clk;
reg reset_n;
reg enable;
reg serial_in;
reg [7:0] test_data;
 
wire [7:0] q;

integer i;

shift_reg8 uut (
	.clk(clk),
	.reset_n(reset_n),
	.enable(enable),
	.serial_in(serial_in),
	.q(q)
);

initial begin 
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin 
	$monitor (
		"time=%0t , clk=%b , reset_n=%b , enable=%b , serial_in=%b , q=%b",
		$time , clk , reset_n , enable , serial_in , q
	);
end

initial begin

	reset_n = 1'b0;
	enable = 1'b0;
	test_data = 8'b10110010;
	serial_in = 1'b1;
	
	#2;
	reset_n = 1'b1;
	enable = 1'b1;

	for (i = 7; i >= 0; i = i - 1) begin
		@(negedge clk);
		serial_in = test_data[i];
		@(posedge clk);
	end

	@(negedge clk);
	enable = 1'b0;
	#10;
	
	reset_n = 1'b0;	
	#2;
	$finish;

end

endmodule
