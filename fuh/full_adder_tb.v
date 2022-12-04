`include "full_adder.v"
module full_adder_tb;
reg a,b,c;
wire sum,carry;
full_adder uut(
  .a(a),.b(b),.c(c),.sum(sum),.carry(carry)
);
initial begin
  $dumpfile("full_adder_tb.vcd");
  $dumpvars(0,full_adder_tb);
end
initial begin
 a=0;b=0;c=0;
 #10
 a=0;b=0;c=1;
 #10
 a=0;b=1;c=0;
 #10
 a=0;b=1;c=1;
 #10
 a=1;b=0;c=0;
 #10
 a=1;b=0;c=1;
 #10
 a=1;b=1;c=0;
 #10
 a=1;b=1;c=1;
end
initial begin
  $monitor("a=%d,b=%d,c=%d,carry=%d,sum=%d",a,b,c,carry,sum);
end
endmodule