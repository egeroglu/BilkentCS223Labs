`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2020 21:21:41
// Design Name: 
// Module Name: decoder3_8
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


module decoder3_8(input logic a, b, c,
                    output logic y0,y1,y2,y3,y4,y5,y6,y7);
        assign y0=(~a&~b&~c);
		assign y1=(~a&~b&c);
		assign y2=(~a&b&~c);
        assign y3=(~a&b&c);
		assign y4=(a&~b&~c);
		assign y5=(a&~b&c);
		assign y6=(a&b&~c);
		assign y7=(a&b&c);

endmodule
