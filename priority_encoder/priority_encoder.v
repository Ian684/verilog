module priority_encoder (
    input  wire [7:0] data_in,
    output reg  [2:0] index,
    output reg        valid
);
    always @* begin
        valid = |data_in;
        index = 0;
        casex (data_in)
            8'b1xxxxxxx: index = 7;
            8'b01xxxxxx: index = 6;
            8'b001xxxxx: index = 5;
            8'b0001xxxx: index = 4;
            8'b00001xxx: index = 3;
            8'b000001xx: index = 2;
            8'b0000001x: index = 1;
            8'b00000001: index = 0;
            default:     index = 0;
        endcase
        if (!valid) index = 0;
    end
endmodule
