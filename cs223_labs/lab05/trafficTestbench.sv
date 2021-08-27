`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 05:45:41
// Design Name: 
// Module Name: trafficTestbench
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


module trafficTestbench();
    logic clk, reset, Sa, Sb;
    logic[2:0] La, Lb;

    trafficLightFsm dut(clk, reset, Sa, Sb, La, Lb);

    always begin
        clk <= 0;
        #10;
        clk <= 1;
        #10;
    end 
 
    initial begin
        reset <= 1;
        Sa <= 0;
        Sb <= 0;
        @(posedge clk);
        #5 
        reset <= 0;
        @(posedge clk);
        #5
        Sa <= 0;
        Sb <=1;
        @(posedge clk);
        #5 
        Sa <= 1;
        Sb <= 0;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
    end
endmodule