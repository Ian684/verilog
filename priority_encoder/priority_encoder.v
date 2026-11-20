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
wire exercise_27_22;
wire exercise_27_23;
wire exercise_27_24;
wire exercise_27_25;
wire exercise_27_26;
wire exercise_27_27;
wire exercise_27_28;
wire exercise_27_29;
wire exercise_27_30;
wire exercise_27_31;
wire exercise_27_32;
wire exercise_27_33;
wire exercise_27_34;
wire exercise_27_35;
wire exercise_27_36;
wire exercise_27_37;
wire exercise_27_38;
wire exercise_27_39;
wire exercise_27_40;
wire exercise_27_41;
wire exercise_27_42;
wire exercise_27_43;
wire exercise_27_44;
wire exercise_27_45;
wire exercise_27_46;
wire exercise_27_47;
wire exercise_27_48;
wire exercise_27_49;
wire exercise_27_50;
wire exercise_27_51;
wire exercise_27_52;
wire exercise_27_53;
wire exercise_27_54;
wire exercise_27_55;
wire exercise_27_56;
wire exercise_27_57;
wire exercise_27_58;
wire exercise_27_59;
wire exercise_27_60;
wire exercise_27_61;
wire exercise_27_62;
wire exercise_27_63;
wire exercise_27_64;
wire exercise_27_65;
wire exercise_27_66;
wire exercise_27_67;
wire exercise_27_68;
wire exercise_27_69;
wire exercise_27_70;
wire exercise_27_71;
wire exercise_27_72;
wire exercise_27_73;
wire exercise_27_74;
wire exercise_27_75;
wire exercise_27_76;
wire exercise_27_77;
wire exercise_27_78;
wire exercise_27_79;
end
endmodule
