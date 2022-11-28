`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 02:00:21 PM
// Design Name: 
// Module Name: Multiplexer_Two
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


module HL_SEL(
    input MUX_SEL,
    input [7:0] MUX_L,
    input MUX_H,
    output logic [7:0] MUX_OUTPUT
    );
    always_comb
    begin
    if(MUX_SEL == 0)
    MUX_OUTPUT = MUX_L;
    else
    MUX_OUTPUT = MUX_H;
    end
endmodule
