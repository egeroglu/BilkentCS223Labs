`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 04:36:46
// Design Name: 
// Module Name: trafficLightFsm
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

//referanced from verilog.pdf in unilica

module trafficLightFsm(input logic clk,
                    input logic rst,
                    input logic Sa, Sb,
                    output logic[2:0] La, Lb);
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100,S5 = 3'b101,S6 = 3'b110, S7 = 3'b111;
    parameter Green = 3'b111, Yellow = 3'b011, Red = 3'b001;
    logic[2:0] currS, nextS;

    always_ff @(posedge clk)
    if(rst)   currS <= S0;
    else    currS <= nextS;
    
    always_comb
    
     case(currS)
     S0: 
        if(Sa)
             nextS = S0;
        else 
             nextS = S1; 
         
     S1: 
        nextS = S2;
     
     S2: 
        nextS = S3;
     
     S3: 
        nextS = S4;
     
     S4: 
        if(Sb)
             nextS = S4;
        else 
             nextS = S5;
         
     S5:
        nextS = S6;
     
     S6:
        nextS = S7;
     
     S7: 
        nextS = S0; 
   
     default: 
        nextS = S0;
     
   endcase
   
   always_ff @(currS)
       case(currS)
           S0: 
               begin 
                   La <= Green;
                   Lb <= Red;
               end
           S1:
                begin 
                    La <= Yellow; 
                    Lb <= Red; 
                end
           S2:
                begin 
                    La <= Red; 
                    Lb <= Red;
                end
           S3:
                begin
                    La <= Red;
                    Lb <= Yellow;
                end
           S4: 
               begin 
                   La <= Red;
                   Lb <= Green;
               end
           S5: 
               begin 
                   La <= Red; 
                   Lb <= Yellow;
               end
           S6: 
               begin 
                   La <= Red;
                   Lb <= Red;
               end
           S7: 
               begin 
                   La <= Yellow;
                   Lb <= Red;
               end
       endcase
                    
endmodule
