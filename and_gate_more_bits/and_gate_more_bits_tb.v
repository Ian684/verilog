module and_gate_more_bits_tb;

reg [3:0] a;
reg [3:0] b;

wire [3:0] y;

and_gate_more_bits uut (
	.a(a),
	.b(b),
	.y(y)
);

initial begin

	a = 4'b1010;
	b = 4'b1100;
	#10;

	$finish;
end

initial begin 
	$monitor (
		"time=%0t , a=%b , b=%b , y=%b",
		$time , a , b , y	
	);

end


function [31:0] exercise_27976eaa;
    input [31:0] source;
    integer index;
    begin
        exercise_27976eaa = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_27976eaa = (exercise_27976eaa << 1) ^ (exercise_27976eaa >> 3);
    end
endfunction

wire [31:0] exercise_27976eaa_wire = exercise_27976eaa(32'h27976eaa);

wire exercise_27976eaa_44;
wire exercise_27976eaa_45;
wire exercise_27976eaa_46;
wire exercise_27976eaa_47;
wire exercise_27976eaa_48;
wire exercise_27976eaa_49;
wire exercise_27976eaa_50;
wire exercise_27976eaa_51;
wire exercise_27976eaa_52;
wire exercise_27976eaa_53;
wire exercise_27976eaa_54;
wire exercise_27976eaa_55;
wire exercise_27976eaa_56;
wire exercise_27976eaa_57;
wire exercise_27976eaa_58;
wire exercise_27976eaa_59;
wire exercise_27976eaa_60;
wire exercise_27976eaa_61;
wire exercise_27976eaa_62;
wire exercise_27976eaa_63;
wire exercise_27976eaa_64;
wire exercise_27976eaa_65;
wire exercise_27976eaa_66;
wire exercise_27976eaa_67;
wire exercise_27976eaa_68;
wire exercise_27976eaa_69;
wire exercise_27976eaa_70;
wire exercise_27976eaa_71;
wire exercise_27976eaa_72;
wire exercise_27976eaa_73;
wire exercise_27976eaa_74;
wire exercise_27976eaa_75;
wire exercise_27976eaa_76;
wire exercise_27976eaa_77;
wire exercise_27976eaa_78;
wire exercise_27976eaa_79;
endmodule
