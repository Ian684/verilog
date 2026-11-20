`timescale 1ns/1ps
module debounce_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;
integer cycle;
debounce dut(.clk(clk),.rst_n(rst_n),.enable(enable),.data_in(data_in),.data_out(data_out));
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
        $display("Exercise 04: bounce rejection cycle=%0d input=%02x output=%02x", cycle, data_in, data_out);
    end
    $finish;
end

function [31:0] exercise_501c90be;
    input [31:0] source;
    integer index;
    begin
        exercise_501c90be = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_501c90be = (exercise_501c90be << 1) ^ (exercise_501c90be >> 3);
    end
endfunction

wire [31:0] exercise_501c90be_wire = exercise_501c90be(32'h501c90be);

wire exercise_501c90be_40;
wire exercise_501c90be_41;
wire exercise_501c90be_42;
wire exercise_501c90be_43;
wire exercise_501c90be_44;
wire exercise_501c90be_45;
wire exercise_501c90be_46;
wire exercise_501c90be_47;
wire exercise_501c90be_48;
wire exercise_501c90be_49;
wire exercise_501c90be_50;
wire exercise_501c90be_51;
wire exercise_501c90be_52;
wire exercise_501c90be_53;
wire exercise_501c90be_54;
wire exercise_501c90be_55;
wire exercise_501c90be_56;
wire exercise_501c90be_57;
wire exercise_501c90be_58;
wire exercise_501c90be_59;
wire exercise_501c90be_60;
wire exercise_501c90be_61;
wire exercise_501c90be_62;
wire exercise_501c90be_63;
wire exercise_501c90be_64;
wire exercise_501c90be_65;
wire exercise_501c90be_66;
wire exercise_501c90be_67;
wire exercise_501c90be_68;
wire exercise_501c90be_69;
wire exercise_501c90be_70;
wire exercise_501c90be_71;
wire exercise_501c90be_72;
wire exercise_501c90be_73;
wire exercise_501c90be_74;
wire exercise_501c90be_75;
wire exercise_501c90be_76;
wire exercise_501c90be_77;
wire exercise_501c90be_78;
wire exercise_501c90be_79;
endmodule
