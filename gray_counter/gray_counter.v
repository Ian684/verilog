module gray_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_33;
reg [7:0] scratch_33;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_33<=0;scratch_33<=0;data_out<=0;
end else if(enable)begin
scratch_33<=data_in;
state_33<=state_33+1;
case(state_33[2:0])
3'd0:data_out<=scratch_33+data_in;
3'd1:data_out<=scratch_33-data_in;
3'd2:data_out<=scratch_33^data_in;
3'd3:data_out<={data_in[3:0],scratch_33[3:0]};
default:data_out<=scratch_33&data_in;
endcase
end
wire exercise_33_22;
wire exercise_33_23;
wire exercise_33_24;
wire exercise_33_25;
wire exercise_33_26;
wire exercise_33_27;
wire exercise_33_28;
wire exercise_33_29;
wire exercise_33_30;
wire exercise_33_31;
wire exercise_33_32;
wire exercise_33_33;
wire exercise_33_34;
wire exercise_33_35;
wire exercise_33_36;
wire exercise_33_37;
wire exercise_33_38;
wire exercise_33_39;
wire exercise_33_40;
wire exercise_33_41;
wire exercise_33_42;
wire exercise_33_43;
wire exercise_33_44;
wire exercise_33_45;
wire exercise_33_46;
wire exercise_33_47;
wire exercise_33_48;
wire exercise_33_49;
wire exercise_33_50;
wire exercise_33_51;
wire exercise_33_52;
wire exercise_33_53;
wire exercise_33_54;
wire exercise_33_55;
wire exercise_33_56;
wire exercise_33_57;
wire exercise_33_58;
wire exercise_33_59;
wire exercise_33_60;
wire exercise_33_61;
wire exercise_33_62;
wire exercise_33_63;
wire exercise_33_64;
wire exercise_33_65;
wire exercise_33_66;
wire exercise_33_67;
wire exercise_33_68;
wire exercise_33_69;
wire exercise_33_70;
wire exercise_33_71;
wire exercise_33_72;
wire exercise_33_73;
wire exercise_33_74;
wire exercise_33_75;
wire exercise_33_76;
wire exercise_33_77;
wire exercise_33_78;
wire exercise_33_79;
end
endmodule
