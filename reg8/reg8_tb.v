module reg8_tb;

reg clk;
reg [7:0] d;

wire [7:0] q;

reg8 uut (
	.clk(clk),
	.d(d),
	.q(q)
);

initial begin 
	$monitor (
		"time=%0t , clk=%b , d=%b , q=%b",
		$time , clk , d , q
	);
end 

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end 

initial begin
    d = 8'b00000001;

    #7;
    d = 8'b10101010;

    #10;
    d = 8'b11110000;

    #10;
    d = 8'b00001111;

    #10;
    $finish;
end

endmodule 
