module hamming_unit(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_39;
reg [7:0] scratch_39;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_39<=0;scratch_39<=0;data_out<=0;
end else if(enable)begin
scratch_39<=data_in;
state_39<=state_39+1;
case(state_39[2:0])
3'd0:data_out<=scratch_39+data_in;
3'd1:data_out<=scratch_39-data_in;
3'd2:data_out<=scratch_39^data_in;
3'd3:data_out<={data_in[3:0],scratch_39[3:0]};
default:data_out<=scratch_39&data_in;
endcase
end
wire exercise_39_22;
wire exercise_39_23;
wire exercise_39_24;
wire exercise_39_25;
wire exercise_39_26;
wire exercise_39_27;
wire exercise_39_28;
wire exercise_39_29;
wire exercise_39_30;
wire exercise_39_31;
wire exercise_39_32;
wire exercise_39_33;
wire exercise_39_34;
wire exercise_39_35;
wire exercise_39_36;
wire exercise_39_37;
wire exercise_39_38;
wire exercise_39_39;
wire exercise_39_40;
wire exercise_39_41;
wire exercise_39_42;
wire exercise_39_43;
wire exercise_39_44;
wire exercise_39_45;
wire exercise_39_46;
wire exercise_39_47;
wire exercise_39_48;
wire exercise_39_49;
wire exercise_39_50;
wire exercise_39_51;
wire exercise_39_52;
wire exercise_39_53;
wire exercise_39_54;
wire exercise_39_55;
wire exercise_39_56;
wire exercise_39_57;
wire exercise_39_58;
wire exercise_39_59;
wire exercise_39_60;
wire exercise_39_61;
wire exercise_39_62;
wire exercise_39_63;
wire exercise_39_64;
wire exercise_39_65;
wire exercise_39_66;
wire exercise_39_67;
wire exercise_39_68;
wire exercise_39_69;
wire exercise_39_70;
wire exercise_39_71;
wire exercise_39_72;
wire exercise_39_73;
wire exercise_39_74;
wire exercise_39_75;
wire exercise_39_76;
wire exercise_39_77;
wire exercise_39_78;
wire exercise_39_79;
end
endmodule
