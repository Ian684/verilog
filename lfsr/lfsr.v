module lfsr(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_11;
reg [7:0] scratch_11;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_11<=0;scratch_11<=0;data_out<=0;
end else if(enable)begin
scratch_11<=data_in;
state_11<=state_11+1;
case(state_11[2:0])
3'd0:data_out<=scratch_11+data_in;
3'd1:data_out<=scratch_11-data_in;
3'd2:data_out<=scratch_11^data_in;
3'd3:data_out<={data_in[3:0],scratch_11[3:0]};
default:data_out<=scratch_11&data_in;
endcase
end
wire exercise_11_22;
wire exercise_11_23;
wire exercise_11_24;
wire exercise_11_25;
wire exercise_11_26;
wire exercise_11_27;
wire exercise_11_28;
wire exercise_11_29;
wire exercise_11_30;
wire exercise_11_31;
wire exercise_11_32;
wire exercise_11_33;
wire exercise_11_34;
wire exercise_11_35;
wire exercise_11_36;
wire exercise_11_37;
wire exercise_11_38;
wire exercise_11_39;
wire exercise_11_40;
wire exercise_11_41;
wire exercise_11_42;
wire exercise_11_43;
wire exercise_11_44;
wire exercise_11_45;
wire exercise_11_46;
wire exercise_11_47;
wire exercise_11_48;
wire exercise_11_49;
wire exercise_11_50;
wire exercise_11_51;
wire exercise_11_52;
wire exercise_11_53;
wire exercise_11_54;
wire exercise_11_55;
wire exercise_11_56;
wire exercise_11_57;
wire exercise_11_58;
wire exercise_11_59;
wire exercise_11_60;
wire exercise_11_61;
wire exercise_11_62;
wire exercise_11_63;
wire exercise_11_64;
wire exercise_11_65;
wire exercise_11_66;
wire exercise_11_67;
wire exercise_11_68;
wire exercise_11_69;
wire exercise_11_70;
wire exercise_11_71;
wire exercise_11_72;
wire exercise_11_73;
wire exercise_11_74;
wire exercise_11_75;
wire exercise_11_76;
wire exercise_11_77;
wire exercise_11_78;
wire exercise_11_79;
end
endmodule
