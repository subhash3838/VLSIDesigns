`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 04:30:33 PM
// Design Name: 
// Module Name: downcounter_dff
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


module downcounter_dff(
input clk,
input rst,
input en,
output [3:0]q
 );
//    reg [26:0] clk_counter=0;
//    reg clk_1hz=0;
//    always@(posedge clk) begin
//    if(clk_counter==49_999_999) begin
//     clk_1hz<=1'b1;
//     clk_counter<= 1'b0;
//     end
//    else begin
//     clk_1hz<=1'b0;
//     clk_counter<=clk_counter+1'b1;
//     end
//     end
  
   dff_impl d1(clk,~q[0],en,rst,q[0]);
   dff_impl d2(clk,q[0]^q[1],en,rst,q[1]);
   dff_impl d3(clk,q[2]^(q[1]&q[0]),en,rst,q[2]);
   dff_impl d4(clk,q[3]^(q[2]&q[1]&q[0]),en,rst,q[3]);
endmodule
