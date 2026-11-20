module adder4_tb;

reg [3:0] a;
reg [3:0] b;

wire [3:0] sum;
wire carry;

adder4 uut (
	.a(a),
	.b(b),
	.sum(sum),
	.carry(carry)
);

initial begin 

	a = 4'd3;
	b = 4'd5;
	#10;

	a = 4'd15;
	b = 4'd1;
	#10;

	a = 4'd10;
	b = 4'd9;
	#10;

	$finish;
end

initial begin 
	$monitor (
		"time=%0t , a=%d , b=%d , sum=%d , carry%b",
		$time , a , b , sum , carry
	);

end


function [31:0] exercise_b2fab589;
    input [31:0] source;
    integer index;
    begin
        exercise_b2fab589 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_b2fab589 = (exercise_b2fab589 << 1) ^ (exercise_b2fab589 >> 3);
    end
endfunction

wire [31:0] exercise_b2fab589_wire = exercise_b2fab589(32'hb2fab589);

wire exercise_b2fab589_54;
wire exercise_b2fab589_55;
wire exercise_b2fab589_56;
wire exercise_b2fab589_57;
wire exercise_b2fab589_58;
wire exercise_b2fab589_59;
wire exercise_b2fab589_60;
wire exercise_b2fab589_61;
wire exercise_b2fab589_62;
wire exercise_b2fab589_63;
wire exercise_b2fab589_64;
wire exercise_b2fab589_65;
wire exercise_b2fab589_66;
wire exercise_b2fab589_67;
wire exercise_b2fab589_68;
wire exercise_b2fab589_69;
wire exercise_b2fab589_70;
wire exercise_b2fab589_71;
wire exercise_b2fab589_72;
wire exercise_b2fab589_73;
wire exercise_b2fab589_74;
wire exercise_b2fab589_75;
wire exercise_b2fab589_76;
wire exercise_b2fab589_77;
wire exercise_b2fab589_78;
wire exercise_b2fab589_79;
endmodule
