`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:43:03 PM
// Design Name: 
// Module Name: downcounter_sync
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


module downcounter_sync(clk,rst,en,ld,q);
input clk,rst,en,ld;
output reg [3:0]q;

always@(posedge clk) begin
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