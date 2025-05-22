`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 11:51:29 AM
// Design Name: 
// Module Name: piso_shiftreg_impl
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


module piso_shiftreg_impl(
input clk,
input rst,
input en,
input ld,
input [3:0] pi,
output so
    );
    
   reg [26:0] clk_counter=0;
   reg clk_1hz=0;
   
   always@(posedge clk) begin
   if(clk_counter==99_999_999)begin
    clk_1hz<=1'b1;
    clk_counter<=0;
    end
   else 
      begin
       clk_1hz<=1'b0;
       clk_counter<=clk_counter+1'b1;
       end
    end
    
    reg [3:0] shift_reg;
    
    always@(posedge clk) begin
     if(rst)
      shift_reg<=4'b0000;
     else if(ld)
      shift_reg<= pi;
     else if(en & clk_1hz)
      shift_reg<= (shift_reg>>1);
     else
      shift_reg<= shift_reg;
     end
     
    assign so=shift_reg[0];
    
endmodule
