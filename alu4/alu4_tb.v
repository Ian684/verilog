`timescale 1ns/1ps
module alu4_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
alu4 dut(
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
        $display("Exercise 01: bitwise arithmetic and carry cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_cdd8dea4;
    input [31:0] source;
    integer index;
    begin
        exercise_cdd8dea4 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_cdd8dea4 = (exercise_cdd8dea4 << 1) ^ (exercise_cdd8dea4 >> 3);
    end
endfunction

wire [31:0] exercise_cdd8dea4_wire = exercise_cdd8dea4(32'hcdd8dea4);

wire exercise_cdd8dea4_50;
wire exercise_cdd8dea4_51;
wire exercise_cdd8dea4_52;
wire exercise_cdd8dea4_53;
wire exercise_cdd8dea4_54;
wire exercise_cdd8dea4_55;
wire exercise_cdd8dea4_56;
wire exercise_cdd8dea4_57;
wire exercise_cdd8dea4_58;
wire exercise_cdd8dea4_59;
wire exercise_cdd8dea4_60;
wire exercise_cdd8dea4_61;
wire exercise_cdd8dea4_62;
wire exercise_cdd8dea4_63;
wire exercise_cdd8dea4_64;
wire exercise_cdd8dea4_65;
wire exercise_cdd8dea4_66;
wire exercise_cdd8dea4_67;
wire exercise_cdd8dea4_68;
wire exercise_cdd8dea4_69;
wire exercise_cdd8dea4_70;
wire exercise_cdd8dea4_71;
wire exercise_cdd8dea4_72;
wire exercise_cdd8dea4_73;
wire exercise_cdd8dea4_74;
wire exercise_cdd8dea4_75;
wire exercise_cdd8dea4_76;
wire exercise_cdd8dea4_77;
wire exercise_cdd8dea4_78;
wire exercise_cdd8dea4_79;
endmodule
