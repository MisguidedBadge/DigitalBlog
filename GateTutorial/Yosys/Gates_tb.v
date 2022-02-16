// Gates Test Bench
`timescale 1ns / 1ps

// Empty module cuz testbench is closed
module Gates_tb;
    // reg in
    reg a, b, c;
    // wire out
    wire out;
    // period = 20 * timescale = 20 * 1ns = 20ns
    localparam period = 20;

    Gates DUT(.a(a), .b(b), .c(c), .out(out));

    initial
        begin
            a = 0;
            b = 0;
            c = 0;
