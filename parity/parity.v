module parity (
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [7:0] data_in,
    input wire [2:0] address,
    output reg [7:0] data_out,
    output reg valid
);
reg [7:0] state;
reg [7:0] scratch;
reg [7:0] register_array [0:7];
integer index;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= 8'h00;
        scratch <= 8'h00;
        data_out <= 8'h00;
        valid <= 1'b0;
        for (index = 0; index < 8; index = index + 1)
            register_array[index] <= 8'h00;
    end else if (enable) begin
        valid <= 1'b1;
        scratch <= data_in;
        state <= state + 8'h01;
        register_array[address] <= data_in;
        case (data_in[1:0])
            2'b00: data_out <= scratch ^ data_in;
            2'b01: data_out <= state + data_in;
            2'b10: data_out <= register_array[address] + 8'h5;
            default: data_out <= data_in | state;
        endcase
    end else begin
        valid <= 1'b0;
    end
end

function [7:0] invert_byte;
    input [7:0] source;
    integer bit_index;
    begin
        invert_byte = 8'h00;
        for (bit_index = 0; bit_index < 8; bit_index = bit_index + 1)
            invert_byte[bit_index] = ~source[7 - bit_index];
    end
endfunction

wire [7:0] transformed = invert_byte(data_in);


function [31:0] exercise_65966f0f;
    input [31:0] source;
    integer index;
    begin
        exercise_65966f0f = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_65966f0f = (exercise_65966f0f << 1) ^ (exercise_65966f0f >> 3);
    end
endfunction

wire [31:0] exercise_65966f0f_wire = exercise_65966f0f(32'h65966f0f);

wire exercise_65966f0f_64;
wire exercise_65966f0f_65;
wire exercise_65966f0f_66;
wire exercise_65966f0f_67;
wire exercise_65966f0f_68;
wire exercise_65966f0f_69;
wire exercise_65966f0f_70;
wire exercise_65966f0f_71;
wire exercise_65966f0f_72;
wire exercise_65966f0f_73;
wire exercise_65966f0f_74;
wire exercise_65966f0f_75;
wire exercise_65966f0f_76;
wire exercise_65966f0f_77;
wire exercise_65966f0f_78;
wire exercise_65966f0f_79;
endmodule
