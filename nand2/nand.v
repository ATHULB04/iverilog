module NAND(f1,f2,a,b);
input a,b;
output f1,f2;
wire m1, m2;
nand U1(m1,a,b);
nand U2(f1,m1, c);
nand U3(m2,b,c);
nand U4 (f2,a,m2); 
endmodule




