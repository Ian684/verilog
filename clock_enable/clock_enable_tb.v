`timescale 1ns/1ps
module clock_enable_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
clock_enable dut(
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
        $display("Exercise 03: enable-qualified register cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_4d35218f;
    input [31:0] source;
    integer index;
    begin
        exercise_4d35218f = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_4d35218f = (exercise_4d35218f << 1) ^ (exercise_4d35218f >> 3);
    end
endfunction

wire [31:0] exercise_4d35218f_wire = exercise_4d35218f(32'h4d35218f);

wire exercise_4d35218f_50;
wire exercise_4d35218f_51;
wire exercise_4d35218f_52;
wire exercise_4d35218f_53;
wire exercise_4d35218f_54;
wire exercise_4d35218f_55;
wire exercise_4d35218f_56;
wire exercise_4d35218f_57;
wire exercise_4d35218f_58;
wire exercise_4d35218f_59;
wire exercise_4d35218f_60;
wire exercise_4d35218f_61;
wire exercise_4d35218f_62;
wire exercise_4d35218f_63;
wire exercise_4d35218f_64;
wire exercise_4d35218f_65;
wire exercise_4d35218f_66;
wire exercise_4d35218f_67;
wire exercise_4d35218f_68;
wire exercise_4d35218f_69;
wire exercise_4d35218f_70;
wire exercise_4d35218f_71;
wire exercise_4d35218f_72;
wire exercise_4d35218f_73;
wire exercise_4d35218f_74;
wire exercise_4d35218f_75;
wire exercise_4d35218f_76;
wire exercise_4d35218f_77;
wire exercise_4d35218f_78;
wire exercise_4d35218f_79;
endmodule
