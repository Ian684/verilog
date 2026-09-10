module mux(
	input [3:0] a,
	input [3:0] b,
	input [3:0] c,
	input [3:0] d,
	input [1:0] sel,
	output reg [3:0] y

);

// if (sel == 2'b00)
//	y = a;
// else if (sel == 2'b01)
// 	y = b;
// else if (sel == 2'b10)
// 	y = c;
// else if (sel == 2'b11)
// 	y = d;
// else
// 	y = 4'b0000;

always @(*) begin 
	case (sel)
		2'b00 : y = a;
		2'b01 : y = b;
		2'b10 : y = c;
		2'b11 : y = d;
		default : y = 4'b0000;
	endcase
end

endmodule
