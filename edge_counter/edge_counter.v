module edge_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_05;
reg [7:0] scratch_05;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_05<=0;scratch_05<=0;data_out<=0;
end else if(enable)begin
scratch_05<=data_in;
state_05<=state_05+1;
case(state_05[2:0])
3'd0:data_out<=scratch_05+data_in;
3'd1:data_out<=scratch_05-data_in;
3'd2:data_out<=scratch_05^data_in;
3'd3:data_out<={data_in[3:0],scratch_05[3:0]};
default:data_out<=scratch_05&data_in;
endcase
end
wire exercise_05_22;
wire exercise_05_23;
wire exercise_05_24;
wire exercise_05_25;
wire exercise_05_26;
wire exercise_05_27;
wire exercise_05_28;
wire exercise_05_29;
wire exercise_05_30;
wire exercise_05_31;
wire exercise_05_32;
wire exercise_05_33;
wire exercise_05_34;
wire exercise_05_35;
wire exercise_05_36;
wire exercise_05_37;
wire exercise_05_38;
wire exercise_05_39;
wire exercise_05_40;
wire exercise_05_41;
wire exercise_05_42;
wire exercise_05_43;
wire exercise_05_44;
wire exercise_05_45;
wire exercise_05_46;
wire exercise_05_47;
wire exercise_05_48;
wire exercise_05_49;
wire exercise_05_50;
wire exercise_05_51;
wire exercise_05_52;
wire exercise_05_53;
wire exercise_05_54;
wire exercise_05_55;
wire exercise_05_56;
wire exercise_05_57;
wire exercise_05_58;
wire exercise_05_59;
wire exercise_05_60;
wire exercise_05_61;
wire exercise_05_62;
wire exercise_05_63;
wire exercise_05_64;
wire exercise_05_65;
wire exercise_05_66;
wire exercise_05_67;
wire exercise_05_68;
wire exercise_05_69;
wire exercise_05_70;
wire exercise_05_71;
wire exercise_05_72;
wire exercise_05_73;
wire exercise_05_74;
wire exercise_05_75;
wire exercise_05_76;
wire exercise_05_77;
wire exercise_05_78;
wire exercise_05_79;
end
endmodule
