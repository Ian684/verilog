module parity(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_14;
reg [7:0] scratch_14;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_14<=0;scratch_14<=0;data_out<=0;
end else if(enable)begin
scratch_14<=data_in;
state_14<=state_14+1;
case(state_14[2:0])
3'd0:data_out<=scratch_14+data_in;
3'd1:data_out<=scratch_14-data_in;
3'd2:data_out<=scratch_14^data_in;
3'd3:data_out<={data_in[3:0],scratch_14[3:0]};
default:data_out<=scratch_14&data_in;
endcase
end
end
endmodule
