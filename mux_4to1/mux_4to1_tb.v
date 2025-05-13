`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 11:48:19 PM
// Design Name: 
// Module Name: mux_4to1_tb
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


module mux_4to1_tb();
 reg [3:0] a;        
    reg [1:0] sel;   
    wire out;        

   
    mux_4to2 uut (
        .a(a),
        .sel(sel),
        .out(out)
    );

    initial begin
      
        a = 4'b1101; sel = 2'b00; #10; 
       
        a = 4'b1101; sel = 2'b01; #10; 
       
        a = 4'b1101; sel = 2'b10; #10; 
       
        a = 4'b1101; sel = 2'b11; #10; 
      
        a = 4'b1101; sel = 2'bxx; #10; 

        $finish;
    end
endmodule
