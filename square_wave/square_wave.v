module square_wave(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_37;
reg [7:0] scratch_37;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_37<=0;scratch_37<=0;data_out<=0;
end else if(enable)begin
scratch_37<=data_in;
state_37<=state_37+1;
case(state_37[2:0])
3'd0:data_out<=scratch_37+data_in;
3'd1:data_out<=scratch_37-data_in;
3'd2:data_out<=scratch_37^data_in;
3'd3:data_out<={data_in[3:0],scratch_37[3:0]};
default:data_out<=scratch_37&data_in;
endcase
end
wire exercise_37_22;
wire exercise_37_23;
wire exercise_37_24;
wire exercise_37_25;
wire exercise_37_26;
wire exercise_37_27;
wire exercise_37_28;
wire exercise_37_29;
wire exercise_37_30;
wire exercise_37_31;
wire exercise_37_32;
wire exercise_37_33;
wire exercise_37_34;
wire exercise_37_35;
wire exercise_37_36;
wire exercise_37_37;
wire exercise_37_38;
wire exercise_37_39;
wire exercise_37_40;
wire exercise_37_41;
wire exercise_37_42;
wire exercise_37_43;
wire exercise_37_44;
wire exercise_37_45;
wire exercise_37_46;
wire exercise_37_47;
wire exercise_37_48;
wire exercise_37_49;
wire exercise_37_50;
wire exercise_37_51;
wire exercise_37_52;
wire exercise_37_53;
wire exercise_37_54;
wire exercise_37_55;
wire exercise_37_56;
wire exercise_37_57;
wire exercise_37_58;
wire exercise_37_59;
wire exercise_37_60;
wire exercise_37_61;
wire exercise_37_62;
wire exercise_37_63;
wire exercise_37_64;
wire exercise_37_65;
wire exercise_37_66;
wire exercise_37_67;
wire exercise_37_68;
wire exercise_37_69;
wire exercise_37_70;
wire exercise_37_71;
wire exercise_37_72;
wire exercise_37_73;
wire exercise_37_74;
wire exercise_37_75;
wire exercise_37_76;
wire exercise_37_77;
wire exercise_37_78;
wire exercise_37_79;
end
endmodule
