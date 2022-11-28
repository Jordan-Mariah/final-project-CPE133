`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 09:08:58 PM
// Design Name: 
// Module Name: CLK_DIV_TEST
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


module CLK_DIV_TEST();
logic DIV_CLK_SIM =0; 
logic STAB_RATE_OUT_SIM;
logic[32:0] MAX_VAL_SIM;

VAR_CLK_DIV UUT (.DIV_CLK(DIV_CLK_SIM), .STAB_RATE_OUT(STAB_RATE_OUT_SIM), .MAX_VAL(MAX_VAL_SIM));

always begin
#5
DIV_CLK_SIM = ~DIV_CLK_SIM;
end

initial begin
MAX_VAL_SIM = {15'b0, 1'b1, 17'b0};
end
endmodule
