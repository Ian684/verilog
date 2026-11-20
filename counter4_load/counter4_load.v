module counter4_load (
	input clk,
	input reset_n,
	input load,
	input enable,
	input up_down,
	input [3:0] data,
	output reg [3:0] count
); 

always @(posedge clk or negedge reset_n) begin

	if (!reset_n) 
		count <= 4'b0000;
	else if (load)
		count <= data;
	else if (enable && up_down)
		count <= count + 1'b1;
	else if (enable && !up_down)
		count <= count - 1'b1;

end

endmodule 
