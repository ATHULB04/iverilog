module NOR(input a, b, c, output f3,f4);
wire m3, m4; 
nor U1 (m3,a,b);
nor U2 (f3,m3,c); 
nor U3 (m4,b,c);
nor U4 (f4,a,m4); 
endmodule





