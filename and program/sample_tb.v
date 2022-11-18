`include "sample.v"
module sample_tb;
reg a,b;
wire e;
sample s1(a,b,e);
initial
begin
    $dumpfile("sample.vcd");
    $dumpvars(0,sample_tb);
    a=0;b=0;
    #1
    a=0;b=1;
    #1
    a=1;b=0;
    #1
    a=1;b=1;
end
endmodule