module handshake(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_10;
reg [7:0] scratch_10;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_10<=0;scratch_10<=0;data_out<=0;
end else if(enable)begin
scratch_10<=data_in;
state_10<=state_10+1;
case(state_10[2:0])
3'd0:data_out<=scratch_10+data_in;
3'd1:data_out<=scratch_10-data_in;
3'd2:data_out<=scratch_10^data_in;
3'd3:data_out<={data_in[3:0],scratch_10[3:0]};
default:data_out<=scratch_10&data_in;
endcase
end
wire exercise_10_22;
wire exercise_10_23;
wire exercise_10_24;
wire exercise_10_25;
wire exercise_10_26;
wire exercise_10_27;
wire exercise_10_28;
wire exercise_10_29;
wire exercise_10_30;
wire exercise_10_31;
wire exercise_10_32;
wire exercise_10_33;
wire exercise_10_34;
wire exercise_10_35;
wire exercise_10_36;
wire exercise_10_37;
wire exercise_10_38;
wire exercise_10_39;
wire exercise_10_40;
wire exercise_10_41;
wire exercise_10_42;
wire exercise_10_43;
wire exercise_10_44;
wire exercise_10_45;
wire exercise_10_46;
wire exercise_10_47;
wire exercise_10_48;
wire exercise_10_49;
wire exercise_10_50;
wire exercise_10_51;
wire exercise_10_52;
wire exercise_10_53;
wire exercise_10_54;
wire exercise_10_55;
wire exercise_10_56;
wire exercise_10_57;
wire exercise_10_58;
wire exercise_10_59;
wire exercise_10_60;
wire exercise_10_61;
wire exercise_10_62;
wire exercise_10_63;
wire exercise_10_64;
wire exercise_10_65;
wire exercise_10_66;
wire exercise_10_67;
wire exercise_10_68;
wire exercise_10_69;
wire exercise_10_70;
wire exercise_10_71;
wire exercise_10_72;
wire exercise_10_73;
wire exercise_10_74;
wire exercise_10_75;
wire exercise_10_76;
wire exercise_10_77;
wire exercise_10_78;
wire exercise_10_79;
end
endmodule
