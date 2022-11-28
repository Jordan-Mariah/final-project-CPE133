`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 01:10:28 PM
// Design Name: 
// Module Name: CLK_DIV_SR
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


module CLK_DIV_SR(
    input[3:0] SW_IN,
    output logic[32:0] VAL_OUT
    );
    always_comb
    begin
    //each value of SW_IN will "shift" the 1 bit up or down 
    //this gives us logarithmic growth of the value for the stability
    if(SW_IN == 4'b0)
     
     VAL_OUT = {15'b0, 1'b1, 17'b0};
     
    else if(SW_IN == 4'b0001)
     
     VAL_OUT = {14'b0, 1'b1, 18'b0};
     
    else if(SW_IN == 4'b0010)
     
     VAL_OUT = {13'b0, 1'b1, 19'b0};
     
    else if(SW_IN == 4'b0011)
     
     VAL_OUT = {12'b0, 1'b1, 20'b0};
     
    else if(SW_IN == 4'b0100)
     
     VAL_OUT = {11'b0, 1'b1, 21'b0};
     
    else if(SW_IN == 4'b0101)
     
     VAL_OUT = {10'b0, 1'b1, 22'b0};
     
    else if(SW_IN == 4'b0110)
     
     VAL_OUT = {9'b0, 1'b1, 23'b0};
     
    else if(SW_IN == 4'b0111)
     
     VAL_OUT = {8'b0, 1'b1, 24'b0};
     
    else if(SW_IN == 4'b1000)
     
     VAL_OUT = {7'b0, 1'b1, 25'b0};
     
    else if(SW_IN == 4'b1001)
     
     VAL_OUT = {6'b0, 1'b1, 26'b0};
     
    else if(SW_IN == 4'b1010)
     
     VAL_OUT = {5'b0, 1'b1, 27'b0};
     
    else if(SW_IN == 4'b1011)
     
     VAL_OUT = {4'b0, 1'b1, 28'b0};
     
    else if(SW_IN == 4'b1100)
     
     VAL_OUT = {3'b0, 1'b1, 29'b0};
     
    else if(SW_IN == 4'b1101)
     
     VAL_OUT = {2'b0, 1'b1, 30'b0};
     
    else if(SW_IN == 4'b1110)
     
     VAL_OUT = {1'b0, 1'b1, 31'b0};
     
    else
     
     VAL_OUT = {1'b1, 32'b0};
     

 end 
 endmodule
