`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 12:22:38 AM
// Design Name: 
// Module Name: bcd_7seg
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


module bcd_7seg(
    input [3:0] bcd,
    output reg [6:0] seg
    );
  always @(*) begin
        case (bcd)
            4'b0000: seg = 7'b1111110; 
            4'b0001: seg = 7'b0110000; 
            4'b0010: seg = 7'b1101101; 
            4'b0011: seg = 7'b1111001; 
            4'b0100: seg = 7'b0110011; 
            4'b0101: seg = 7'b1011011; 
            4'b0110: seg = 7'b1011111; 
            4'b0111: seg = 7'b1110000; 
            4'b1000: seg = 7'b1111111; 
            4'b1001: seg = 7'b1111011; 
            default: seg = 7'b0000000; 
        endcase
    end  
endmodule
