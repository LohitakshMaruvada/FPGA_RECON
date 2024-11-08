`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 02:52:02 PM
// Design Name: 
// Module Name: splitter
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


module splitter(
    input [31:0] mix,
    output [15:0] sinh,
    output [31:16] cosh
    );
    
    assign cosh = mix[15:0];
    assign sinh = mix[31:16];
    
    
endmodule
