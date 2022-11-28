`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 10:10:53 PM
// Design Name: 
// Module Name: RANDOM_SERIAL_GEN
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


module RANDOM_SERIAL_GEN(
    input RAND_CLK,
    output logic RAND_OUT
    );
    //the random function generates a 32 bit signed value
    logic [31:0] RAND_BIT;
    always_ff @(posedge RAND_CLK)
    begin
    RAND_BIT = $random;
    //use just one of the bits
    RAND_OUT = RAND_BIT[11];
    end
endmodule
