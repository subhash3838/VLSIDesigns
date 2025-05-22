`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 01:19:32 PM
// Design Name: 
// Module Name: dff_shift_impl
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


module dff_shift_impl(
input clk,
input rst,
input en,
input d,
output reg q
    );
 reg [26:0]clk_counter=0;
 reg clk_1hz=0;
 always@(posedge clk) begin
   if(clk_counter==99_999_999) begin
     clk_1hz<=1'b1;
     clk_counter<=0;
   end
   else begin
     clk_1hz<=1'b0;
     clk_counter<=clk_counter+1'b1;
   end
   end
   
  always@(posedge clk) begin
   if(rst)
     q<=1'b0;
   else if(en & clk_1hz) 
     q<=d;
   else
     q<=q;
   end
   
endmodule
