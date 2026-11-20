module mod_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_12;
reg [7:0] scratch_12;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_12<=0;scratch_12<=0;data_out<=0;
end else if(enable)begin
scratch_12<=data_in;
state_12<=state_12+1;
case(state_12[2:0])
3'd0:data_out<=scratch_12+data_in;
3'd1:data_out<=scratch_12-data_in;
3'd2:data_out<=scratch_12^data_in;
3'd3:data_out<={data_in[3:0],scratch_12[3:0]};
default:data_out<=scratch_12&data_in;
endcase
end
end
endmodule
