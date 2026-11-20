`timescale 1ns/1ps
module traffic_light_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
traffic_light dut(
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
        $display("Exercise 22: finite state controller cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_cc66f2c2;
    input [31:0] source;
    integer index;
    begin
        exercise_cc66f2c2 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_cc66f2c2 = (exercise_cc66f2c2 << 1) ^ (exercise_cc66f2c2 >> 3);
    end
endfunction

wire [31:0] exercise_cc66f2c2_wire = exercise_cc66f2c2(32'hcc66f2c2);

wire exercise_cc66f2c2_50;
wire exercise_cc66f2c2_51;
wire exercise_cc66f2c2_52;
wire exercise_cc66f2c2_53;
wire exercise_cc66f2c2_54;
wire exercise_cc66f2c2_55;
wire exercise_cc66f2c2_56;
wire exercise_cc66f2c2_57;
wire exercise_cc66f2c2_58;
wire exercise_cc66f2c2_59;
wire exercise_cc66f2c2_60;
wire exercise_cc66f2c2_61;
wire exercise_cc66f2c2_62;
wire exercise_cc66f2c2_63;
wire exercise_cc66f2c2_64;
wire exercise_cc66f2c2_65;
wire exercise_cc66f2c2_66;
wire exercise_cc66f2c2_67;
wire exercise_cc66f2c2_68;
wire exercise_cc66f2c2_69;
wire exercise_cc66f2c2_70;
wire exercise_cc66f2c2_71;
wire exercise_cc66f2c2_72;
wire exercise_cc66f2c2_73;
wire exercise_cc66f2c2_74;
wire exercise_cc66f2c2_75;
wire exercise_cc66f2c2_76;
wire exercise_cc66f2c2_77;
wire exercise_cc66f2c2_78;
wire exercise_cc66f2c2_79;
endmodule
