`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 02:58:42
// Design Name: 
// Module Name: top
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


module top(
    input ap_clk,
    input ap_rst,
    input ap_start,
    output ap_done,
    output ap_idle,
    output ap_ready,
    output [31:0] ap_return,
    input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    input [31:0] j,
    
    input act_ap_rst,
    input act_ap_start,
    output act_ap_done,
    output act_ap_idle,
    output act_ap_ready,
    input [31:0] sel,
    output [31:0] neuron_output
    );
    
MAC_0 mac (
  .ap_clk(ap_clk),        // input wire ap_clk
  .ap_rst(ap_rst),        // input wire ap_rst
  .ap_start(ap_start),    // input wire ap_start
  .ap_done(ap_done),      // output wire ap_done
  .ap_idle(ap_idle),      // output wire ap_idle
  .ap_ready(ap_ready),    // output wire ap_ready
  .ap_return(ap_return),  // output wire [31 : 0] ap_return
  .a(a),                  // input wire [31 : 0] a
  .b(b),                  // input wire [31 : 0] b
  .c(c),                  // input wire [31 : 0] c
  .j(j)                  // input wire [31 : 0] j
);

neuron_0 activation (
  .ap_clk(ap_clk),        // input wire ap_clk
  .ap_rst(act_ap_rst),        // input wire ap_rst
  .ap_start(act_ap_start),    // input wire ap_start
  .ap_done(act_ap_done),      // output wire ap_done
  .ap_idle(act_ap_idle),      // output wire ap_idle
  .ap_ready(act_ap_ready),    // output wire ap_ready
  .ap_return(neuron_output),  // output wire [31 : 0] ap_return
  .angle(ap_return),          // input wire [31 : 0] angle
  .sel(sel)              // input wire [31 : 0] sel
);
endmodule
