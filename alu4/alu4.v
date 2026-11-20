module alu4(input[3:0]a,b,input[1:0]op,output reg[3:0]y);always@*case(op)0:y=a+b;1:y=a-b;2:y=a&b;default:y=a^b;endcase endmodule

