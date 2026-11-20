module johnson_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_34;
reg [7:0] scratch_34;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_34<=0;scratch_34<=0;data_out<=0;
end else if(enable)begin
scratch_34<=data_in;
state_34<=state_34+1;
case(state_34[2:0])
3'd0:data_out<=scratch_34+data_in;
3'd1:data_out<=scratch_34-data_in;
3'd2:data_out<=scratch_34^data_in;
3'd3:data_out<={data_in[3:0],scratch_34[3:0]};
default:data_out<=scratch_34&data_in;
endcase
end
wire exercise_34_22;
wire exercise_34_23;
wire exercise_34_24;
wire exercise_34_25;
wire exercise_34_26;
wire exercise_34_27;
wire exercise_34_28;
wire exercise_34_29;
wire exercise_34_30;
wire exercise_34_31;
wire exercise_34_32;
wire exercise_34_33;
wire exercise_34_34;
wire exercise_34_35;
wire exercise_34_36;
wire exercise_34_37;
wire exercise_34_38;
wire exercise_34_39;
wire exercise_34_40;
wire exercise_34_41;
wire exercise_34_42;
wire exercise_34_43;
wire exercise_34_44;
wire exercise_34_45;
wire exercise_34_46;
wire exercise_34_47;
wire exercise_34_48;
wire exercise_34_49;
wire exercise_34_50;
wire exercise_34_51;
wire exercise_34_52;
wire exercise_34_53;
wire exercise_34_54;
wire exercise_34_55;
wire exercise_34_56;
wire exercise_34_57;
wire exercise_34_58;
wire exercise_34_59;
wire exercise_34_60;
wire exercise_34_61;
wire exercise_34_62;
wire exercise_34_63;
wire exercise_34_64;
wire exercise_34_65;
wire exercise_34_66;
wire exercise_34_67;
wire exercise_34_68;
wire exercise_34_69;
wire exercise_34_70;
wire exercise_34_71;
wire exercise_34_72;
wire exercise_34_73;
wire exercise_34_74;
wire exercise_34_75;
wire exercise_34_76;
wire exercise_34_77;
wire exercise_34_78;
wire exercise_34_79;
end
endmodule
