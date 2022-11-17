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
    if (muxsel == 3'b000)
        selout = 0;
        
    else if (muxsel == 3'b001)
        selout = 1; 
        
    else if (muxsel == 3'b010)
        selout = thrsh;
        
    else if (muxsel == 3'b011)
        selout = regh_b0;
        
    else if (muxsel == 3'b100)
        selout = regl_b0;
        
    else if (muxsel == 3'b101)
        selout = regh_b2;
        
    else
        selout = regl_b2;
    
end
endmodule
