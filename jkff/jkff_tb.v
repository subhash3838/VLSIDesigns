`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 11:02:48 PM
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb;
reg j,k,clk,rst;
wire q;

jkff uut(
.j(j),
.k(k),
.clk(clk),
.rst(rst),
.q(q)
);

initial begin
clk=0;
forever #5clk = ~clk;
end

initial begin
 $monitor($time," rst=%b | j=%b,k=%b | q=%b",rst,j,k,q);
 
 rst=0; j=1;k=0;
 #10 rst=1 ;
 #10 rst=0; j=1;k=0;
 #10 j=0;k=1;
 #10 j=1;k=1;
 #10 j=1;k=0;
 #15 $finish;
 end
 endmodule
