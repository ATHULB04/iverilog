`include "MAX.v"
module MUX_tb;

wire  out;
reg  a;
reg  b;
reg  c;
reg  d;
reg s0, s1;

MUX uut(.a(a), .b(b), .c(c), .d(d), .s0(s0), .s1(s1),.out(out));
 initial begin
    s0=0;s1=1;a=0;b=0;c=1;d=0;
    #10
    s0=0;s1=1;a=1;b=1;c=0;d=1;
    #10
    s0=0;s1=0;a=1;b=0;c=0;d=0;
    #10
    s0=0;s1=0;a=0;b=1;c=1;d=1;
  end
endmodule
