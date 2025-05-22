`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 11:36:19 AM
// Design Name: 
// Module Name: mod12_impl
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


module mod12_impl(
input clk,
input rst,
output reg [3:0] q
);

reg [26:0] clk_counter=0;
reg clk_1hz=0;

always@(posedge clk) begin
  if (clk_counter==49_999_999)begin
    clk_1hz<=1;
    clk_counter<=0;
    end
   else begin
    clk_1hz<=0;
    clk_counter<=clk_counter+1'b1;
    end
  end
  
  always@(posedge clk) begin
   if(rst)
    q<=4'b0000;
   else if(clk_1hz) begin
     if(q==4'b1011)
       q<=4'b0000;
     else
      q<=q+1'b1;
     end
     end
     endmodule