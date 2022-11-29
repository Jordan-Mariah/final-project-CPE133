`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2022 02:56:30 PM
// Design Name: 
// Module Name: mux7selTB
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


module mux7selTB();
    logic regl_b2_TB;
    logic regh_b2_TB;
    logic regl_b0_TB;
    logic regh_b0_TB;
    logic thrsh_TB;
    logic [2:0] muxsel_TB;
    logic selout_TB;
    
    mux7sel UUT ( .regl_b2(regl_b2_TB), .regh_b2(regh_b2_TB), .regl_b0(regl_b0_TB), .regh_b0(regh_b0_TB), .thrsh(thrsh_TB), .muxsel(muxsel_TB), .selout(selout_TB));

always begin
    
    // selecting 0(000) here so we expect output of 0
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b000;
    
     // selecting 1(001) here so we expect output of 1
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b001;
    
     // selecting 2(010) here so we expect output of whatever thrth is
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b1;
    muxsel_TB = 3'b010;
    
    // selecting 3(011) here so we expect output of regh_b0
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b1;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b011;
    
    // selecting 4(100) here so we expect output of regl_b0
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b1;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b100;
    
    // selecting 5(101) here so we expect output of regh_b2
    #10  regl_b2_TB = 1'b0;
    regh_b2_TB = 1'b1;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b101;
    
    // selecting 6(110) here so we expect output of regl_b2
    #10  regl_b2_TB = 1'b1;
    regh_b2_TB = 1'b0;
    regl_b0_TB = 1'b0;
    regh_b0_TB = 1'b0;
    thrsh_TB = 1'b0;
    muxsel_TB = 3'b110;
    
   end 
endmodule
