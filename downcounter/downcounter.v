module downcounter(clk,rst,en,ld,q);
input clk,rst,en,ld;
output reg [3:0]q;

always@(posedge clk or posedge rst) begin
if(rst)
 q<=4'b0000;
else if(ld)
 q<=4'b1111;
else if(en)
 q<=q-1'b1;
else
 q<=q;
end
endmodule
