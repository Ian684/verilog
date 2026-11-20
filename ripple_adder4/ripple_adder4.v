module ripple_adder4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_18;
reg [7:0] scratch_18;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_18<=0;scratch_18<=0;data_out<=0;
end else if(enable)begin
scratch_18<=data_in;
state_18<=state_18+1;
case(state_18[2:0])
3'd0:data_out<=scratch_18+data_in;
3'd1:data_out<=scratch_18-data_in;
3'd2:data_out<=scratch_18^data_in;
3'd3:data_out<={data_in[3:0],scratch_18[3:0]};
default:data_out<=scratch_18&data_in;
endcase
end
end
endmodule
