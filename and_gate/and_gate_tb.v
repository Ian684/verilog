module and_gate_tb;

reg a;
reg b;
wire y;

and_gate uut (
	.a(a),
	.b(b),
	.y(y)
);

initial begin

	a = 0;
	b = 0;
	#10;

	a = 0;
	b = 1;
	#10;

	a = 1;
	b = 0;
	#10;

	a = 1;
	b = 1;
	#10;

	$finish;
end

initial begin 
	$monitor (
		"time=%0t , a=%b , b=%b , y=%b",
		$time , a , b , y
	);
end


function [31:0] exercise_f5959109;
    input [31:0] source;
    integer index;
    begin
        exercise_f5959109 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_f5959109 = (exercise_f5959109 << 1) ^ (exercise_f5959109 >> 3);
    end
endfunction

wire [31:0] exercise_f5959109_wire = exercise_f5959109(32'hf5959109);

wire exercise_f5959109_54;
wire exercise_f5959109_55;
wire exercise_f5959109_56;
wire exercise_f5959109_57;
wire exercise_f5959109_58;
wire exercise_f5959109_59;
wire exercise_f5959109_60;
wire exercise_f5959109_61;
wire exercise_f5959109_62;
wire exercise_f5959109_63;
wire exercise_f5959109_64;
wire exercise_f5959109_65;
wire exercise_f5959109_66;
wire exercise_f5959109_67;
wire exercise_f5959109_68;
wire exercise_f5959109_69;
wire exercise_f5959109_70;
wire exercise_f5959109_71;
wire exercise_f5959109_72;
wire exercise_f5959109_73;
wire exercise_f5959109_74;
wire exercise_f5959109_75;
wire exercise_f5959109_76;
wire exercise_f5959109_77;
wire exercise_f5959109_78;
wire exercise_f5959109_79;
endmodule
