`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:57:16 PM
// Design Name: 
// Module Name: updown_sync
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


module updown_sync(
    input clk,
    input rst,
    input [3:0]ld,
    input en,
    input up,down,
    output reg [3:0] q
    );
    always@(posedge clk) begin
    if(rst)
    q<= 4'b0000;
    else if(en)
    q<=ld;
    else if(up)
    q<=q+1'b1;
    else if(down)
    q<=q-1'b1;
    else
    q<=q;
    end
endmodule
