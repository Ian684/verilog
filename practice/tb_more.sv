`timescale 1ns/1ps
module tb_more;
reg clk=0,rst_n=1,mode=0,carry_in=0,signal=0,enable=0,serial=0,trigger=0,valid=0,clear=0,up=0,down=0,accept=0,out_ready=0,start=0;
reg [7:0] a=0,b=0,load_value=0;reg [1:0] select=0,request=0;reg [2:0] shift=0;reg [3:0] duty=0;
always #5 clk=~clk;
integer i,j,k,index,expected,signed_a,signed_b,sa,sb,hits,n;integer seen[0:255];reg [7:0] pattern;reg [6:0] segment_table[0:15];
wire [7:0] mux2_y;lab_mux2 u5(a,b,mode,mux2_y);
wire [7:0] mux4_y;lab_mux4 u6(a,b,~a,~b,select,mux4_y);
wire [3:0] demux_y;lab_demux u7(carry_in,select,demux_y);
wire [7:0] decoder_y;lab_decoder u8(shift,mode,decoder_y);
wire [2:0] priority_y;wire priority_valid;lab_priority u9(a,priority_y,priority_valid);
wire [2:0] onehot_y;wire onehot_valid;lab_onehot u10(a,onehot_y,onehot_valid);
wire parity_y,even_y;lab_parity u11(a,parity_y,even_y);
wire majority_y;lab_majority u12(a[0],a[1],a[2],majority_y);
wire rise_y;lab_rising u13(clk,rst_n,signal,rise_y);
wire fall_y;lab_falling u14(clk,rst_n,signal,fall_y);
wire half_sum,half_carry;lab_half_adder u15(a[0],b[0],half_sum,half_carry);
wire full_sum,full_carry;lab_full_adder u16(a[0],b[0],carry_in,full_sum,full_carry);
wire [8:0] adder_y;lab_adder8 u17(a,b,adder_y);
wire [8:0] addsub_y;lab_addsub u18(a,b,mode,addsub_y);
wire [7:0] sat_y;lab_sat_add u19(a,b,sat_y);
wire less_y,equal_y,greater_y;lab_signed_compare u20(a,b,less_y,equal_y,greater_y);
wire [7:0] absolute_y;lab_absolute u21(a,absolute_y);
wire [7:0] minimum_y,maximum_y;lab_minmax u22(a,b,minimum_y,maximum_y);
wire [7:0] barrel_y;lab_barrel u23(a,shift,mode,barrel_y);
wire [7:0] rotate_y;lab_rotate u24(a,shift,rotate_y);
wire [7:0] gray_y;lab_binary_gray u25(a,gray_y);
wire [7:0] gray_back;lab_gray_binary u26(gray_y,gray_back);
wire [3:0] pop_y;lab_popcount u27(a,pop_y);
wire [3:0] zero_y;lab_leading_zero u28(a,zero_y);
wire [6:0] segment_y;lab_seven_segment u29(a[3:0],segment_y);
wire [6:0] bcd_bin_y;wire bcd_bin_valid;lab_bcd_binary u30(a,bcd_bin_y,bcd_bin_valid);
wire [7:0] bin_bcd_y;wire bin_bcd_valid;lab_binary_bcd u31(a,bin_bcd_y,bin_bcd_valid);
wire [3:0] bcd_sum;wire bcd_carry,bcd_valid;lab_bcd_add u32(a[3:0],b[3:0],carry_in,bcd_sum,bcd_carry,bcd_valid);
wire [7:0] reverse_y;lab_reverse_bits u33(a,reverse_y);
wire [15:0] extend_y;lab_sign_extend u34(a,extend_y);
wire [7:0] reg_y;lab_enabled_register u35(clk,rst_n,enable,a,reg_y);
wire [7:0] shift_y;lab_shift_register u36(clk,rst_n,enable,serial,shift_y);
wire [15:0] multiply_y;lab_pipeline_multiply u37(clk,rst_n,a,b,multiply_y);
wire sync_y;lab_synchronizer u38(clk,rst_n,signal,sync_y);
wire toggle_y;lab_toggle u39(clk,rst_n,enable,toggle_y);
wire stretch_y;lab_pulse_stretch u40(clk,rst_n,trigger,stretch_y);
wire [3:0] mod10_y;lab_mod10 u41(clk,rst_n,enable,mod10_y);
wire [7:0] updown_y;lab_updown u42(clk,rst_n,up,down,updown_y);
wire [7:0] lfsr_y;lab_lfsr u43(clk,rst_n,enable,lfsr_y);
wire enable_tick;lab_clock_enable u44(clk,rst_n,enable_tick);
wire pwm_y;lab_pwm u45(clk,rst_n,duty,pwm_y);
wire serial_parity;lab_serial_parity u46(clk,rst_n,valid,serial,clear,serial_parity);
wire matched;lab_sequence101 u47(clk,rst_n,valid,serial,matched);
wire [1:0] grant;lab_round_robin u48(clk,rst_n,request,accept,grant);
wire in_ready,out_valid;wire [7:0] out_data;lab_elastic u49(clk,rst_n,valid,in_ready,a,out_valid,out_ready,out_data);
wire timer_busy,timer_done;lab_timer u50(clk,rst_n,start,load_value,timer_busy,timer_done);
task must(input condition,input string label);if(condition!==1'b1)$fatal(1,"exercise failed: %s",label);endtask
function integer ones(input [7:0] x);integer z;begin ones=0;for(z=0;z<8;z=z+1)ones=ones+x[z];end endfunction
task tick;begin @(posedge clk);#1;end endtask
task reset_all;begin
@(negedge clk);rst_n=0;enable=0;signal=0;serial=0;trigger=0;valid=0;clear=0;up=0;down=0;accept=0;out_ready=0;request=0;start=0;a=0;b=0;load_value=0;duty=0;
@(negedge clk);rst_n=1;#1;
end endtask
initial begin
segment_table[0]=7'b1111110;segment_table[1]=7'b0110000;segment_table[2]=7'b1101101;segment_table[3]=7'b1111001;
segment_table[4]=7'b0110011;segment_table[5]=7'b1011011;segment_table[6]=7'b1011111;segment_table[7]=7'b1110000;
segment_table[8]=7'b1111111;segment_table[9]=7'b1111011;segment_table[10]=7'b1110111;segment_table[11]=7'b0011111;
segment_table[12]=7'b1001110;segment_table[13]=7'b0111101;segment_table[14]=7'b1001111;segment_table[15]=7'b1000111;
#1;rst_n=0;
for(i=0;i<256;i=i+1)for(j=0;j<256;j=j+1)begin
a=i;b=j;mode=j%2;carry_in=(i+j)%2;select=(i+j)%4;shift=i%8;#1;
must(mux2_y===(mode?b:a),"mux2");
case(select)0:must(mux4_y===a,"mux4a");1:must(mux4_y===b,"mux4b");2:must(mux4_y===(~a),"mux4c");3:must(mux4_y===(~b),"mux4d");endcase
must(demux_y===(carry_in?(4'b1<<select):4'b0),"demux");
must(decoder_y===(mode?(8'b1<<shift):8'b0),"decoder");
index=0;for(k=0;k<8;k=k+1)if(a[k])index=k;must(priority_valid===(a!=0)&&priority_y===index[2:0],"priority");
must(onehot_valid===(ones(a)==1),"onehot valid");if(onehot_valid)must((8'b1<<onehot_y)===a,"onehot code");
must(parity_y===(ones(a)%2)&&even_y===!(ones(a)%2),"parity");
must(majority_y===((a[0]+a[1]+a[2])>=2),"majority");
must({half_carry,half_sum}===({1'b0,a[0]}+{1'b0,b[0]}),"half adder");
must({full_carry,full_sum}===({1'b0,a[0]}+{1'b0,b[0]}+carry_in),"full adder");
must(adder_y===(i+j),"adder8");
expected=mode?i-j:i+j;must(addsub_y===expected[8:0],"addsub modulo 512");
expected=i+j>255?255:i+j;must(sat_y===expected[7:0],"saturating add");
sa=i>=128?i-256:i;sb=j>=128?j-256:j;must(less_y===(sa<sb)&&equal_y===(sa==sb)&&greater_y===(sa>sb),"signed compare");
expected=i>=128?256-i:i;must(absolute_y===expected[7:0],"abs including -128");
must(minimum_y===(i<j?a:b)&&maximum_y===(i>j?a:b),"minmax");
expected=mode?i>>shift:i<<shift;must(barrel_y===expected[7:0],"barrel");
expected=((i<<shift)|(i>>(8-shift)))&255;must(rotate_y===expected[7:0],"rotate");
must(gray_y===(a^(a>>1)),"binary gray");
must(gray_back===a,"gray round trip");
must(pop_y===ones(a),"popcount");
expected=8;for(k=0;k<8;k=k+1)if(a[k])expected=7-k;must(zero_y===expected[3:0],"leading zero");
must(segment_y===segment_table[a[3:0]],"seven segment truth table");
must(bcd_bin_valid===((i/16)<10&&(i%16)<10),"bcd valid");expected=bcd_bin_valid?(i/16)*10+i%16:0;must(bcd_bin_y===expected[6:0],"bcd value");
must(bin_bcd_valid===(i<100),"binary bcd valid");expected=i<100?(i/10)*16+i%10:0;must(bin_bcd_y===expected[7:0],"binary bcd");
must(bcd_valid===((i%16)<10&&(j%16)<10),"BCD add valid");if(bcd_valid)begin expected=i%16+j%16+carry_in;must(bcd_sum===(expected%10)&&bcd_carry===(expected>=10),"BCD sum");end
for(k=0;k<8;k=k+1)must(reverse_y[k]===a[7-k],"reverse bits");
expected=i>=128?65280+i:i;must(extend_y===expected[15:0],"sign extension");
end
$display("28 combinational exercises: all 65536 input pairs passed");
reset_all();signal=1;tick();must(rise_y&&!fall_y,"rising pulse");tick();must(!rise_y,"rising only one cycle");signal=0;tick();must(fall_y&&!rise_y,"falling pulse");tick();must(!fall_y,"falling only one cycle");
reset_all();enable=1;a=3;tick();must(reg_y==3,"enabled load");enable=0;a=9;tick();must(reg_y==3,"register hold");
reset_all();enable=1;pattern=8'ha5;for(n=7;n>=0;n=n-1)begin serial=pattern[n];tick();end must(shift_y==8'ha5,"serial shift order");
reset_all();a=3;b=4;tick();must(multiply_y==0,"pipeline stage one");a=5;b=6;tick();must(multiply_y==12,"pipeline latency");tick();must(multiply_y==30,"pipeline throughput");
reset_all();signal=1;tick();must(sync_y==0,"synchronizer first stage");tick();must(sync_y==1,"synchronizer second stage");
reset_all();enable=1;tick();must(toggle_y==1,"toggle set");tick();must(toggle_y==0,"toggle clear");enable=0;tick();must(toggle_y==0,"toggle hold");
reset_all();trigger=1;tick();must(stretch_y,"stretch start");trigger=0;tick();must(stretch_y,"stretch two");tick();must(stretch_y,"stretch three");tick();must(!stretch_y,"stretch expires");
reset_all();enable=1;repeat(10)tick();must(mod10_y==0,"mod10 wraps");enable=0;tick();must(mod10_y==0,"mod10 hold");
reset_all();up=1;repeat(256)tick();must(updown_y==0,"up wraps");up=0;down=1;tick();must(updown_y==255,"down wraps");up=1;tick();must(updown_y==255,"up/down hold");
reset_all();for(n=0;n<256;n=n+1)seen[n]=0;enable=1;for(n=0;n<255;n=n+1)begin must(lfsr_y!=0&&!seen[lfsr_y],"LFSR unique nonzero");seen[lfsr_y]=1;tick();end must(lfsr_y==1,"LFSR period 255");
reset_all();for(n=1;n<=12;n=n+1)begin tick();must(enable_tick===(n%4==0),"clock enable period");end
reset_all();duty=5;hits=0;repeat(16)begin tick();if(pwm_y)hits=hits+1;end must(hits==5,"PWM duty");duty=0;repeat(16)begin tick();must(!pwm_y,"PWM zero");end
reset_all();valid=1;serial=1;tick();serial=0;tick();serial=1;tick();tick();must(serial_parity==1,"serial parity");clear=1;tick();must(!serial_parity,"parity clear priority");
reset_all();valid=1;hits=0;for(n=4;n>=0;n=n-1)begin serial=(5'b10101>>n)&1;tick();if(matched)hits=hits+1;end must(hits==2,"overlap 101 detector");valid=0;tick();must(!matched,"no repeated match");
reset_all();request=3;accept=1;#1;must(grant==1,"arbiter first");tick();must(grant==2,"arbiter alternates");tick();must(grant==1,"arbiter repeats");accept=0;tick();must(grant==1,"arbiter stalls");request=0;#1;must(grant==0,"arbiter idle");
reset_all();valid=1;a=8'h11;tick();must(out_valid&&out_data==8'h11&&!in_ready,"elastic fill");a=8'h22;tick();must(out_data==8'h11,"elastic stall stable");out_ready=1;tick();must(out_valid&&out_data==8'h22,"elastic replace");valid=0;tick();must(!out_valid&&in_ready,"elastic drain");
reset_all();start=1;load_value=3;tick();must(timer_busy&&!timer_done,"timer start");start=0;tick();must(timer_busy&&!timer_done,"timer two");tick();must(timer_busy&&!timer_done,"timer one");tick();must(!timer_busy&&timer_done,"timer done");tick();must(!timer_done,"done pulse");start=1;load_value=0;tick();must(timer_done&&!timer_busy,"timer zero");
$display("18 sequential exercises: reset, holds, latency, period and handshake passed");
$display("46 additional Verilog modules passed");$finish;
end
initial begin #2000000;$fatal(1,"timeout");end
endmodule
