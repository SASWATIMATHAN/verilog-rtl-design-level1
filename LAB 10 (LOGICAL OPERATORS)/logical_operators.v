module logical_operators (
    input  [3:0] A,
    input  [3:0] B,
    output       and_out,
    output       or_out,
    output       not_out
);

    assign and_out = A && B;
    assign or_out  = A || B;
    assign not_out = !A;

endmodule