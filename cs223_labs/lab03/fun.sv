`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2020 19:17:25
// Design Name: 
// Module Name: fun
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


module fun( a, b, c, d, out );
    
    input a, b, c, d;
    output out;
    
    wire t1;
    
    not_gate(d,t1);
    mux8_1(d,t1,0,d,1,t1,1,0,out);
    
endmodule
