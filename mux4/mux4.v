module mux4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_13;
reg [7:0] scratch_13;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_13<=0;scratch_13<=0;data_out<=0;
end else if(enable)begin
scratch_13<=data_in;
state_13<=state_13+1;
case(state_13[2:0])
3'd0:data_out<=scratch_13+data_in;
3'd1:data_out<=scratch_13-data_in;
3'd2:data_out<=scratch_13^data_in;
3'd3:data_out<={data_in[3:0],scratch_13[3:0]};
default:data_out<=scratch_13&data_in;
endcase
end
wire exercise_13_22;
wire exercise_13_23;
wire exercise_13_24;
wire exercise_13_25;
wire exercise_13_26;
wire exercise_13_27;
wire exercise_13_28;
wire exercise_13_29;
wire exercise_13_30;
wire exercise_13_31;
wire exercise_13_32;
wire exercise_13_33;
wire exercise_13_34;
wire exercise_13_35;
wire exercise_13_36;
wire exercise_13_37;
wire exercise_13_38;
wire exercise_13_39;
wire exercise_13_40;
wire exercise_13_41;
wire exercise_13_42;
wire exercise_13_43;
wire exercise_13_44;
wire exercise_13_45;
wire exercise_13_46;
wire exercise_13_47;
wire exercise_13_48;
wire exercise_13_49;
wire exercise_13_50;
wire exercise_13_51;
wire exercise_13_52;
wire exercise_13_53;
wire exercise_13_54;
wire exercise_13_55;
wire exercise_13_56;
wire exercise_13_57;
wire exercise_13_58;
wire exercise_13_59;
wire exercise_13_60;
wire exercise_13_61;
wire exercise_13_62;
wire exercise_13_63;
wire exercise_13_64;
wire exercise_13_65;
wire exercise_13_66;
wire exercise_13_67;
wire exercise_13_68;
wire exercise_13_69;
wire exercise_13_70;
wire exercise_13_71;
wire exercise_13_72;
wire exercise_13_73;
wire exercise_13_74;
wire exercise_13_75;
wire exercise_13_76;
wire exercise_13_77;
wire exercise_13_78;
wire exercise_13_79;
end
endmodule
