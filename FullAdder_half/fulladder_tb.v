`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 08:52:49 PM
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb();
reg a,b,ci;
wire s,co;

fulladder_half dut(
.a(a),
.b(b),
.ci(ci),
.s(s),
.co(co)
);
initial begin
  $monitor($time,"a=%b,b=%b,ci=%b,s=%b,co=%b",a,b,ci,s,co);
  
        a = 0; b = 0; ci = 0; 
        #10;
        a = 0; b = 0; ci = 1;
         #10;
        a = 0; b = 1; ci = 0; 
        #10;
        a = 0; b = 1; ci = 1;
         #10;
        a = 1; b = 0; ci = 0; 
        #10;
        a = 1; b = 0; ci = 1; 
        #10;
        a = 1; b = 1; ci = 0; 
        #10;
        a = 1; b = 1; ci = 1;
         #10;

        $finish;
    end
   
endmodule
