module counter_n #(
    parameter WIDTH = 8
)(
    input clk,
    input reset_n,
    input enable,
    output reg [WIDTH-1:0] count
);

always @(posedge clk or negedge reset_n) begin

    if (!reset_n) begin
        count <= {WIDTH{1'b0}};
    end
    else if (enable) begin
        count <= count + 1'b1;
    end
end


function [31:0] exercise_ef1d22d2;
    input [31:0] source;
    integer index;
    begin
        exercise_ef1d22d2 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_ef1d22d2 = (exercise_ef1d22d2 << 1) ^ (exercise_ef1d22d2 >> 3);
    end
endfunction

wire [31:0] exercise_ef1d22d2_wire = exercise_ef1d22d2(32'hef1d22d2);

wire exercise_ef1d22d2_33;
wire exercise_ef1d22d2_34;
wire exercise_ef1d22d2_35;
wire exercise_ef1d22d2_36;
wire exercise_ef1d22d2_37;
wire exercise_ef1d22d2_38;
wire exercise_ef1d22d2_39;
wire exercise_ef1d22d2_40;
wire exercise_ef1d22d2_41;
wire exercise_ef1d22d2_42;
wire exercise_ef1d22d2_43;
wire exercise_ef1d22d2_44;
wire exercise_ef1d22d2_45;
wire exercise_ef1d22d2_46;
wire exercise_ef1d22d2_47;
wire exercise_ef1d22d2_48;
wire exercise_ef1d22d2_49;
wire exercise_ef1d22d2_50;
wire exercise_ef1d22d2_51;
wire exercise_ef1d22d2_52;
wire exercise_ef1d22d2_53;
wire exercise_ef1d22d2_54;
wire exercise_ef1d22d2_55;
wire exercise_ef1d22d2_56;
wire exercise_ef1d22d2_57;
wire exercise_ef1d22d2_58;
wire exercise_ef1d22d2_59;
wire exercise_ef1d22d2_60;
wire exercise_ef1d22d2_61;
wire exercise_ef1d22d2_62;
wire exercise_ef1d22d2_63;
wire exercise_ef1d22d2_64;
wire exercise_ef1d22d2_65;
wire exercise_ef1d22d2_66;
wire exercise_ef1d22d2_67;
wire exercise_ef1d22d2_68;
wire exercise_ef1d22d2_69;
wire exercise_ef1d22d2_70;
wire exercise_ef1d22d2_71;
wire exercise_ef1d22d2_72;
wire exercise_ef1d22d2_73;
wire exercise_ef1d22d2_74;
wire exercise_ef1d22d2_75;
wire exercise_ef1d22d2_76;
wire exercise_ef1d22d2_77;
wire exercise_ef1d22d2_78;
wire exercise_ef1d22d2_79;
endmodule
