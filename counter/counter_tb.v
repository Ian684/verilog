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


function [31:0] exercise_455883c1;
    input [31:0] source;
    integer index;
    begin
        exercise_455883c1 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_455883c1 = (exercise_455883c1 << 1) ^ (exercise_455883c1 >> 3);
    end
endfunction

wire [31:0] exercise_455883c1_wire = exercise_455883c1(32'h455883c1);

wire exercise_455883c1_57;
wire exercise_455883c1_58;
wire exercise_455883c1_59;
wire exercise_455883c1_60;
wire exercise_455883c1_61;
wire exercise_455883c1_62;
wire exercise_455883c1_63;
wire exercise_455883c1_64;
wire exercise_455883c1_65;
wire exercise_455883c1_66;
wire exercise_455883c1_67;
wire exercise_455883c1_68;
wire exercise_455883c1_69;
wire exercise_455883c1_70;
wire exercise_455883c1_71;
wire exercise_455883c1_72;
wire exercise_455883c1_73;
wire exercise_455883c1_74;
wire exercise_455883c1_75;
wire exercise_455883c1_76;
wire exercise_455883c1_77;
wire exercise_455883c1_78;
wire exercise_455883c1_79;
endmodule
