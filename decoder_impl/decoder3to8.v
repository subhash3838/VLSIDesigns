`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 03:57:26 PM
// Design Name: 
// Module Name: decoder3to8
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


module decoder_3to8(
    input [2:0] din,
    output reg [7:0] dout
    );
     always @(*) begin
       
        case (din)
            3'b000: dout = 8'b00000001;
            3'b001: dout = 8'b00000010;
            3'b010: dout = 8'b00000100;
            3'b011: dout = 8'b00001000;
            3'b100: dout = 8'b00010000;
            3'b101: dout = 8'b00100000;
            3'b110: dout = 8'b01000000;
            3'b111: dout = 8'b10000000;
            default: dout = 8'b00000000;
        endcase
    end
endmodule

