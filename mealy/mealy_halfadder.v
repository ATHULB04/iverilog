module half_adder_fsm (
    input wire clk,
    input wire rst,
    input wire a,
    input wire b,
    output reg sum,
    output reg carry
);

    // State encoding
    localparam S0 = 2'b00,
               S1 = 2'b01,
               S2 = 2'b10,
               S3 = 2'b11;

    reg [1:0] current_state, next_state;

    // State register
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            S0: next_state = {a, b};
            S1: next_state = {a, b};
            S2: next_state = {a, b};
            S3: next_state = {a, b};
            default: next_state = S0;
        endcase
    end

    // Output logic
    always @(*) begin
        case (current_state)
            S0: {carry, sum} = 2'b00;
            S1: {carry, sum} = 2'b01;
            S2: {carry, sum} = 2'b01;
            S3: {carry, sum} = 2'b10;
            default: {carry, sum} = 2'b00;
        endcase
    end

endmodule