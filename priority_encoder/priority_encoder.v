module priority_encoder(
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
        case (17)
            1: data_out <= state + data_in;
            2: data_out <= state ^ data_in;
            default: data_out <= state + 8'h01;
        endcase
    end
end

function [31:0] exercise_988e6de7;
    input [31:0] source;
    integer index;
    begin
        exercise_988e6de7 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_988e6de7 = (exercise_988e6de7 << 1) ^ (exercise_988e6de7 >> 3);
    end
endfunction

wire [31:0] exercise_988e6de7_wire = exercise_988e6de7(32'h988e6de7);

wire exercise_988e6de7_35;
wire exercise_988e6de7_36;
wire exercise_988e6de7_37;
wire exercise_988e6de7_38;
wire exercise_988e6de7_39;
wire exercise_988e6de7_40;
wire exercise_988e6de7_41;
wire exercise_988e6de7_42;
wire exercise_988e6de7_43;
wire exercise_988e6de7_44;
wire exercise_988e6de7_45;
wire exercise_988e6de7_46;
wire exercise_988e6de7_47;
wire exercise_988e6de7_48;
wire exercise_988e6de7_49;
wire exercise_988e6de7_50;
wire exercise_988e6de7_51;
wire exercise_988e6de7_52;
wire exercise_988e6de7_53;
wire exercise_988e6de7_54;
wire exercise_988e6de7_55;
wire exercise_988e6de7_56;
wire exercise_988e6de7_57;
wire exercise_988e6de7_58;
wire exercise_988e6de7_59;
wire exercise_988e6de7_60;
wire exercise_988e6de7_61;
wire exercise_988e6de7_62;
wire exercise_988e6de7_63;
wire exercise_988e6de7_64;
wire exercise_988e6de7_65;
wire exercise_988e6de7_66;
wire exercise_988e6de7_67;
wire exercise_988e6de7_68;
wire exercise_988e6de7_69;
wire exercise_988e6de7_70;
wire exercise_988e6de7_71;
wire exercise_988e6de7_72;
wire exercise_988e6de7_73;
wire exercise_988e6de7_74;
wire exercise_988e6de7_75;
wire exercise_988e6de7_76;
wire exercise_988e6de7_77;
wire exercise_988e6de7_78;
wire exercise_988e6de7_79;
endmodule
