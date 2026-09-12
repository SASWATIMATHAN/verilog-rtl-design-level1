module bitwise_operators (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] and_out,
    output [3:0] or_out,
    output [3:0] xor_out,
    output [3:0] not_out
);

    assign and_out = A & B;
    assign or_out  = A | B;
    assign xor_out = A ^ B;
    assign not_out = ~A;

endmodule