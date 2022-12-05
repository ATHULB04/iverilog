module NAND(input a,b,output y1,y2,y3,y4);
wire m1, m2, m3, m4, m5, m6;
nand U1 (y1,a,a);
nand U2 (m1,a,b);
nand U3 (y2, m1, m1);
nand U4 (m2,a,a);
nand U5 (m3,b,b);
nand U6 (y3,m2,m3);
nand U7 (m4,a,b);
nand U8 (m5,a,m4);
nand U9 (m6,m4,b);
nand U10 (y4,m5,m6);
endmodule






