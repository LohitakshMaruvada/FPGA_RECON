`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2024 00:20:09
// Design Name: 
// Module Name: tanh
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


module tanh(
    input clk,
    input ap_rst,
    input ap_start,
    output ap_done,
    output ap_idle,
    output ap_ready,
    output [31:0] ap_return,
    input [31:0] angle
    );
   
tanh_custom_0 your_instance_name (
  .ap_clk(clk),        // input wire ap_clk
  .ap_rst(ap_rst),        // input wire ap_rst
  .ap_start(ap_start),    // input wire ap_start
  .ap_done(ap_done),      // output wire ap_done
  .ap_idle(ap_idle),      // output wire ap_idle
  .ap_ready(ap_ready),    // output wire ap_ready
  .ap_return(ap_return),  // output wire [31 : 0] ap_return
  .angle(angle)          // input wire [31 : 0] angle
);
endmodule
