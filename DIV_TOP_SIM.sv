`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 09:51:38 PM
// Design Name: 
// Module Name: DIV_TOP_SIM
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


module DIV_TOP_SIM();
logic[3:0] CLK_DIV_SW_SIM;
logic DIV_MASTER_CLK_SIM = 0, STAB_CLK_SIM;
CLK_DIV_TOP UUT(.CLK_DIV_SW(CLK_DIV_SW_SIM), .DIV_MASTER_CLK(DIV_MASTER_CLK_SIM), .STAB_CLK(STAB_CLK_SIM));
always begin
#5
DIV_MASTER_CLK_SIM = ~DIV_MASTER_CLK_SIM;
end
initial begin
CLK_DIV_SW_SIM = 4'b0111;
end
endmodule
