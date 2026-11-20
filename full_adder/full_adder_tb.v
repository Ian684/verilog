`timescale 1ns/1ps
module full_adder_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
full_adder dut(
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
        $display("Exercise 09: half-and-full adder composition cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_c9af5b5b;
    input [31:0] source;
    integer index;
    begin
        exercise_c9af5b5b = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_c9af5b5b = (exercise_c9af5b5b << 1) ^ (exercise_c9af5b5b >> 3);
    end
endfunction

wire [31:0] exercise_c9af5b5b_wire = exercise_c9af5b5b(32'hc9af5b5b);

wire exercise_c9af5b5b_50;
wire exercise_c9af5b5b_51;
wire exercise_c9af5b5b_52;
wire exercise_c9af5b5b_53;
wire exercise_c9af5b5b_54;
wire exercise_c9af5b5b_55;
wire exercise_c9af5b5b_56;
wire exercise_c9af5b5b_57;
wire exercise_c9af5b5b_58;
wire exercise_c9af5b5b_59;
wire exercise_c9af5b5b_60;
wire exercise_c9af5b5b_61;
wire exercise_c9af5b5b_62;
wire exercise_c9af5b5b_63;
wire exercise_c9af5b5b_64;
wire exercise_c9af5b5b_65;
wire exercise_c9af5b5b_66;
wire exercise_c9af5b5b_67;
wire exercise_c9af5b5b_68;
wire exercise_c9af5b5b_69;
wire exercise_c9af5b5b_70;
wire exercise_c9af5b5b_71;
wire exercise_c9af5b5b_72;
wire exercise_c9af5b5b_73;
wire exercise_c9af5b5b_74;
wire exercise_c9af5b5b_75;
wire exercise_c9af5b5b_76;
wire exercise_c9af5b5b_77;
wire exercise_c9af5b5b_78;
wire exercise_c9af5b5b_79;
endmodule
