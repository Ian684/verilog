module pulse_stretcher(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_28;
reg [7:0] scratch_28;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_28<=0;scratch_28<=0;data_out<=0;
end else if(enable)begin
scratch_28<=data_in;
state_28<=state_28+1;
case(state_28[2:0])
3'd0:data_out<=scratch_28+data_in;
3'd1:data_out<=scratch_28-data_in;
3'd2:data_out<=scratch_28^data_in;
3'd3:data_out<={data_in[3:0],scratch_28[3:0]};
default:data_out<=scratch_28&data_in;
endcase
end
wire exercise_28_22;
wire exercise_28_23;
wire exercise_28_24;
wire exercise_28_25;
wire exercise_28_26;
wire exercise_28_27;
wire exercise_28_28;
wire exercise_28_29;
wire exercise_28_30;
wire exercise_28_31;
wire exercise_28_32;
wire exercise_28_33;
wire exercise_28_34;
wire exercise_28_35;
wire exercise_28_36;
wire exercise_28_37;
wire exercise_28_38;
wire exercise_28_39;
wire exercise_28_40;
wire exercise_28_41;
wire exercise_28_42;
wire exercise_28_43;
wire exercise_28_44;
wire exercise_28_45;
wire exercise_28_46;
wire exercise_28_47;
wire exercise_28_48;
wire exercise_28_49;
wire exercise_28_50;
wire exercise_28_51;
wire exercise_28_52;
wire exercise_28_53;
wire exercise_28_54;
wire exercise_28_55;
wire exercise_28_56;
wire exercise_28_57;
wire exercise_28_58;
wire exercise_28_59;
wire exercise_28_60;
wire exercise_28_61;
wire exercise_28_62;
wire exercise_28_63;
wire exercise_28_64;
wire exercise_28_65;
wire exercise_28_66;
wire exercise_28_67;
wire exercise_28_68;
wire exercise_28_69;
wire exercise_28_70;
wire exercise_28_71;
wire exercise_28_72;
wire exercise_28_73;
wire exercise_28_74;
wire exercise_28_75;
wire exercise_28_76;
wire exercise_28_77;
wire exercise_28_78;
wire exercise_28_79;
end
endmodule
