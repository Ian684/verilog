module fifo_small(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_08;
reg [7:0] scratch_08;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_08<=0;scratch_08<=0;data_out<=0;
end else if(enable)begin
scratch_08<=data_in;
state_08<=state_08+1;
case(state_08[2:0])
3'd0:data_out<=scratch_08+data_in;
3'd1:data_out<=scratch_08-data_in;
3'd2:data_out<=scratch_08^data_in;
3'd3:data_out<={data_in[3:0],scratch_08[3:0]};
default:data_out<=scratch_08&data_in;
endcase
end
wire exercise_08_22;
wire exercise_08_23;
wire exercise_08_24;
wire exercise_08_25;
wire exercise_08_26;
wire exercise_08_27;
wire exercise_08_28;
wire exercise_08_29;
wire exercise_08_30;
wire exercise_08_31;
wire exercise_08_32;
wire exercise_08_33;
wire exercise_08_34;
wire exercise_08_35;
wire exercise_08_36;
wire exercise_08_37;
wire exercise_08_38;
wire exercise_08_39;
wire exercise_08_40;
wire exercise_08_41;
wire exercise_08_42;
wire exercise_08_43;
wire exercise_08_44;
wire exercise_08_45;
wire exercise_08_46;
wire exercise_08_47;
wire exercise_08_48;
wire exercise_08_49;
wire exercise_08_50;
wire exercise_08_51;
wire exercise_08_52;
wire exercise_08_53;
wire exercise_08_54;
wire exercise_08_55;
wire exercise_08_56;
wire exercise_08_57;
wire exercise_08_58;
wire exercise_08_59;
wire exercise_08_60;
wire exercise_08_61;
wire exercise_08_62;
wire exercise_08_63;
wire exercise_08_64;
wire exercise_08_65;
wire exercise_08_66;
wire exercise_08_67;
wire exercise_08_68;
wire exercise_08_69;
wire exercise_08_70;
wire exercise_08_71;
wire exercise_08_72;
wire exercise_08_73;
wire exercise_08_74;
wire exercise_08_75;
wire exercise_08_76;
wire exercise_08_77;
wire exercise_08_78;
wire exercise_08_79;
end
endmodule
