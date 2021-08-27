`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2020 19:01:42
// Design Name: 
// Module Name: mux8_1
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

module and_gate(input a,b, output c);
    assign c = a & b;
endmodule

module or_gate(input d,e, output f);
    assign f = d | e;
endmodule

module not_gate(input g, output h);
    assign h = ~g;
endmodule

module mux4_1( a, b, c, d, s0, s1, out );
    input wire a,b,c,d;
    input wire s0,s1;
    output reg out;
    
    always @ (a or b or c or d or s0 or s1)
    begin
    
        case(s0|s1)
        2'b00 : out <= a;
        2'b00 : out <= b;
        2'b00 : out <= c;
        2'b00 : out <= d;
        endcase
    end
endmodule

module mux8_1(a,b,c,d,e,f,g,h,s2,s1,s0,out);
    input a, b, c, d, e, f, g, h, s2, s1, s0;
    output out;

    wire s2bar, t1, t2, t3, t4;

    not_gate u1(s2,s2bar);
    mux4_1 u2(a,b,c,d,s0,s1,t1);
    mux4_1 u3(e,f,g,h,s0,s1,t2);
    and_gate u4(t1,s2bar,t3);
    and_gate u5(t2,s2,t4);
    or_gate u6(t3,t4,out);

endmodule
