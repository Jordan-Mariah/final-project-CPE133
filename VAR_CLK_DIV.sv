`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 02:49:18 PM
// Design Name: 
// Module Name: VAR_CLK_DIV
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


module VAR_CLK_DIV(
    input DIV_CLK,
    //max val will come from our driver
    input [32:0] MAX_VAL,
    //initialize output to 0 so we can just not it
    output logic STAB_RATE_OUT = 0  
    );
    logic[32:0] CNT = 0;

    always_ff @(posedge DIV_CLK)
    begin
    //counts clock cycles
    CNT += 1'b1;
    if(CNT == MAX_VAL)
    begin
    //reset clock and invert output 
    CNT = 0;
    STAB_RATE_OUT  = ~STAB_RATE_OUT;
    end
    end
endmodule
