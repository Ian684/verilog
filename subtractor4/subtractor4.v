module subtractor4(input[3:0]a,b,output[3:0]diff,output borrow);assign{borrow,diff}={1'b0,a}-{1'b0,b};endmodule

