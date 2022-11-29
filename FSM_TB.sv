`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Jordan Reichhardt
// 
// Create Date: 11/17/2022 12:46:40 PM
// Design Name: 
// Module Name: FSM_TB
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


module FSM_TB();
    logic thrsh_TB;
    logic rndbt_TB;
    logic clk_TB;
    logic h_TB;
    logic l_TB;
   
FSM UUT (.clk(clk_TB), .thrsh(thrsh_TB), .rndbt(rndbt_TB), .h(h_TB), .l(l_TB));
    
always begin 
clk_TB = 1;
#10;
clk_TB = 0;
#10;
end 


always begin
 thrsh_TB = 1'b0;
//01100000 sequence -> testing low val threshold at three
#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;



#20 thrsh_TB = 1'b0;
//01100010 sequence -> testing high val threshold at three
#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;


#20 thrsh_TB = 1'b1;
//01110000 sequence -> testing low val threshold at four
#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;


#20 thrsh_TB = 1'b1;
//01100010 sequence -> testing high val threshold at four
#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b0;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b1;

#20     rndbt_TB = 1'b0;


end 
   
endmodule
