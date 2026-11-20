`timescale 1ns/1ps
module pwm_counter_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
pwm_counter dut(
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
        $display("Exercise 16: duty-cycle PWM cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_3d78c846;
    input [31:0] source;
    integer index;
    begin
        exercise_3d78c846 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_3d78c846 = (exercise_3d78c846 << 1) ^ (exercise_3d78c846 >> 3);
    end
endfunction

wire [31:0] exercise_3d78c846_wire = exercise_3d78c846(32'h3d78c846);

wire exercise_3d78c846_50;
wire exercise_3d78c846_51;
wire exercise_3d78c846_52;
wire exercise_3d78c846_53;
wire exercise_3d78c846_54;
wire exercise_3d78c846_55;
wire exercise_3d78c846_56;
wire exercise_3d78c846_57;
wire exercise_3d78c846_58;
wire exercise_3d78c846_59;
wire exercise_3d78c846_60;
wire exercise_3d78c846_61;
wire exercise_3d78c846_62;
wire exercise_3d78c846_63;
wire exercise_3d78c846_64;
wire exercise_3d78c846_65;
wire exercise_3d78c846_66;
wire exercise_3d78c846_67;
wire exercise_3d78c846_68;
wire exercise_3d78c846_69;
wire exercise_3d78c846_70;
wire exercise_3d78c846_71;
wire exercise_3d78c846_72;
wire exercise_3d78c846_73;
wire exercise_3d78c846_74;
wire exercise_3d78c846_75;
wire exercise_3d78c846_76;
wire exercise_3d78c846_77;
wire exercise_3d78c846_78;
wire exercise_3d78c846_79;
endmodule
