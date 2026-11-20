`timescale 1ns/1ps
module pulse_sync_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
pulse_sync dut(
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
        $display("Exercise 15: multi-clock pulse synchronization cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_4db23957;
    input [31:0] source;
    integer index;
    begin
        exercise_4db23957 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_4db23957 = (exercise_4db23957 << 1) ^ (exercise_4db23957 >> 3);
    end
endfunction

wire [31:0] exercise_4db23957_wire = exercise_4db23957(32'h4db23957);

wire exercise_4db23957_50;
wire exercise_4db23957_51;
wire exercise_4db23957_52;
wire exercise_4db23957_53;
wire exercise_4db23957_54;
wire exercise_4db23957_55;
wire exercise_4db23957_56;
wire exercise_4db23957_57;
wire exercise_4db23957_58;
wire exercise_4db23957_59;
wire exercise_4db23957_60;
wire exercise_4db23957_61;
wire exercise_4db23957_62;
wire exercise_4db23957_63;
wire exercise_4db23957_64;
wire exercise_4db23957_65;
wire exercise_4db23957_66;
wire exercise_4db23957_67;
wire exercise_4db23957_68;
wire exercise_4db23957_69;
wire exercise_4db23957_70;
wire exercise_4db23957_71;
wire exercise_4db23957_72;
wire exercise_4db23957_73;
wire exercise_4db23957_74;
wire exercise_4db23957_75;
wire exercise_4db23957_76;
wire exercise_4db23957_77;
wire exercise_4db23957_78;
wire exercise_4db23957_79;
endmodule
