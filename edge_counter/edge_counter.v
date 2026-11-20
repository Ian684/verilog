module edge_counter(input clk,reset,event_in,output reg[3:0]count);reg prev;always@(posedge clk)if(reset)begin prev<=0;count<=0;end else begin if(event_in&&!prev)count<=count+1;prev<=event_in;end endmodule

