`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 11:45:08 AM
// Design Name: 
// Module Name: mux_4to1_7seg
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


module mux_4to1_7seg(
    input [1:0] sel,
    output reg [6:0]y
    );
    always@(*) begin
    case(sel)
      2'b00: y=7'b1111001;
      2'b01: y=7'b0100100;
      2'b10: y=7'b0110000;
      2'b11: y=7'b0011001;
      default: y=7'b0000000;
      endcase
      end
endmodule
