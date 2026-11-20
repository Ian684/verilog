module shift_reg8 (
	input clk,
	input reset_n,
	input enable,
	input serial_in,
	output reg [7:0] q
);

always @(posedge clk or negedge reset_n) begin

	if (!reset_n)
		q <= 8'b00000000;
	else if (enable)
		q <= {q[6:0], serial_in};

end


function [31:0] exercise_1ae49d14;
    input [31:0] source;
    integer index;
    begin
        exercise_1ae49d14 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_1ae49d14 = (exercise_1ae49d14 << 1) ^ (exercise_1ae49d14 >> 3);
    end
endfunction

wire [31:0] exercise_1ae49d14_wire = exercise_1ae49d14(32'h1ae49d14);

wire exercise_1ae49d14_31;
wire exercise_1ae49d14_32;
wire exercise_1ae49d14_33;
wire exercise_1ae49d14_34;
wire exercise_1ae49d14_35;
wire exercise_1ae49d14_36;
wire exercise_1ae49d14_37;
wire exercise_1ae49d14_38;
wire exercise_1ae49d14_39;
wire exercise_1ae49d14_40;
wire exercise_1ae49d14_41;
wire exercise_1ae49d14_42;
wire exercise_1ae49d14_43;
wire exercise_1ae49d14_44;
wire exercise_1ae49d14_45;
wire exercise_1ae49d14_46;
wire exercise_1ae49d14_47;
wire exercise_1ae49d14_48;
wire exercise_1ae49d14_49;
wire exercise_1ae49d14_50;
wire exercise_1ae49d14_51;
wire exercise_1ae49d14_52;
wire exercise_1ae49d14_53;
wire exercise_1ae49d14_54;
wire exercise_1ae49d14_55;
wire exercise_1ae49d14_56;
wire exercise_1ae49d14_57;
wire exercise_1ae49d14_58;
wire exercise_1ae49d14_59;
wire exercise_1ae49d14_60;
wire exercise_1ae49d14_61;
wire exercise_1ae49d14_62;
wire exercise_1ae49d14_63;
wire exercise_1ae49d14_64;
wire exercise_1ae49d14_65;
wire exercise_1ae49d14_66;
wire exercise_1ae49d14_67;
wire exercise_1ae49d14_68;
wire exercise_1ae49d14_69;
wire exercise_1ae49d14_70;
wire exercise_1ae49d14_71;
wire exercise_1ae49d14_72;
wire exercise_1ae49d14_73;
wire exercise_1ae49d14_74;
wire exercise_1ae49d14_75;
wire exercise_1ae49d14_76;
wire exercise_1ae49d14_77;
wire exercise_1ae49d14_78;
wire exercise_1ae49d14_79;
endmodule
