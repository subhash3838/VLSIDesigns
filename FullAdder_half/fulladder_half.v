
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 08:45:54 PM
// Design Name: 
// Module Name: fulladder_half
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


module fulladder_half(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
    wire w1,w2,w3;
    halfadder H1(a,b,w1,w2);
    halfadder H2(w1,ci,s,w3);
    or(co,w3,w2);
    
endmodule
