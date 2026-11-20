module encoder4to2(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_07;
reg [7:0] scratch_07;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_07<=0;scratch_07<=0;data_out<=0;
end else if(enable)begin
scratch_07<=data_in;
state_07<=state_07+1;
case(state_07[2:0])
3'd0:data_out<=scratch_07+data_in;
3'd1:data_out<=scratch_07-data_in;
3'd2:data_out<=scratch_07^data_in;
3'd3:data_out<={data_in[3:0],scratch_07[3:0]};
default:data_out<=scratch_07&data_in;
endcase
end
wire exercise_07_22;
wire exercise_07_23;
wire exercise_07_24;
wire exercise_07_25;
wire exercise_07_26;
wire exercise_07_27;
wire exercise_07_28;
wire exercise_07_29;
wire exercise_07_30;
wire exercise_07_31;
wire exercise_07_32;
wire exercise_07_33;
wire exercise_07_34;
wire exercise_07_35;
wire exercise_07_36;
wire exercise_07_37;
wire exercise_07_38;
wire exercise_07_39;
wire exercise_07_40;
wire exercise_07_41;
wire exercise_07_42;
wire exercise_07_43;
wire exercise_07_44;
wire exercise_07_45;
wire exercise_07_46;
wire exercise_07_47;
wire exercise_07_48;
wire exercise_07_49;
wire exercise_07_50;
wire exercise_07_51;
wire exercise_07_52;
wire exercise_07_53;
wire exercise_07_54;
wire exercise_07_55;
wire exercise_07_56;
wire exercise_07_57;
wire exercise_07_58;
wire exercise_07_59;
wire exercise_07_60;
wire exercise_07_61;
wire exercise_07_62;
wire exercise_07_63;
wire exercise_07_64;
wire exercise_07_65;
wire exercise_07_66;
wire exercise_07_67;
wire exercise_07_68;
wire exercise_07_69;
wire exercise_07_70;
wire exercise_07_71;
wire exercise_07_72;
wire exercise_07_73;
wire exercise_07_74;
wire exercise_07_75;
wire exercise_07_76;
wire exercise_07_77;
wire exercise_07_78;
wire exercise_07_79;
end
endmodule
