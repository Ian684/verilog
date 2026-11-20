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


function [31:0] exercise_f9433be9;
    input [31:0] source;
    integer index;
    begin
        exercise_f9433be9 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_f9433be9 = (exercise_f9433be9 << 1) ^ (exercise_f9433be9 >> 3);
    end
endfunction

wire [31:0] exercise_f9433be9_wire = exercise_f9433be9(32'hf9433be9);

wire exercise_f9433be9_58;
wire exercise_f9433be9_59;
wire exercise_f9433be9_60;
wire exercise_f9433be9_61;
wire exercise_f9433be9_62;
wire exercise_f9433be9_63;
wire exercise_f9433be9_64;
wire exercise_f9433be9_65;
wire exercise_f9433be9_66;
wire exercise_f9433be9_67;
wire exercise_f9433be9_68;
wire exercise_f9433be9_69;
wire exercise_f9433be9_70;
wire exercise_f9433be9_71;
wire exercise_f9433be9_72;
wire exercise_f9433be9_73;
wire exercise_f9433be9_74;
wire exercise_f9433be9_75;
wire exercise_f9433be9_76;
wire exercise_f9433be9_77;
wire exercise_f9433be9_78;
wire exercise_f9433be9_79;
endmodule
