`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:09:29 PM
// Design Name: 
// Module Name: clockdivider
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


module clockdivider(
    input clk,
    input rst,
    output reg clk_out,
    output reg [1:0] counter
    );
  
   always @(posedge clk) begin
   if(rst) begin
     clk_out<=0;
     counter<=0;
   end
   else begin
    counter<= counter+1'b1;
    if(counter==2'b11)begin
      clk_out<= ~clk_out;
      counter<=0;
     end
    end
    end
    
endmodule
