`include "nor.v"
module nortb;
reg a,b;
wire y1,y2,y3,y4;
NOR uut (.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
intial begin
a=0; b=0;
#200
a=0; b=1;
#200 
a=1; b=0;
#200 
a=1; b=1;
end
intial begin
    $monitor("a=%d,b=%d,y1=%d,y2=%d,y3=%d,y4=%d",a,b,y1,y2,y3,y4);
end
endmodule