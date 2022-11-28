`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 01:50:12 PM
// Design Name: 
// Module Name: SR_SIM
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


module SR_SIM();
    logic SR_CLK_SIM;
    logic SR_IN_SIM;
    logic [7:0] SR_O_SIM = 8'b0;
   
   SHIFT_R UUT(.SR_CLK(SR_CLK_SIM), .SR_IN(SR_IN_SIM), .SR_O(SR_O_SIM));
    always begin    
        SR_CLK_SIM = 1;
        #5;
        SR_CLK_SIM = 0;
        #5;
        end
    initial begin
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b0;
    #10 SR_IN_SIM = 1'b1;
    #10 SR_IN_SIM = 1'b1;
    
    end
    
endmodule
