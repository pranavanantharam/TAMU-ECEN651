`timescale 1ns / 1ps
module D(d, clk, reset, out);
    input d, clk, reset;
    output reg out;

    always @ (posedge clk or posedge reset)begin
        if(reset)
            out <= 0;
        else 
            out <= d;
    end   
endmodule