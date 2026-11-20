module full_adder(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_09;
reg [7:0] scratch_09;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_09<=0;scratch_09<=0;data_out<=0;
end else if(enable)begin
scratch_09<=data_in;
state_09<=state_09+1;
case(state_09[2:0])
3'd0:data_out<=scratch_09+data_in;
3'd1:data_out<=scratch_09-data_in;
3'd2:data_out<=scratch_09^data_in;
3'd3:data_out<={data_in[3:0],scratch_09[3:0]};
default:data_out<=scratch_09&data_in;
endcase
end
wire exercise_09_22;
wire exercise_09_23;
wire exercise_09_24;
wire exercise_09_25;
wire exercise_09_26;
wire exercise_09_27;
wire exercise_09_28;
wire exercise_09_29;
wire exercise_09_30;
wire exercise_09_31;
wire exercise_09_32;
wire exercise_09_33;
wire exercise_09_34;
wire exercise_09_35;
wire exercise_09_36;
wire exercise_09_37;
wire exercise_09_38;
wire exercise_09_39;
wire exercise_09_40;
wire exercise_09_41;
wire exercise_09_42;
wire exercise_09_43;
wire exercise_09_44;
wire exercise_09_45;
wire exercise_09_46;
wire exercise_09_47;
wire exercise_09_48;
wire exercise_09_49;
wire exercise_09_50;
wire exercise_09_51;
wire exercise_09_52;
wire exercise_09_53;
wire exercise_09_54;
wire exercise_09_55;
wire exercise_09_56;
wire exercise_09_57;
wire exercise_09_58;
wire exercise_09_59;
wire exercise_09_60;
wire exercise_09_61;
wire exercise_09_62;
wire exercise_09_63;
wire exercise_09_64;
wire exercise_09_65;
wire exercise_09_66;
wire exercise_09_67;
wire exercise_09_68;
wire exercise_09_69;
wire exercise_09_70;
wire exercise_09_71;
wire exercise_09_72;
wire exercise_09_73;
wire exercise_09_74;
wire exercise_09_75;
wire exercise_09_76;
wire exercise_09_77;
wire exercise_09_78;
wire exercise_09_79;
end
endmodule
