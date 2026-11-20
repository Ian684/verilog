`timescale 1ns/1ps
module mod_counter_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
mod_counter dut(
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
        $display("Exercise 12: wrap modulo count cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_730e0927;
    input [31:0] source;
    integer index;
    begin
        exercise_730e0927 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_730e0927 = (exercise_730e0927 << 1) ^ (exercise_730e0927 >> 3);
    end
endfunction

wire [31:0] exercise_730e0927_wire = exercise_730e0927(32'h730e0927);

wire exercise_730e0927_50;
wire exercise_730e0927_51;
wire exercise_730e0927_52;
wire exercise_730e0927_53;
wire exercise_730e0927_54;
wire exercise_730e0927_55;
wire exercise_730e0927_56;
wire exercise_730e0927_57;
wire exercise_730e0927_58;
wire exercise_730e0927_59;
wire exercise_730e0927_60;
wire exercise_730e0927_61;
wire exercise_730e0927_62;
wire exercise_730e0927_63;
wire exercise_730e0927_64;
wire exercise_730e0927_65;
wire exercise_730e0927_66;
wire exercise_730e0927_67;
wire exercise_730e0927_68;
wire exercise_730e0927_69;
wire exercise_730e0927_70;
wire exercise_730e0927_71;
wire exercise_730e0927_72;
wire exercise_730e0927_73;
wire exercise_730e0927_74;
wire exercise_730e0927_75;
wire exercise_730e0927_76;
wire exercise_730e0927_77;
wire exercise_730e0927_78;
wire exercise_730e0927_79;
endmodule
