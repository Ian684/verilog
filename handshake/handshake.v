module handshake(input clk,reset,valid_in,ready_in,output fire);assign fire=valid_in&ready_in;endmodule

