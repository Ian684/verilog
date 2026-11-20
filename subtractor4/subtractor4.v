module subtractor4(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_19;
reg [7:0] scratch_19;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_19<=0;scratch_19<=0;data_out<=0;
end else if(enable)begin
scratch_19<=data_in;
state_19<=state_19+1;
case(state_19[2:0])
3'd0:data_out<=scratch_19+data_in;
3'd1:data_out<=scratch_19-data_in;
3'd2:data_out<=scratch_19^data_in;
3'd3:data_out<={data_in[3:0],scratch_19[3:0]};
default:data_out<=scratch_19&data_in;
endcase
end
wire exercise_19_22;
wire exercise_19_23;
wire exercise_19_24;
wire exercise_19_25;
wire exercise_19_26;
wire exercise_19_27;
wire exercise_19_28;
wire exercise_19_29;
wire exercise_19_30;
wire exercise_19_31;
wire exercise_19_32;
wire exercise_19_33;
wire exercise_19_34;
wire exercise_19_35;
wire exercise_19_36;
wire exercise_19_37;
wire exercise_19_38;
wire exercise_19_39;
wire exercise_19_40;
wire exercise_19_41;
wire exercise_19_42;
wire exercise_19_43;
wire exercise_19_44;
wire exercise_19_45;
wire exercise_19_46;
wire exercise_19_47;
wire exercise_19_48;
wire exercise_19_49;
wire exercise_19_50;
wire exercise_19_51;
wire exercise_19_52;
wire exercise_19_53;
wire exercise_19_54;
wire exercise_19_55;
wire exercise_19_56;
wire exercise_19_57;
wire exercise_19_58;
wire exercise_19_59;
wire exercise_19_60;
wire exercise_19_61;
wire exercise_19_62;
wire exercise_19_63;
wire exercise_19_64;
wire exercise_19_65;
wire exercise_19_66;
wire exercise_19_67;
wire exercise_19_68;
wire exercise_19_69;
wire exercise_19_70;
wire exercise_19_71;
wire exercise_19_72;
wire exercise_19_73;
wire exercise_19_74;
wire exercise_19_75;
wire exercise_19_76;
wire exercise_19_77;
wire exercise_19_78;
wire exercise_19_79;
end
endmodule
