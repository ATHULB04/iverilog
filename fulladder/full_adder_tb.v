`include "full_adder.v"
module full_adder_tb;
reg a,b,cin;
wire sum,carry;
full_adder uut(
  .a(a),.b(b),.cin(cin),.s(sum),.cout(carry)
);
initial begin
  $dumpfile("full_adder_tb.vcd");
  $dumpvars(0,full_adder_tb);
end
initial begin
 a=0;b=0;cin=0;
 #10
 a=0;b=0;cin=1;
 #10
 a=0;b=1;cin=0;
 #10
 a=0;b=1;cin=1;
 #10
 a=1;b=0;cin=0;
 #10
 a=1;b=0;cin=1;
 #10
 a=1;b=1;cin=0;
 #10
 a=1;b=1;cin=1;
end
initial begin
  $monitor("a=%d,b=%d,cin=%d,sum=%d,carry=%d",a,b,cin,sum,carry);
end
endmodule