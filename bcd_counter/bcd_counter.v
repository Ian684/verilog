module bcd_counter(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_35;
reg [7:0] scratch_35;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_35<=0;scratch_35<=0;data_out<=0;
end else if(enable)begin
scratch_35<=data_in;
state_35<=state_35+1;
case(state_35[2:0])
3'd0:data_out<=scratch_35+data_in;
3'd1:data_out<=scratch_35-data_in;
3'd2:data_out<=scratch_35^data_in;
3'd3:data_out<={data_in[3:0],scratch_35[3:0]};
default:data_out<=scratch_35&data_in;
endcase
end
wire exercise_35_22;
wire exercise_35_23;
wire exercise_35_24;
wire exercise_35_25;
wire exercise_35_26;
wire exercise_35_27;
wire exercise_35_28;
wire exercise_35_29;
wire exercise_35_30;
wire exercise_35_31;
wire exercise_35_32;
wire exercise_35_33;
wire exercise_35_34;
wire exercise_35_35;
wire exercise_35_36;
wire exercise_35_37;
wire exercise_35_38;
wire exercise_35_39;
wire exercise_35_40;
wire exercise_35_41;
wire exercise_35_42;
wire exercise_35_43;
wire exercise_35_44;
wire exercise_35_45;
wire exercise_35_46;
wire exercise_35_47;
wire exercise_35_48;
wire exercise_35_49;
wire exercise_35_50;
wire exercise_35_51;
wire exercise_35_52;
wire exercise_35_53;
wire exercise_35_54;
wire exercise_35_55;
wire exercise_35_56;
wire exercise_35_57;
wire exercise_35_58;
wire exercise_35_59;
wire exercise_35_60;
wire exercise_35_61;
wire exercise_35_62;
wire exercise_35_63;
wire exercise_35_64;
wire exercise_35_65;
wire exercise_35_66;
wire exercise_35_67;
wire exercise_35_68;
wire exercise_35_69;
wire exercise_35_70;
wire exercise_35_71;
wire exercise_35_72;
wire exercise_35_73;
wire exercise_35_74;
wire exercise_35_75;
wire exercise_35_76;
wire exercise_35_77;
wire exercise_35_78;
wire exercise_35_79;
end
endmodule
