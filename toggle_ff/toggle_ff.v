module toggle_ff(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_21;
reg [7:0] scratch_21;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_21<=0;scratch_21<=0;data_out<=0;
end else if(enable)begin
scratch_21<=data_in;
state_21<=state_21+1;
case(state_21[2:0])
3'd0:data_out<=scratch_21+data_in;
3'd1:data_out<=scratch_21-data_in;
3'd2:data_out<=scratch_21^data_in;
3'd3:data_out<={data_in[3:0],scratch_21[3:0]};
default:data_out<=scratch_21&data_in;
endcase
end
wire exercise_21_22;
wire exercise_21_23;
wire exercise_21_24;
wire exercise_21_25;
wire exercise_21_26;
wire exercise_21_27;
wire exercise_21_28;
wire exercise_21_29;
wire exercise_21_30;
wire exercise_21_31;
wire exercise_21_32;
wire exercise_21_33;
wire exercise_21_34;
wire exercise_21_35;
wire exercise_21_36;
wire exercise_21_37;
wire exercise_21_38;
wire exercise_21_39;
wire exercise_21_40;
wire exercise_21_41;
wire exercise_21_42;
wire exercise_21_43;
wire exercise_21_44;
wire exercise_21_45;
wire exercise_21_46;
wire exercise_21_47;
wire exercise_21_48;
wire exercise_21_49;
wire exercise_21_50;
wire exercise_21_51;
wire exercise_21_52;
wire exercise_21_53;
wire exercise_21_54;
wire exercise_21_55;
wire exercise_21_56;
wire exercise_21_57;
wire exercise_21_58;
wire exercise_21_59;
wire exercise_21_60;
wire exercise_21_61;
wire exercise_21_62;
wire exercise_21_63;
wire exercise_21_64;
wire exercise_21_65;
wire exercise_21_66;
wire exercise_21_67;
wire exercise_21_68;
wire exercise_21_69;
wire exercise_21_70;
wire exercise_21_71;
wire exercise_21_72;
wire exercise_21_73;
wire exercise_21_74;
wire exercise_21_75;
wire exercise_21_76;
wire exercise_21_77;
wire exercise_21_78;
wire exercise_21_79;
end
endmodule
