`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 00:33:17
// Design Name: 
// Module Name: testbench
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


module testbench();

reg clk;
reg ap_rst;
reg ap_start;
wire ap_done;
wire ap_ready;
wire ap_idle;
reg [31:0] angle;
wire [31:0] ap_return;

tanh tanh_instantiation(
    .clk(clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle),
    .angle(angle),
    .ap_return(ap_return)
);

initial begin
    clk = 0;
    ap_rst = 1;
    ap_start = 0;
    
    #10
    ap_rst = 0;
    ap_start = 1;
//    angle = 32'b00111111000000000000000000000000;   //0.5 in IEEE 754 standart
    angle = 32'b00111111000110111110011101101101;
//    angle = 32'b00000000000000000000000000000000;
    #30
    ap_start = 0;
end

always begin
    #5 clk = ~clk;
end
endmodule
