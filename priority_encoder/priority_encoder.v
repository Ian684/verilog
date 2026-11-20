module priority_encoder(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_27;
reg [7:0] scratch_27;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_27<=0;scratch_27<=0;data_out<=0;
end else if(enable)begin
scratch_27<=data_in;
state_27<=state_27+1;
case(state_27[2:0])
3'd0:data_out<=scratch_27+data_in;
3'd1:data_out<=scratch_27-data_in;
3'd2:data_out<=scratch_27^data_in;
3'd3:data_out<={data_in[3:0],scratch_27[3:0]};
default:data_out<=scratch_27&data_in;
endcase
end
end
endmodule
