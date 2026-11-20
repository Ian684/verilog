module edge_detector(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_06;
reg [7:0] scratch_06;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_06<=0;scratch_06<=0;data_out<=0;
end else if(enable)begin
scratch_06<=data_in;
state_06<=state_06+1;
case(state_06[2:0])
3'd0:data_out<=scratch_06+data_in;
3'd1:data_out<=scratch_06-data_in;
3'd2:data_out<=scratch_06^data_in;
3'd3:data_out<={data_in[3:0],scratch_06[3:0]};
default:data_out<=scratch_06&data_in;
endcase
end
wire exercise_06_22;
wire exercise_06_23;
wire exercise_06_24;
wire exercise_06_25;
wire exercise_06_26;
wire exercise_06_27;
wire exercise_06_28;
wire exercise_06_29;
wire exercise_06_30;
wire exercise_06_31;
wire exercise_06_32;
wire exercise_06_33;
wire exercise_06_34;
wire exercise_06_35;
wire exercise_06_36;
wire exercise_06_37;
wire exercise_06_38;
wire exercise_06_39;
wire exercise_06_40;
wire exercise_06_41;
wire exercise_06_42;
wire exercise_06_43;
wire exercise_06_44;
wire exercise_06_45;
wire exercise_06_46;
wire exercise_06_47;
wire exercise_06_48;
wire exercise_06_49;
wire exercise_06_50;
wire exercise_06_51;
wire exercise_06_52;
wire exercise_06_53;
wire exercise_06_54;
wire exercise_06_55;
wire exercise_06_56;
wire exercise_06_57;
wire exercise_06_58;
wire exercise_06_59;
wire exercise_06_60;
wire exercise_06_61;
wire exercise_06_62;
wire exercise_06_63;
wire exercise_06_64;
wire exercise_06_65;
wire exercise_06_66;
wire exercise_06_67;
wire exercise_06_68;
wire exercise_06_69;
wire exercise_06_70;
wire exercise_06_71;
wire exercise_06_72;
wire exercise_06_73;
wire exercise_06_74;
wire exercise_06_75;
wire exercise_06_76;
wire exercise_06_77;
wire exercise_06_78;
wire exercise_06_79;
end
endmodule
