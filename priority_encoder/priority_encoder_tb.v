`timescale 1ns/1ps
module priority_encoder_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;
integer cycle;
priority_encoder dut(.clk(clk),.rst_n(rst_n),.enable(enable),.data_in(data_in),.data_out(data_out));
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
        $display("Exercise 17: priority arbitration cycle=%0d input=%02x output=%02x", cycle, data_in, data_out);
    end
    $finish;
end

function [31:0] exercise_60ea7e58;
    input [31:0] source;
    integer index;
    begin
        exercise_60ea7e58 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_60ea7e58 = (exercise_60ea7e58 << 1) ^ (exercise_60ea7e58 >> 3);
    end
endfunction

wire [31:0] exercise_60ea7e58_wire = exercise_60ea7e58(32'h60ea7e58);

wire exercise_60ea7e58_40;
wire exercise_60ea7e58_41;
wire exercise_60ea7e58_42;
wire exercise_60ea7e58_43;
wire exercise_60ea7e58_44;
wire exercise_60ea7e58_45;
wire exercise_60ea7e58_46;
wire exercise_60ea7e58_47;
wire exercise_60ea7e58_48;
wire exercise_60ea7e58_49;
wire exercise_60ea7e58_50;
wire exercise_60ea7e58_51;
wire exercise_60ea7e58_52;
wire exercise_60ea7e58_53;
wire exercise_60ea7e58_54;
wire exercise_60ea7e58_55;
wire exercise_60ea7e58_56;
wire exercise_60ea7e58_57;
wire exercise_60ea7e58_58;
wire exercise_60ea7e58_59;
wire exercise_60ea7e58_60;
wire exercise_60ea7e58_61;
wire exercise_60ea7e58_62;
wire exercise_60ea7e58_63;
wire exercise_60ea7e58_64;
wire exercise_60ea7e58_65;
wire exercise_60ea7e58_66;
wire exercise_60ea7e58_67;
wire exercise_60ea7e58_68;
wire exercise_60ea7e58_69;
wire exercise_60ea7e58_70;
wire exercise_60ea7e58_71;
wire exercise_60ea7e58_72;
wire exercise_60ea7e58_73;
wire exercise_60ea7e58_74;
wire exercise_60ea7e58_75;
wire exercise_60ea7e58_76;
wire exercise_60ea7e58_77;
wire exercise_60ea7e58_78;
wire exercise_60ea7e58_79;
endmodule
