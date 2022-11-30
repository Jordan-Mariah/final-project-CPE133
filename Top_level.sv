`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Jordan Reichhardt
// 
// Create Date: 11/28/2022 03:59:05 PM
// Design Name: 
// Module Name: Top_level
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


module Top_level(
    input thrsh,
    input clk,
    input [2:0] sel_7,
    input [3:0] sel_clk_div,
    output [7:0] out
    );
    
    // btl = bit low, bth = bit high, mtm = mux to mux, m_out = mux out
    logic [7:0] s1, s2, s3, s4, btstr, btl, bth, m_out;
    logic fh, fl, rnd, clk1, mtm, clk2;
    
    RANDOM_SERIAL_GEN RSG1(.RAND_CLK(clk1), .RAND_OUT(rnd));
    CLOCK1 clks(.DIV_CLK(clk), .STAB_RATE_OUT(clk1));
    FSM FSM1(.rndbt(rnd), .clk(clk1), .thrsh(thrsh), .h(fh), .l(fl));
    SHIFT_R shft1(.SR_CLK(clk1), .SR_IN(rnd), .SR_O(btstr));
    REG_EIGHT reg_high(.FF_D(btstr), .FF_E(fh), .FF_SET(0), .FF_C(0), .FF_CLK(clk1), .FF_Q(bth));
    REG_EIGHT reg_low(.FF_D(btstr), .FF_E(fl), .FF_SET(0), .FF_C(0), .FF_CLK(clk1), .FF_Q(btl));
    HL_SEL sel1(.MUX_SEL(mtm), .MUX_H(bth), .MUX_L(btl), .MUX_OUTPUT(m_out));
    mux7sel sel2(.muxsel(sel_7), .thrsh(thrsh), .regh_b0(btl[0]), .regl_b0(btl[2]), .regl_b2(rnd), .regh_b2(bth[2]), .selout(mtm));
    REG_EIGHT out_reg(.FF_D(m_out), .FF_E(clk2), .FF_SET(1'b0), .FF_C(1'b0), .FF_CLK(clk2), .FF_Q(out));
    CLK_DIV_TOP clked(.CLK_DIV_SW(sel_clk_div), .STAB_CLK(clk2), .DIV_MASTER_CLK(clk));
    
endmodule
