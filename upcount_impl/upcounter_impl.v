`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2025 11:18:04 AM
// Design Name: 
// Module Name: upcounter_impl
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


module upcounter_impl(
    input clk,
    input rst,
    input en,
    output reg [3:0]q
    );
    reg [26:0] clk_counter=0;
    reg clk_1hz=0;
    always@(posedge clk) begin
    if(clk_counter==99_999_999) begin
     clk_1hz<=1'b1;
     clk_counter<= 1'b0;
     end
    else begin
     clk_1hz<=1'b0;
     clk_counter<=clk_counter+1'b1;
     end
     end
   always@(posedge clk) begin
   if(rst)
   q<=4'b0000;
   else if(en==1'b1&clk_1hz==1'b1)
   q<=q+1'b1;
   
   end
endmodule
