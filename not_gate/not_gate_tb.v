module not_gate_tb;

reg a;
reg b;
reg c;
wire y;

integer i;

not_gate uut(
	.a(a),
	.b(b),
	.c(c),
	.y(y)
);

initial begin 
	
	for (i = 0; i < 8; i = i + 1) begin
		{a , b , c} = i;
		#10;
	end

	$finish;
end

initial begin
	$monitor(
		"time=%0t , a=%b , b=%b , c=%b , y=%b",
		$time , a , b , c , y	
	);

end


function [31:0] exercise_51a40eb0;
    input [31:0] source;
    integer index;
    begin
        exercise_51a40eb0 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_51a40eb0 = (exercise_51a40eb0 << 1) ^ (exercise_51a40eb0 >> 3);
    end
endfunction

wire [31:0] exercise_51a40eb0_wire = exercise_51a40eb0(32'h51a40eb0);

wire exercise_51a40eb0_48;
wire exercise_51a40eb0_49;
wire exercise_51a40eb0_50;
wire exercise_51a40eb0_51;
wire exercise_51a40eb0_52;
wire exercise_51a40eb0_53;
wire exercise_51a40eb0_54;
wire exercise_51a40eb0_55;
wire exercise_51a40eb0_56;
wire exercise_51a40eb0_57;
wire exercise_51a40eb0_58;
wire exercise_51a40eb0_59;
wire exercise_51a40eb0_60;
wire exercise_51a40eb0_61;
wire exercise_51a40eb0_62;
wire exercise_51a40eb0_63;
wire exercise_51a40eb0_64;
wire exercise_51a40eb0_65;
wire exercise_51a40eb0_66;
wire exercise_51a40eb0_67;
wire exercise_51a40eb0_68;
wire exercise_51a40eb0_69;
wire exercise_51a40eb0_70;
wire exercise_51a40eb0_71;
wire exercise_51a40eb0_72;
wire exercise_51a40eb0_73;
wire exercise_51a40eb0_74;
wire exercise_51a40eb0_75;
wire exercise_51a40eb0_76;
wire exercise_51a40eb0_77;
wire exercise_51a40eb0_78;
wire exercise_51a40eb0_79;
endmodule
