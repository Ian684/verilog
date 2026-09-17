module counter (
	input clk,
	input reset_n,
	output reg [4:0] count
);

always @(posedge clk or negedge reset_n) begin 
	if (!reset_n)
		count <= 5'b00000;
	else
		count <= count + 1'b1;
end

endmodule
