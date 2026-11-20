module priority_encoder (
    input  [3:0] request,
    output reg       valid,
    output reg [1:0] index
);
    always @(*) begin
        valid = |request;
        if (request[3]) index = 2'd3;
        else if (request[2]) index = 2'd2;
        else if (request[1]) index = 2'd1;
        else index = 2'd0;
    end
endmodule
