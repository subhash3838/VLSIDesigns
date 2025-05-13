`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/14/2025 12:01:28 AM
// Design Name: 
// Module Name: srff_tb
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

module srff_tb;
reg s,r,clk,rst;
wire q;

srff uut(
.s(s),
.r(r),
.clk(clk),
.rst(rst),
.q(q)
);

initial begin
clk=0;
forever #5clk = ~clk;
end

initial begin
 $monitor($time," rst=%b | s=%b,r=%b | q=%b",rst,s,r,q);
 
 rst=0; s=1;r=0;
 #10 rst=1 ;
 #10 rst=0; s=1;r=0;
 #10 s=0;r=1;
 #10 s=1;r=1;
 #10 s=1;r=0;
 #15 $finish;
 end
 endmodule
