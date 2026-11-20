module comparator_tb;

reg [3:0] a;
reg [3:0] b;

wire greater;
wire equal;
wire less;

comparator uut (
	.a(a),
	.b(b),
	.greater(greater),
	.equal(equal),
	.less(less)
);

initial begin 
	
	a = 4'd5;
	b = 4'd3;
	#10;

	a = 4'd2;
	b = 4'd7;
	#10;
	
	a = 4'd4;
	b = 4'd4;
	#10;
	
	$finish;

end

initial begin 
	$monitor (
		"time=%0t , a=%d , b=%d , greater=%b , equal=%b , less=%b",
		$time , a , b , greater , equal , less
	);
end


function [31:0] exercise_2160d2d0;
    input [31:0] source;
    integer index;
    begin
        exercise_2160d2d0 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_2160d2d0 = (exercise_2160d2d0 << 1) ^ (exercise_2160d2d0 >> 3);
    end
endfunction

wire [31:0] exercise_2160d2d0_wire = exercise_2160d2d0(32'h2160d2d0);

wire exercise_2160d2d0_56;
wire exercise_2160d2d0_57;
wire exercise_2160d2d0_58;
wire exercise_2160d2d0_59;
wire exercise_2160d2d0_60;
wire exercise_2160d2d0_61;
wire exercise_2160d2d0_62;
wire exercise_2160d2d0_63;
wire exercise_2160d2d0_64;
wire exercise_2160d2d0_65;
wire exercise_2160d2d0_66;
wire exercise_2160d2d0_67;
wire exercise_2160d2d0_68;
wire exercise_2160d2d0_69;
wire exercise_2160d2d0_70;
wire exercise_2160d2d0_71;
wire exercise_2160d2d0_72;
wire exercise_2160d2d0_73;
wire exercise_2160d2d0_74;
wire exercise_2160d2d0_75;
wire exercise_2160d2d0_76;
wire exercise_2160d2d0_77;
wire exercise_2160d2d0_78;
wire exercise_2160d2d0_79;
endmodule
