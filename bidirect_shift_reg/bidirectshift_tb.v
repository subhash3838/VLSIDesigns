`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 12:06:00 PM
// Design Name: 
// Module Name: bidirectshift_tb
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


module bidirectshift_tb;
reg clk,rst,en,right,left;
reg [3:0] load;
wire [3:0] q;

bidirect_shift uut(
.clk(clk),
.rst(rst),
.en(en),
.right(right),
.left(left),
.load(load),
.q(q)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | en=%b | right=%b | left=%b | q=%b",rst,en,right,left,q);
 
 rst=1;
 #10 rst=0;load=4'b1010;
 #10 en=1;
 #10 en=0;
 #10 left=1;right=0;
 
 #40 left=0;en=1;
 #10 en=0;
 #10 left=0;right=1;
 #40 $finish;
 end
 endmodule
 

