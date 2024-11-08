`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 03:26:59 PM
// Design Name: 
// Module Name: 2to1Mux
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


module TwoOneMux(
    input [15:0] in1,
    input [15:0] in2,
    input sel,
    output reg [15:0] val
    );
    
    always @(*) begin
        if (~sel)
            val = in1;
        
        if(sel)
            val = in2;
    end
    
    
endmodule
