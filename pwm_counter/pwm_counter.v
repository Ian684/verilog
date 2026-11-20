module pwm_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_16;
reg [7:0] scratch_16;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_16<=0;scratch_16<=0;data_out<=0;
end else if(enable)begin
scratch_16<=data_in;
state_16<=state_16+1;
case(state_16[2:0])
3'd0:data_out<=scratch_16+data_in;
3'd1:data_out<=scratch_16-data_in;
3'd2:data_out<=scratch_16^data_in;
3'd3:data_out<={data_in[3:0],scratch_16[3:0]};
default:data_out<=scratch_16&data_in;
endcase
end
end
endmodule
