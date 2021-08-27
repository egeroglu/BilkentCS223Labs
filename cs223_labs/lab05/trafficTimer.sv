`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2020 06:13:58
// Design Name: 
// Module Name: trafficTimer
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


module trafficTimer(input logic reset,
                    input logic clk,
                    output logic clkdivide);
    localparam parametre = 200000000; 
    logic counter;
    always @ (posedge clk, posedge reset) 
    begin
        if (counter == parametre - 1)
            clkdivide <= ~clkdivide;
        else if (reset == 1) 
            clkdivide <= 0;
    end

    always @(posedge clk or posedge reset)
    begin 
        if(reset == 1 && counter == parametre - 1)
            counter <= 0;
        else
            counter <= counter + 1; 
    end
endmodule