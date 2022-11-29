`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Jordan Reichhardt
// 
// Create Date: 11/17/2022 02:44:23 PM
// Design Name: 
// Module Name: mux7sel
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


module mux7sel(
    input regl_b2,
    input regh_b2,
    input regl_b0,
    input regh_b0,
    input thrsh,
    input [2:0] muxsel,
    output logic selout
    );
    
    always_comb
begin 
    //select 0 at 0th bit of select
    if (muxsel == 3'b000)
        selout = 0;
        
    // select 1 at 1st bit of select
    else if (muxsel == 3'b001)
        selout = 1; 
        
    //select thrsh value at 2nd bit of select 
    else if (muxsel == 3'b010)
        selout = thrsh;
        
    //select value of the 0th bit of the high register at the 3rd bit of select   
    else if (muxsel == 3'b011)
        selout = regh_b0;
    
    // select value of the 0th bit of the low register at the 4th bit of select
    else if (muxsel == 3'b100)
        selout = regl_b0;
    
    //select value of the 2nd bit of the high register at the 5th bit of select
    else if (muxsel == 3'b101)
        selout = regh_b2;
        
    //else select value of the 2nd bit of the low register at the 6th bit of select   
    else
        selout = regl_b2;
    
end
endmodule
