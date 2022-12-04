module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire x,y,z;
half_adder h1(a,b,x,y);
half_adder h2(x,c,sum,z);
or(carry,y,z);
endmodule

module half_adder(a,b,s,c);
input a,b;
output s,c;
xor (s,a,b);
and(c,a,b);
endmodule