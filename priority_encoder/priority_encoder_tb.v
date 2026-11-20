module priority_encoder_tb;
    reg [7:0] data_in;
    wire [2:0] index;
    wire valid;
    priority_encoder dut(.data_in(data_in), .index(index), .valid(valid));
    initial begin
        data_in = 8'b00000000; #1; if (valid !== 0 || index !== 0) $fatal(1, "zero input failed");
        data_in = 8'b00010000; #1; if (valid !== 1 || index !== 4) $fatal(1, "priority failed");
        data_in = 8'b11100010; #1; if (valid !== 1 || index !== 7) $fatal(1, "highest priority failed");
        $display("PASS priority_encoder");
        $finish;
    end
endmodule
