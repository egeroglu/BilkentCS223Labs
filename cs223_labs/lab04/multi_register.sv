`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 20:20:04
// Design Name: 
// Module Name: multi_register
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


module multi_register(i0,i1,i2,i3,s0,s1,clk,reset,shiftR,shiftL,a0,a1,a2,a3 );
    input i0,i1,i2,i3,s0,s1,clk,reset,shiftR,shiftL;
    output a0,a1,a2,a3;
    logic t0,t1,t2,t3;
    
    mux4_1 u1(a3,i3,shiftR,a2,s0,s1,t0);
    d_ff u2(t0,clk,reset,a3);
    mux4_1 u3(a2,i2,a3,a1,s0,s1,t1);
    d_ff u4(t1,clk,reset,a2);
    mux4_1 u5(a1,i1,a2,a0,s0,s1,t2);
    d_ff u6(t2,clk,reset,a1);
    mux4_1 u7(a0,i0,a1,shiftL,s0,s1,t3);
    d_ff u8(t3,clk,reset,a0);

endmodule
