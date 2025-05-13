`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2025 11:55:42 PM
// Design Name: 
// Module Name: tff_tb
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

module tff_tb;
reg t,clk,rst;
wire q;

tff uut(
.t(t),
.clk(clk),
.rst(rst),
.q(q)
);

initial begin
clk=0;
forever #5clk = ~clk;
end

initial begin
 $monitor($time," rst=%b | t=%b | q=%b",rst,t,q);
 
 rst=0;t=0;
 #10 rst=1;t=0;
 #10 rst=0; t=0;
 #10 t=1;
 #15 $finish;
 end
 endmodule
