`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 11:55:01 PM
// Design Name: 
// Module Name: tff
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


module tff(t,clk,rst,q);
input t,clk,rst;
output reg q;

always@(posedge clk or posedge rst) begin  //Asynchronous
if (rst)
q<=1'b0;
else
q<=(~t);
end
endmodule
