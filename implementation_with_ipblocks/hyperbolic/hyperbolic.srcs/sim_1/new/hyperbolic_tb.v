`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 17:36:14
// Design Name: 
// Module Name: hyperbolic_tb
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

module hyperbolic_tb();

    reg clk;
    reg s_axis_phase_tvalid;   // Input valid signal
    reg signed [15:0] s_axis_phase_tdata; // Input phase data in 1.7.8 format
    wire m_axis_dout_tvalid;   // Output valid signal
    wire signed [15:0] sinh;    // Output for hyperbolic sine
    wire signed [15:0] cosh;    // Output for hyperbolic cosine

    // Instantiate the hyperbolic module
    hyperbolic hyperbolic_inst(
        .clk(clk),
        .s_axis_phase_tvalid(s_axis_phase_tvalid),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .m_axis_dout_tvalid(m_axis_dout_tvalid),
        .sinh(sinh),
        .cosh(cosh)
    );

    // Clock generation
    initial begin
        clk = 0; // Initialize clock
        s_axis_phase_tvalid = 0; // Start with valid signal low
    end

    // Toggle clock every 10 ns
    always begin
        #10 clk = ~clk;
    end

    // Stimulus generation
    initial begin
        // Apply test cases
        // Wait for a few clock cycles before starting
        #20; 
        s_axis_phase_tvalid <= 1; // Assert valid signal
        s_axis_phase_tdata <= 16'b0001001110000000; // Set phase data

        // Wait for a few cycles to observe output
//        #200; 
//        s_axis_phase_tvalid <= 0; // Deassert valid signal

        // Add more test cases as needed
        // Example: Test another input
//        #20; 
//        s_axis_phase_tvalid <= 1; 
//        s_axis_phase_tdata <= 16'b0000000101000000; // Another input
        
        // Wait and then deassert valid signal
//        #20; 
//        s_axis_phase_tvalid <= 0; 

        // Finish the simulation after some time
        
    end

endmodule
