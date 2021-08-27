`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2020 21:46:52
// Design Name: 
// Module Name: decoder3_8test
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


//module decoder3_8test(

//    );
//endmodule
module decoderTest();
    logic a,b,c, d0,d1,d2,d3,d4,d5,d6,d7;
    
    decoder3_8 uut(a,b,c, d0,d1,d2,d3,d4,d5,d6,d7);
    initial begin
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
    end
endmodule