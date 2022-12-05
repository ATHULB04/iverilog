`include"nor.v"
module nortb;
reg a,b,c;
wire f3,f4;
NOR uut (.a(a),.b(b),.c(c),.f3(f3),.f4(f4));
initial begin
    $dumpfile("nortb.vcd");
    $dumpvars(0,nortb);
end
initial begin
a=0; b=0; c=0;
#200 
a=0; b=0; c=1;
#200 
a=0; b=1; c=0;
#200 
a=0; b=1; c=1;
#200 
a=1; b=0; c=0;
#200 
a=1; b=0; c=1;
#200 
a=1; b=1; c=0;
#200 
a=1; b=1; c=1;
end
initial begin
$monitor("a=%d,b=%d,c=%d,f3=%d,f4=%d",a,b,c,f3,f4);
end
endmodule