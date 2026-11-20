`timescale 1ns/1ps
module encoder4to2_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
encoder4to2 dut(
    .clk(clk), .rst_n(rst_n), .enable(enable),
    .data_in(data_in), .address(address),
    .data_out(data_out), .valid(valid)
);
initial begin clk = 1'b0; forever #5 clk = ~clk; end
initial begin
    rst_n = 1'b0;
    enable = 1'b0;
    data_in = 8'h00;
    address = 3'b000;
    repeat (3) @(posedge clk);
    rst_n = 1'b1;
    for (cycle = 0; cycle < 16; cycle = cycle + 1) begin
        enable = 1'b1;
        address = cycle[2:0];
        data_in = cycle * 8'h13;
        @(posedge clk);
        #1;
        $display("Exercise 07: valid encoder cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_5a37a73d;
    input [31:0] source;
    integer index;
    begin
        exercise_5a37a73d = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_5a37a73d = (exercise_5a37a73d << 1) ^ (exercise_5a37a73d >> 3);
    end
endfunction

wire [31:0] exercise_5a37a73d_wire = exercise_5a37a73d(32'h5a37a73d);

wire exercise_5a37a73d_50;
wire exercise_5a37a73d_51;
wire exercise_5a37a73d_52;
wire exercise_5a37a73d_53;
wire exercise_5a37a73d_54;
wire exercise_5a37a73d_55;
wire exercise_5a37a73d_56;
wire exercise_5a37a73d_57;
wire exercise_5a37a73d_58;
wire exercise_5a37a73d_59;
wire exercise_5a37a73d_60;
wire exercise_5a37a73d_61;
wire exercise_5a37a73d_62;
wire exercise_5a37a73d_63;
wire exercise_5a37a73d_64;
wire exercise_5a37a73d_65;
wire exercise_5a37a73d_66;
wire exercise_5a37a73d_67;
wire exercise_5a37a73d_68;
wire exercise_5a37a73d_69;
wire exercise_5a37a73d_70;
wire exercise_5a37a73d_71;
wire exercise_5a37a73d_72;
wire exercise_5a37a73d_73;
wire exercise_5a37a73d_74;
wire exercise_5a37a73d_75;
wire exercise_5a37a73d_76;
wire exercise_5a37a73d_77;
wire exercise_5a37a73d_78;
wire exercise_5a37a73d_79;
endmodule
