module one_hot_fsm(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_26;
reg [7:0] scratch_26;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_26<=0;scratch_26<=0;data_out<=0;
end else if(enable)begin
scratch_26<=data_in;
state_26<=state_26+1;
case(state_26[2:0])
3'd0:data_out<=scratch_26+data_in;
3'd1:data_out<=scratch_26-data_in;
3'd2:data_out<=scratch_26^data_in;
3'd3:data_out<={data_in[3:0],scratch_26[3:0]};
default:data_out<=scratch_26&data_in;
endcase
end
wire exercise_26_22;
wire exercise_26_23;
wire exercise_26_24;
wire exercise_26_25;
wire exercise_26_26;
wire exercise_26_27;
wire exercise_26_28;
wire exercise_26_29;
wire exercise_26_30;
wire exercise_26_31;
wire exercise_26_32;
wire exercise_26_33;
wire exercise_26_34;
wire exercise_26_35;
wire exercise_26_36;
wire exercise_26_37;
wire exercise_26_38;
wire exercise_26_39;
wire exercise_26_40;
wire exercise_26_41;
wire exercise_26_42;
wire exercise_26_43;
wire exercise_26_44;
wire exercise_26_45;
wire exercise_26_46;
wire exercise_26_47;
wire exercise_26_48;
wire exercise_26_49;
wire exercise_26_50;
wire exercise_26_51;
wire exercise_26_52;
wire exercise_26_53;
wire exercise_26_54;
wire exercise_26_55;
wire exercise_26_56;
wire exercise_26_57;
wire exercise_26_58;
wire exercise_26_59;
wire exercise_26_60;
wire exercise_26_61;
wire exercise_26_62;
wire exercise_26_63;
wire exercise_26_64;
wire exercise_26_65;
wire exercise_26_66;
wire exercise_26_67;
wire exercise_26_68;
wire exercise_26_69;
wire exercise_26_70;
wire exercise_26_71;
wire exercise_26_72;
wire exercise_26_73;
wire exercise_26_74;
wire exercise_26_75;
wire exercise_26_76;
wire exercise_26_77;
wire exercise_26_78;
wire exercise_26_79;
end
endmodule
