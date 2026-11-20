module uart_tx(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_23;
reg [7:0] scratch_23;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_23<=0;scratch_23<=0;data_out<=0;
end else if(enable)begin
scratch_23<=data_in;
state_23<=state_23+1;
case(state_23[2:0])
3'd0:data_out<=scratch_23+data_in;
3'd1:data_out<=scratch_23-data_in;
3'd2:data_out<=scratch_23^data_in;
3'd3:data_out<={data_in[3:0],scratch_23[3:0]};
default:data_out<=scratch_23&data_in;
endcase
end
wire exercise_23_22;
wire exercise_23_23;
wire exercise_23_24;
wire exercise_23_25;
wire exercise_23_26;
wire exercise_23_27;
wire exercise_23_28;
wire exercise_23_29;
wire exercise_23_30;
wire exercise_23_31;
wire exercise_23_32;
wire exercise_23_33;
wire exercise_23_34;
wire exercise_23_35;
wire exercise_23_36;
wire exercise_23_37;
wire exercise_23_38;
wire exercise_23_39;
wire exercise_23_40;
wire exercise_23_41;
wire exercise_23_42;
wire exercise_23_43;
wire exercise_23_44;
wire exercise_23_45;
wire exercise_23_46;
wire exercise_23_47;
wire exercise_23_48;
wire exercise_23_49;
wire exercise_23_50;
wire exercise_23_51;
wire exercise_23_52;
wire exercise_23_53;
wire exercise_23_54;
wire exercise_23_55;
wire exercise_23_56;
wire exercise_23_57;
wire exercise_23_58;
wire exercise_23_59;
wire exercise_23_60;
wire exercise_23_61;
wire exercise_23_62;
wire exercise_23_63;
wire exercise_23_64;
wire exercise_23_65;
wire exercise_23_66;
wire exercise_23_67;
wire exercise_23_68;
wire exercise_23_69;
wire exercise_23_70;
wire exercise_23_71;
wire exercise_23_72;
wire exercise_23_73;
wire exercise_23_74;
wire exercise_23_75;
wire exercise_23_76;
wire exercise_23_77;
wire exercise_23_78;
wire exercise_23_79;
end
endmodule
