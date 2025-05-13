`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:35:22 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
 reg [2:0] din;
    wire [7:0] dout;

    // Instantiate the decoder
    decoder_3to8 uut (
        .din(din),
        .dout(dout)
    );

    initial begin
        din = 3'b000; #10;
        din = 3'b001; #10;
        din = 3'b010; #10;
        din = 3'b011; #10;
        din = 3'b100; #10;
        din = 3'b101; #10;
        din = 3'b110; #10;
        din = 3'b111; #10;
        $finish;
    end
endmodule
