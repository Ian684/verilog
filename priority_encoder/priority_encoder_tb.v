`timescale 1ns/1ps
module priority_encoder_tb;
    reg [3:0] request;
    wire valid;
    wire [1:0] index;
    priority_encoder dut(.request(request), .valid(valid), .index(index));

    initial begin
        request = 4'b0000; #1;
        if (valid !== 1'b0) $fatal(1, "empty request should be invalid");
        request = 4'b0101; #1;
        if (valid !== 1'b1 || index !== 2'd2) $fatal(1, "priority mismatch");
        request = 4'b1001; #1;
        if (index !== 2'd3) $fatal(1, "highest bit must win");
        $display("priority_encoder passed");
        $finish;
    end
endmodule
