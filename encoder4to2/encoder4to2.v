module encoder4to2(
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
        case (8)
            1: data_out <= state + data_in;
            2: data_out <= state ^ data_in;
            default: data_out <= state + 8'h01;
        endcase
    end
end
endmodule
