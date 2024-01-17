`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2023 03:08:21 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb;

reg [3:0] I;
reg [1:0] sel;
wire out;

mux_4to1 mux(.I(I), .sel(sel), .out(out));


initial begin

    for( integer i =0; i<16; i=i+1) begin
        for( integer j =0; j<4; j= j+1 ) begin
            #5
            I = i;
            sel = j;
            end
        end
   
end

endmodule
