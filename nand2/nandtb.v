`include"nand.v"
module nandtb;
reg a,b,c;
wire f1, f2;
NAND uut(.f1(f1),.f2(f2),.a(a),.b(b));
initial begin
a=0; b=0; c=0;
#200 
a=0; b= 0; c=1;
#200 
a=0; b=1;  c=1;
#200 
a=0; b=1;  c=1;
#200 
a=1; b=0;  c=0;
#200 
a=1; b=0;  c=1;
#200 
a=1; b=1;  c=0;
#200 
a=1; b=1;  c=1;
end
initial begin
$dumpfile("nandtb.vcd");
$dumpvars(0,nandtb);
end
endmodule