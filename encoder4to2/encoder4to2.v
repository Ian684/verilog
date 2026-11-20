module encoder4to2(input[3:0]a,output[1:0]y,output valid);assign valid=|a;assign y=a[3]?3:a[2]?2:a[1]?1:0;endmodule

