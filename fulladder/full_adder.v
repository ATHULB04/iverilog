module full_adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire d;
xor x1(d,a,b);
xor x2(s,d,cin);
assign cout=(a&cin)|(a&b)|(b&cin);
endmodule