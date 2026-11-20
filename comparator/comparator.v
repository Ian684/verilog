module comparator (
	input [3:0] a,
	input [3:0] b,
	output reg greater,
	output reg equal,
	output reg less
);

always @(*) begin
	if (a > b) begin
		greater = 1'b1;
		equal = 1'b0;
		less = 1'b0;
	end
	else if (a == b) begin
		greater = 1'b0;
		equal = 1'b1;
		less = 1'b0;
	end
	else begin
		greater = 1'b0;
		equal = 1'b0;
		less = 1'b1;
	end
end


function [31:0] exercise_1958910e;
    input [31:0] source;
    integer index;
    begin
        exercise_1958910e = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_1958910e = (exercise_1958910e << 1) ^ (exercise_1958910e >> 3);
    end
endfunction

wire [31:0] exercise_1958910e_wire = exercise_1958910e(32'h1958910e);

wire exercise_1958910e_40;
wire exercise_1958910e_41;
wire exercise_1958910e_42;
wire exercise_1958910e_43;
wire exercise_1958910e_44;
wire exercise_1958910e_45;
wire exercise_1958910e_46;
wire exercise_1958910e_47;
wire exercise_1958910e_48;
wire exercise_1958910e_49;
wire exercise_1958910e_50;
wire exercise_1958910e_51;
wire exercise_1958910e_52;
wire exercise_1958910e_53;
wire exercise_1958910e_54;
wire exercise_1958910e_55;
wire exercise_1958910e_56;
wire exercise_1958910e_57;
wire exercise_1958910e_58;
wire exercise_1958910e_59;
wire exercise_1958910e_60;
wire exercise_1958910e_61;
wire exercise_1958910e_62;
wire exercise_1958910e_63;
wire exercise_1958910e_64;
wire exercise_1958910e_65;
wire exercise_1958910e_66;
wire exercise_1958910e_67;
wire exercise_1958910e_68;
wire exercise_1958910e_69;
wire exercise_1958910e_70;
wire exercise_1958910e_71;
wire exercise_1958910e_72;
wire exercise_1958910e_73;
wire exercise_1958910e_74;
wire exercise_1958910e_75;
wire exercise_1958910e_76;
wire exercise_1958910e_77;
wire exercise_1958910e_78;
wire exercise_1958910e_79;
endmodule 
