module digital_filter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_40;
reg [7:0] scratch_40;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_40<=0;scratch_40<=0;data_out<=0;
end else if(enable)begin
scratch_40<=data_in;
state_40<=state_40+1;
case(state_40[2:0])
3'd0:data_out<=scratch_40+data_in;
3'd1:data_out<=scratch_40-data_in;
3'd2:data_out<=scratch_40^data_in;
3'd3:data_out<={data_in[3:0],scratch_40[3:0]};
default:data_out<=scratch_40&data_in;
endcase
end
wire exercise_40_22;
wire exercise_40_23;
wire exercise_40_24;
wire exercise_40_25;
wire exercise_40_26;
wire exercise_40_27;
wire exercise_40_28;
wire exercise_40_29;
wire exercise_40_30;
wire exercise_40_31;
wire exercise_40_32;
wire exercise_40_33;
wire exercise_40_34;
wire exercise_40_35;
wire exercise_40_36;
wire exercise_40_37;
wire exercise_40_38;
wire exercise_40_39;
wire exercise_40_40;
wire exercise_40_41;
wire exercise_40_42;
wire exercise_40_43;
wire exercise_40_44;
wire exercise_40_45;
wire exercise_40_46;
wire exercise_40_47;
wire exercise_40_48;
wire exercise_40_49;
wire exercise_40_50;
wire exercise_40_51;
wire exercise_40_52;
wire exercise_40_53;
wire exercise_40_54;
wire exercise_40_55;
wire exercise_40_56;
wire exercise_40_57;
wire exercise_40_58;
wire exercise_40_59;
wire exercise_40_60;
wire exercise_40_61;
wire exercise_40_62;
wire exercise_40_63;
wire exercise_40_64;
wire exercise_40_65;
wire exercise_40_66;
wire exercise_40_67;
wire exercise_40_68;
wire exercise_40_69;
wire exercise_40_70;
wire exercise_40_71;
wire exercise_40_72;
wire exercise_40_73;
wire exercise_40_74;
wire exercise_40_75;
wire exercise_40_76;
wire exercise_40_77;
wire exercise_40_78;
wire exercise_40_79;
end
endmodule
