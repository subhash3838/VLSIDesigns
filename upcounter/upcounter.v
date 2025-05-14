module upcounter(clk,rst,en,q);
input clk,rst,en;
output reg [3:0] q;

always@(posedge clk) begin
if (rst)
q<=4'b0000;
else
 if(en)
  q<=q+1'b1;
 else
  q<=q;
end
endmodule

