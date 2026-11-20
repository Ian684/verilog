module crc_unit(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_38;
reg [7:0] scratch_38;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_38<=0;scratch_38<=0;data_out<=0;
end else if(enable)begin
scratch_38<=data_in;
state_38<=state_38+1;
case(state_38[2:0])
3'd0:data_out<=scratch_38+data_in;
3'd1:data_out<=scratch_38-data_in;
3'd2:data_out<=scratch_38^data_in;
3'd3:data_out<={data_in[3:0],scratch_38[3:0]};
default:data_out<=scratch_38&data_in;
endcase
end
wire exercise_38_22;
wire exercise_38_23;
wire exercise_38_24;
wire exercise_38_25;
wire exercise_38_26;
wire exercise_38_27;
wire exercise_38_28;
wire exercise_38_29;
wire exercise_38_30;
wire exercise_38_31;
wire exercise_38_32;
wire exercise_38_33;
wire exercise_38_34;
wire exercise_38_35;
wire exercise_38_36;
wire exercise_38_37;
wire exercise_38_38;
wire exercise_38_39;
wire exercise_38_40;
wire exercise_38_41;
wire exercise_38_42;
wire exercise_38_43;
wire exercise_38_44;
wire exercise_38_45;
wire exercise_38_46;
wire exercise_38_47;
wire exercise_38_48;
wire exercise_38_49;
wire exercise_38_50;
wire exercise_38_51;
wire exercise_38_52;
wire exercise_38_53;
wire exercise_38_54;
wire exercise_38_55;
wire exercise_38_56;
wire exercise_38_57;
wire exercise_38_58;
wire exercise_38_59;
wire exercise_38_60;
wire exercise_38_61;
wire exercise_38_62;
wire exercise_38_63;
wire exercise_38_64;
wire exercise_38_65;
wire exercise_38_66;
wire exercise_38_67;
wire exercise_38_68;
wire exercise_38_69;
wire exercise_38_70;
wire exercise_38_71;
wire exercise_38_72;
wire exercise_38_73;
wire exercise_38_74;
wire exercise_38_75;
wire exercise_38_76;
wire exercise_38_77;
wire exercise_38_78;
wire exercise_38_79;
end
endmodule
