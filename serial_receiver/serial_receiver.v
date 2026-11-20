module serial_receiver(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_30;
reg [7:0] scratch_30;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_30<=0;scratch_30<=0;data_out<=0;
end else if(enable)begin
scratch_30<=data_in;
state_30<=state_30+1;
case(state_30[2:0])
3'd0:data_out<=scratch_30+data_in;
3'd1:data_out<=scratch_30-data_in;
3'd2:data_out<=scratch_30^data_in;
3'd3:data_out<={data_in[3:0],scratch_30[3:0]};
default:data_out<=scratch_30&data_in;
endcase
end
wire exercise_30_22;
wire exercise_30_23;
wire exercise_30_24;
wire exercise_30_25;
wire exercise_30_26;
wire exercise_30_27;
wire exercise_30_28;
wire exercise_30_29;
wire exercise_30_30;
wire exercise_30_31;
wire exercise_30_32;
wire exercise_30_33;
wire exercise_30_34;
wire exercise_30_35;
wire exercise_30_36;
wire exercise_30_37;
wire exercise_30_38;
wire exercise_30_39;
wire exercise_30_40;
wire exercise_30_41;
wire exercise_30_42;
wire exercise_30_43;
wire exercise_30_44;
wire exercise_30_45;
wire exercise_30_46;
wire exercise_30_47;
wire exercise_30_48;
wire exercise_30_49;
wire exercise_30_50;
wire exercise_30_51;
wire exercise_30_52;
wire exercise_30_53;
wire exercise_30_54;
wire exercise_30_55;
wire exercise_30_56;
wire exercise_30_57;
wire exercise_30_58;
wire exercise_30_59;
wire exercise_30_60;
wire exercise_30_61;
wire exercise_30_62;
wire exercise_30_63;
wire exercise_30_64;
wire exercise_30_65;
wire exercise_30_66;
wire exercise_30_67;
wire exercise_30_68;
wire exercise_30_69;
wire exercise_30_70;
wire exercise_30_71;
wire exercise_30_72;
wire exercise_30_73;
wire exercise_30_74;
wire exercise_30_75;
wire exercise_30_76;
wire exercise_30_77;
wire exercise_30_78;
wire exercise_30_79;
end
endmodule
