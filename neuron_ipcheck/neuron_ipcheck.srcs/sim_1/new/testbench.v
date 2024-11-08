`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2024 03:02:23
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

    reg ap_clk;
    reg ap_rst;
    reg ap_start;
    wire ap_done;
    wire ap_idle;
    wire ap_ready;
    wire [31:0] ap_return;
    reg [31:0] a;
    reg [31:0] b;
    reg [31:0] c;
    reg [31:0] j;
    
    reg act_ap_rst;
    reg act_ap_start;
    wire act_ap_done;
    wire act_ap_idle;
    wire act_ap_ready;
    reg [31:0] sel;
    wire [31:0] neuron_output;
    
top dut(
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
  .j(j),
  .act_ap_rst(act_ap_rst),
  .act_ap_start(act_ap_start),
  .act_ap_done(act_ap_done),
  .act_ap_idle(act_ap_idle),
  .act_ap_ready(act_ap_ready),
  .sel(sel),
  .neuron_output(neuron_output)
);

initial begin
    ap_clk = 0;
    ap_rst = 1;
    ap_start = 0;
    act_ap_rst = 1;
    act_ap_start = 0;
    j = 32'b01000000101000000000000000000000;
    
    #30
    ap_rst = 0;
    ap_start = 1;
    
    #20
    a = 32'b00111111000110111110011101101101;
    b = 32'b00111111100000000000000000000000;
    c = 32'b00000000000000000000000000000000;
    sel = 32'd0;
    #20
    ap_start = 0;
    
    #2000
    act_ap_rst = 0;
        #5
    act_ap_start = 1;
    
        #20 
    act_ap_start = 0;
end

always begin
    #10 ap_clk = ~ap_clk;
end
endmodule
