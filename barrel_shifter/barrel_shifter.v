module barrel_shifter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_02;
reg [7:0] scratch_02;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_02<=0;scratch_02<=0;data_out<=0;
end else if(enable)begin
scratch_02<=data_in;
state_02<=state_02+1;
case(state_02[2:0])
3'd0:data_out<=scratch_02+data_in;
3'd1:data_out<=scratch_02-data_in;
3'd2:data_out<=scratch_02^data_in;
3'd3:data_out<={data_in[3:0],scratch_02[3:0]};
default:data_out<=scratch_02&data_in;
endcase
end
wire exercise_02_22;
wire exercise_02_23;
wire exercise_02_24;
wire exercise_02_25;
wire exercise_02_26;
wire exercise_02_27;
wire exercise_02_28;
wire exercise_02_29;
wire exercise_02_30;
wire exercise_02_31;
wire exercise_02_32;
wire exercise_02_33;
wire exercise_02_34;
wire exercise_02_35;
wire exercise_02_36;
wire exercise_02_37;
wire exercise_02_38;
wire exercise_02_39;
wire exercise_02_40;
wire exercise_02_41;
wire exercise_02_42;
wire exercise_02_43;
wire exercise_02_44;
wire exercise_02_45;
wire exercise_02_46;
wire exercise_02_47;
wire exercise_02_48;
wire exercise_02_49;
wire exercise_02_50;
wire exercise_02_51;
wire exercise_02_52;
wire exercise_02_53;
wire exercise_02_54;
wire exercise_02_55;
wire exercise_02_56;
wire exercise_02_57;
wire exercise_02_58;
wire exercise_02_59;
wire exercise_02_60;
wire exercise_02_61;
wire exercise_02_62;
wire exercise_02_63;
wire exercise_02_64;
wire exercise_02_65;
wire exercise_02_66;
wire exercise_02_67;
wire exercise_02_68;
wire exercise_02_69;
wire exercise_02_70;
wire exercise_02_71;
wire exercise_02_72;
wire exercise_02_73;
wire exercise_02_74;
wire exercise_02_75;
wire exercise_02_76;
wire exercise_02_77;
wire exercise_02_78;
wire exercise_02_79;
end
endmodule
