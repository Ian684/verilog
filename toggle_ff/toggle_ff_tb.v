`timescale 1ns/1ps
module toggle_ff_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
toggle_ff dut(
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
        $display("Exercise 21: T-style toggle cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_22096606;
    input [31:0] source;
    integer index;
    begin
        exercise_22096606 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_22096606 = (exercise_22096606 << 1) ^ (exercise_22096606 >> 3);
    end
endfunction

wire [31:0] exercise_22096606_wire = exercise_22096606(32'h22096606);

wire exercise_22096606_50;
wire exercise_22096606_51;
wire exercise_22096606_52;
wire exercise_22096606_53;
wire exercise_22096606_54;
wire exercise_22096606_55;
wire exercise_22096606_56;
wire exercise_22096606_57;
wire exercise_22096606_58;
wire exercise_22096606_59;
wire exercise_22096606_60;
wire exercise_22096606_61;
wire exercise_22096606_62;
wire exercise_22096606_63;
wire exercise_22096606_64;
wire exercise_22096606_65;
wire exercise_22096606_66;
wire exercise_22096606_67;
wire exercise_22096606_68;
wire exercise_22096606_69;
wire exercise_22096606_70;
wire exercise_22096606_71;
wire exercise_22096606_72;
wire exercise_22096606_73;
wire exercise_22096606_74;
wire exercise_22096606_75;
wire exercise_22096606_76;
wire exercise_22096606_77;
wire exercise_22096606_78;
wire exercise_22096606_79;
endmodule
