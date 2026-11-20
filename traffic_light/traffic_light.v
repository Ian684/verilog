module traffic_light(
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);

    reg [7:0] work;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            work <= 8'h00;
            data_out <= 8'h00;
        end else if (enable) begin
            work <= data_in;
            data_out <= work ^ data_in;
        end
    end

    initial begin
        work = 8'h00;
    end

endmodule
