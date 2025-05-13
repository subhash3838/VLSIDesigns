`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:43:05 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to2(
    input [3:0] a,
    input [1:0] sel,
    output reg out
    );
   always@(*) begin
   case (sel)
   2'b00: out=a[0];
   2'b01: out=a[1];
   2'b10: out=a[2];
   2'b11: out=a[3];
   default: out=0;
   endcase 
   end
endmodule
