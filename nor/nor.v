module NOR(a,b,y1,y2,y3,y4);
input a,b;
output y1,y2,y3,y4;
wire m1, m2, m3, m4, m5, m6, m7;
nor U1 (y1,a,a);
nor U2 (m1,a,b);
nor U3(y2,m1,m1);
nor U4 (m2,a,a);
nor U5 (m3,b,b);
not U6 (y3,m2,m3);
not U7(m4,a,b);
nor U8 (m5,a,m4);
nor U9 (m6,m4,b);
nor U1O (m7,m5,m6);
nor U11 (y4,m7,m7);
endmodule






