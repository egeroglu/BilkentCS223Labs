`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 20:17:07
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input logic D,clk,sync_reset,
    output logic Q
    );
    always @(posedge clk) 
    begin
       if(sync_reset==1'b1)
        Q <= 1'b0; 
     else 
        Q <= D; 
     end 
endmodule
