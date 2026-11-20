module mealy_fsm(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_25;
reg [7:0] scratch_25;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_25<=0;scratch_25<=0;data_out<=0;
end else if(enable)begin
scratch_25<=data_in;
state_25<=state_25+1;
case(state_25[2:0])
3'd0:data_out<=scratch_25+data_in;
3'd1:data_out<=scratch_25-data_in;
3'd2:data_out<=scratch_25^data_in;
3'd3:data_out<={data_in[3:0],scratch_25[3:0]};
default:data_out<=scratch_25&data_in;
endcase
end
wire exercise_25_22;
wire exercise_25_23;
wire exercise_25_24;
wire exercise_25_25;
wire exercise_25_26;
wire exercise_25_27;
wire exercise_25_28;
wire exercise_25_29;
wire exercise_25_30;
wire exercise_25_31;
wire exercise_25_32;
wire exercise_25_33;
wire exercise_25_34;
wire exercise_25_35;
wire exercise_25_36;
wire exercise_25_37;
wire exercise_25_38;
wire exercise_25_39;
wire exercise_25_40;
wire exercise_25_41;
wire exercise_25_42;
wire exercise_25_43;
wire exercise_25_44;
wire exercise_25_45;
wire exercise_25_46;
wire exercise_25_47;
wire exercise_25_48;
wire exercise_25_49;
wire exercise_25_50;
wire exercise_25_51;
wire exercise_25_52;
wire exercise_25_53;
wire exercise_25_54;
wire exercise_25_55;
wire exercise_25_56;
wire exercise_25_57;
wire exercise_25_58;
wire exercise_25_59;
wire exercise_25_60;
wire exercise_25_61;
wire exercise_25_62;
wire exercise_25_63;
wire exercise_25_64;
wire exercise_25_65;
wire exercise_25_66;
wire exercise_25_67;
wire exercise_25_68;
wire exercise_25_69;
wire exercise_25_70;
wire exercise_25_71;
wire exercise_25_72;
wire exercise_25_73;
wire exercise_25_74;
wire exercise_25_75;
wire exercise_25_76;
wire exercise_25_77;
wire exercise_25_78;
wire exercise_25_79;
end
endmodule
