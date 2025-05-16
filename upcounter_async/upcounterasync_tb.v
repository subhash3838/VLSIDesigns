`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:36:03 PM
// Design Name: 
// Module Name: upcounterasync_tb
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


module upcounterasync_tb;
reg clk,en,rst;
wire [3:0] q;

upcounter_async uut(
.clk(clk),
.rst(rst),
.en(en),
.q(q)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | en=%b| q=%b",rst,en,q);
rst=1;en=1;
#10 rst=0;en=1;
#10 en=0;
#10 en=1;
#70 rst=1;
#10 rst=0;
#25 $finish;
end
endmodule
