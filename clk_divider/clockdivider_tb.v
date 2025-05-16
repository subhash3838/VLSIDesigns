`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 03:13:27 PM
// Design Name: 
// Module Name: clockdivider_tb
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


module clockdivider_tb;
reg clk,rst;
wire clk_out;
wire [1:0] counter;

clockdivider uut(
.clk(clk),
.rst(rst),
.clk_out(clk_out),
.counter(counter)
);

initial begin
clk=0;
forever #5 clk= ~clk;
end

initial begin
 $monitor($time," rst=%b | counter=%b",rst,counter);
 
rst=1;
#10 rst=0;
#270 $finish;
end

endmodule
