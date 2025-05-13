`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:23:04 PM
// Design Name: 
// Module Name: encoder_3to8
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


module encoder_3to8(
    input [7:0] din,
    output reg [2:0] dout
    );
     always @(*) begin


        casez (din)
            8'b1???????: dout = 3'b111;
            8'b01??????: dout = 3'b110;
            8'b001?????: dout = 3'b101;
            8'b0001????: dout = 3'b100;
            8'b00001???: dout = 3'b011;
            8'b000001??: dout = 3'b010;
            8'b0000001?: dout = 3'b001;
            8'b00000001: dout = 3'b000;
            default: dout=3'bzzz;
        
        endcase
   end
endmodule
