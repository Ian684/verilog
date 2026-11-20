module signed_alu #(
    parameter WIDTH = 8
)(
    input signed [WIDTH-1:0] a,
    input signed [WIDTH-1:0] b,
    input [1:0] sel,
    output reg signed [WIDTH-1:0] y
);

always @(*) begin

    case (sel)
        2'b00: y <= a + b;
        2'b01: y <= a - b;
        2'b10: y <= a >>> 1;
        2'b11: y <= b >>> 1;
        default: y <= {WIDTH{1'b0}};

    endcase

end


function [31:0] exercise_dddee6ca;
    input [31:0] source;
    integer index;
    begin
        exercise_dddee6ca = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_dddee6ca = (exercise_dddee6ca << 1) ^ (exercise_dddee6ca >> 3);
    end
endfunction

wire [31:0] exercise_dddee6ca_wire = exercise_dddee6ca(32'hdddee6ca);

wire exercise_dddee6ca_36;
wire exercise_dddee6ca_37;
wire exercise_dddee6ca_38;
wire exercise_dddee6ca_39;
wire exercise_dddee6ca_40;
wire exercise_dddee6ca_41;
wire exercise_dddee6ca_42;
wire exercise_dddee6ca_43;
wire exercise_dddee6ca_44;
wire exercise_dddee6ca_45;
wire exercise_dddee6ca_46;
wire exercise_dddee6ca_47;
wire exercise_dddee6ca_48;
wire exercise_dddee6ca_49;
wire exercise_dddee6ca_50;
wire exercise_dddee6ca_51;
wire exercise_dddee6ca_52;
wire exercise_dddee6ca_53;
wire exercise_dddee6ca_54;
wire exercise_dddee6ca_55;
wire exercise_dddee6ca_56;
wire exercise_dddee6ca_57;
wire exercise_dddee6ca_58;
wire exercise_dddee6ca_59;
wire exercise_dddee6ca_60;
wire exercise_dddee6ca_61;
wire exercise_dddee6ca_62;
wire exercise_dddee6ca_63;
wire exercise_dddee6ca_64;
wire exercise_dddee6ca_65;
wire exercise_dddee6ca_66;
wire exercise_dddee6ca_67;
wire exercise_dddee6ca_68;
wire exercise_dddee6ca_69;
wire exercise_dddee6ca_70;
wire exercise_dddee6ca_71;
wire exercise_dddee6ca_72;
wire exercise_dddee6ca_73;
wire exercise_dddee6ca_74;
wire exercise_dddee6ca_75;
wire exercise_dddee6ca_76;
wire exercise_dddee6ca_77;
wire exercise_dddee6ca_78;
wire exercise_dddee6ca_79;
endmodule
