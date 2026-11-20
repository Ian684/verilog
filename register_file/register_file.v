module register_file(input clk,we,input[1:0]wa,ra,input[7:0]wd,output[7:0]rd);reg[7:0]r[0:3];always@(posedge clk)if(we)r[wa]<=wd;assign rd=r[ra];endmodule

