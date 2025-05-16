`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:32:24 PM
// Design Name: 
// Module Name: upcounter_async
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


module upcounter_async(clk,rst,en,q);
input clk,rst,en;
output reg [3:0] q;

always@(posedge clk or posedge rst) begin
if (rst)
q<=4'b0000;
else
 if(en)
  q<=q+1'b1;
 else
  q<=q;
end
endmodule

