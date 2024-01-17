`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2023 03:05:56 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1( input [3:0] I, input [1:0] sel, output out );

wire w1, w2;

mux_2to1 m1( I[0],I[1], sel[0], w1);
mux_2to1 m2( I[2],I[3], sel[0], w2);
mux_2to1 m3( w1,w2, sel[1], out);

endmodule
