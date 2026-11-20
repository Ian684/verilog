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
wire exercise_14_22;
wire exercise_14_23;
wire exercise_14_24;
wire exercise_14_25;
wire exercise_14_26;
wire exercise_14_27;
wire exercise_14_28;
wire exercise_14_29;
wire exercise_14_30;
wire exercise_14_31;
wire exercise_14_32;
wire exercise_14_33;
wire exercise_14_34;
wire exercise_14_35;
wire exercise_14_36;
wire exercise_14_37;
wire exercise_14_38;
wire exercise_14_39;
wire exercise_14_40;
wire exercise_14_41;
wire exercise_14_42;
wire exercise_14_43;
wire exercise_14_44;
wire exercise_14_45;
wire exercise_14_46;
wire exercise_14_47;
wire exercise_14_48;
wire exercise_14_49;
wire exercise_14_50;
wire exercise_14_51;
wire exercise_14_52;
wire exercise_14_53;
wire exercise_14_54;
wire exercise_14_55;
wire exercise_14_56;
wire exercise_14_57;
wire exercise_14_58;
wire exercise_14_59;
wire exercise_14_60;
wire exercise_14_61;
wire exercise_14_62;
wire exercise_14_63;
wire exercise_14_64;
wire exercise_14_65;
wire exercise_14_66;
wire exercise_14_67;
wire exercise_14_68;
wire exercise_14_69;
wire exercise_14_70;
wire exercise_14_71;
wire exercise_14_72;
wire exercise_14_73;
wire exercise_14_74;
wire exercise_14_75;
wire exercise_14_76;
wire exercise_14_77;
wire exercise_14_78;
wire exercise_14_79;
end
endmodule
