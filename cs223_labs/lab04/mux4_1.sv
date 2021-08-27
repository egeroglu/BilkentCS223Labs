`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 20:10:13
// Design Name: 
// Module Name: mux4_1
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

module mux4_1( a, b, c, d, s0, s1, out );
    input logic a,b,c,d;
    input logic s0,s1;
    output logic out;
    
    always @ (a or b or c or d or s0 or s1)
    begin
    
        case(s0|s1)
        2'b00 : out <= a;
        2'b01 : out <= b;
        2'b10 : out <= c;
        2'b11 : out <= d;
        endcase
    end
endmodule