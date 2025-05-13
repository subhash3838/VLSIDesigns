`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:27:03 PM
// Design Name: 
// Module Name: encoder8to3_tb
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


module encoder8to3_tb();
 reg [7:0] din;
 wire [2:0] dout;
    

    // Instantiate the encoder
    encoder_3to8 uut (
        .din(din),
        .dout(dout)
    );

    initial begin
        din = 8'b00000000; #10;  
        din = 8'b00000001; #10; 
        din = 8'b00000010; #10; 
        din = 8'b00000100; #10; 
        din = 8'b00001000; #10; 
        din = 8'b00010000; #10; 
        din = 8'b00100000; #10; 
        din = 8'b01000000; #10; 
        din = 8'b10000000; #10; 
        din = 8'b11001000; #10; 
        $finish;
    end
endmodule
