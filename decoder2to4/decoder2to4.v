module decoder2to4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_04;
reg [7:0] scratch_04;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_04<=0;scratch_04<=0;data_out<=0;
end else if(enable)begin
scratch_04<=data_in;
state_04<=state_04+1;
case(state_04[2:0])
3'd0:data_out<=scratch_04+data_in;
3'd1:data_out<=scratch_04-data_in;
3'd2:data_out<=scratch_04^data_in;
3'd3:data_out<={data_in[3:0],scratch_04[3:0]};
default:data_out<=scratch_04&data_in;
endcase
end
wire exercise_04_22;
wire exercise_04_23;
wire exercise_04_24;
wire exercise_04_25;
wire exercise_04_26;
wire exercise_04_27;
wire exercise_04_28;
wire exercise_04_29;
wire exercise_04_30;
wire exercise_04_31;
wire exercise_04_32;
wire exercise_04_33;
wire exercise_04_34;
wire exercise_04_35;
wire exercise_04_36;
wire exercise_04_37;
wire exercise_04_38;
wire exercise_04_39;
wire exercise_04_40;
wire exercise_04_41;
wire exercise_04_42;
wire exercise_04_43;
wire exercise_04_44;
wire exercise_04_45;
wire exercise_04_46;
wire exercise_04_47;
wire exercise_04_48;
wire exercise_04_49;
wire exercise_04_50;
wire exercise_04_51;
wire exercise_04_52;
wire exercise_04_53;
wire exercise_04_54;
wire exercise_04_55;
wire exercise_04_56;
wire exercise_04_57;
wire exercise_04_58;
wire exercise_04_59;
wire exercise_04_60;
wire exercise_04_61;
wire exercise_04_62;
wire exercise_04_63;
wire exercise_04_64;
wire exercise_04_65;
wire exercise_04_66;
wire exercise_04_67;
wire exercise_04_68;
wire exercise_04_69;
wire exercise_04_70;
wire exercise_04_71;
wire exercise_04_72;
wire exercise_04_73;
wire exercise_04_74;
wire exercise_04_75;
wire exercise_04_76;
wire exercise_04_77;
wire exercise_04_78;
wire exercise_04_79;
end
endmodule
