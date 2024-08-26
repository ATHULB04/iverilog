`timescale 1ns/1ns
`include "hello.v"

module hello_tb;
    reg a;
    wire b;

    hello uut(
        .a(a),
        .b(b)
    );

    initial begin

        $dumpfile("hello_tb.vcd");
        $dumpvars(0, hello_tb);

        a = 0;
        #10;
        a = 1;
        #10;
        a = 0;
        #10;
        a = 1;
        $display("Simulation complete");
    end

endmodule