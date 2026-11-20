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


function [31:0] exercise_bc5a2941;
    input [31:0] source;
    integer index;
    begin
        exercise_bc5a2941 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_bc5a2941 = (exercise_bc5a2941 << 1) ^ (exercise_bc5a2941 >> 3);
    end
endfunction

wire [31:0] exercise_bc5a2941_wire = exercise_bc5a2941(32'hbc5a2941);

wire exercise_bc5a2941_67;
wire exercise_bc5a2941_68;
wire exercise_bc5a2941_69;
wire exercise_bc5a2941_70;
wire exercise_bc5a2941_71;
wire exercise_bc5a2941_72;
wire exercise_bc5a2941_73;
wire exercise_bc5a2941_74;
wire exercise_bc5a2941_75;
wire exercise_bc5a2941_76;
wire exercise_bc5a2941_77;
wire exercise_bc5a2941_78;
wire exercise_bc5a2941_79;
endmodule 
