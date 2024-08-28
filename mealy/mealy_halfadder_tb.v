`include "mealy_halfadder.v"
module half_adder_fsm_tb;

    reg clk;
    reg rst;
    reg a;
    reg b;
    wire sum;
    wire carry;

    // Instantiate the half adder FSM
    half_adder_fsm uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Clock generation
    initial begin
        clk = 0;
        rst = 1;
        forever #5 clk = ~clk;
        forever #10 rst= ~rst;
    end

    // rst generation
        initial begin
        rst = 1;
        forever #10 rst= ~rst;
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        a = 0;
        b = 0;

        // Dump waveforms
        $dumpfile("half_adder_fsm_tb.vcd");
        $dumpvars(0, half_adder_fsm_tb);

        // Test all input combinations
        #20 a = 0; b = 0;
        #20 a = 0; b = 1;
        #20 a = 1; b = 0;
        #20 a = 1; b = 1;

        // End simulation
        #20 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t a=%b b=%b sum=%b carry=%b", $time, a, b, sum, carry);
    end

endmodule