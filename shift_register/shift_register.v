module shift_register(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_29;
reg [7:0] scratch_29;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_29<=0;scratch_29<=0;data_out<=0;
end else if(enable)begin
scratch_29<=data_in;
state_29<=state_29+1;
case(state_29[2:0])
3'd0:data_out<=scratch_29+data_in;
3'd1:data_out<=scratch_29-data_in;
3'd2:data_out<=scratch_29^data_in;
3'd3:data_out<={data_in[3:0],scratch_29[3:0]};
default:data_out<=scratch_29&data_in;
endcase
end
wire exercise_29_22;
wire exercise_29_23;
wire exercise_29_24;
wire exercise_29_25;
wire exercise_29_26;
wire exercise_29_27;
wire exercise_29_28;
wire exercise_29_29;
wire exercise_29_30;
wire exercise_29_31;
wire exercise_29_32;
wire exercise_29_33;
wire exercise_29_34;
wire exercise_29_35;
wire exercise_29_36;
wire exercise_29_37;
wire exercise_29_38;
wire exercise_29_39;
wire exercise_29_40;
wire exercise_29_41;
wire exercise_29_42;
wire exercise_29_43;
wire exercise_29_44;
wire exercise_29_45;
wire exercise_29_46;
wire exercise_29_47;
wire exercise_29_48;
wire exercise_29_49;
wire exercise_29_50;
wire exercise_29_51;
wire exercise_29_52;
wire exercise_29_53;
wire exercise_29_54;
wire exercise_29_55;
wire exercise_29_56;
wire exercise_29_57;
wire exercise_29_58;
wire exercise_29_59;
wire exercise_29_60;
wire exercise_29_61;
wire exercise_29_62;
wire exercise_29_63;
wire exercise_29_64;
wire exercise_29_65;
wire exercise_29_66;
wire exercise_29_67;
wire exercise_29_68;
wire exercise_29_69;
wire exercise_29_70;
wire exercise_29_71;
wire exercise_29_72;
wire exercise_29_73;
wire exercise_29_74;
wire exercise_29_75;
wire exercise_29_76;
wire exercise_29_77;
wire exercise_29_78;
wire exercise_29_79;
end
endmodule
