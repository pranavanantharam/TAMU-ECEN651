`timescale 1ns / 1ps
module JK(j, k, clk, reset, out);
    input j, k, clk, reset;
    output out;
    wire w1, w2, w3, qbar;
    not not1(w3, reset);
    nand #2 nand_1(w1, j, clk, qbar);
    nand #2 nand_2(w2, k, clk, out);
    nand nand_3(out, qbar, w1);
    nand nand_4(qbar, out, w2, w3);
endmodule