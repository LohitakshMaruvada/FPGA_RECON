`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 01:30:00 PM
// Design Name: 
// Module Name: blk_tb
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


module blk_tb();

reg clk,sel;
reg [8:0] a,b;
reg [15:0]c;

wire [31:0] tanh;
wire ap_done;


design_1 design_1_i
     (.a(a),
      .b(b),
      .c(c),
      .clk(clk),
      
      
      .sel(sel),
      
      .tanh(tanh),
      .ap_done(ap_done)    
);

initial begin
    clk = 0;
    sel = 1;
    a = 12;
    b = 2;
    c = 6;
    
    #5000;
    a = 5;
    b = 4;
    c = 2;
    
    #15000;
    sel = 0;
    
end

always #5 clk = ~clk;

endmodule
