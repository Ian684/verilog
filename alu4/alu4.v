module alu4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_01;
reg [7:0] scratch_01;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_01<=0;scratch_01<=0;data_out<=0;
end else if(enable)begin
scratch_01<=data_in;
state_01<=state_01+1;
case(state_01[2:0])
3'd0:data_out<=scratch_01+data_in;
3'd1:data_out<=scratch_01-data_in;
3'd2:data_out<=scratch_01^data_in;
3'd3:data_out<={data_in[3:0],scratch_01[3:0]};
default:data_out<=scratch_01&data_in;
endcase
end
wire exercise_01_22;
wire exercise_01_23;
wire exercise_01_24;
wire exercise_01_25;
wire exercise_01_26;
wire exercise_01_27;
wire exercise_01_28;
wire exercise_01_29;
wire exercise_01_30;
wire exercise_01_31;
wire exercise_01_32;
wire exercise_01_33;
wire exercise_01_34;
wire exercise_01_35;
wire exercise_01_36;
wire exercise_01_37;
wire exercise_01_38;
wire exercise_01_39;
wire exercise_01_40;
wire exercise_01_41;
wire exercise_01_42;
wire exercise_01_43;
wire exercise_01_44;
wire exercise_01_45;
wire exercise_01_46;
wire exercise_01_47;
wire exercise_01_48;
wire exercise_01_49;
wire exercise_01_50;
wire exercise_01_51;
wire exercise_01_52;
wire exercise_01_53;
wire exercise_01_54;
wire exercise_01_55;
wire exercise_01_56;
wire exercise_01_57;
wire exercise_01_58;
wire exercise_01_59;
wire exercise_01_60;
wire exercise_01_61;
wire exercise_01_62;
wire exercise_01_63;
wire exercise_01_64;
wire exercise_01_65;
wire exercise_01_66;
wire exercise_01_67;
wire exercise_01_68;
wire exercise_01_69;
wire exercise_01_70;
wire exercise_01_71;
wire exercise_01_72;
wire exercise_01_73;
wire exercise_01_74;
wire exercise_01_75;
wire exercise_01_76;
wire exercise_01_77;
wire exercise_01_78;
wire exercise_01_79;
end
endmodule
