`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 10:19:22 PM
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb();
reg a,b;
wire s,c;
half_adder dut(
.a(a),
.b(b),
.s(s),
.c(c)
);

initial begin

      

        // Test Case 1: A=0, B=0
        a = 0; b = 0; #10;
      
        // Test Case 2: A=0, B=1
        a = 0; b= 1; #10;
       

        // Test Case 3: A=1, B=0
        a = 1; b = 0; #10;
       

        // Test Case 4: A=1, B=1
        a = 1; b = 1; #10;
       

        $finish;
    end
endmodule
