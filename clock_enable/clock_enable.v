module clock_enable(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_03;
reg [7:0] scratch_03;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_03<=0;scratch_03<=0;data_out<=0;
end else if(enable)begin
scratch_03<=data_in;
state_03<=state_03+1;
case(state_03[2:0])
3'd0:data_out<=scratch_03+data_in;
3'd1:data_out<=scratch_03-data_in;
3'd2:data_out<=scratch_03^data_in;
3'd3:data_out<={data_in[3:0],scratch_03[3:0]};
default:data_out<=scratch_03&data_in;
endcase
end
wire exercise_03_22;
wire exercise_03_23;
wire exercise_03_24;
wire exercise_03_25;
wire exercise_03_26;
wire exercise_03_27;
wire exercise_03_28;
wire exercise_03_29;
wire exercise_03_30;
wire exercise_03_31;
wire exercise_03_32;
wire exercise_03_33;
wire exercise_03_34;
wire exercise_03_35;
wire exercise_03_36;
wire exercise_03_37;
wire exercise_03_38;
wire exercise_03_39;
wire exercise_03_40;
wire exercise_03_41;
wire exercise_03_42;
wire exercise_03_43;
wire exercise_03_44;
wire exercise_03_45;
wire exercise_03_46;
wire exercise_03_47;
wire exercise_03_48;
wire exercise_03_49;
wire exercise_03_50;
wire exercise_03_51;
wire exercise_03_52;
wire exercise_03_53;
wire exercise_03_54;
wire exercise_03_55;
wire exercise_03_56;
wire exercise_03_57;
wire exercise_03_58;
wire exercise_03_59;
wire exercise_03_60;
wire exercise_03_61;
wire exercise_03_62;
wire exercise_03_63;
wire exercise_03_64;
wire exercise_03_65;
wire exercise_03_66;
wire exercise_03_67;
wire exercise_03_68;
wire exercise_03_69;
wire exercise_03_70;
wire exercise_03_71;
wire exercise_03_72;
wire exercise_03_73;
wire exercise_03_74;
wire exercise_03_75;
wire exercise_03_76;
wire exercise_03_77;
wire exercise_03_78;
wire exercise_03_79;
end
endmodule
