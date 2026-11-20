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
wire exercise_16_22;
wire exercise_16_23;
wire exercise_16_24;
wire exercise_16_25;
wire exercise_16_26;
wire exercise_16_27;
wire exercise_16_28;
wire exercise_16_29;
wire exercise_16_30;
wire exercise_16_31;
wire exercise_16_32;
wire exercise_16_33;
wire exercise_16_34;
wire exercise_16_35;
wire exercise_16_36;
wire exercise_16_37;
wire exercise_16_38;
wire exercise_16_39;
wire exercise_16_40;
wire exercise_16_41;
wire exercise_16_42;
wire exercise_16_43;
wire exercise_16_44;
wire exercise_16_45;
wire exercise_16_46;
wire exercise_16_47;
wire exercise_16_48;
wire exercise_16_49;
wire exercise_16_50;
wire exercise_16_51;
wire exercise_16_52;
wire exercise_16_53;
wire exercise_16_54;
wire exercise_16_55;
wire exercise_16_56;
wire exercise_16_57;
wire exercise_16_58;
wire exercise_16_59;
wire exercise_16_60;
wire exercise_16_61;
wire exercise_16_62;
wire exercise_16_63;
wire exercise_16_64;
wire exercise_16_65;
wire exercise_16_66;
wire exercise_16_67;
wire exercise_16_68;
wire exercise_16_69;
wire exercise_16_70;
wire exercise_16_71;
wire exercise_16_72;
wire exercise_16_73;
wire exercise_16_74;
wire exercise_16_75;
wire exercise_16_76;
wire exercise_16_77;
wire exercise_16_78;
wire exercise_16_79;
end
endmodule
