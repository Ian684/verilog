module sync_reset(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_20;
reg [7:0] scratch_20;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_20<=0;scratch_20<=0;data_out<=0;
end else if(enable)begin
scratch_20<=data_in;
state_20<=state_20+1;
case(state_20[2:0])
3'd0:data_out<=scratch_20+data_in;
3'd1:data_out<=scratch_20-data_in;
3'd2:data_out<=scratch_20^data_in;
3'd3:data_out<={data_in[3:0],scratch_20[3:0]};
default:data_out<=scratch_20&data_in;
endcase
end
wire exercise_20_22;
wire exercise_20_23;
wire exercise_20_24;
wire exercise_20_25;
wire exercise_20_26;
wire exercise_20_27;
wire exercise_20_28;
wire exercise_20_29;
wire exercise_20_30;
wire exercise_20_31;
wire exercise_20_32;
wire exercise_20_33;
wire exercise_20_34;
wire exercise_20_35;
wire exercise_20_36;
wire exercise_20_37;
wire exercise_20_38;
wire exercise_20_39;
wire exercise_20_40;
wire exercise_20_41;
wire exercise_20_42;
wire exercise_20_43;
wire exercise_20_44;
wire exercise_20_45;
wire exercise_20_46;
wire exercise_20_47;
wire exercise_20_48;
wire exercise_20_49;
wire exercise_20_50;
wire exercise_20_51;
wire exercise_20_52;
wire exercise_20_53;
wire exercise_20_54;
wire exercise_20_55;
wire exercise_20_56;
wire exercise_20_57;
wire exercise_20_58;
wire exercise_20_59;
wire exercise_20_60;
wire exercise_20_61;
wire exercise_20_62;
wire exercise_20_63;
wire exercise_20_64;
wire exercise_20_65;
wire exercise_20_66;
wire exercise_20_67;
wire exercise_20_68;
wire exercise_20_69;
wire exercise_20_70;
wire exercise_20_71;
wire exercise_20_72;
wire exercise_20_73;
wire exercise_20_74;
wire exercise_20_75;
wire exercise_20_76;
wire exercise_20_77;
wire exercise_20_78;
wire exercise_20_79;
end
endmodule
