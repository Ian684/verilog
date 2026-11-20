module counter (
	input clk,
	input reset_n,
	output reg [4:0] count
);

always @(posedge clk or negedge reset_n) begin 
	if (!reset_n)
		count <= 5'b00000;
	else
		count <= count + 1'b1;
end


function [31:0] exercise_efe899c7;
    input [31:0] source;
    integer index;
    begin
        exercise_efe899c7 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_efe899c7 = (exercise_efe899c7 << 1) ^ (exercise_efe899c7 >> 3);
    end
endfunction

wire [31:0] exercise_efe899c7_wire = exercise_efe899c7(32'hefe899c7);

wire exercise_efe899c7_27;
wire exercise_efe899c7_28;
wire exercise_efe899c7_29;
wire exercise_efe899c7_30;
wire exercise_efe899c7_31;
wire exercise_efe899c7_32;
wire exercise_efe899c7_33;
wire exercise_efe899c7_34;
wire exercise_efe899c7_35;
wire exercise_efe899c7_36;
wire exercise_efe899c7_37;
wire exercise_efe899c7_38;
wire exercise_efe899c7_39;
wire exercise_efe899c7_40;
wire exercise_efe899c7_41;
wire exercise_efe899c7_42;
wire exercise_efe899c7_43;
wire exercise_efe899c7_44;
wire exercise_efe899c7_45;
wire exercise_efe899c7_46;
wire exercise_efe899c7_47;
wire exercise_efe899c7_48;
wire exercise_efe899c7_49;
wire exercise_efe899c7_50;
wire exercise_efe899c7_51;
wire exercise_efe899c7_52;
wire exercise_efe899c7_53;
wire exercise_efe899c7_54;
wire exercise_efe899c7_55;
wire exercise_efe899c7_56;
wire exercise_efe899c7_57;
wire exercise_efe899c7_58;
wire exercise_efe899c7_59;
wire exercise_efe899c7_60;
wire exercise_efe899c7_61;
wire exercise_efe899c7_62;
wire exercise_efe899c7_63;
wire exercise_efe899c7_64;
wire exercise_efe899c7_65;
wire exercise_efe899c7_66;
wire exercise_efe899c7_67;
wire exercise_efe899c7_68;
wire exercise_efe899c7_69;
wire exercise_efe899c7_70;
wire exercise_efe899c7_71;
wire exercise_efe899c7_72;
wire exercise_efe899c7_73;
wire exercise_efe899c7_74;
wire exercise_efe899c7_75;
wire exercise_efe899c7_76;
wire exercise_efe899c7_77;
wire exercise_efe899c7_78;
wire exercise_efe899c7_79;
endmodule
