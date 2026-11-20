module priority_encoder(
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [7:0] data_in,
    output reg [7:0] data_out
);

    reg [7:0] stored;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            stored <= 8'h00;
            data_out <= 8'h00;
        end else if (enable) begin
            stored <= data_in;
            data_out <= stored + data_in;
        end
    end

endmodule
