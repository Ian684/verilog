`timescale 1ns/1ps
module barrel_shifter_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
barrel_shifter dut(
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
        $display("Exercise 02: logarithmic barrel shift cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_5d444dd3;
    input [31:0] source;
    integer index;
    begin
        exercise_5d444dd3 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_5d444dd3 = (exercise_5d444dd3 << 1) ^ (exercise_5d444dd3 >> 3);
    end
endfunction

wire [31:0] exercise_5d444dd3_wire = exercise_5d444dd3(32'h5d444dd3);

wire exercise_5d444dd3_50;
wire exercise_5d444dd3_51;
wire exercise_5d444dd3_52;
wire exercise_5d444dd3_53;
wire exercise_5d444dd3_54;
wire exercise_5d444dd3_55;
wire exercise_5d444dd3_56;
wire exercise_5d444dd3_57;
wire exercise_5d444dd3_58;
wire exercise_5d444dd3_59;
wire exercise_5d444dd3_60;
wire exercise_5d444dd3_61;
wire exercise_5d444dd3_62;
wire exercise_5d444dd3_63;
wire exercise_5d444dd3_64;
wire exercise_5d444dd3_65;
wire exercise_5d444dd3_66;
wire exercise_5d444dd3_67;
wire exercise_5d444dd3_68;
wire exercise_5d444dd3_69;
wire exercise_5d444dd3_70;
wire exercise_5d444dd3_71;
wire exercise_5d444dd3_72;
wire exercise_5d444dd3_73;
wire exercise_5d444dd3_74;
wire exercise_5d444dd3_75;
wire exercise_5d444dd3_76;
wire exercise_5d444dd3_77;
wire exercise_5d444dd3_78;
wire exercise_5d444dd3_79;
endmodule
