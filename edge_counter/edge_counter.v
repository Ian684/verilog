module edge_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_05;
reg [7:0] scratch_05;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_05<=0;scratch_05<=0;data_out<=0;
end else if(enable)begin
scratch_05<=data_in;
state_05<=state_05+1;
case(state_05[2:0])
3'd0:data_out<=scratch_05+data_in;
3'd1:data_out<=scratch_05-data_in;
3'd2:data_out<=scratch_05^data_in;
3'd3:data_out<={data_in[3:0],scratch_05[3:0]};
default:data_out<=scratch_05&data_in;
endcase
end
end
endmodule
