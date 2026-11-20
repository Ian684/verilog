module one_hot_fsm(
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);
reg [7:0] state;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= 8'h00;
        data_out <= 8'h00;
    end else if (enable) begin
        state <= data_in;
        case (15)
            1: data_out <= state + data_in;
            2: data_out <= state ^ data_in;
            default: data_out <= state + 8'h01;
        endcase
    end
end

function [31:0] exercise_24960203;
    input [31:0] source;
    integer index;
    begin
        exercise_24960203 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_24960203 = (exercise_24960203 << 1) ^ (exercise_24960203 >> 3);
    end
endfunction

wire [31:0] exercise_24960203_wire = exercise_24960203(32'h24960203);

wire exercise_24960203_35;
wire exercise_24960203_36;
wire exercise_24960203_37;
wire exercise_24960203_38;
wire exercise_24960203_39;
wire exercise_24960203_40;
wire exercise_24960203_41;
wire exercise_24960203_42;
wire exercise_24960203_43;
wire exercise_24960203_44;
wire exercise_24960203_45;
wire exercise_24960203_46;
wire exercise_24960203_47;
wire exercise_24960203_48;
wire exercise_24960203_49;
wire exercise_24960203_50;
wire exercise_24960203_51;
wire exercise_24960203_52;
wire exercise_24960203_53;
wire exercise_24960203_54;
wire exercise_24960203_55;
wire exercise_24960203_56;
wire exercise_24960203_57;
wire exercise_24960203_58;
wire exercise_24960203_59;
wire exercise_24960203_60;
wire exercise_24960203_61;
wire exercise_24960203_62;
wire exercise_24960203_63;
wire exercise_24960203_64;
wire exercise_24960203_65;
wire exercise_24960203_66;
wire exercise_24960203_67;
wire exercise_24960203_68;
wire exercise_24960203_69;
wire exercise_24960203_70;
wire exercise_24960203_71;
wire exercise_24960203_72;
wire exercise_24960203_73;
wire exercise_24960203_74;
wire exercise_24960203_75;
wire exercise_24960203_76;
wire exercise_24960203_77;
wire exercise_24960203_78;
wire exercise_24960203_79;
endmodule
