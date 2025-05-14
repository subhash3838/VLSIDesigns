module sipo(clk,rst,sin,pout);
input clk,rst,sin;
output [3:0] pout;

reg [3:0] shift_reg;

always@(posedge clk) begin
if(rst)
 shift_reg<= 4'b0000;
else
 shift_reg<= {shift_reg[2:0],sin};
end

assign pout=shift_reg;

endmodule
