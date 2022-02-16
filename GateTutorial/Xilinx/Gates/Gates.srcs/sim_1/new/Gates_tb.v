// Gates Test Bench
// borrowed material to understand test vector from 
// https://syssec.ethz.ch/content/dam/ethz/special-interest/infk/inst-infsec/system-security-group-dam/education/Digitaltechnik_14/14_Verilog_Testbenches.pdf
`timescale 1ns / 1ps

// Empty module cuz testbench is closed
module Gates_tb;
    // reg in
    reg a, b, c, out_t;        // gate in and target
    reg [3:0] testvector[99:0]; // test vector array
    // wire out
    wire out;
    // period = 20 * timescale = 20 * 1ns = 20ns
    localparam period = 20;

    Gates DUT(.a(a), .b(b), .c(c), .out(out));

    integer i = 0;
    initial
        begin
            a = 0; b = 0; c = 0; out_t = 0;
            $readmemb("TestVector.tv", testvector);
            for(i = 0; i < 8; i = i + 1)
            begin
                #period; {a, b, c, out_t} = testvector[i];
                $display("Test Output: %b , %b, %b, %b, %b", a, b, c, out_t, out);
            end
            #period
            $finish;
        end
endmodule
