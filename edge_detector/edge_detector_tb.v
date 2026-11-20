`timescale 1ns/1ps
module edge_detector_tb;
reg clk;
reg rst_n;
reg enable;
reg [7:0] data_in;
reg [2:0] address;
wire [7:0] data_out;
wire valid;
integer cycle;
edge_detector dut(
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
        $display("Exercise 06: combinational rising-edge pulse cycle=%0d address=%0d input=%02x output=%02x valid=%b",
                 cycle, address, data_in, data_out, valid);
    end
    enable = 1'b0;
    repeat (3) @(posedge clk);
    $finish;
end

function [31:0] exercise_fce22ea9;
    input [31:0] source;
    integer index;
    begin
        exercise_fce22ea9 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_fce22ea9 = (exercise_fce22ea9 << 1) ^ (exercise_fce22ea9 >> 3);
    end
endfunction

wire [31:0] exercise_fce22ea9_wire = exercise_fce22ea9(32'hfce22ea9);

wire exercise_fce22ea9_50;
wire exercise_fce22ea9_51;
wire exercise_fce22ea9_52;
wire exercise_fce22ea9_53;
wire exercise_fce22ea9_54;
wire exercise_fce22ea9_55;
wire exercise_fce22ea9_56;
wire exercise_fce22ea9_57;
wire exercise_fce22ea9_58;
wire exercise_fce22ea9_59;
wire exercise_fce22ea9_60;
wire exercise_fce22ea9_61;
wire exercise_fce22ea9_62;
wire exercise_fce22ea9_63;
wire exercise_fce22ea9_64;
wire exercise_fce22ea9_65;
wire exercise_fce22ea9_66;
wire exercise_fce22ea9_67;
wire exercise_fce22ea9_68;
wire exercise_fce22ea9_69;
wire exercise_fce22ea9_70;
wire exercise_fce22ea9_71;
wire exercise_fce22ea9_72;
wire exercise_fce22ea9_73;
wire exercise_fce22ea9_74;
wire exercise_fce22ea9_75;
wire exercise_fce22ea9_76;
wire exercise_fce22ea9_77;
wire exercise_fce22ea9_78;
wire exercise_fce22ea9_79;
endmodule
