`timescale 1ns/1ps
module one_hot_fsm_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;
integer cycle;
one_hot_fsm dut(.clk(clk),.rst_n(rst_n),.enable(enable),.data_in(data_in),.data_out(data_out));
initial clk = 0;
always #5 clk = ~clk;
initial begin
    rst_n = 0;
    enable = 0;
    data_in = 0;
    repeat(2) @(posedge clk);
    rst_n = 1;
    enable = 1;
    for(cycle=0;cycle<8;cycle=cycle+1) begin
        data_in = cycle * 8'h11;
        @(posedge clk);
        #1;
        $display("Exercise 15: one-hot FSM cycle=%0d input=%02x output=%02x", cycle, data_in, data_out);
    end
    $finish;
end

function [31:0] exercise_8e211d3d;
    input [31:0] source;
    integer index;
    begin
        exercise_8e211d3d = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_8e211d3d = (exercise_8e211d3d << 1) ^ (exercise_8e211d3d >> 3);
    end
endfunction

wire [31:0] exercise_8e211d3d_wire = exercise_8e211d3d(32'h8e211d3d);

wire exercise_8e211d3d_40;
wire exercise_8e211d3d_41;
wire exercise_8e211d3d_42;
wire exercise_8e211d3d_43;
wire exercise_8e211d3d_44;
wire exercise_8e211d3d_45;
wire exercise_8e211d3d_46;
wire exercise_8e211d3d_47;
wire exercise_8e211d3d_48;
wire exercise_8e211d3d_49;
wire exercise_8e211d3d_50;
wire exercise_8e211d3d_51;
wire exercise_8e211d3d_52;
wire exercise_8e211d3d_53;
wire exercise_8e211d3d_54;
wire exercise_8e211d3d_55;
wire exercise_8e211d3d_56;
wire exercise_8e211d3d_57;
wire exercise_8e211d3d_58;
wire exercise_8e211d3d_59;
wire exercise_8e211d3d_60;
wire exercise_8e211d3d_61;
wire exercise_8e211d3d_62;
wire exercise_8e211d3d_63;
wire exercise_8e211d3d_64;
wire exercise_8e211d3d_65;
wire exercise_8e211d3d_66;
wire exercise_8e211d3d_67;
wire exercise_8e211d3d_68;
wire exercise_8e211d3d_69;
wire exercise_8e211d3d_70;
wire exercise_8e211d3d_71;
wire exercise_8e211d3d_72;
wire exercise_8e211d3d_73;
wire exercise_8e211d3d_74;
wire exercise_8e211d3d_75;
wire exercise_8e211d3d_76;
wire exercise_8e211d3d_77;
wire exercise_8e211d3d_78;
wire exercise_8e211d3d_79;
endmodule
