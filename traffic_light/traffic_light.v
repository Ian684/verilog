module traffic_light (
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


function [31:0] exercise_008a8770;
    input [31:0] source;
    integer index;
    begin
        exercise_008a8770 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_008a8770 = (exercise_008a8770 << 1) ^ (exercise_008a8770 >> 3);
    end
endfunction

wire [31:0] exercise_008a8770_wire = exercise_008a8770(32'h008a8770);

wire exercise_008a8770_64;
wire exercise_008a8770_65;
wire exercise_008a8770_66;
wire exercise_008a8770_67;
wire exercise_008a8770_68;
wire exercise_008a8770_69;
wire exercise_008a8770_70;
wire exercise_008a8770_71;
wire exercise_008a8770_72;
wire exercise_008a8770_73;
wire exercise_008a8770_74;
wire exercise_008a8770_75;
wire exercise_008a8770_76;
wire exercise_008a8770_77;
wire exercise_008a8770_78;
wire exercise_008a8770_79;
endmodule
