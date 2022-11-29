`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly
// Engineer: Jordan Reichhardt
// 
// Create Date: 11/15/2022 04:17:52 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input thrsh,
    input rndbt,
    input clk,
    output logic h,
    output logic l
    );

  typedef enum{STA, STB, STC, STD, STE, STF, STG, STH, STL1, STL2, STL3, STL4, STL5, STH1, STH2, STH3, STH4 }STATES;
    STATES NS, PS;
   
    
    always_ff @ (posedge clk)
        begin
            PS <= NS;
        end
    //initialize high and low to 0
    always_comb
        begin
        h = 0; 
        l = 0;
        case (PS)
        
   //always continue to next state at state a
         STA:
            begin
            h = 0;
            l = 0;
            NS = STB;
            end
    //always continue to next state at state b        
        STB:  
            begin
            h = 0;
            l = 0;
            NS = STC;
            end
   //if threshhold is 0 got to low track else continue             
         STC:
            begin
            h = 0;
            l = 0;
            if (thrsh == 0)
                begin
                NS = STL1;
                end
            else
                begin
                NS = STD;
                end
           end
     //when on state D continue to state E(this essentially creates two different threshholds depending on if we went to the low track initially or not.    
         STD:
            begin
            h = 0;
            l = 0;
            NS = STE;
            end
            
     // if random bit is 1 go to high else go to low    
          STE:
                begin
                h = 0;
                l = 0;
                if (rndbt == 0)
                    begin
                    NS = STF;
                    end
                else
                    begin
                    NS = STH2;
                    end
               end 
        
       // if random bit is 1 go to high else go to low           
          STF:
                begin
                h = 0;
                l = 0;
                if (rndbt == 0)
                    begin
                    NS = STG;
                    end
                else
                    begin
                    NS = STH3;
                    end
                end
          
       // if random bit is 1 go to high else go to low              
          STG:
                begin
                h = 0;
                l = 0;
                if (rndbt == 0)
                    begin
                    NS = STH;
                    end
                else
                    begin
                    NS = STH4;
                    end
                end
                
      //cycle back to state A    
        STH:
             begin
                h = 0;
                l = 1;
                NS = STA;
             end
    
    // if random bit is 1 go to high else stay at low       
        STL1:
            begin
            h = 0;
            l = 0;
            if (rndbt == 0)
                begin
                NS = STL2;
                end
            else
                begin
                NS = STH1;
                end
           end
      
      // if random bit is 1 go to high else stay at low   
        STL2:
            begin
            h = 0;
            l = 0;
            if (rndbt == 0)
                begin
                NS = STL3;
                end
            else
                begin
                NS = STH2;
                end
           end
       
      // if random bit is 1 go to high else stay at low  
        STL3:
            begin
            h = 0;
            l = 0;
            if (rndbt == 0)
                begin
                NS = STL4;
                end
            else
                begin
                NS = STH3;
                end
           end 
      
    // if random bit is 1 go to high else stay at low     
       STL4:
            begin
            h = 0;
            l = 0;
            if (rndbt == 0)
                begin
                NS = STL5;
                end
            else
                begin
                NS = STH4;
                end
            end 
            
    //cycle back to state A
       STL5:
            begin
            h = 0;
            l = 0;
            NS = STA;
            end 
    
     //continue along high track      
        STH1:
            begin
            h = 0;
            l = 0;
            NS = STH2;
            end
     
     //continue along high track     
        STH2:
            begin
            h = 0;
            l = 0;
            NS = STH3;
            end
    
    //continue along high track    
         STH3:
            begin
            h = 0;
            l = 0;
            NS = STH4;
            end
    
    //cycle back to state A      
         STH4:
            begin
            h = 1;
            l = 0;
            NS = STA;
            end
         
         default:
            NS = STA;
            
    endcase
    end
endmodule