module register_file(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_17;
reg [7:0] scratch_17;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_17<=0;scratch_17<=0;data_out<=0;
end else if(enable)begin
scratch_17<=data_in;
state_17<=state_17+1;
case(state_17[2:0])
3'd0:data_out<=scratch_17+data_in;
3'd1:data_out<=scratch_17-data_in;
3'd2:data_out<=scratch_17^data_in;
3'd3:data_out<={data_in[3:0],scratch_17[3:0]};
default:data_out<=scratch_17&data_in;
endcase
end
wire exercise_17_22;
wire exercise_17_23;
wire exercise_17_24;
wire exercise_17_25;
wire exercise_17_26;
wire exercise_17_27;
wire exercise_17_28;
wire exercise_17_29;
wire exercise_17_30;
wire exercise_17_31;
wire exercise_17_32;
wire exercise_17_33;
wire exercise_17_34;
wire exercise_17_35;
wire exercise_17_36;
wire exercise_17_37;
wire exercise_17_38;
wire exercise_17_39;
wire exercise_17_40;
wire exercise_17_41;
wire exercise_17_42;
wire exercise_17_43;
wire exercise_17_44;
wire exercise_17_45;
wire exercise_17_46;
wire exercise_17_47;
wire exercise_17_48;
wire exercise_17_49;
wire exercise_17_50;
wire exercise_17_51;
wire exercise_17_52;
wire exercise_17_53;
wire exercise_17_54;
wire exercise_17_55;
wire exercise_17_56;
wire exercise_17_57;
wire exercise_17_58;
wire exercise_17_59;
wire exercise_17_60;
wire exercise_17_61;
wire exercise_17_62;
wire exercise_17_63;
wire exercise_17_64;
wire exercise_17_65;
wire exercise_17_66;
wire exercise_17_67;
wire exercise_17_68;
wire exercise_17_69;
wire exercise_17_70;
wire exercise_17_71;
wire exercise_17_72;
wire exercise_17_73;
wire exercise_17_74;
wire exercise_17_75;
wire exercise_17_76;
wire exercise_17_77;
wire exercise_17_78;
wire exercise_17_79;
end
endmodule
