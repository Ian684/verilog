`timescale 1ns/1ps
module register_file_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
register_file dut(
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
        $display("Exercise 17: addressed register array cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_679404f1;
    input [31:0] source;
    integer index;
    begin
        exercise_679404f1 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_679404f1 = (exercise_679404f1 << 1) ^ (exercise_679404f1 >> 3);
    end
endfunction

wire [31:0] exercise_679404f1_wire = exercise_679404f1(32'h679404f1);

wire exercise_679404f1_50;
wire exercise_679404f1_51;
wire exercise_679404f1_52;
wire exercise_679404f1_53;
wire exercise_679404f1_54;
wire exercise_679404f1_55;
wire exercise_679404f1_56;
wire exercise_679404f1_57;
wire exercise_679404f1_58;
wire exercise_679404f1_59;
wire exercise_679404f1_60;
wire exercise_679404f1_61;
wire exercise_679404f1_62;
wire exercise_679404f1_63;
wire exercise_679404f1_64;
wire exercise_679404f1_65;
wire exercise_679404f1_66;
wire exercise_679404f1_67;
wire exercise_679404f1_68;
wire exercise_679404f1_69;
wire exercise_679404f1_70;
wire exercise_679404f1_71;
wire exercise_679404f1_72;
wire exercise_679404f1_73;
wire exercise_679404f1_74;
wire exercise_679404f1_75;
wire exercise_679404f1_76;
wire exercise_679404f1_77;
wire exercise_679404f1_78;
wire exercise_679404f1_79;
endmodule
