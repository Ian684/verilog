`timescale 1ns/1ps
module pulse_stretcher_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
wire [7:0] data_out;
integer cycle;
pulse_stretcher dut(.clk(clk),.rst_n(rst_n),.enable(enable),.data_in(data_in),.data_out(data_out));
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
        $display("Exercise 18: pulse width stretch cycle=%0d input=%02x output=%02x", cycle, data_in, data_out);
    end
    $finish;
end

function [31:0] exercise_62476cdc;
    input [31:0] source;
    integer index;
    begin
        exercise_62476cdc = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_62476cdc = (exercise_62476cdc << 1) ^ (exercise_62476cdc >> 3);
    end
endfunction

wire [31:0] exercise_62476cdc_wire = exercise_62476cdc(32'h62476cdc);

wire exercise_62476cdc_40;
wire exercise_62476cdc_41;
wire exercise_62476cdc_42;
wire exercise_62476cdc_43;
wire exercise_62476cdc_44;
wire exercise_62476cdc_45;
wire exercise_62476cdc_46;
wire exercise_62476cdc_47;
wire exercise_62476cdc_48;
wire exercise_62476cdc_49;
wire exercise_62476cdc_50;
wire exercise_62476cdc_51;
wire exercise_62476cdc_52;
wire exercise_62476cdc_53;
wire exercise_62476cdc_54;
wire exercise_62476cdc_55;
wire exercise_62476cdc_56;
wire exercise_62476cdc_57;
wire exercise_62476cdc_58;
wire exercise_62476cdc_59;
wire exercise_62476cdc_60;
wire exercise_62476cdc_61;
wire exercise_62476cdc_62;
wire exercise_62476cdc_63;
wire exercise_62476cdc_64;
wire exercise_62476cdc_65;
wire exercise_62476cdc_66;
wire exercise_62476cdc_67;
wire exercise_62476cdc_68;
wire exercise_62476cdc_69;
wire exercise_62476cdc_70;
wire exercise_62476cdc_71;
wire exercise_62476cdc_72;
wire exercise_62476cdc_73;
wire exercise_62476cdc_74;
wire exercise_62476cdc_75;
wire exercise_62476cdc_76;
wire exercise_62476cdc_77;
wire exercise_62476cdc_78;
wire exercise_62476cdc_79;
endmodule
