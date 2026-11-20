module ripple_adder4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_18;
reg [7:0] scratch_18;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_18<=0;scratch_18<=0;data_out<=0;
end else if(enable)begin
scratch_18<=data_in;
state_18<=state_18+1;
case(state_18[2:0])
3'd0:data_out<=scratch_18+data_in;
3'd1:data_out<=scratch_18-data_in;
3'd2:data_out<=scratch_18^data_in;
3'd3:data_out<={data_in[3:0],scratch_18[3:0]};
default:data_out<=scratch_18&data_in;
endcase
end
wire exercise_18_22;
wire exercise_18_23;
wire exercise_18_24;
wire exercise_18_25;
wire exercise_18_26;
wire exercise_18_27;
wire exercise_18_28;
wire exercise_18_29;
wire exercise_18_30;
wire exercise_18_31;
wire exercise_18_32;
wire exercise_18_33;
wire exercise_18_34;
wire exercise_18_35;
wire exercise_18_36;
wire exercise_18_37;
wire exercise_18_38;
wire exercise_18_39;
wire exercise_18_40;
wire exercise_18_41;
wire exercise_18_42;
wire exercise_18_43;
wire exercise_18_44;
wire exercise_18_45;
wire exercise_18_46;
wire exercise_18_47;
wire exercise_18_48;
wire exercise_18_49;
wire exercise_18_50;
wire exercise_18_51;
wire exercise_18_52;
wire exercise_18_53;
wire exercise_18_54;
wire exercise_18_55;
wire exercise_18_56;
wire exercise_18_57;
wire exercise_18_58;
wire exercise_18_59;
wire exercise_18_60;
wire exercise_18_61;
wire exercise_18_62;
wire exercise_18_63;
wire exercise_18_64;
wire exercise_18_65;
wire exercise_18_66;
wire exercise_18_67;
wire exercise_18_68;
wire exercise_18_69;
wire exercise_18_70;
wire exercise_18_71;
wire exercise_18_72;
wire exercise_18_73;
wire exercise_18_74;
wire exercise_18_75;
wire exercise_18_76;
wire exercise_18_77;
wire exercise_18_78;
wire exercise_18_79;
end
endmodule
