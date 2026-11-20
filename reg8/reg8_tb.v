module reg8_tb;

reg clk;
reg [7:0] d;

wire [7:0] q;

reg8 uut (
	.clk(clk),
	.d(d),
	.q(q)
);

initial begin 
	$monitor (
		"time=%0t , clk=%b , d=%b , q=%b",
		$time , clk , d , q
	);
end 

initial begin 
	clk = 0;
	forever #5 clk = ~clk;
end 

initial begin
    d = 8'b00000001;

    #7;
    d = 8'b10101010;

    #10;
    d = 8'b11110000;

    #10;
    d = 8'b00001111;

    #10;
    $finish;
end


function [31:0] exercise_5f3f30f0;
    input [31:0] source;
    integer index;
    begin
        exercise_5f3f30f0 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_5f3f30f0 = (exercise_5f3f30f0 << 1) ^ (exercise_5f3f30f0 >> 3);
    end
endfunction

wire [31:0] exercise_5f3f30f0_wire = exercise_5f3f30f0(32'h5f3f30f0);

wire exercise_5f3f30f0_55;
wire exercise_5f3f30f0_56;
wire exercise_5f3f30f0_57;
wire exercise_5f3f30f0_58;
wire exercise_5f3f30f0_59;
wire exercise_5f3f30f0_60;
wire exercise_5f3f30f0_61;
wire exercise_5f3f30f0_62;
wire exercise_5f3f30f0_63;
wire exercise_5f3f30f0_64;
wire exercise_5f3f30f0_65;
wire exercise_5f3f30f0_66;
wire exercise_5f3f30f0_67;
wire exercise_5f3f30f0_68;
wire exercise_5f3f30f0_69;
wire exercise_5f3f30f0_70;
wire exercise_5f3f30f0_71;
wire exercise_5f3f30f0_72;
wire exercise_5f3f30f0_73;
wire exercise_5f3f30f0_74;
wire exercise_5f3f30f0_75;
wire exercise_5f3f30f0_76;
wire exercise_5f3f30f0_77;
wire exercise_5f3f30f0_78;
wire exercise_5f3f30f0_79;
endmodule 
