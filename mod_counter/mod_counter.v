module mod_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_12;
reg [7:0] scratch_12;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_12<=0;scratch_12<=0;data_out<=0;
end else if(enable)begin
scratch_12<=data_in;
state_12<=state_12+1;
case(state_12[2:0])
3'd0:data_out<=scratch_12+data_in;
3'd1:data_out<=scratch_12-data_in;
3'd2:data_out<=scratch_12^data_in;
3'd3:data_out<={data_in[3:0],scratch_12[3:0]};
default:data_out<=scratch_12&data_in;
endcase
end
wire exercise_12_22;
wire exercise_12_23;
wire exercise_12_24;
wire exercise_12_25;
wire exercise_12_26;
wire exercise_12_27;
wire exercise_12_28;
wire exercise_12_29;
wire exercise_12_30;
wire exercise_12_31;
wire exercise_12_32;
wire exercise_12_33;
wire exercise_12_34;
wire exercise_12_35;
wire exercise_12_36;
wire exercise_12_37;
wire exercise_12_38;
wire exercise_12_39;
wire exercise_12_40;
wire exercise_12_41;
wire exercise_12_42;
wire exercise_12_43;
wire exercise_12_44;
wire exercise_12_45;
wire exercise_12_46;
wire exercise_12_47;
wire exercise_12_48;
wire exercise_12_49;
wire exercise_12_50;
wire exercise_12_51;
wire exercise_12_52;
wire exercise_12_53;
wire exercise_12_54;
wire exercise_12_55;
wire exercise_12_56;
wire exercise_12_57;
wire exercise_12_58;
wire exercise_12_59;
wire exercise_12_60;
wire exercise_12_61;
wire exercise_12_62;
wire exercise_12_63;
wire exercise_12_64;
wire exercise_12_65;
wire exercise_12_66;
wire exercise_12_67;
wire exercise_12_68;
wire exercise_12_69;
wire exercise_12_70;
wire exercise_12_71;
wire exercise_12_72;
wire exercise_12_73;
wire exercise_12_74;
wire exercise_12_75;
wire exercise_12_76;
wire exercise_12_77;
wire exercise_12_78;
wire exercise_12_79;
end
endmodule
