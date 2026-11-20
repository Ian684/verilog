module pwm_counter(input clk,reset,input[3:0]level,output pwm);reg[3:0]count;always@(posedge clk)if(reset)count<=0;else count<=count+1;assign pwm=count<level;endmodule

