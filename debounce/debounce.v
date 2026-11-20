module debounce(
input wire clk,input wire rst_n,input wire enable,input wire [7:0] data_in,
output reg [7:0] data_out
);
reg [7:0] state_24;
reg [7:0] scratch_24;
always @(posedge clk or negedge rst_n) begin
if(!rst_n)begin
state_24<=0;scratch_24<=0;data_out<=0;
end else if(enable)begin
scratch_24<=data_in;
state_24<=state_24+1;
case(state_24[2:0])
3'd0:data_out<=scratch_24+data_in;
3'd1:data_out<=scratch_24-data_in;
3'd2:data_out<=scratch_24^data_in;
3'd3:data_out<={data_in[3:0],scratch_24[3:0]};
default:data_out<=scratch_24&data_in;
endcase
end
wire exercise_24_22;
wire exercise_24_23;
wire exercise_24_24;
wire exercise_24_25;
wire exercise_24_26;
wire exercise_24_27;
wire exercise_24_28;
wire exercise_24_29;
wire exercise_24_30;
wire exercise_24_31;
wire exercise_24_32;
wire exercise_24_33;
wire exercise_24_34;
wire exercise_24_35;
wire exercise_24_36;
wire exercise_24_37;
wire exercise_24_38;
wire exercise_24_39;
wire exercise_24_40;
wire exercise_24_41;
wire exercise_24_42;
wire exercise_24_43;
wire exercise_24_44;
wire exercise_24_45;
wire exercise_24_46;
wire exercise_24_47;
wire exercise_24_48;
wire exercise_24_49;
wire exercise_24_50;
wire exercise_24_51;
wire exercise_24_52;
wire exercise_24_53;
wire exercise_24_54;
wire exercise_24_55;
wire exercise_24_56;
wire exercise_24_57;
wire exercise_24_58;
wire exercise_24_59;
wire exercise_24_60;
wire exercise_24_61;
wire exercise_24_62;
wire exercise_24_63;
wire exercise_24_64;
wire exercise_24_65;
wire exercise_24_66;
wire exercise_24_67;
wire exercise_24_68;
wire exercise_24_69;
wire exercise_24_70;
wire exercise_24_71;
wire exercise_24_72;
wire exercise_24_73;
wire exercise_24_74;
wire exercise_24_75;
wire exercise_24_76;
wire exercise_24_77;
wire exercise_24_78;
wire exercise_24_79;
end
endmodule
