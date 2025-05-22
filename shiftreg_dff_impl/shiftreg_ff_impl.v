`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 01:16:50 PM
// Design Name: 
// Module Name: shiftreg_ff_impl
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


module shiftreg_ff_impl(
input clk,
input rst,
input en,
input si,
output [3:0] po
  );
 
 dff_shift_impl d1(clk,rst,en,si,po[3]);
 dff_shift_impl d2(clk,rst,en,po[3],po[2]);
 dff_shift_impl d3(clk,rst,en,po[2],po[1]);
 dff_shift_impl d4(clk,rst,en,po[1],po[0]);
 
endmodule
