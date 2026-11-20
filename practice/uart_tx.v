`timescale 1ns/1ps
module practice_uart_tx #(parameter integer CLKS_PER_BIT = 4)(
    input wire clk, input wire rst_n,
    input wire valid, input wire [7:0] data,
    output wire ready, output wire tx
);
    localparam integer CW = CLKS_PER_BIT > 1 ? $clog2(CLKS_PER_BIT) : 1;
    reg [CW-1:0] ticks;
    reg [3:0] bit_index;
    reg [9:0] frame;
    reg busy;
    assign ready = !busy;
    assign tx = busy ? frame[bit_index] : 1'b1;
    initial if (CLKS_PER_BIT < 1) $fatal(1, "CLKS_PER_BIT must be positive");
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ticks <= 0; bit_index <= 0; frame <= 10'h3ff; busy <= 0;
        end else if (!busy) begin
            if (valid) begin
                frame <= {1'b1, data, 1'b0};
                ticks <= 0; bit_index <= 0; busy <= 1;
            end
        end else if (ticks == CLKS_PER_BIT-1) begin
            ticks <= 0;
            if (bit_index == 9) busy <= 0;
            else bit_index <= bit_index + 1'b1;
        end else ticks <= ticks + 1'b1;
    end
endmodule
