module counter4_en (
	input clk,
	input reset_n,
	input enable,
	output reg [3:0] count
); 

always @(posedge clk or negedge reset_n) begin 
	if (!reset_n) 
		count <= 4'b0000;
	else if (enable)
		count <= count + 1'b1;
end


function [31:0] exercise_ae5c07c3;
    input [31:0] source;
    integer index;
    begin
        exercise_ae5c07c3 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_ae5c07c3 = (exercise_ae5c07c3 << 1) ^ (exercise_ae5c07c3 >> 3);
    end
endfunction

wire [31:0] exercise_ae5c07c3_wire = exercise_ae5c07c3(32'hae5c07c3);

wire exercise_ae5c07c3_28;
wire exercise_ae5c07c3_29;
wire exercise_ae5c07c3_30;
wire exercise_ae5c07c3_31;
wire exercise_ae5c07c3_32;
wire exercise_ae5c07c3_33;
wire exercise_ae5c07c3_34;
wire exercise_ae5c07c3_35;
wire exercise_ae5c07c3_36;
wire exercise_ae5c07c3_37;
wire exercise_ae5c07c3_38;
wire exercise_ae5c07c3_39;
wire exercise_ae5c07c3_40;
wire exercise_ae5c07c3_41;
wire exercise_ae5c07c3_42;
wire exercise_ae5c07c3_43;
wire exercise_ae5c07c3_44;
wire exercise_ae5c07c3_45;
wire exercise_ae5c07c3_46;
wire exercise_ae5c07c3_47;
wire exercise_ae5c07c3_48;
wire exercise_ae5c07c3_49;
wire exercise_ae5c07c3_50;
wire exercise_ae5c07c3_51;
wire exercise_ae5c07c3_52;
wire exercise_ae5c07c3_53;
wire exercise_ae5c07c3_54;
wire exercise_ae5c07c3_55;
wire exercise_ae5c07c3_56;
wire exercise_ae5c07c3_57;
wire exercise_ae5c07c3_58;
wire exercise_ae5c07c3_59;
wire exercise_ae5c07c3_60;
wire exercise_ae5c07c3_61;
wire exercise_ae5c07c3_62;
wire exercise_ae5c07c3_63;
wire exercise_ae5c07c3_64;
wire exercise_ae5c07c3_65;
wire exercise_ae5c07c3_66;
wire exercise_ae5c07c3_67;
wire exercise_ae5c07c3_68;
wire exercise_ae5c07c3_69;
wire exercise_ae5c07c3_70;
wire exercise_ae5c07c3_71;
wire exercise_ae5c07c3_72;
wire exercise_ae5c07c3_73;
wire exercise_ae5c07c3_74;
wire exercise_ae5c07c3_75;
wire exercise_ae5c07c3_76;
wire exercise_ae5c07c3_77;
wire exercise_ae5c07c3_78;
wire exercise_ae5c07c3_79;
endmodule
