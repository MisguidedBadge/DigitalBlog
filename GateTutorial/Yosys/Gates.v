`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Gates demonstration //
//////////////////////////////////////////////////////////////////////////////////

module Gates
(   input a,
    input b,
    input c,
    output out
    );
// VAR //
wire and_out;
wire or_out;
// Combinatorial //
assign and_out = a & b;
assign or_out  = a | b;
assign out = (and_out & ~c) | (or_out & c);
//
endmodule