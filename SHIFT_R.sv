`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:35:26 PM
// Design Name: 
// Module Name: SHIFT_R
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


module SHIFT_R(
    input SR_CLK,
    input SR_IN,
    output logic [7:0] SR_O
    );
    always_ff@(posedge SR_CLK)
    begin
        SR_O <= {SR_IN,SR_O[7:1]};
        //shift right shift register based on serial input
    end
endmodule
