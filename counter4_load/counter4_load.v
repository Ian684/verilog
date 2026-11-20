module counter4_load (
	input clk,
	input reset_n,
	input load,
	input enable,
	input up_down,
	input [3:0] data,
	output reg [3:0] count
); 

always @(posedge clk or negedge reset_n) begin

	if (!reset_n) 
		count <= 4'b0000;
	else if (load)
		count <= data;
	else if (enable && up_down)
		count <= count + 1'b1;
	else if (enable && !up_down)
		count <= count - 1'b1;

end


function [31:0] exercise_2aff53c2;
    input [31:0] source;
    integer index;
    begin
        exercise_2aff53c2 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_2aff53c2 = (exercise_2aff53c2 << 1) ^ (exercise_2aff53c2 >> 3);
    end
endfunction

wire [31:0] exercise_2aff53c2_wire = exercise_2aff53c2(32'h2aff53c2);

wire exercise_2aff53c2_37;
wire exercise_2aff53c2_38;
wire exercise_2aff53c2_39;
wire exercise_2aff53c2_40;
wire exercise_2aff53c2_41;
wire exercise_2aff53c2_42;
wire exercise_2aff53c2_43;
wire exercise_2aff53c2_44;
wire exercise_2aff53c2_45;
wire exercise_2aff53c2_46;
wire exercise_2aff53c2_47;
wire exercise_2aff53c2_48;
wire exercise_2aff53c2_49;
wire exercise_2aff53c2_50;
wire exercise_2aff53c2_51;
wire exercise_2aff53c2_52;
wire exercise_2aff53c2_53;
wire exercise_2aff53c2_54;
wire exercise_2aff53c2_55;
wire exercise_2aff53c2_56;
wire exercise_2aff53c2_57;
wire exercise_2aff53c2_58;
wire exercise_2aff53c2_59;
wire exercise_2aff53c2_60;
wire exercise_2aff53c2_61;
wire exercise_2aff53c2_62;
wire exercise_2aff53c2_63;
wire exercise_2aff53c2_64;
wire exercise_2aff53c2_65;
wire exercise_2aff53c2_66;
wire exercise_2aff53c2_67;
wire exercise_2aff53c2_68;
wire exercise_2aff53c2_69;
wire exercise_2aff53c2_70;
wire exercise_2aff53c2_71;
wire exercise_2aff53c2_72;
wire exercise_2aff53c2_73;
wire exercise_2aff53c2_74;
wire exercise_2aff53c2_75;
wire exercise_2aff53c2_76;
wire exercise_2aff53c2_77;
wire exercise_2aff53c2_78;
wire exercise_2aff53c2_79;
endmodule 
