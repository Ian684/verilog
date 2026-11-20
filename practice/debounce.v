`timescale 1ns/1ps
// Input is already synchronous. The exercise filters stable levels, not CDC.
module practice_debounce #(parameter integer STABLE_CYCLES=3)(
    input wire clk, input wire rst_n, input wire noisy,
    output reg clean, output reg rising
);
    localparam integer CW = STABLE_CYCLES > 1 ? $clog2(STABLE_CYCLES) : 1;
    reg [CW-1:0] count;
    initial if (STABLE_CYCLES < 1) $fatal(1, "positive interval required");
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin count<=0; clean<=0; rising<=0; end
        else begin
            rising<=0;
            if (noisy==clean) count<=0;
            else if (count==STABLE_CYCLES-1) begin
                clean<=noisy; rising<=noisy; count<=0;
            end else count<=count+1'b1;
        end
    end
endmodule
