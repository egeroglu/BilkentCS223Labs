`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2020 21:54:07
// Design Name: 
// Module Name: multi_register_testbench
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


module multi_register_testbench( );
    logic i0,i1,i2,i3,s0,s1,clk,reset,shiftR,shiftL;
    logic a0,a1,a2,a3;
    
    multi_register dut(i0,i1,i2,i3,s0,s1,clk,reset,shiftR,shiftL,a0,a1,a2,a3 );

    initial begin
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=1; clk=0; reset=1; shiftR=1; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=0; clk=1; reset=0; shiftR=1; shiftL=1; #10;
    i0 = 0; i1 = 0; i2 = 1; i3=0; s0 =1; s1=0; clk=0; reset=0; shiftR=1; shiftL=0; #10;
    i0 = 0; i1 = 1; i2 = 0; i3=0; s0 =0; s1=1; clk=1; reset=0; shiftR=1; shiftL=0; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =0; s1=1; clk=0; reset=0; shiftR=1; shiftL=1; #10;
    i0 = 1; i1 = 0; i2 = 0; i3=0; s0 =1; s1=1; clk=1; reset=0; shiftR=1; shiftL=1; #10;
    i0 = 0; i1 = 1; i2 = 0; i3=1; s0 =1; s1=1; clk=0; reset=0; shiftR=1; shiftL=0; #10;
    i0 = 0; i1 = 0; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=0; shiftR=1; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=1; clk=0; reset=0; shiftR=1; shiftL=0; #10;
    i0 = 0; i1 = 0; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=1; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=0; s0 =0; s1=0; clk=0; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=1; clk=0; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=0; clk=1; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 0; i1 = 0; i2 = 1; i3=0; s0 =1; s1=0; clk=0; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 0; i1 = 1; i2 = 0; i3=0; s0 =0; s1=1; clk=1; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =0; s1=0; clk=0; reset=0; shiftR=0; shiftL=1; #10;
    i0 = 1; i1 = 0; i2 = 0; i3=0; s0 =1; s1=1; clk=1; reset=1; shiftR=0; shiftL=0; #10;
    i0 = 0; i1 = 1; i2 = 0; i3=0; s0 =0; s1=1; clk=0; reset=0; shiftR=0; shiftL=0; #10;
    i0 = 0; i1 = 0; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=0; shiftR=0; shiftL=0; #10;
    i0 = 1; i1 = 1; i2 = 1; i3=1; s0 =1; s1=1; clk=0; reset=0; shiftR=0; shiftL=0; #10;
    i0 = 0; i1 = 0; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=0; shiftR=0; shiftL=0; #10;
    i0 = 1; i1 = 1; i2 = 0; i3=0; s0 =0; s1=0; clk=0; reset=1; shiftR=0; shiftL=0; #10;
    i0 = 1; i1 = 1; i2 = 0; i3=0; s0 =0; s1=0; clk=1; reset=1; shiftR=0; shiftL=0; #10;
    end
endmodule
