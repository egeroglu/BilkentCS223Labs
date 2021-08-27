`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2020 19:22:44
// Design Name: 
// Module Name: funtest
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


module funtest();
    reg a,b,c,d,e,f,g,h,s0,s1,s2;
    wire out;
    
    mux8_1 mux(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .s0(s0), .s1(s1), .s2(s2), .out(out));
    initial begin
        a = 1'b0;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        e = 1'b0;
        f = 1'b0;
        g = 1'b0;
        h = 1'b0;
        s0 = 1'b0;
        s1 = 1'b0;
        s2 = 1'b0;
        
        #45 $finish;
    end
    
     always #2 a = ~a;
     always #4 b = ~b;
     always #6 c = ~c;
     always #8 d = ~d;
     always #10 e = ~e;
     always #12 f = ~f;
     always #14 g = ~g;
     always #16 h = ~h;
     always #3 s0 = ~s0;
     always #3 s1 = ~s1;
     always #3 s2 = ~s2;
     always @ (out)
     $display("time=%0t INPUT VALUES:\t a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b s0=%b s1=%b s2=%b \t OUTPUT VALUE: out=%b",$time,a,b,c,d,e,f,g,h,s0,s1,s2,out);

endmodule
