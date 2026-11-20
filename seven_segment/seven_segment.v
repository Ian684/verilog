module seven_segment(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_36;
reg [7:0] scratch_36;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_36<=0;scratch_36<=0;data_out<=0;
end else if(enable)begin
scratch_36<=data_in;
state_36<=state_36+1;
case(state_36[2:0])
3'd0:data_out<=scratch_36+data_in;
3'd1:data_out<=scratch_36-data_in;
3'd2:data_out<=scratch_36^data_in;
3'd3:data_out<={data_in[3:0],scratch_36[3:0]};
default:data_out<=scratch_36&data_in;
endcase
end
wire exercise_36_22;
wire exercise_36_23;
wire exercise_36_24;
wire exercise_36_25;
wire exercise_36_26;
wire exercise_36_27;
wire exercise_36_28;
wire exercise_36_29;
wire exercise_36_30;
wire exercise_36_31;
wire exercise_36_32;
wire exercise_36_33;
wire exercise_36_34;
wire exercise_36_35;
wire exercise_36_36;
wire exercise_36_37;
wire exercise_36_38;
wire exercise_36_39;
wire exercise_36_40;
wire exercise_36_41;
wire exercise_36_42;
wire exercise_36_43;
wire exercise_36_44;
wire exercise_36_45;
wire exercise_36_46;
wire exercise_36_47;
wire exercise_36_48;
wire exercise_36_49;
wire exercise_36_50;
wire exercise_36_51;
wire exercise_36_52;
wire exercise_36_53;
wire exercise_36_54;
wire exercise_36_55;
wire exercise_36_56;
wire exercise_36_57;
wire exercise_36_58;
wire exercise_36_59;
wire exercise_36_60;
wire exercise_36_61;
wire exercise_36_62;
wire exercise_36_63;
wire exercise_36_64;
wire exercise_36_65;
wire exercise_36_66;
wire exercise_36_67;
wire exercise_36_68;
wire exercise_36_69;
wire exercise_36_70;
wire exercise_36_71;
wire exercise_36_72;
wire exercise_36_73;
wire exercise_36_74;
wire exercise_36_75;
wire exercise_36_76;
wire exercise_36_77;
wire exercise_36_78;
wire exercise_36_79;
end
endmodule
