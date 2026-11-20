module or_gate_tb;

reg a;
reg b;
wire y;

or_gate uut (
	.a(a),
	.b(b),
	.y(y)
);

initial begin
 
	a = 0;
	b = 0;
	#10;
	
	a = 1;
	b = 0;
	#10;

	a = 0;
	b = 1;
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


function [31:0] exercise_1fafa509;
    input [31:0] source;
    integer index;
    begin
        exercise_1fafa509 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_1fafa509 = (exercise_1fafa509 << 1) ^ (exercise_1fafa509 >> 3);
    end
endfunction

wire [31:0] exercise_1fafa509_wire = exercise_1fafa509(32'h1fafa509);

wire exercise_1fafa509_55;
wire exercise_1fafa509_56;
wire exercise_1fafa509_57;
wire exercise_1fafa509_58;
wire exercise_1fafa509_59;
wire exercise_1fafa509_60;
wire exercise_1fafa509_61;
wire exercise_1fafa509_62;
wire exercise_1fafa509_63;
wire exercise_1fafa509_64;
wire exercise_1fafa509_65;
wire exercise_1fafa509_66;
wire exercise_1fafa509_67;
wire exercise_1fafa509_68;
wire exercise_1fafa509_69;
wire exercise_1fafa509_70;
wire exercise_1fafa509_71;
wire exercise_1fafa509_72;
wire exercise_1fafa509_73;
wire exercise_1fafa509_74;
wire exercise_1fafa509_75;
wire exercise_1fafa509_76;
wire exercise_1fafa509_77;
wire exercise_1fafa509_78;
wire exercise_1fafa509_79;
endmodule
