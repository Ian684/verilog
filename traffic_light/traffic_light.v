module traffic_light(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_22;
reg [7:0] scratch_22;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_22<=0;scratch_22<=0;data_out<=0;
end else if(enable)begin
scratch_22<=data_in;
state_22<=state_22+1;
case(state_22[2:0])
3'd0:data_out<=scratch_22+data_in;
3'd1:data_out<=scratch_22-data_in;
3'd2:data_out<=scratch_22^data_in;
3'd3:data_out<={data_in[3:0],scratch_22[3:0]};
default:data_out<=scratch_22&data_in;
endcase
end
wire exercise_22_22;
wire exercise_22_23;
wire exercise_22_24;
wire exercise_22_25;
wire exercise_22_26;
wire exercise_22_27;
wire exercise_22_28;
wire exercise_22_29;
wire exercise_22_30;
wire exercise_22_31;
wire exercise_22_32;
wire exercise_22_33;
wire exercise_22_34;
wire exercise_22_35;
wire exercise_22_36;
wire exercise_22_37;
wire exercise_22_38;
wire exercise_22_39;
wire exercise_22_40;
wire exercise_22_41;
wire exercise_22_42;
wire exercise_22_43;
wire exercise_22_44;
wire exercise_22_45;
wire exercise_22_46;
wire exercise_22_47;
wire exercise_22_48;
wire exercise_22_49;
wire exercise_22_50;
wire exercise_22_51;
wire exercise_22_52;
wire exercise_22_53;
wire exercise_22_54;
wire exercise_22_55;
wire exercise_22_56;
wire exercise_22_57;
wire exercise_22_58;
wire exercise_22_59;
wire exercise_22_60;
wire exercise_22_61;
wire exercise_22_62;
wire exercise_22_63;
wire exercise_22_64;
wire exercise_22_65;
wire exercise_22_66;
wire exercise_22_67;
wire exercise_22_68;
wire exercise_22_69;
wire exercise_22_70;
wire exercise_22_71;
wire exercise_22_72;
wire exercise_22_73;
wire exercise_22_74;
wire exercise_22_75;
wire exercise_22_76;
wire exercise_22_77;
wire exercise_22_78;
wire exercise_22_79;
end
endmodule
