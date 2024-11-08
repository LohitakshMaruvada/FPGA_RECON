`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 17:15:03
// Design Name: 
// Module Name: hyperbolic
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

module hyperbolic(
    input clk,
    input s_axis_phase_tvalid,
    input signed [15:0] s_axis_phase_tdata, // 1.7.8 format input
    output reg m_axis_dout_tvalid,
    output reg signed [15:0] sinh,          // Output for hyperbolic sine
    output reg signed [15:0] cosh           // Output for hyperbolic cosine
);
    
    // Internal signals
    wire m_axis_dout_tvalid_cordic; // Valid signal from CORDIC
    wire signed [31:0] m_axis_dout_tdata; // Combined output from CORDIC

    // Instantiate the CORDIC IP block
    cordic_0 cordic_inst (
        .aclk(clk),                                // input wire aclk
        .s_axis_phase_tvalid(s_axis_phase_tvalid), // input wire s_axis_phase_tvalid
        .s_axis_phase_tdata(s_axis_phase_tdata),   // input wire [15 : 0] s_axis_phase_tdata
        .m_axis_dout_tvalid(m_axis_dout_tvalid_cordic), // output wire m_axis_dout_tvalid
        .m_axis_dout_tdata(m_axis_dout_tdata)      // output wire [31 : 0] m_axis_dout_tdata
    );

    // Always block to manage output validity and data
    always @(posedge clk) begin
        if (s_axis_phase_tvalid) begin
            m_axis_dout_tvalid <= m_axis_dout_tvalid_cordic;

            // Unpack the CORDIC output for sinh and cosh
            sinh <= m_axis_dout_tdata[15:0];    // Lower 16 bits for sinh
            cosh <= m_axis_dout_tdata[31:16];   // Upper 16 bits for cosh
        end
        else begin
            m_axis_dout_tvalid <= 0; // Reset valid signal if input is not valid
        end
    end

endmodule
