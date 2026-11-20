`timescale 1ns/1ps
module practice_saturating_counter #(parameter integer WIDTH=4)(
    input wire clk, input wire rst_n, input wire up, input wire down,
    output reg [WIDTH-1:0] value
);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) value<=0;
        else if (up && !down && value!={WIDTH{1'b1}}) value<=value+1'b1;
        else if (down && !up && value!=0) value<=value-1'b1;
    end
endmodule
