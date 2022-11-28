`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 02:23:07 PM
// Design Name: 
// Module Name: CLK_DIV_MX_SIM
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


module CLK_DIV_MX_SIM();
logic[3:0]SW_IN_SIM;
logic[32:0] VAL_OUT_SIM;
CLK_DIV_SR UUT(.SW_IN(SW_IN_SIM), .VAL_OUT(VAL_OUT_SIM));
always begin
    #10SW_IN_SIM = 4'b0000;
    #10 SW_IN_SIM= 4'b0001;
    #10 SW_IN_SIM = 4'b0010;
    #10 SW_IN_SIM = 4'b0011;
    #10 SW_IN_SIM = 4'b0100;
    #10 SW_IN_SIM = 4'b0101;
    #10 SW_IN_SIM = 4'b0110;
    #10 SW_IN_SIM = 4'b0111;
    #10 SW_IN_SIM = 4'b1000;
    #10 SW_IN_SIM = 4'b1001;
    #10 SW_IN_SIM = 4'b1010;
    #10 SW_IN_SIM = 4'b1011;
    #10 SW_IN_SIM = 4'b1100;
    #10 SW_IN_SIM = 4'b1101;
    #10 SW_IN_SIM = 4'b1110;
    #10 SW_IN_SIM = 4'b1111;
    
end
endmodule
