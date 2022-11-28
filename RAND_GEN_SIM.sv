`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2022 10:25:17 PM
// Design Name: 
// Module Name: RAND_GEN_SIM
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


module RAND_GEN_SIM();
logic CLK_SIM = 0;
logic RAND_OUT_SIM;
RANDOM_SERIAL_GEN UUT(.RAND_CLK(CLK_SIM), .RAND_OUT(RAND_OUT_SIM));

always begin
#5
CLK_SIM = ~CLK_SIM;
end
endmodule
