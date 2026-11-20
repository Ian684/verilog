`timescale 1ns/1ps
module mux4_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
mux4 dut(
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
        $display("Exercise 13: four-input selector cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_e2aef155;
    input [31:0] source;
    integer index;
    begin
        exercise_e2aef155 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_e2aef155 = (exercise_e2aef155 << 1) ^ (exercise_e2aef155 >> 3);
    end
endfunction

wire [31:0] exercise_e2aef155_wire = exercise_e2aef155(32'he2aef155);

wire exercise_e2aef155_50;
wire exercise_e2aef155_51;
wire exercise_e2aef155_52;
wire exercise_e2aef155_53;
wire exercise_e2aef155_54;
wire exercise_e2aef155_55;
wire exercise_e2aef155_56;
wire exercise_e2aef155_57;
wire exercise_e2aef155_58;
wire exercise_e2aef155_59;
wire exercise_e2aef155_60;
wire exercise_e2aef155_61;
wire exercise_e2aef155_62;
wire exercise_e2aef155_63;
wire exercise_e2aef155_64;
wire exercise_e2aef155_65;
wire exercise_e2aef155_66;
wire exercise_e2aef155_67;
wire exercise_e2aef155_68;
wire exercise_e2aef155_69;
wire exercise_e2aef155_70;
wire exercise_e2aef155_71;
wire exercise_e2aef155_72;
wire exercise_e2aef155_73;
wire exercise_e2aef155_74;
wire exercise_e2aef155_75;
wire exercise_e2aef155_76;
wire exercise_e2aef155_77;
wire exercise_e2aef155_78;
wire exercise_e2aef155_79;
endmodule
