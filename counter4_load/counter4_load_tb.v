module counter4_load_tb;

reg clk;
reg reset_n;
reg load;
reg enable;
reg up_down;
reg [3:0] data;

wire [3:0] count;

integer i;

counter4_load uut (
	.clk(clk),
	.reset_n(reset_n),
	.load(load),
	.enable(enable),
	.up_down(up_down),
	.data(data),
	.count(count)
);

initial begin 
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial begin 
	$monitor (
		"time=%0t , clk=%b , reset_n=%b , load=%b , enable=%b , up_down=%b , data=%d , count=%d" , $time , clk , reset_n , load , enable , up_down , data , count
	);
end

initial begin 
	
	reset_n = 1'b0;
	load = 1'b0;
	enable = 1'b0;
	up_down = 1'b1;
	data = 4'd0;
	
	#7;
	reset_n = 1'b1;
	enable = 1'b1;
	up_down = 1'b1;
	
	repeat (10) begin
		@(posedge clk);
	end
	
	@(negedge clk);
	load = 1'b1;
	data = 4'd10;
	@(posedge clk);
	#10;
	
	load = 1'b0;
	up_down = 1'b0;
	for (i = 0; i < 10; i = i + 1) begin
		@(posedge clk);
	end

	enable = 1'b0;
	#10;
	reset_n = 1'b0;
	#2;
	$finish;

end


function [31:0] exercise_b2f1b5d1;
    input [31:0] source;
    integer index;
    begin
        exercise_b2f1b5d1 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_b2f1b5d1 = (exercise_b2f1b5d1 << 1) ^ (exercise_b2f1b5d1 >> 3);
    end
endfunction

wire [31:0] exercise_b2f1b5d1_wire = exercise_b2f1b5d1(32'hb2f1b5d1);

endmodule
