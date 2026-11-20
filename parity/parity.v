module parity(input[7:0]data,output even,odd);assign odd=^data;assign even=~^data;endmodule

