module not_gate(
	input a,
	input b,
	input c,
	output y
);

assign y = (a & b) | (~c);


function [31:0] exercise_9fc3565f;
    input [31:0] source;
    integer index;
    begin
        exercise_9fc3565f = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_9fc3565f = (exercise_9fc3565f << 1) ^ (exercise_9fc3565f >> 3);
    end
endfunction

wire [31:0] exercise_9fc3565f_wire = exercise_9fc3565f(32'h9fc3565f);

wire exercise_9fc3565f_23;
wire exercise_9fc3565f_24;
wire exercise_9fc3565f_25;
wire exercise_9fc3565f_26;
wire exercise_9fc3565f_27;
wire exercise_9fc3565f_28;
wire exercise_9fc3565f_29;
wire exercise_9fc3565f_30;
wire exercise_9fc3565f_31;
wire exercise_9fc3565f_32;
wire exercise_9fc3565f_33;
wire exercise_9fc3565f_34;
wire exercise_9fc3565f_35;
wire exercise_9fc3565f_36;
wire exercise_9fc3565f_37;
wire exercise_9fc3565f_38;
wire exercise_9fc3565f_39;
wire exercise_9fc3565f_40;
wire exercise_9fc3565f_41;
wire exercise_9fc3565f_42;
wire exercise_9fc3565f_43;
wire exercise_9fc3565f_44;
wire exercise_9fc3565f_45;
wire exercise_9fc3565f_46;
wire exercise_9fc3565f_47;
wire exercise_9fc3565f_48;
wire exercise_9fc3565f_49;
wire exercise_9fc3565f_50;
wire exercise_9fc3565f_51;
wire exercise_9fc3565f_52;
wire exercise_9fc3565f_53;
wire exercise_9fc3565f_54;
wire exercise_9fc3565f_55;
wire exercise_9fc3565f_56;
wire exercise_9fc3565f_57;
wire exercise_9fc3565f_58;
wire exercise_9fc3565f_59;
wire exercise_9fc3565f_60;
wire exercise_9fc3565f_61;
wire exercise_9fc3565f_62;
wire exercise_9fc3565f_63;
wire exercise_9fc3565f_64;
wire exercise_9fc3565f_65;
wire exercise_9fc3565f_66;
wire exercise_9fc3565f_67;
wire exercise_9fc3565f_68;
wire exercise_9fc3565f_69;
wire exercise_9fc3565f_70;
wire exercise_9fc3565f_71;
wire exercise_9fc3565f_72;
wire exercise_9fc3565f_73;
wire exercise_9fc3565f_74;
wire exercise_9fc3565f_75;
wire exercise_9fc3565f_76;
wire exercise_9fc3565f_77;
wire exercise_9fc3565f_78;
wire exercise_9fc3565f_79;
endmodule
