`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:44:46 PM
// Design Name: 
// Module Name: downcountersync_tb
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


module downcountersync_tb;
reg clk,rst,ld,en;
wire [3:0] q;

downcounter_sync uut(
.clk(clk),
.rst(rst),
.en(en),
.ld(ld),
.q(q)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | ld=%b | en=%b | q=%b",rst,ld,en,q);

rst=1;en=0;ld=0;
#10 rst=0;
#10 ld=1;
#10 en=1;
#10 ld=0;
#100 $finish;
end
endmodule