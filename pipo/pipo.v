module pipo(clk,rst,pin,pout);
input clk,rst;
input [3:0]pin;
output reg [3:0] pout;

always@(posedge clk) begin
 if(rst)
 pout<= 4'b0000;
 else
 pout<= pin;
end
endmodule

