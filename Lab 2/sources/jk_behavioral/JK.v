`timescale 1ns / 1ps
module JK(j, k, clk, reset, out);
    input j, k, clk, reset;
    output reg out;

    always @ (posedge clk or posedge reset)begin
        if(reset)
            out <= 0;
        else begin
            case({j,k})
                2'b00 : out <= out;
                2'b01 : out <= 0;
                2'b10 : out <= 1;
                2'b11 : out <= ~out;
            endcase
        end
    end   
endmodule