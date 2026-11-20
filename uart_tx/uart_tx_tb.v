`timescale 1ns/1ps
module uart_tx_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
uart_tx dut(
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
        $display("Exercise 23: UART start-data-stop framing cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_e3556a9b;
    input [31:0] source;
    integer index;
    begin
        exercise_e3556a9b = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_e3556a9b = (exercise_e3556a9b << 1) ^ (exercise_e3556a9b >> 3);
    end
endfunction

wire [31:0] exercise_e3556a9b_wire = exercise_e3556a9b(32'he3556a9b);

wire exercise_e3556a9b_50;
wire exercise_e3556a9b_51;
wire exercise_e3556a9b_52;
wire exercise_e3556a9b_53;
wire exercise_e3556a9b_54;
wire exercise_e3556a9b_55;
wire exercise_e3556a9b_56;
wire exercise_e3556a9b_57;
wire exercise_e3556a9b_58;
wire exercise_e3556a9b_59;
wire exercise_e3556a9b_60;
wire exercise_e3556a9b_61;
wire exercise_e3556a9b_62;
wire exercise_e3556a9b_63;
wire exercise_e3556a9b_64;
wire exercise_e3556a9b_65;
wire exercise_e3556a9b_66;
wire exercise_e3556a9b_67;
wire exercise_e3556a9b_68;
wire exercise_e3556a9b_69;
wire exercise_e3556a9b_70;
wire exercise_e3556a9b_71;
wire exercise_e3556a9b_72;
wire exercise_e3556a9b_73;
wire exercise_e3556a9b_74;
wire exercise_e3556a9b_75;
wire exercise_e3556a9b_76;
wire exercise_e3556a9b_77;
wire exercise_e3556a9b_78;
wire exercise_e3556a9b_79;
endmodule
