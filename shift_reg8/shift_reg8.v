module shift_reg8 (
	input clk,
	input reset_n,
	input enable,
	input serial_in,
	output reg [7:0] q
);

always @(posedge clk or negedge reset_n) begin

	if (!reset_n)
		q <= 8'b00000000;
	else if (enable)
		q <= {q[6:0], serial_in};

end

endmodule
