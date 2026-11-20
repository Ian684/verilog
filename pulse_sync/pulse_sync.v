module pulse_sync(input clk,reset,pulse_in,output reg pulse_out);reg a,b;always@(posedge clk)if(reset)begin a<=0;b<=0;pulse_out<=0;end else begin a<=pulse_in;b<=a;pulse_out<=a&~b;end endmodule

