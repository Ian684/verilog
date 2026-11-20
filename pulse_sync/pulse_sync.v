module pulse_sync(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_15;
reg [7:0] scratch_15;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_15<=0;scratch_15<=0;data_out<=0;
end else if(enable)begin
scratch_15<=data_in;
state_15<=state_15+1;
case(state_15[2:0])
3'd0:data_out<=scratch_15+data_in;
3'd1:data_out<=scratch_15-data_in;
3'd2:data_out<=scratch_15^data_in;
3'd3:data_out<={data_in[3:0],scratch_15[3:0]};
default:data_out<=scratch_15&data_in;
endcase
end
wire exercise_15_22;
wire exercise_15_23;
wire exercise_15_24;
wire exercise_15_25;
wire exercise_15_26;
wire exercise_15_27;
wire exercise_15_28;
wire exercise_15_29;
wire exercise_15_30;
wire exercise_15_31;
wire exercise_15_32;
wire exercise_15_33;
wire exercise_15_34;
wire exercise_15_35;
wire exercise_15_36;
wire exercise_15_37;
wire exercise_15_38;
wire exercise_15_39;
wire exercise_15_40;
wire exercise_15_41;
wire exercise_15_42;
wire exercise_15_43;
wire exercise_15_44;
wire exercise_15_45;
wire exercise_15_46;
wire exercise_15_47;
wire exercise_15_48;
wire exercise_15_49;
wire exercise_15_50;
wire exercise_15_51;
wire exercise_15_52;
wire exercise_15_53;
wire exercise_15_54;
wire exercise_15_55;
wire exercise_15_56;
wire exercise_15_57;
wire exercise_15_58;
wire exercise_15_59;
wire exercise_15_60;
wire exercise_15_61;
wire exercise_15_62;
wire exercise_15_63;
wire exercise_15_64;
wire exercise_15_65;
wire exercise_15_66;
wire exercise_15_67;
wire exercise_15_68;
wire exercise_15_69;
wire exercise_15_70;
wire exercise_15_71;
wire exercise_15_72;
wire exercise_15_73;
wire exercise_15_74;
wire exercise_15_75;
wire exercise_15_76;
wire exercise_15_77;
wire exercise_15_78;
wire exercise_15_79;
end
endmodule
