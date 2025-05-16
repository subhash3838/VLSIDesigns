`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 12:01:39 PM
// Design Name: 
// Module Name: bidirect_shift
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


module bidirect_shift(
    input clk,
    input rst,
    input en,
    input right,
    input left,
    input [3:0]load,
    output reg [3:0]q
    );
 always@(posedge clk) begin
  if(rst)
   q<= 4'b0000;
  else if(en)
   q<=load;
  else if(left)
      q<=(q<<1);
  else if(right)
     q<=(q>>1);
  else
    q<=q;
 end
      
endmodule

/*dataflow modelling
  
  module bidirect_shift(
    input clk,
    input rst,
    input en,
    input right,
    
    input [3:0]load,
    output [3:0]q
 );
 assign q= (en)?load:q;
 assign q = (right)? (q>>1):(q<<1);
endmodule

*/

