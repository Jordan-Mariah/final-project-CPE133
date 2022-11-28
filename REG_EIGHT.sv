`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2022 02:20:39 PM
// Design Name: 
// Module Name: FlipFlop
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


module REG_EIGHT(
    input FF_C,
    input FF_E, FF_CLK, FF_SET,
    input[7:0] FF_D,
    output logic[7:0] FF_Q
    );
    always_ff @(posedge FF_CLK)
    begin
        if(FF_E)
            FF_Q<=FF_D;
        else if(FF_C)
        FF_Q<=7'b0;
        else if(FF_SET)
        FF_Q<=7'b1;
        
    end
endmodule
