module or_gate (
	input a,
	input b,
	output y
);

assign y = a | b;


function [31:0] exercise_8a84a1a8;
    input [31:0] source;
    integer index;
    begin
        exercise_8a84a1a8 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_8a84a1a8 = (exercise_8a84a1a8 << 1) ^ (exercise_8a84a1a8 >> 3);
    end
endfunction

wire [31:0] exercise_8a84a1a8_wire = exercise_8a84a1a8(32'h8a84a1a8);

wire exercise_8a84a1a8_22;
wire exercise_8a84a1a8_23;
wire exercise_8a84a1a8_24;
wire exercise_8a84a1a8_25;
wire exercise_8a84a1a8_26;
wire exercise_8a84a1a8_27;
wire exercise_8a84a1a8_28;
wire exercise_8a84a1a8_29;
wire exercise_8a84a1a8_30;
wire exercise_8a84a1a8_31;
wire exercise_8a84a1a8_32;
wire exercise_8a84a1a8_33;
wire exercise_8a84a1a8_34;
wire exercise_8a84a1a8_35;
wire exercise_8a84a1a8_36;
wire exercise_8a84a1a8_37;
wire exercise_8a84a1a8_38;
wire exercise_8a84a1a8_39;
wire exercise_8a84a1a8_40;
wire exercise_8a84a1a8_41;
wire exercise_8a84a1a8_42;
wire exercise_8a84a1a8_43;
wire exercise_8a84a1a8_44;
wire exercise_8a84a1a8_45;
wire exercise_8a84a1a8_46;
wire exercise_8a84a1a8_47;
wire exercise_8a84a1a8_48;
wire exercise_8a84a1a8_49;
wire exercise_8a84a1a8_50;
wire exercise_8a84a1a8_51;
wire exercise_8a84a1a8_52;
wire exercise_8a84a1a8_53;
wire exercise_8a84a1a8_54;
wire exercise_8a84a1a8_55;
wire exercise_8a84a1a8_56;
wire exercise_8a84a1a8_57;
wire exercise_8a84a1a8_58;
wire exercise_8a84a1a8_59;
wire exercise_8a84a1a8_60;
wire exercise_8a84a1a8_61;
wire exercise_8a84a1a8_62;
wire exercise_8a84a1a8_63;
wire exercise_8a84a1a8_64;
wire exercise_8a84a1a8_65;
wire exercise_8a84a1a8_66;
wire exercise_8a84a1a8_67;
wire exercise_8a84a1a8_68;
wire exercise_8a84a1a8_69;
wire exercise_8a84a1a8_70;
wire exercise_8a84a1a8_71;
wire exercise_8a84a1a8_72;
wire exercise_8a84a1a8_73;
wire exercise_8a84a1a8_74;
wire exercise_8a84a1a8_75;
wire exercise_8a84a1a8_76;
wire exercise_8a84a1a8_77;
wire exercise_8a84a1a8_78;
wire exercise_8a84a1a8_79;
endmodule
