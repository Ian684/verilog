module full_adder(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_09;
reg [7:0] scratch_09;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_09<=0;scratch_09<=0;data_out<=0;
end else if(enable)begin
scratch_09<=data_in;
state_09<=state_09+1;
case(state_09[2:0])
3'd0:data_out<=scratch_09+data_in;
3'd1:data_out<=scratch_09-data_in;
3'd2:data_out<=scratch_09^data_in;
3'd3:data_out<={data_in[3:0],scratch_09[3:0]};
default:data_out<=scratch_09&data_in;
endcase
end
end
endmodule
