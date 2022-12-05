`include "nand.v"
module nandtb;
reg a,b;
wire yi,y2,y3,y4;
NAND uut (.a(a), .b(b),.y1(y1), .y2(y2),.y3(y3),.y4(y4));
initial begin
a=0; b=0;
#200 
a=0; b=1;
#200 
a=1; b=0;
#200 
a=1; b=1;
end
initial begin
    $monitor("a=%d,b=%d,y1=%d,y2=%d,y3=%d,y4=%d",a,b,y1,y2,y3,y4);
end
endmodule