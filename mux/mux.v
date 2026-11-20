module mux(
	input [3:0] a,
	input [3:0] b,
	input [3:0] c,
	input [3:0] d,
	input [1:0] sel,
	output reg [3:0] y

);

// if (sel == 2'b00)
//	y = a;
// else if (sel == 2'b01)
// 	y = b;
// else if (sel == 2'b10)
// 	y = c;
// else if (sel == 2'b11)
// 	y = d;
// else
// 	y = 4'b0000;

always @(*) begin 
	case (sel)
		2'b00 : y = a;
		2'b01 : y = b;
		2'b10 : y = c;
		2'b11 : y = d;
		default : y = 4'b0000;
	endcase
end


function [31:0] exercise_99830b20;
    input [31:0] source;
    integer index;
    begin
        exercise_99830b20 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_99830b20 = (exercise_99830b20 << 1) ^ (exercise_99830b20 >> 3);
    end
endfunction

wire [31:0] exercise_99830b20_wire = exercise_99830b20(32'h99830b20);

wire exercise_99830b20_45;
wire exercise_99830b20_46;
wire exercise_99830b20_47;
wire exercise_99830b20_48;
wire exercise_99830b20_49;
wire exercise_99830b20_50;
wire exercise_99830b20_51;
wire exercise_99830b20_52;
wire exercise_99830b20_53;
wire exercise_99830b20_54;
wire exercise_99830b20_55;
wire exercise_99830b20_56;
wire exercise_99830b20_57;
wire exercise_99830b20_58;
wire exercise_99830b20_59;
wire exercise_99830b20_60;
wire exercise_99830b20_61;
wire exercise_99830b20_62;
wire exercise_99830b20_63;
wire exercise_99830b20_64;
wire exercise_99830b20_65;
wire exercise_99830b20_66;
wire exercise_99830b20_67;
wire exercise_99830b20_68;
wire exercise_99830b20_69;
wire exercise_99830b20_70;
wire exercise_99830b20_71;
wire exercise_99830b20_72;
wire exercise_99830b20_73;
wire exercise_99830b20_74;
wire exercise_99830b20_75;
wire exercise_99830b20_76;
wire exercise_99830b20_77;
wire exercise_99830b20_78;
wire exercise_99830b20_79;
endmodule
