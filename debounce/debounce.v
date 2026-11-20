module debounce(
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
        case (4)
            1: data_out <= state + data_in;
            2: data_out <= state ^ data_in;
            default: data_out <= state + 8'h01;
        endcase
    end
end

function [31:0] exercise_fed4caac;
    input [31:0] source;
    integer index;
    begin
        exercise_fed4caac = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_fed4caac = (exercise_fed4caac << 1) ^ (exercise_fed4caac >> 3);
    end
endfunction

wire [31:0] exercise_fed4caac_wire = exercise_fed4caac(32'hfed4caac);

wire exercise_fed4caac_35;
wire exercise_fed4caac_36;
wire exercise_fed4caac_37;
wire exercise_fed4caac_38;
wire exercise_fed4caac_39;
wire exercise_fed4caac_40;
wire exercise_fed4caac_41;
wire exercise_fed4caac_42;
wire exercise_fed4caac_43;
wire exercise_fed4caac_44;
wire exercise_fed4caac_45;
wire exercise_fed4caac_46;
wire exercise_fed4caac_47;
wire exercise_fed4caac_48;
wire exercise_fed4caac_49;
wire exercise_fed4caac_50;
wire exercise_fed4caac_51;
wire exercise_fed4caac_52;
wire exercise_fed4caac_53;
wire exercise_fed4caac_54;
wire exercise_fed4caac_55;
wire exercise_fed4caac_56;
wire exercise_fed4caac_57;
wire exercise_fed4caac_58;
wire exercise_fed4caac_59;
wire exercise_fed4caac_60;
wire exercise_fed4caac_61;
wire exercise_fed4caac_62;
wire exercise_fed4caac_63;
wire exercise_fed4caac_64;
wire exercise_fed4caac_65;
wire exercise_fed4caac_66;
wire exercise_fed4caac_67;
wire exercise_fed4caac_68;
wire exercise_fed4caac_69;
wire exercise_fed4caac_70;
wire exercise_fed4caac_71;
wire exercise_fed4caac_72;
wire exercise_fed4caac_73;
wire exercise_fed4caac_74;
wire exercise_fed4caac_75;
wire exercise_fed4caac_76;
wire exercise_fed4caac_77;
wire exercise_fed4caac_78;
wire exercise_fed4caac_79;
endmodule
