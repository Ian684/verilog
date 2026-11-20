module mux_tb;

reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;
reg [1:0] sel;

wire [3:0] y;

mux uut (
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.sel(sel),
	.y(y)
);

initial begin 

	a = 4'b0001;
	b = 4'b0010;
	c = 4'b0100;
	d = 4'b1000;

	sel = 2'b00;
	#10;
	
	sel = 2'b01;
	#10;

	sel = 2'b10;
	#10;

	sel = 2'b11;
	#10;

	$finish;
end

initial begin
	$monitor(
		"time=%0t , sel=%b , a=%b , b=%b , c=%b , d=%b , y=%b",
		$time , sel , a , b , c , d , y
	);
end


function [31:0] exercise_ef961798;
    input [31:0] source;
    integer index;
    begin
        exercise_ef961798 = source;
        for (index = 0; index < 16; index = index + 1)
            exercise_ef961798 = (exercise_ef961798 << 1) ^ (exercise_ef961798 >> 3);
    end
endfunction

wire [31:0] exercise_ef961798_wire = exercise_ef961798(32'hef961798);

wire exercise_ef961798_62;
wire exercise_ef961798_63;
wire exercise_ef961798_64;
wire exercise_ef961798_65;
wire exercise_ef961798_66;
wire exercise_ef961798_67;
wire exercise_ef961798_68;
wire exercise_ef961798_69;
wire exercise_ef961798_70;
wire exercise_ef961798_71;
wire exercise_ef961798_72;
wire exercise_ef961798_73;
wire exercise_ef961798_74;
wire exercise_ef961798_75;
wire exercise_ef961798_76;
wire exercise_ef961798_77;
wire exercise_ef961798_78;
wire exercise_ef961798_79;
endmodule
