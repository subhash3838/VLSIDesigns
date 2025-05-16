`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 04:04:51 PM
// Design Name: 
// Module Name: updownsync_tb
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


module updownsync_tb;
reg clk,rst,en,up,down;
reg [3:0]ld;
wire [3:0]q;

updown_sync uut(
.clk(clk),
.rst(rst),
.en(en),
.up(up),
.down(down),
.ld(ld),
.q(q)
);

initial begin
 clk=0;
 forever #5 clk= ~clk;
 end

initial begin
 $monitor($time," rst=%b | en= %b | up=%b, down=%b | load=%b | q=%b",rst,en,up,down,ld,q);
 
 rst=1;up=0;down=0;
 #10 rst=0;ld=4'b1010;
 #10 en=1;
 #10 en=0;down=1;
 #70 down=0;up=1;
 #70 $finish;
 end
endmodule
