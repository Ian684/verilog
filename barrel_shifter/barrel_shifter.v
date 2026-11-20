module barrel_shifter(input[7:0]data,input[2:0]amount,input dir,output[7:0]result);assign result=dir?(data>>amount):(data<<amount);endmodule

