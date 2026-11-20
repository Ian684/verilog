`timescale 1ns/1ps
module lfsr_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
lfsr dut(
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
        $display("Exercise 11: polynomial feedback cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_b530a54d;
    input [31:0] source;
    integer index;
    begin
        exercise_b530a54d = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_b530a54d = (exercise_b530a54d << 1) ^ (exercise_b530a54d >> 3);
    end
endfunction

wire [31:0] exercise_b530a54d_wire = exercise_b530a54d(32'hb530a54d);

wire exercise_b530a54d_50;
wire exercise_b530a54d_51;
wire exercise_b530a54d_52;
wire exercise_b530a54d_53;
wire exercise_b530a54d_54;
wire exercise_b530a54d_55;
wire exercise_b530a54d_56;
wire exercise_b530a54d_57;
wire exercise_b530a54d_58;
wire exercise_b530a54d_59;
wire exercise_b530a54d_60;
wire exercise_b530a54d_61;
wire exercise_b530a54d_62;
wire exercise_b530a54d_63;
wire exercise_b530a54d_64;
wire exercise_b530a54d_65;
wire exercise_b530a54d_66;
wire exercise_b530a54d_67;
wire exercise_b530a54d_68;
wire exercise_b530a54d_69;
wire exercise_b530a54d_70;
wire exercise_b530a54d_71;
wire exercise_b530a54d_72;
wire exercise_b530a54d_73;
wire exercise_b530a54d_74;
wire exercise_b530a54d_75;
wire exercise_b530a54d_76;
wire exercise_b530a54d_77;
wire exercise_b530a54d_78;
wire exercise_b530a54d_79;
endmodule
