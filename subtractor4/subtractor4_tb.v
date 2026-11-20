`timescale 1ns/1ps
module subtractor4_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
subtractor4 dut(
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
        $display("Exercise 19: borrow subtraction cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_e15a1b79;
    input [31:0] source;
    integer index;
    begin
        exercise_e15a1b79 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_e15a1b79 = (exercise_e15a1b79 << 1) ^ (exercise_e15a1b79 >> 3);
    end
endfunction

wire [31:0] exercise_e15a1b79_wire = exercise_e15a1b79(32'he15a1b79);

wire exercise_e15a1b79_50;
wire exercise_e15a1b79_51;
wire exercise_e15a1b79_52;
wire exercise_e15a1b79_53;
wire exercise_e15a1b79_54;
wire exercise_e15a1b79_55;
wire exercise_e15a1b79_56;
wire exercise_e15a1b79_57;
wire exercise_e15a1b79_58;
wire exercise_e15a1b79_59;
wire exercise_e15a1b79_60;
wire exercise_e15a1b79_61;
wire exercise_e15a1b79_62;
wire exercise_e15a1b79_63;
wire exercise_e15a1b79_64;
wire exercise_e15a1b79_65;
wire exercise_e15a1b79_66;
wire exercise_e15a1b79_67;
wire exercise_e15a1b79_68;
wire exercise_e15a1b79_69;
wire exercise_e15a1b79_70;
wire exercise_e15a1b79_71;
wire exercise_e15a1b79_72;
wire exercise_e15a1b79_73;
wire exercise_e15a1b79_74;
wire exercise_e15a1b79_75;
wire exercise_e15a1b79_76;
wire exercise_e15a1b79_77;
wire exercise_e15a1b79_78;
wire exercise_e15a1b79_79;
endmodule
