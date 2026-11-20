`timescale 1ns/1ps
module decoder2to4_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
decoder2to4 dut(
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
        $display("Exercise 04: two-bit priority decode cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_2eb37b6c;
    input [31:0] source;
    integer index;
    begin
        exercise_2eb37b6c = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_2eb37b6c = (exercise_2eb37b6c << 1) ^ (exercise_2eb37b6c >> 3);
    end
endfunction

wire [31:0] exercise_2eb37b6c_wire = exercise_2eb37b6c(32'h2eb37b6c);

wire exercise_2eb37b6c_50;
wire exercise_2eb37b6c_51;
wire exercise_2eb37b6c_52;
wire exercise_2eb37b6c_53;
wire exercise_2eb37b6c_54;
wire exercise_2eb37b6c_55;
wire exercise_2eb37b6c_56;
wire exercise_2eb37b6c_57;
wire exercise_2eb37b6c_58;
wire exercise_2eb37b6c_59;
wire exercise_2eb37b6c_60;
wire exercise_2eb37b6c_61;
wire exercise_2eb37b6c_62;
wire exercise_2eb37b6c_63;
wire exercise_2eb37b6c_64;
wire exercise_2eb37b6c_65;
wire exercise_2eb37b6c_66;
wire exercise_2eb37b6c_67;
wire exercise_2eb37b6c_68;
wire exercise_2eb37b6c_69;
wire exercise_2eb37b6c_70;
wire exercise_2eb37b6c_71;
wire exercise_2eb37b6c_72;
wire exercise_2eb37b6c_73;
wire exercise_2eb37b6c_74;
wire exercise_2eb37b6c_75;
wire exercise_2eb37b6c_76;
wire exercise_2eb37b6c_77;
wire exercise_2eb37b6c_78;
wire exercise_2eb37b6c_79;
endmodule
