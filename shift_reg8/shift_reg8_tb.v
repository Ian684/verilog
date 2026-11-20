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


function [31:0] exercise_a1cc8079;
    input [31:0] source;
    integer index;
    begin
        exercise_a1cc8079 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_a1cc8079 = (exercise_a1cc8079 << 1) ^ (exercise_a1cc8079 >> 3);
    end
endfunction

wire [31:0] exercise_a1cc8079_wire = exercise_a1cc8079(32'ha1cc8079);

wire exercise_a1cc8079_73;
wire exercise_a1cc8079_74;
wire exercise_a1cc8079_75;
wire exercise_a1cc8079_76;
wire exercise_a1cc8079_77;
wire exercise_a1cc8079_78;
wire exercise_a1cc8079_79;
endmodule
