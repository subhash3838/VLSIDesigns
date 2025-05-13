`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 12:00:51 AM
// Design Name: 
// Module Name: srff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module srff(s,r,clk,rst,q);
input s,r,clk,rst;
output reg q;

always@(posedge clk or posedge rst) begin
if(rst)
q=1'b0;
else
case({s,r})
2'b00: q<=q;
2'b01: q<=1'b0;
2'b10: q<=1'b1;
2'b11: q<=1'bx;
default: q<=1'bx;
endcase
end
endmodule

