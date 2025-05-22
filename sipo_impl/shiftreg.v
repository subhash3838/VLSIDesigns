`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2025 10:55:10 AM
// Design Name: 
// Module Name: shiftreg
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


module shiftreg(
input clk,
input rst,
input si,
input en,
output [3:0] po
);

reg [26:0] clk_counter;
reg clk_1hz;

always@(posedge clk) begin
if(clk_counter==99_999_999) begin
 clk_1hz<=1'b1;
 clk_counter<=0;
 end
else begin
 clk_1hz<=0;
 clk_counter<=clk_counter+1;
 end
 end
 
 reg [3:0] shift_reg;
 always@(posedge clk) begin
 if(rst)
 shift_reg<=4'b0000;
 
 else if(en & clk_1hz) 
  shift_reg<={si,shift_reg[3:1]};
 else
  shift_reg<=shift_reg;
end
assign po=shift_reg;
endmodule
