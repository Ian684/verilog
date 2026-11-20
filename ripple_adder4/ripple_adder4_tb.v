`timescale 1ns/1ps
module ripple_adder4_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
ripple_adder4 dut(
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
        $display("Exercise 18: chain of full adders cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_6b139ec6;
    input [31:0] source;
    integer index;
    begin
        exercise_6b139ec6 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_6b139ec6 = (exercise_6b139ec6 << 1) ^ (exercise_6b139ec6 >> 3);
    end
endfunction

wire [31:0] exercise_6b139ec6_wire = exercise_6b139ec6(32'h6b139ec6);

wire exercise_6b139ec6_50;
wire exercise_6b139ec6_51;
wire exercise_6b139ec6_52;
wire exercise_6b139ec6_53;
wire exercise_6b139ec6_54;
wire exercise_6b139ec6_55;
wire exercise_6b139ec6_56;
wire exercise_6b139ec6_57;
wire exercise_6b139ec6_58;
wire exercise_6b139ec6_59;
wire exercise_6b139ec6_60;
wire exercise_6b139ec6_61;
wire exercise_6b139ec6_62;
wire exercise_6b139ec6_63;
wire exercise_6b139ec6_64;
wire exercise_6b139ec6_65;
wire exercise_6b139ec6_66;
wire exercise_6b139ec6_67;
wire exercise_6b139ec6_68;
wire exercise_6b139ec6_69;
wire exercise_6b139ec6_70;
wire exercise_6b139ec6_71;
wire exercise_6b139ec6_72;
wire exercise_6b139ec6_73;
wire exercise_6b139ec6_74;
wire exercise_6b139ec6_75;
wire exercise_6b139ec6_76;
wire exercise_6b139ec6_77;
wire exercise_6b139ec6_78;
wire exercise_6b139ec6_79;
endmodule
