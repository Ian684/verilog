`timescale 1ns/1ps

// 5. 二選一多工器
module lab_mux2(input [7:0] a,b,input s,output [7:0] y);assign y=s?b:a;endmodule

// 6. 四選一多工器
module lab_mux4(input [7:0] a,b,c,d,input [1:0] s,output reg [7:0] y);always_comb case(s) 0:y=a;1:y=b;2:y=c;3:y=d;endcase endmodule

// 7. 一對四解多工
module lab_demux(input data,input [1:0] s,output [3:0] y);assign y=data?(4'b0001<<s):0;endmodule

// 8. 三對八解碼器
module lab_decoder(input [2:0] code,input enable,output [7:0] y);assign y=enable?(8'b1<<code):0;endmodule

// 9. 高位優先編碼
module lab_priority(input [7:0] data,output reg [2:0] code,output valid);integer k;assign valid=|data;always_comb begin code=0;for(k=0;k<8;k=k+1)if(data[k])code=k;end endmodule

// 10. One-hot 有效性編碼
module lab_onehot(input [7:0] data,output reg [2:0] code,output valid);integer k;assign valid=(data!=0)&&((data&(data-1'b1))==0);always_comb begin code=0;for(k=0;k<8;k=k+1)if(data[k])code=k;end endmodule

// 11. 奇偶同位元
module lab_parity(input [7:0] data,output parity,even);assign parity=^data;assign even=~^data;endmodule

// 12. 三輸入多數決
module lab_majority(input a,b,c,output y);assign y=(a&b)|(b&c)|(a&c);endmodule

// 13. 上升緣單週期偵測
module lab_rising(input clk,rst_n,signal,output reg pulse);reg previous;always @(posedge clk or negedge rst_n)if(!rst_n)begin previous<=0;pulse<=0;end else begin pulse<=signal&&!previous;previous<=signal;end endmodule

// 14. 下降緣單週期偵測
module lab_falling(input clk,rst_n,signal,output reg pulse);reg previous;always @(posedge clk or negedge rst_n)if(!rst_n)begin previous<=0;pulse<=0;end else begin pulse<=!signal&&previous;previous<=signal;end endmodule

// 15. 半加器
module lab_half_adder(input a,b,output sum,carry);assign sum=a^b;assign carry=a&b;endmodule

// 16. 全加器
module lab_full_adder(input a,b,cin,output sum,carry);assign sum=a^b^cin;assign carry=(a&b)|(a&cin)|(b&cin);endmodule

// 17. 八位元帶進位加法
module lab_adder8(input [7:0] a,b,output [8:0] y);assign y={1'b0,a}+{1'b0,b};endmodule

// 18. 加減法單元
module lab_addsub(input [7:0] a,b,input subtract,output [8:0] y);assign y=subtract?{1'b0,a}-{1'b0,b}:{1'b0,a}+{1'b0,b};endmodule

// 19. 無號飽和加法
module lab_sat_add(input [7:0] a,b,output [7:0] y);wire [8:0] sum={1'b0,a}+{1'b0,b};assign y=sum[8]?8'hff:sum[7:0];endmodule

// 20. 有號大小比較
module lab_signed_compare(input signed [7:0] a,b,output less,equal,greater);assign less=a<b;assign equal=a==b;assign greater=a>b;endmodule

// 21. 二補數絕對值
module lab_absolute(input [7:0] data,output [7:0] magnitude);assign magnitude=data[7]?(~data+1'b1):data;endmodule

// 22. 無號最小最大
module lab_minmax(input [7:0] a,b,output [7:0] minimum,maximum);assign minimum=a<b?a:b;assign maximum=a>b?a:b;endmodule

// 23. 邏輯桶式位移
module lab_barrel(input [7:0] data,input [2:0] amount,input right,output [7:0] y);assign y=right?data>>amount:data<<amount;endmodule

// 24. 循環左移
module lab_rotate(input [7:0] data,input [2:0] amount,output [7:0] y);assign y=amount==0?data:(data<<amount)|(data>>(8-amount));endmodule

// 25. 二進位轉 Gray
module lab_binary_gray(input [7:0] binary,output [7:0] gray);assign gray=binary^(binary>>1);endmodule

// 26. Gray 還原二進位
module lab_gray_binary(input [7:0] gray,output [7:0] binary);assign binary[7]=gray[7];genvar k;generate for(k=0;k<7;k=k+1)begin assign binary[k]=binary[k+1]^gray[k];end endgenerate endmodule

// 27. 組合邏輯人口計數
module lab_popcount(input [7:0] data,output reg [3:0] count);integer k;always_comb begin count=0;for(k=0;k<8;k=k+1)count=count+data[k];end endmodule

// 28. 前導零數量
module lab_leading_zero(input [7:0] data,output reg [3:0] count);integer k;reg found;always_comb begin count=0;found=0;for(k=7;k>=0;k=k-1)begin if(data[k])found=1;if(!found)count=count+1'b1;end end endmodule

// 29. 七段顯示器字形
module lab_seven_segment(input [3:0] digit,output reg [6:0] segments);always_comb case(digit)0:segments=7'b1111110;1:segments=7'b0110000;2:segments=7'b1101101;3:segments=7'b1111001;4:segments=7'b0110011;5:segments=7'b1011011;6:segments=7'b1011111;7:segments=7'b1110000;8:segments=7'b1111111;9:segments=7'b1111011;10:segments=7'b1110111;11:segments=7'b0011111;12:segments=7'b1001110;13:segments=7'b0111101;14:segments=7'b1001111;15:segments=7'b1000111;endcase endmodule

// 30. BCD 轉二進位
module lab_bcd_binary(input [7:0] bcd,output [6:0] binary,output valid);assign valid=bcd[7:4]<10&&bcd[3:0]<10;assign binary=valid?bcd[7:4]*7'd10+bcd[3:0]:0;endmodule

// 31. 二進位轉兩位 BCD
module lab_binary_bcd(input [7:0] binary,output [7:0] bcd,output valid);assign valid=binary<100;wire [3:0] tens=binary/10;wire [3:0] units=binary%10;assign bcd=valid?{tens,units}:0;endmodule

// 32. BCD 進位修正
module lab_bcd_add(input [3:0] a,b,input cin,output [3:0] digit,output carry,valid);wire [4:0] sum={1'b0,a}+{1'b0,b}+cin;assign valid=a<10&&b<10;assign carry=valid&&sum>=10;assign digit=valid?(sum>=10?sum-10:sum):0;endmodule

// 33. 位元次序反轉
module lab_reverse_bits(input [7:0] data,output [7:0] y);genvar k;generate for(k=0;k<8;k=k+1)begin assign y[k]=data[7-k];end endgenerate endmodule

// 34. 符號擴展到十六位元
module lab_sign_extend(input [7:0] data,output [15:0] y);assign y={{8{data[7]}},data};endmodule

// 35. 使能暫存器
module lab_enabled_register(input clk,rst_n,enable,input [7:0] data,output reg [7:0] y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=0;else if(enable)y<=data;endmodule

// 36. 序列輸入移位暫存器
module lab_shift_register(input clk,rst_n,enable,serial,output reg [7:0] y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=0;else if(enable)y<={y[6:0],serial};endmodule

// 37. 兩級乘法流水線
module lab_pipeline_multiply(input clk,rst_n,input [7:0] a,b,output reg [15:0] y);reg [15:0] stage;always @(posedge clk or negedge rst_n)if(!rst_n)begin stage<=0;y<=0;end else begin stage<=a*b;y<=stage;end endmodule

// 38. 兩級同步器的數位模型
module lab_synchronizer(input clk,rst_n,signal,output reg y);reg first;always @(posedge clk or negedge rst_n)if(!rst_n)begin first<=0;y<=0;end else begin first<=signal;y<=first;end endmodule

// 39. T 型正反器
module lab_toggle(input clk,rst_n,enable,output reg y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=0;else if(enable)y<=~y;endmodule

// 40. 三週期脈衝延長
module lab_pulse_stretch(input clk,rst_n,trigger,output y);reg [1:0] remaining;assign y=remaining!=0;always @(posedge clk or negedge rst_n)if(!rst_n)remaining<=0;else if(trigger)remaining<=3;else if(remaining!=0)remaining<=remaining-1'b1;endmodule

// 41. 十進位循環計數器
module lab_mod10(input clk,rst_n,enable,output reg [3:0] y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=0;else if(enable)y<=y==9?0:y+1'b1;endmodule

// 42. 上下循環計數器
module lab_updown(input clk,rst_n,up,down,output reg [7:0] y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=0;else if(up&&!down)y<=y+1'b1;else if(down&&!up)y<=y-1'b1;endmodule

// 43. 八位元 LFSR
module lab_lfsr(input clk,rst_n,enable,output reg [7:0] y);always @(posedge clk or negedge rst_n)if(!rst_n)y<=8'h01;else if(enable)y<={y[6:0],y[7]^y[5]^y[4]^y[3]};endmodule

// 44. 四週期 clock enable
module lab_clock_enable(input clk,rst_n,output reg tick);reg [1:0] count;always @(posedge clk or negedge rst_n)if(!rst_n)begin count<=0;tick<=0;end else begin count<=count+1'b1;tick<=count==3;end endmodule

// 45. 十六階 PWM
module lab_pwm(input clk,rst_n,input [3:0] duty,output y);reg [3:0] phase;always @(posedge clk or negedge rst_n)if(!rst_n)phase<=0;else phase<=phase+1'b1;assign y=phase<duty;endmodule

// 46. 序列同位元累積
module lab_serial_parity(input clk,rst_n,valid,serial,clear,output reg parity);always @(posedge clk or negedge rst_n)if(!rst_n)parity<=0;else if(clear)parity<=0;else if(valid)parity<=parity^serial;endmodule

// 47. 可重疊 101 偵測
module lab_sequence101(input clk,rst_n,valid,serial,output reg matched);reg [1:0] state;always @(posedge clk or negedge rst_n)if(!rst_n)begin state<=0;matched<=0;end else begin matched<=0;if(valid)begin matched<=state==2&&serial;case(state)0:state<=serial?1:0;1:state<=serial?1:2;2:state<=serial?1:0;default:state<=0;endcase end end endmodule

// 48. 二請求公平仲裁
module lab_round_robin(input clk,rst_n,input [1:0] request,input accept,output reg [1:0] grant);reg prefer_second;always_comb case(request)0:grant=0;1:grant=1;2:grant=2;3:grant=prefer_second?2:1;endcase always @(posedge clk or negedge rst_n)if(!rst_n)prefer_second<=0;else if(accept&&|grant)prefer_second<=grant[0];endmodule

// 49. 單筆 ready-valid 緩衝
module lab_elastic(input clk,rst_n,input in_valid,output in_ready,input [7:0] in_data,output out_valid,input out_ready,output reg [7:0] out_data);reg full;assign in_ready=!full||out_ready;assign out_valid=full;always @(posedge clk or negedge rst_n)if(!rst_n)begin full<=0;out_data<=0;end else if(in_ready)begin full<=in_valid;if(in_valid)out_data<=in_data;end endmodule

// 50. 可重新載入倒數計時器
module lab_timer(input clk,rst_n,start,input [7:0] load_value,output busy,output reg done);reg [7:0] remaining;assign busy=remaining!=0;always @(posedge clk or negedge rst_n)if(!rst_n)begin remaining<=0;done<=0;end else begin done<=0;if(start)begin remaining<=load_value;done<=load_value==0;end else if(remaining!=0)begin remaining<=remaining-1'b1;done<=remaining==1;end end endmodule
