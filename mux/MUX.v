module MUX(y,s0,s1,a,b,c,d);
input s0,s1,a,b,c,d;
output y;
wire m1,m2,y1,y2,y3,y4;
not (m1,s1);
not (m2,s0);
and (y1,a,m1,m2);
and (y2,b,m1,s0);
and (y3,c,s1,s0);
and (y4,d,s1,m2);
or (y,y1,y2,y3,y4);
endmodule