`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 09:36:01 PM
// Design Name: 
// Module Name: CLK_DIV_TOP
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


module CLK_DIV_TOP(
    input[3:0] CLK_DIV_SW,
    input DIV_MASTER_CLK,
    output STAB_CLK
    );
    logic[32:0] MAXIMUM;
    
    CLK_DIV_SR DRIVER (.SW_IN(CLK_DIV_SW), .VAL_OUT(MAXIMUM));
    VAR_CLK_DIV DIVIDER (.DIV_CLK(DIV_MASTER_CLK), .MAX_VAL(MAXIMUM), .STAB_RATE_OUT(STAB_CLK));
endmodule
