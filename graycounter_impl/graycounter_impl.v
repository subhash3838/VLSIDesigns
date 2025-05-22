`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 12:43:15 PM
// Design Name: 
// Module Name: graycounter_impl
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


module graycounter_impl(
input clk,
input rst,
input en,
output reg [3:0] q
);
 reg [26:0] clk_counter=0;
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
  
  reg [3:0] bin;
  
  always@(posedge clk) begin
  if(rst) begin
   bin<=4'b0000;
   q<=4'b0000;
   end
   else if(en & clk_1hz) begin
   bin<=bin+1;
   q[3]<=bin[3];
   q[2]<=bin[3]^bin[2];
   q[1]<=bin[2]^bin[1];
   q[0]<=bin[1]^bin[0];
   end
   else begin
   bin<=bin;
   q<=q;
   
   end
   end
endmodule
