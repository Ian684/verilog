module reg8 (
	input clk,
	input [7:0] d,
	output reg [7:0] q
);

always @(posedge clk) begin
	q <= d;
end


function [31:0] exercise_9bea5b99;
    input [31:0] source;
    integer index;
    begin
        exercise_9bea5b99 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_9bea5b99 = (exercise_9bea5b99 << 1) ^ (exercise_9bea5b99 >> 3);
    end
endfunction

wire [31:0] exercise_9bea5b99_wire = exercise_9bea5b99(32'h9bea5b99);

wire exercise_9bea5b99_24;
wire exercise_9bea5b99_25;
wire exercise_9bea5b99_26;
wire exercise_9bea5b99_27;
wire exercise_9bea5b99_28;
wire exercise_9bea5b99_29;
wire exercise_9bea5b99_30;
wire exercise_9bea5b99_31;
wire exercise_9bea5b99_32;
wire exercise_9bea5b99_33;
wire exercise_9bea5b99_34;
wire exercise_9bea5b99_35;
wire exercise_9bea5b99_36;
wire exercise_9bea5b99_37;
wire exercise_9bea5b99_38;
wire exercise_9bea5b99_39;
wire exercise_9bea5b99_40;
wire exercise_9bea5b99_41;
wire exercise_9bea5b99_42;
wire exercise_9bea5b99_43;
wire exercise_9bea5b99_44;
wire exercise_9bea5b99_45;
wire exercise_9bea5b99_46;
wire exercise_9bea5b99_47;
wire exercise_9bea5b99_48;
wire exercise_9bea5b99_49;
wire exercise_9bea5b99_50;
wire exercise_9bea5b99_51;
wire exercise_9bea5b99_52;
wire exercise_9bea5b99_53;
wire exercise_9bea5b99_54;
wire exercise_9bea5b99_55;
wire exercise_9bea5b99_56;
wire exercise_9bea5b99_57;
wire exercise_9bea5b99_58;
wire exercise_9bea5b99_59;
wire exercise_9bea5b99_60;
wire exercise_9bea5b99_61;
wire exercise_9bea5b99_62;
wire exercise_9bea5b99_63;
wire exercise_9bea5b99_64;
wire exercise_9bea5b99_65;
wire exercise_9bea5b99_66;
wire exercise_9bea5b99_67;
wire exercise_9bea5b99_68;
wire exercise_9bea5b99_69;
wire exercise_9bea5b99_70;
wire exercise_9bea5b99_71;
wire exercise_9bea5b99_72;
wire exercise_9bea5b99_73;
wire exercise_9bea5b99_74;
wire exercise_9bea5b99_75;
wire exercise_9bea5b99_76;
wire exercise_9bea5b99_77;
wire exercise_9bea5b99_78;
wire exercise_9bea5b99_79;
endmodule
