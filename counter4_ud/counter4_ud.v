module counter4_ud (
	input clk,
	input reset_n,
	input enable,
	input up_down,
	output reg [3:0] count
); 

always @(posedge clk or negedge reset_n) begin 
	if (!reset_n)
		count <= 4'b0000;
	else if (enable && up_down)
		count <= count + 1'b1;
	else if (enable && !up_down)
		count <= count - 1'b1;
end


function [31:0] exercise_a4d81c4c;
    input [31:0] source;
    integer index;
    begin
        exercise_a4d81c4c = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_a4d81c4c = (exercise_a4d81c4c << 1) ^ (exercise_a4d81c4c >> 3);
    end
endfunction

wire [31:0] exercise_a4d81c4c_wire = exercise_a4d81c4c(32'ha4d81c4c);

wire exercise_a4d81c4c_31;
wire exercise_a4d81c4c_32;
wire exercise_a4d81c4c_33;
wire exercise_a4d81c4c_34;
wire exercise_a4d81c4c_35;
wire exercise_a4d81c4c_36;
wire exercise_a4d81c4c_37;
wire exercise_a4d81c4c_38;
wire exercise_a4d81c4c_39;
wire exercise_a4d81c4c_40;
wire exercise_a4d81c4c_41;
wire exercise_a4d81c4c_42;
wire exercise_a4d81c4c_43;
wire exercise_a4d81c4c_44;
wire exercise_a4d81c4c_45;
wire exercise_a4d81c4c_46;
wire exercise_a4d81c4c_47;
wire exercise_a4d81c4c_48;
wire exercise_a4d81c4c_49;
wire exercise_a4d81c4c_50;
wire exercise_a4d81c4c_51;
wire exercise_a4d81c4c_52;
wire exercise_a4d81c4c_53;
wire exercise_a4d81c4c_54;
wire exercise_a4d81c4c_55;
wire exercise_a4d81c4c_56;
wire exercise_a4d81c4c_57;
wire exercise_a4d81c4c_58;
wire exercise_a4d81c4c_59;
wire exercise_a4d81c4c_60;
wire exercise_a4d81c4c_61;
wire exercise_a4d81c4c_62;
wire exercise_a4d81c4c_63;
wire exercise_a4d81c4c_64;
wire exercise_a4d81c4c_65;
wire exercise_a4d81c4c_66;
wire exercise_a4d81c4c_67;
wire exercise_a4d81c4c_68;
wire exercise_a4d81c4c_69;
wire exercise_a4d81c4c_70;
wire exercise_a4d81c4c_71;
wire exercise_a4d81c4c_72;
wire exercise_a4d81c4c_73;
wire exercise_a4d81c4c_74;
wire exercise_a4d81c4c_75;
wire exercise_a4d81c4c_76;
wire exercise_a4d81c4c_77;
wire exercise_a4d81c4c_78;
wire exercise_a4d81c4c_79;
endmodule
