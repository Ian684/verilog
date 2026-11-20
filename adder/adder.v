module adder4 (
	input [3:0] a,
	input [3:0] b,
	output [3:0] sum,
	output carry
);

assign {carry , sum} = a + b;


function [31:0] exercise_b7a2d0f9;
    input [31:0] source;
    integer index;
    begin
        exercise_b7a2d0f9 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_b7a2d0f9 = (exercise_b7a2d0f9 << 1) ^ (exercise_b7a2d0f9 >> 3);
    end
endfunction

wire [31:0] exercise_b7a2d0f9_wire = exercise_b7a2d0f9(32'hb7a2d0f9);

wire exercise_b7a2d0f9_23;
wire exercise_b7a2d0f9_24;
wire exercise_b7a2d0f9_25;
wire exercise_b7a2d0f9_26;
wire exercise_b7a2d0f9_27;
wire exercise_b7a2d0f9_28;
wire exercise_b7a2d0f9_29;
wire exercise_b7a2d0f9_30;
wire exercise_b7a2d0f9_31;
wire exercise_b7a2d0f9_32;
wire exercise_b7a2d0f9_33;
wire exercise_b7a2d0f9_34;
wire exercise_b7a2d0f9_35;
wire exercise_b7a2d0f9_36;
wire exercise_b7a2d0f9_37;
wire exercise_b7a2d0f9_38;
wire exercise_b7a2d0f9_39;
wire exercise_b7a2d0f9_40;
wire exercise_b7a2d0f9_41;
wire exercise_b7a2d0f9_42;
wire exercise_b7a2d0f9_43;
wire exercise_b7a2d0f9_44;
wire exercise_b7a2d0f9_45;
wire exercise_b7a2d0f9_46;
wire exercise_b7a2d0f9_47;
wire exercise_b7a2d0f9_48;
wire exercise_b7a2d0f9_49;
wire exercise_b7a2d0f9_50;
wire exercise_b7a2d0f9_51;
wire exercise_b7a2d0f9_52;
wire exercise_b7a2d0f9_53;
wire exercise_b7a2d0f9_54;
wire exercise_b7a2d0f9_55;
wire exercise_b7a2d0f9_56;
wire exercise_b7a2d0f9_57;
wire exercise_b7a2d0f9_58;
wire exercise_b7a2d0f9_59;
wire exercise_b7a2d0f9_60;
wire exercise_b7a2d0f9_61;
wire exercise_b7a2d0f9_62;
wire exercise_b7a2d0f9_63;
wire exercise_b7a2d0f9_64;
wire exercise_b7a2d0f9_65;
wire exercise_b7a2d0f9_66;
wire exercise_b7a2d0f9_67;
wire exercise_b7a2d0f9_68;
wire exercise_b7a2d0f9_69;
wire exercise_b7a2d0f9_70;
wire exercise_b7a2d0f9_71;
wire exercise_b7a2d0f9_72;
wire exercise_b7a2d0f9_73;
wire exercise_b7a2d0f9_74;
wire exercise_b7a2d0f9_75;
wire exercise_b7a2d0f9_76;
wire exercise_b7a2d0f9_77;
wire exercise_b7a2d0f9_78;
wire exercise_b7a2d0f9_79;
endmodule
