`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Gates demonstration //
//////////////////////////////////////////////////////////////////////////////////

module Gates
(   input a,
    input b,
    input c,
    //input d,
    output out
    );
// VAR //
wire and_out;
wire or_out;
wire nand_out;
wire nor_out;
// Combinatorial //
assign and_out = a & b;
assign or_out  = a | b;
//assign nand_out = ~(a & b);
//assign nor_out = ~(a | b);
assign out = (and_out & ~c) | (or_out & c);
//assign out = (and_out & ~c & ~d) | (or_out & ~c & d) | (nand_out & c & ~d) | (nor_out & c & d);
//
endmodule