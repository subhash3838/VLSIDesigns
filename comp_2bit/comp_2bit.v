module comp_2bit(a,b,g,l,e);
input [1:0] a,b;
output g,l,e;

assign g=(a>b);
assign l=(a<b);
assign e=(a==b);

endmodule

/* 
module comp_2bit(a,b,g,l,e);
input [1:0] a,b;
output reg g,l,e;

always@(*) begin
g=0;
l=0;
e=0;
if(a>b)
g=1'b1;
else if(a<b)
l=1'b1;
else if(a==b)
e=1'b1;
else
g=1'bx;l=1'bx;e=1'bx;
end

endmodule

*/









